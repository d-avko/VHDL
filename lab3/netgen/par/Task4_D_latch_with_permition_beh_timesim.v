////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Task4_D_latch_with_permition_beh_timesim.v
// /___/   /\     Timestamp: Fri Oct 30 10:34:21 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf Task4_D_latch_with_permition_beh.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim Task4_D_latch_with_permition_beh.ncd Task4_D_latch_with_permition_beh_timesim.v 
// Device	: 6slx9tqg144-3 (PRODUCTION 1.23 2013-10-13)
// Input file	: Task4_D_latch_with_permition_beh.ncd
// Output file	: C:\Users\saks2\Desktop\4course\POCP\Lab3\netgen\par\Task4_D_latch_with_permition_beh_timesim.v
// # of Modules	: 1
// Design Name	: Task4_D_latch_with_permition_beh
// Xilinx        : D:\Xlinx\14.7\ISE_DS\ISE\
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

module Task4_D_latch_with_permition_beh (
  d, e, q, nq
);
  input d;
  input e;
  output q;
  output nq;
  wire e_IBUF_0;
  wire q_OBUF_21;
  wire nq_OBUF_22;
  wire d_IBUF_0;
  wire e_IBUF_2;
  wire d_IBUF_9;
  wire \NlwBufferSignal_q_OBUF/I ;
  wire \NlwBufferSignal_nq_OBUF/I ;
  initial $sdf_annotate("netgen/par/task4_d_latch_with_permition_beh_timesim.sdf");
  X_IPAD #(
    .LOC ( "PAD121" ))
  e_4 (
    .PAD(e)
  );
  X_BUF #(
    .LOC ( "PAD121" ))
  e_IBUF (
    .O(e_IBUF_2),
    .I(e)
  );
  X_BUF #(
    .LOC ( "PAD121" ))
  \ProtoComp0.IMUX  (
    .I(e_IBUF_2),
    .O(e_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD136" ))
  d_14 (
    .PAD(d)
  );
  X_BUF #(
    .LOC ( "PAD136" ))
  d_IBUF (
    .O(d_IBUF_9),
    .I(d)
  );
  X_BUF #(
    .LOC ( "PAD136" ))
  \ProtoComp0.IMUX.1  (
    .I(d_IBUF_9),
    .O(d_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD122" ))
  q_7 (
    .PAD(q)
  );
  X_OBUF #(
    .LOC ( "PAD122" ))
  q_OBUF (
    .I(\NlwBufferSignal_q_OBUF/I ),
    .O(q)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y2" ),
    .INIT ( 64'hF0CCF0CCF0CCF0CC ))
  q1 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR3(e_IBUF_0),
    .ADR1(q_OBUF_21),
    .ADR2(d_IBUF_0),
    .O(q_OBUF_21)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y2" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  nq1_INV_0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(q_OBUF_21),
    .O(nq_OBUF_22)
  );
  X_OPAD #(
    .LOC ( "PAD135" ))
  nq_10 (
    .PAD(nq)
  );
  X_OBUF #(
    .LOC ( "PAD135" ))
  nq_OBUF (
    .I(\NlwBufferSignal_nq_OBUF/I ),
    .O(nq)
  );
  X_BUF   \NlwBufferBlock_q_OBUF/I  (
    .I(q_OBUF_21),
    .O(\NlwBufferSignal_q_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_nq_OBUF/I  (
    .I(nq_OBUF_22),
    .O(\NlwBufferSignal_nq_OBUF/I )
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

