/****************************************************************************
*
*   Copyright (c) 2007 Mentor Graphics Corp.
*
* PROPRIETARY RIGHTS of Mentor Graphics Corp. are involved in the
* subject matter of this material.  All manufacturing, reproduction,
* use, and sales rights pertaining to this subject matter are governed
* by the license agreement.  The recipient of this software implicitly
* accepts the terms of the license.
*
****************************************************************************

/* Start of header file for MDI  (mdi.h) */

/*---------------- Change Log -----------------------------------------------

Aug 21, 08  API Version Bumbed to 1.2 from 1.1
	Added GetOptionsInfo to the API.
Dec 10, 08
	Incorpated changes needed for supporting multicore DSP device -
	   MDIStatusInstructionPending, MDIOptionFlagHidden
	Added
	   Function MDIStepRange()
	   Typedef MDIInstructionRangeT
	   #defines MDIStepInRange and MDIStepOutsideRange
	
------------------ End Change Log -------------------------------------------*/

#ifndef MDI_Specification_Definitions
#define MDI_Specification_Definitions



/*
    When building MDILib:
        Define MDI_LIB before #include "mdi.h"

    When building an MDI application (debugger):
        In one source file only, define MDILOAD_DEFINE before
        #include "mdi.h" to define pointer variables for the API
        functions.
*/




typedef unsigned int       MDIUint32;
typedef int                MDIInt32;
#ifdef _MSC_VER
typedef unsigned __int64   MDIUint64;
typedef __int64            MDIInt64;
#else
typedef unsigned long long MDIUint64;
typedef long long          MDIInt64;

#ifndef __stdcall
#define __stdcall
#endif

#endif

typedef MDIUint32          MDIVersionT;

typedef struct MDIVersionRange_struct
{
      MDIVersionT   oldest;
      MDIVersionT   newest;
} MDIVersionRangeT;

#define MDIMajor           0x0001
#define MDIMinor           0x0005
#define MDIOldMajor        0x0001
#define MDIOldMinor        0x0000
#define MDICurrentRevision ((MDIMajor << 16 ) | MDIMinor)
#define MDIOldestRevision  ((MDIOldMajor << 16) | MDIOldMinor)

typedef MDIUint32      MDIHandleT;

#define MDINoHandle   ((MDIHandleT)-1)

typedef MDIUint32      MDITGIdT;

typedef struct MDITGData_struct
{
    MDITGIdT      TGId;         /* MDI ID to reference this Target Group */
    char          TGName[81];   /* Descriptive string identifying this TG */
} MDITGDataT;


typedef MDIUint32      MDIDeviceIdT;

typedef struct MDIDData_Struct
{
   MDIDeviceIdT Id;             /* MDI ID to reference this device */
   char         DName[81];      /* Descriptive string identifying this device */
   char         Family[15];     /* Device's Family (CPU, DSP) */
   char         FClass[15];     /* Device's Class (MIPS, X86, PPC) */
   char         FPart[15];      /* Generic Part Name */
   char         FISA[15];       /* Instruction Set Architecture */
   char         Vendor[15];     /* Vendor of Part */
   char         VFamily[15];    /* Vendor Family name */
   char         VPart[15];      /* Vendor Part Number */
   char         VPartRev[15];   /* Vendor Part Revision Number */
   char         VPartData[15];  /* Used for Part Specific Data    */
   char         Endian;         /* 0 Big Endian, 1 Little Endian */
} MDIDDataT;

/* Valid values for MDIDDataT.Family: */
#define MDIFamilyCPU    "CPU"
#define MDIFamilyDSP    "DSP"

/* Valid values for MDIDDataT.Endian: */
#define MDIEndianBig    0
#define MDIEndianLittle 1




/* MDI Resources */

typedef MDIUint32   MDIResourceT;
typedef MDIUint64   MDIOffsetT;

typedef struct MDIRange_struct
{
    MDIOffsetT      Start;
    MDIOffsetT      End;
} MDIRangeT;

typedef struct MDICRange_struct
{
    MDIOffsetT      Offset;
    MDIResourceT    Resource;
    MDIInt32        Count;
} MDICRangeT;

typedef struct MDIInstructionRange_struct
{
    MDIRangeT       Range;     
    MDIResourceT    Resource;
} MDIInstructionRangeT;


typedef struct MDIConfig_struct
{
                                    /* Provided By */
                                    /*        Other Comments */
   char      User[80];              /* Host:  ID of caller of MDI */
   char      Implementer[80];       /* MDI    ID of who implemented MDI */
   MDIUint32 MDICapability;         /* MDI:   Flags for optional capabilities */
   MDIInt32  (__stdcall *MDICBOutput)
         (MDIHandleT Device, MDIInt32 Type, 
         char *Buffer, MDIInt32 Count );
   
                                    /* Host:  CB fn for MDI output */
   MDIInt32 (__stdcall *MDICBInput)
         (MDIHandleT Device, MDIInt32 Type,
         MDIInt32 Mode, char **Buffer,
         MDIInt32 *Count);
                                    /* Host:  CB fn for MDI input */
   MDIInt32 (__stdcall *MDICBEvaluate)
         (MDIHandleT Device, char *Buffer,
         MDIInt32 *ResultType, MDIResourceT *Resource,
         MDIOffsetT *Offset, MDIInt32 *Size, void **Value);
                                    /* Host:  CB fn for expression eval */
   MDIInt32   (__stdcall *MDICBLookup)
         (MDIHandleT Device, MDIInt32 Type,
         MDIResourceT Resource, MDIOffsetT Offset,
         char **Buffer ); 
                                    /* Host:  CB fn for sym/src lookup */
   MDIInt32   (__stdcall *MDICBPeriodic)(MDIHandleT Device);
                                    /* Host:  CB fn for Event processing */
   MDIInt32   (__stdcall *MDICBSync)(MDIHandleT Device, MDIInt32 Type,
         MDIResourceT Resource);
                                    /* Host:  CB fn for Synchronizing */
} MDIConfigT;

/* MDIConfigT.MDICapability flag values, can be OR'ed together */

#define MDICAP_NoParser       0x00000001  /* No command parser */
#define MDICAP_NoDebugOutput  0x00000002  /* No Target I/O */
#define MDICAP_TraceOutput    0x00000004  /* Supports Trace Output */
#define MDICAP_TraceCtrl      0x00000008  /* Supports Trace Control */
#define MDICAP_TargetGroups   0x00000010  /* Supports Target Groups */


typedef struct MDIRunState_struct
{
    MDIUint32    Status;
    union u_info
    {
        void        *ptr;
        MDIUint32   value;
    } Info;
} MDIRunStateT;

/* Status values: */                     /* Info interpretation: */
#define MDIStatusNotRunning     1        /* none */
#define MDIStatusRunning        2        /* none */
#define MDIStatusHalted         3        /* none */
#define MDIStatusStepsDone      4        /* none */
#define MDIStatusExited         5        /* Info.value = exit value */
#define MDIStatusBPHit          6        /* Info.value = BpID */
#define MDIStatusUsrBPHit       7        /* none */
#define MDIStatusException      8        /* Info.value = which exception */
#define MDIStatusTraceFull      9        /* none */
#define MDIStatusCommDrop       10       /* none */
#define MDIStatusMask           0x00ff   /* Status values are in lowest byte */

/* These can be OR'ed in with MDIStatusRunning and MDIStatusNotRunning */

#define MDIStatusReset          0x0100   /* currently held reset */
#define MDIStatusWasReset       0x0200   /* reset asserted & released */
#define MDIStatusResetMask      0x0300   /* reset state mask */   
/* This can also be OR'ed in with MDIStatusHalted */
#define MDIStatusDescription    0x0400   /* Info.ptr = Descriptive string */
/* This can OR'ed in with MDIStatusNotRunning to indicate that a core is in the
middle of executing an instruction (the implication is that it was suspended
by some sort of multicore synchronization mechanism)  */
#define MDIStatusInstructionPending   0x0800 

typedef struct MDICacheInfo_struct
{
    MDIInt32    Type;
    MDIUint32   LineSize;       /* Bytes of data in a cache line */
    MDIUint32   LinesPerSet;    /* Number of lines in a set */
    MDIUint32   Sets;           /* Number of sets */
} MDICacheInfoT;

/* Values for MDICacheInfoT.Type (Cache types): */

#define MDICacheTypeNone         0
#define MDICacheTypeUnified      1
#define MDICacheTypeInstruction  2
#define MDICacheTypeData         3


typedef MDIUint32      MDIBpT;
#define MDIBPT_SWInstruction     1
#define MDIBPT_SWOneShot         2
#define MDIBPT_HWInstruction     3
#define MDIBPT_HWData            4
#define MDIBPT_HWBus             5
#define MDIBPT_TypeMax           MDIBPT_HWBus   
#define MDIBPT_TypeMask          0x0000ffff

/* Hardware breakpoint types may have one or more of the following */
/* flag bits OR'ed in to specify additional qualifications.   */

#define MDIBPT_HWFlg_AddrMask    0x00010000
#define MDIBPT_HWFlg_AddrRange   0x00020000
#define MDIBPT_HWFlg_DataValue   0x00040000
#define MDIBPT_HWFlg_DataMask    0x00080000
#define MDIBPT_HWFlg_DataRead    0x00100000
#define MDIBPT_HWFlg_DataWrite   0x00200000
#define MDIBPT_HWFlg_Trigger     0x00400000
#define MDIBPT_HWFlg_TriggerOnly 0x00800000
#define MDIBPT_TypeQualMask      0xffff0000

typedef MDIUint32       MDIBpIdT;
#define MDIAllBpID      -1

typedef struct MDIBpData_struct
{
   MDIBpIdT       Id;
   MDIBpT         Type;
   MDIUint32      Enabled;    /* 0 if currently disabled, else 1 */
   MDIResourceT   Resource;
   MDIRangeT      Range;      /* Range.End may be an end addr or mask */
   MDIUint64      Data;       /* valid only for data write breaks */
   MDIUint64      DataMask;   /* valid only for data write breaks */
   MDIUint32      PassCount;  /* Pass count reloaded when hit */
   MDIUint32      PassesToGo; /* Passes to go until next hit */
} MDIBpDataT;


/* Following flags and struct are part of MIPS' MDI 2.2 specification */
#define MDIBPT_HWType_Exec		 1
#define MDIBPT_HWType_Data		 2
#define MDIBPT_HWType_Bus		 4
#define MDIBPT_HWTYpe_AlignMask  0xf0
#define MDIBPT_HWType_AlignShift 4
#define MDIBPT_HWType_MaxSMask   0x3f00
#define MDIBPT_HWType_MaxSShift  9
#define MDIBPT_HWType_VirtAddr   0x4000
#define MDIBPT_HWType_ASID       0x8000

typedef struct MDIBpInfo_struct
{
	MDIInt32 Num;
	MDIBpT Type;
} MDIBpInfoT;

/* MDI Trace data type */

typedef struct MDITrcFrame_Struct
{
   MDIUint32      Type;
   MDIResourceT   Resource;
   MDIOffsetT     Offset;
   MDIUint64      Value;
} MDITrcFrameT;

#define MDITTypePC         1     /* Instruction address only */
#define MDITTypeInst       2     /* Instruction address and value */
#define MDITTypeRead       3     /* Data Load address only */
#define MDITTypeWrite      4     /* Data Store address only */
#define MDITTypeAccess     5     /* Data Access (Load/Store) address only */
#define MDITTypeRData_8    6     /* Data Load address and 8-bit value */
#define MDITTypeWData_8    7     /* Data Store address and 8-bit value */
#define MDITTypeRData_16   8     /* Data Load address and 16-bit value */
#define MDITTypeWData_16   9     /* Data Store address and 16-bit value */
#define MDITTypeRData_32   10    /* Data Load address and 32-bit value */
#define MDITTypeWData_32   11    /* Data Store address and 32-bit value */
#define MDITTypeRData_64   12    /* Data Load address and 64-bit value */
#define MDITTypeWData_64   13    /* Data Store address and 64-bit value */

/* Values for Flags parameter to MDITGOpen() and MDIOpen(): */

#define MDISharedAccess     0
#define MDIExclusiveAccess  1

/* Values for Flags parameter to MDITGClose()/MDIClose() and MDIDisconnect: */

#define MDICurrentState     0
#define MDIResetState       1
// Hidden flags - used internally
#define MDIBypassClose		8000  // Bypass Disconnect Packet - valid for MDIClose only

/* Values for SyncType parameter to MDICBSync(): */

#define MDISyncBP           0
#define MDISyncState        1
#define MDISyncWrite        2

/* Values for Direction parameter to MDIMove(): */

#define MDIMoveForward      0
#define MDIMoveBackward     1

/* Values for Mode parameter to MDIFind(): */

#define MDIMatchForward     0
#define MDIMismatchForward  1
#define MDIMatchBackward    2
#define MDIMismatchBackward 3

/* Values for Mode parameter to MDIStep() and MDIStepRange(): */

#define MDIStepInto         0
#define MDIStepForward      1
#define MDIStepOver         2

/* "Wait Forever" value for WaitTime parameter to MDIRunState(): */

#define MDIWaitForever        -1

/* Values for Mode parameter to MDIReset(): */

#define MDIFullReset        0
#define MDIDeviceReset      1
#define MDICPUReset         2
#define MDIPeripheralReset  3

/* Values for Flags parameter to MDICacheFlush(): */

#define MDICacheWriteBack    0x01
#define MDICacheInvalidate   0x02

/* Values for Status parameter from MDITraceStatus(): */

#define MDITraceStatusNone      1
#define MDITraceStatusTracing   2
#define MDITraceStatusWaiting   3
#define MDITraceStatusFilling   4
#define MDITraceStatusStopped   5
#define MDITraceStatusDisabled	6 // 1.1

/* Values for Type parameter to MDICBOutput() and MDICBInput(): */

#define MDIIOTypeMDIIn     1
#define MDIIOTypeMDIOut    2
#define MDIIOTypeMDIErr    3
#define MDIIOTypeTgtIn     4
#define MDIIOTypeTgtOut    5
#define MDIIOTypeTgtErr    6

/* Values for Mode parameter to MDICBInput(): */

#define MDIIOModeNormal    1
#define MDIIORawBlock      2
#define MDIIORawNoBlock    3

/* Values for Type parameter to MDICBEvaluate(): */

#define MDIEvalTypeResource   1
#define MDIEvalTypeChar       2
#define MDIEvalTypeInt        3
#define MDIEvalTypeUInt       4
#define MDIEvalTypeFloat      5
#define MDIEvalTypeNone       6

/* Values for Type parameter to MDICBLookup(): */

#define MDILookupNearest      1
#define MDILookupExact        2
#define MDILookupSource       3  /* Depreciated in favor of MDILookupSourceLine */
#define MDILookupSourceLine   3
#define MDILookupSourceInfo   4


/* MDI function return values: */

#define MDISuccess                  0
   /* Success */
#define MDINotFound                 1
   /* MDIFind() did not find a match, also used in option queries */

#define MDIErrFailure               -1
   /* Unable to perform operation. */
#define MDIErrDevice                -2
   /* Invalid Device handle. */
#define MDIErrSrcResource           -3
   /* Invalid Resource type. */
#define MDIErrDstResource           -4
   /* 2nd Resource has invalid type. */
#define MDIErrInvalidSrcOffset      -5
   /* Offset is invalid for the specified resource. */
#define MDIErrInvalidDstOffset      -6
   /* 2nd Offset is invalid for the 2nd resource. */
#define MDIErrSrcOffsetAlignment    -7
   /* Offset is not correctly aligned. */
#define MDIErrDstOffsetAlignment    -8
  /* 2nd Offset is not correctly aligned for the specified ObjectSize */
#define MDIErrSrcCount              -9
   /* Count causes reference outside of the resources space */
#define MDIErrDstCount              -10
   /* Count causes reference outside of 2nd resources space */
#define MDIErrBPType                -13
   /* Invalid breakpoint type. */
#define MDIErrRange                 -14
   /* Specified range is outside of the scope for the resource */
#define MDIErrNoResource            -15
   /* Hardware resources are unavailable. */
#define MDIErrBPId                  -16
   /* Invalid Breakpoint ID. */
#define MDIErrMore                  -17
   /* More data is available than was requested */
#define MDIErrParam                 -18
   /*  A parameter is in error (See specific instructions) */
#define MDIErrTGHandle              -19
   /* Invalid Target Group Handle */
#define MDIErrMDIHandle             -20
   /* Invalid MDI Environment Handle */
#define MDIErrVersion               -21
   /* Version not supported */
#define MDIErrLoadLib               -22
   /* MDIInit(): Error loading library */
#define MDIErrModule                -23
   /* MDIInit(): Unable to link required MDI functions from library */
#define MDIErrConfig                -24
   /* Required callback functions not present */
#define MDIErrDeviceId              -25
   /* Invalid device ID */
#define MDIErrAbort                 -26
   /* Command has been aborted */
#define MDIErrUnsupported           -27
   /* Unsupported feature */
#define MDIErrLookupNone            -28
   /*Address did not match a symbol or source line. */
#define MDIErrLookupError           -29
   /* Invalid address for look up. */
#define MDIErrTracing               -30
   /* Can't clear trace buffer while capturing is in progress */
#define MDIErrInvalidFunction       -31
   /* Function pointer is invalid */
#define MDIErrAlreadyConnected      -32
   /* MDI Connection has already been made for this thread  */
#define MDIErrTGId                  -33
   /* Invalid Target Group ID   */
#define MDIErrDeviceHandle          -34
#define MDIErrDevicesOpen           -35
#define MDIErrInvalidData           -36
#define MDIErrDuplicateBP           -37
#define MDIErrInvalidFrames         -38
  /* Range of requested trace frames is invalid */
#define MDIErrWrongThread           -39
#define MDIErrTargetRunning         -40
#define MDIErrRecursive             -41
  /* Illegal recursive call from from MDICDPeriodic */
#define MDIErrObjectSize            -42
  /* Invalid Object Size for Resource */
 
  
/*==== MDI Options extension Data Types =================================== */

/* Option interface type */
typedef void * MDIOptionHandleT;
/* category flags */
typedef MDIUint32 MDIFlags32;
/* Enum Handle */
typedef MDIInt32 MDIEnumHandleT;

/* This structure is used to hold info on options */
typedef struct MDIOptionInfo_Struct
{
	MDIOptionHandleT	Handle;
	MDIUint32			Type;
	MDIFlags32			Category;			/* BitField */
	MDIEnumHandleT		EnumHandle;		    /* Enum Handle - valid only if Type == MDIOptionTypeEnum */
	MDIFlags32			Flags;
	MDIUint32			NumBytes;           /* Number of bytes needed to represent the value */
	MDIUint64			Value[2]; 
	MDIUint32			filler;				/* Was unused ValueStr */
	MDIUint64			MinValue;
	MDIUint64			MaxValue;			/* Maximum value allowed (all F's if none) */
	const char			*Name;				/* The option name */
	const char			*ShortName;			/* Short easy to type name for the option - optional */
	const char			*Description;		/* A brief description one line option explaination */
	const char			*FullDescription;	/* Detailed explanation, default, range, etc */
} MDIOptionInfoT;

#define MDIOptionFlagReadOnly	0x1 
#define MDIOptionFlagVolatile   0x2  
#define MDIOptionFlagPreInit    0x4   // Option available in no connect mode (pre initialization) 
#define MDIOptionFlagHidden     0x8   // Option should be hidden from the user (for debugger/lib communication only) 


/* This structure is used to hold info on option categories */
typedef struct MDIOptionCategoryInfo_Struct
{
	MDIFlags32		Category;			/* BitField */
	const char		*Name;				
} MDIOptionCategoryInfoT;

/* This structure is used to hold info on option enumerations */
typedef struct MDIOptionEnumInfo_Struct
{
	MDIInt32		Enum;
	const char		*Name;				
} MDIOptionEnumInfoT;

/* Defines for Type member of MDIOptionInfoT */

#define MDIOptionTypeEnum	0 
#define MDIOptionTypeAddr	1	/* An address - space & offset */
#define MDIOptionTypeHex	2
#define MDIOptionTypeDec	3
#define MDIOptionTypeText	4
#define MDIOptionTypeIP		5	

/*==== end Options extension Data Types =================================== */


/*
** MDI Discovery Structure.
*/
typedef struct MDIDiscoveryList_Struct
{
	char ModelName[32];
	char SerialNumber[16];
	MDIUint32 IPAddr;
	char UnitName[32];		// User customizable name for easy probe recognition
	char QualifiedName[256];
} MDIDiscoveryListT;



/*
** Connection Setup Data - Types Optional interface specific connection data specific to an MDI library instance
** See MDIConnectSetup for usage 
*/
#define MDICSTypeDefault		1  /* Default setup (as if MDIConnectSetup was not called)  */
#define MDICSTypeFile			2  /* Path to file containing connection setup data */
#define MDICSTypeString			3  /* Connection setup data passed as a string pointer */


/*
** MDI CPUInfo Structure.
*/
typedef struct MDICPUInfo_Struct
{
	char		*Name;
	MDIUint32	Cores;
} MDICPUInfoT;



/* Function Prototypes */

#ifdef __cplusplus
extern "C" {
#endif

#ifndef yf  // allow caller to provide their own yf if needed
	#ifdef _WIN32
		#ifndef MDI_DLL_EXPORT
			#define MDI_DLL_EXPORT __declspec( dllexport )
		#endif
	#else  // some flavor of unix/linux
		#ifndef MDI_DLL_EXPORT
			#define MDI_DLL_EXPORT // linux doesn't require anything special here
		#endif
	#endif
	#if defined( MDI_LIB )
		// MDILib, do extern function declarations
		#define yf(str) extern MDI_DLL_EXPORT int __stdcall  str
	#elif defined( MDILOAD_DEFINE )
		// debugger, do function pointer definitions
		#define yf(str) int  (__stdcall *str)
	#else
		// debugger, do extern function pointer declarations 
		#define yf(str) extern MDI_DLL_EXPORT int (__stdcall *str)
	#endif
#endif

yf(MDIVersion)(MDIVersionRangeT *);
yf(MDIConnect)(MDIVersionT, MDIHandleT *, MDIConfigT *);
yf(MDIDisconnect)(MDIHandleT, MDIUint32);
yf(MDITGQuery)(MDIHandleT, MDIInt32 *HowMany, MDITGDataT *);
yf(MDITGOpen)(MDIHandleT, MDITGIdT, MDIUint32, MDIHandleT *);
yf(MDITGClose)(MDIHandleT, MDIUint32);
yf(MDITGExecute)(MDIHandleT);
yf(MDITGStop)(MDIHandleT);
yf(MDIDQuery)(MDIHandleT, MDIInt32 *HowMany, MDIDDataT *);
yf(MDIOpen)(MDIHandleT, MDIDeviceIdT, MDIUint32, MDIHandleT *);
yf(MDIClose)(MDIHandleT, MDIUint32);
yf(MDIRead)(MDIHandleT, MDIResourceT SrcR, MDIOffsetT SrcO,
        void * Buffer, MDIUint32 ObjectSize, MDIUint32 Count);
yf(MDIWrite)(MDIHandleT, MDIResourceT DstR, MDIOffsetT DstO,
        void * Buffer, MDIUint32 ObjectSize, MDIUint32 Count); 
yf(MDIReadList)(MDIHandleT, MDIUint32 ObjectSize, MDICRangeT *SrcList,
        MDIUint32 ListCount, void * Buffer );
yf(MDIWriteList)(MDIHandleT, MDIUint32 ObjectSize, MDICRangeT *DstList,
        MDIUint32 ListCount, void * Buffer );
yf(MDIMove)(MDIHandleT, MDIResourceT SrcR, MDIOffsetT SrcO,
        MDIResourceT DstR, MDIOffsetT DstO, MDIUint32 ObjectSize,
        MDIUint32 Count, MDIUint32 Flag);
yf(MDIFill)(MDIHandleT, MDIResourceT DstR, MDIRangeT DstRng,
        void * Buffer, MDIUint32 ObjectSize, MDIUint32 Count);
yf(MDIFind)(MDIHandleT, MDIResourceT SrcR, MDIRangeT SrcRng,
        void * Buffer, void * MaskBuffer, MDIUint32 ObjectSize,
        MDIUint32 Count, MDIOffsetT *FoundOffset, MDIUint32 Mode);
yf(MDIExecute)(MDIHandleT);
yf(MDIStep)(MDIHandleT, MDIUint32 Steps, MDIUint32 Mode);
yf(MDIStepRange)(MDIHandleT, MDIUint32 Mode, MDIInstructionRangeT *Ranges, MDIUint32 *RangeCount);
yf(MDIStop)(MDIHandleT);
yf(MDIReset)(MDIHandleT, MDIUint32 Flag);
yf(MDICacheQuery)(MDIHandleT, MDICacheInfoT *CacheInfo);
yf(MDICacheFlush)(MDIHandleT, MDIUint32 Type, MDIUint32 Flag);
yf(MDIRunState)(MDIHandleT, MDIInt32 WaitTime, MDIRunStateT *runstate);
yf(MDISetBp)(MDIHandleT, MDIBpDataT *);
yf(MDISetSWBp)(MDIHandleT , MDIResourceT , MDIOffsetT , MDIBpIdT *);
yf(MDIClearBp)(MDIHandleT, MDIBpIdT);
yf(MDIEnableBp)(MDIHandleT, MDIBpIdT);
yf(MDIDisableBp)(MDIHandleT, MDIBpIdT);
yf(MDIBpQuery)(MDIHandleT, MDIInt32 *HowMany, MDIBpDataT *);
yf(MDIDoCommand)(MDIHandleT, char *Buffer);
yf(MDIAbort)( MDIHandleT );
yf(MDITraceEnable)(MDIHandleT);
yf(MDITraceDisable)(MDIHandleT);
yf(MDITraceClear)(MDIHandleT);
yf(MDITraceStatus)(MDIHandleT, MDIUint32 *);
yf(MDITraceCount)(MDIHandleT, MDIUint32 *);
yf(MDITraceRead)(MDIHandleT, MDIUint32, MDIUint32, MDIUint32, MDITrcFrameT *);

/* HWBP capability query function from MIPS MDI 2.2 */
yf(MDIHwBpQuery) (MDIHandleT, MDIInt32*, MDIBpInfoT*);

/*=== Option Control Extensions ===*/
yf(MDIGetOptions)( MDIHandleT, MDIInt32 *HowMany, MDIFlags32 Category, MDIOptionInfoT *OptionInfo );
yf(MDIGetOptionInfo)( MDIHandleT, MDIOptionHandleT Option, MDIOptionInfoT *OptionInfo );
yf(MDIGetOptionCategories)( MDIHandleT, MDIInt32 *HowMany, MDIOptionCategoryInfoT *CategoryInfo );
yf(MDIGetOptionEnumInfo)( MDIHandleT, MDIEnumHandleT EnumHandle, MDIInt32 *HowMany, MDIOptionEnumInfoT *EnumInfo );
yf(MDIGetOptionValueStr)( MDIHandleT, MDIOptionHandleT Option, char *ValueStr );
yf(MDISetOptionValueStr)( MDIHandleT, MDIOptionHandleT Option, char *ValueStr, char *ErrText ); 
yf(MDISetOptionValue)( MDIHandleT, MDIOptionHandleT Option, void *Value, char *ErrText ); 
yf(MDIGetOptionNameInfo)( MDIHandleT, char *OptionName, MDIOptionInfoT *OptionInfo );
	
/* Discovery function */
yf(MDIDiscovery)( MDIDiscoveryListT *, MDIUint32,	MDIUint32 *, MDIUint32 *, char *, MDIUint32 );

yf(MDIConnectSetup)( MDIUint32 ConnectSetupType, char *ConnectSetup );
yf(MDICPUInfoQuery)( char *Arch, MDICPUInfoT **CPUInfo, MDIUint32 *CPUInfoCount, MDIUint32 *CPUInfoTypeSize );

#undef MDI_DLL_EXPORT
#undef yf

#ifdef __cplusplus
}
#endif

#endif

/* End of header file for MDI (mdi.h) */

