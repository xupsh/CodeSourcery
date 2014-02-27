/* Header file defining Mentor extensions to the MDI API */
/* should be #included after mdi.h */
#ifndef MDI_MAJIC_Extensions
#define MDI_MAJIC_Extensions


/* Initialization type used by MDIMAJICConnect() */
typedef struct MDIMAJICConfig_ST
{
	MDIUint32	CoreAccess;	    	/* 0..32 */
	MDIUint32	ConMode;			/* Connection mode (MDI_CM_*) */
	char		Port[ 256 ];
	char		CmdFile[ 1024 ];	/* default startup cmd file for ctlr */
	char		Endian;				/* MDIEndianBig or MDILittleEndian */
	char		CPUId[ 16 ];		/* one of MAJIC's supported cpu name */
	char		LogFile[ 1024 ];	/* optional log file for debugging */
	char		ToolPath[ 1024 ];	/* path to tools root */
} MDIMAJICConfigT;

/*
**	Values for ConMode (Connection Mode) member
*/
#define MDI_MAJIC_CM_DEFAULT			0		/* No ConnectMode entry specified */
#define MDI_MAJIC_CM_RESET				1		/* Reset on connection (default) */
#define MDI_MAJIC_CM_HALT				2		/* Halt target at startup */
#define MDI_MAJIC_CM_RUN				3		/* Connect, but leave target in current state */
#define MDI_MAJIC_CM_NO_CONNECTION		4		/* Option query mode */


/*
**  Common (not architecture specific) resource definitions (See MDIResource)
*/
#define MDI_MAJICCMNRESOURCE_BASE	0x10000000
#define MDI_MAJICCMNRESOUCRE_X	(MDI_MAJICCMNRESOURCE_BASE + 0)
#define MDI_MAJICCMNRESOUCRE_DA	(MDI_MAJICCMNRESOURCE_BASE + 1)
#define MDI_MAJICCMNRESOUCRE_LP	(MDI_MAJICCMNRESOURCE_BASE + 2)

#define MDI_MAJICCMNRESOUCRE_MAX	(MDI_MAJICCMNRESOUCRE_DA)

#define MDI_IN_MAJICCMNRESOURCE_RANGE( x ) \
		( x >= MDI_MAJICCMNRESOURCE_BASE && x <= MDI_MAJICCMNRESOUCRE_MAX )


#define MDI_MAJICMaxStepRanges    (32)	/* Maximum number of ranges in MDIStepRange() */




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

/* alternate connect interface - no epmdi.cfg file required */
yf(MDIMAJICConnect)( MDIVersionT, MDIHandleT *, MDIConfigT *, MDIMAJICConfigT * );
/* Probe Discovery List */
#undef MDI_DLL_EXPORT
#undef yf

#ifdef __cplusplus
}
#endif

#endif
