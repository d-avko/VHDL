////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Task4_D_latch_with_permition_struct_translate.v
// /___/   /\     Timestamp: Mon Nov 16 18:00:32 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim Task4_D_latch_with_permition_struct.ngd Task4_D_latch_with_permition_struct_translate.v 
// Device	: 6slx9tqg144-3
// Input file	: Task4_D_latch_with_permition_struct.ngd
// Output file	: C:\VHDL\Lab3\netgen\translate\Task4_D_latch_with_permition_struct_translate.v
// # of Modules	: 1
// Design Name	: Task4_D_latch_with_permition_struct
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Task4_D_latch_with_permition_struct (
  d, e, q, nq
);
  input d;
  input e;
  output q;
  output nq;
  wire d_IBUF_0;
  wire e_IBUF_1;
  wire q_OBUF_2;
  wire nq_OBUF_3;
  X_LUT3 #(
    .INIT ( 8'h4E ))
  \RS_latch_0/i0_s1  (
    .ADR0(e_IBUF_1),
    .ADR1(nq_OBUF_3),
    .ADR2(d_IBUF_0),
    .O(nq_OBUF_3)
  );
  X_BUF   d_IBUF (
    .I(d),
    .O(d_IBUF_0)
  );
  X_BUF   e_IBUF (
    .I(e),
    .O(e_IBUF_1)
  );
  X_INV   \RS_latch_0/i1_s1_INV_0  (
    .I(nq_OBUF_3),
    .O(q_OBUF_2)
  );
  X_IPAD   d_7 (
    .PAD(d)
  );
  X_IPAD   e_8 (
    .PAD(e)
  );
  X_OPAD   q_9 (
    .PAD(q)
  );
  X_OPAD   nq_10 (
    .PAD(nq)
  );
  X_OBUF   q_OBUF (
    .I(q_OBUF_2),
    .O(q)
  );
  X_OBUF   nq_OBUF (
    .I(nq_OBUF_3),
    .O(nq)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

