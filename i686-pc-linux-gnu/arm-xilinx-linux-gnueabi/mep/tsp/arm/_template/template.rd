//___________________________________________________________________
//
//               Copyright (c) 2010 Mentor Graphics Corporation
//                           All rights reserved
//
//   THIS WORK CONTAINS TRADE SECRETS AND PROPRIETARY INFORMATION WHICH IS
//    THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS
//                        SUBJECT TO LICENSE TERMS.
//
//___________________________________________________________________
//
// MEP Register Definition File Template
//
// Demonstrates the declaration of new registers and register fields
// that are accessible from the MON command language in the MDI
// window and from *.maj command scripts.
//___________________________________________________________________

// Define a register named 'dev_a_ctrl' and associate its address, space, and size
REG       = dev_a_ctrl  0xFF00A000 MEMORY 4

// Define the names and bit positions of fields within the 'dev_a_ctrl' register
REG_FIELD = dev_a_ctrl  status 2 0, lock 3 3

// Define additional registers
REG = dev_a_data1 0xFF00A004 MEMORY 4
REG = dev_a_data2 0xFF00A008 MEMORY 4


// <eof>
