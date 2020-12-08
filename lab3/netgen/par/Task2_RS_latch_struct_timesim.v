////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Task2_RS_latch_struct_timesim.v
// /___/   /\     Timestamp: Tue Nov 17 17:35:52 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf Task2_RS_latch_struct.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim Task2_RS_latch_struct.ncd Task2_RS_latch_struct_timesim.v 
// Device	: 6slx9tqg144-3 (PRODUCTION 1.23 2013-10-13)
// Input file	: Task2_RS_latch_struct.ncd
// Output file	: C:\VHDL\Lab3\netgen\par\Task2_RS_latch_struct_timesim.v
// # of Modules	: 1
// Design Name	: Task2_RS_latch_struct
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

module Task2_RS_latch_struct (
  r, s, q, nq
);
  input r;
  input s;
  output q;
  output nq;
  wire nq_OBUF_20;
  wire r_IBUF_0;
  wire s_IBUF_0;
  wire q_OBUF_23;
  wire r_IBUF_3;
  wire s_IBUF_6;
  wire q_OBUF_pack_1;
  wire \NlwBufferSignal_q_OBUF/I ;
  wire \NlwBufferSignal_nq_OBUF/I ;
  initial $sdf_annotate("netgen/par/task2_rs_latch_struct_timesim.sdf");
  X_OPAD #(
    .LOC ( "PAD121" ))
  q_3 (
    .PAD(q)
  );
  X_OBUF #(
    .LOC ( "PAD121" ))
  q_OBUF (
    .I(\NlwBufferSignal_q_OBUF/I ),
    .O(q)
  );
  X_IPAD #(
    .LOC ( "PAD122" ))
  r_7 (
    .PAD(r)
  );
  X_BUF #(
    .LOC ( "PAD122" ))
  r_IBUF (
    .O(r_IBUF_3),
    .I(r)
  );
  X_BUF #(
    .LOC ( "PAD122" ))
  \ProtoComp2.IMUX  (
    .I(r_IBUF_3),
    .O(r_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD136" ))
  s_11 (
    .PAD(s)
  );
  X_BUF #(
    .LOC ( "PAD136" ))
  s_IBUF (
    .O(s_IBUF_6),
    .I(s)
  );
  X_BUF #(
    .LOC ( "PAD136" ))
  \ProtoComp2.IMUX.1  (
    .I(s_IBUF_6),
    .O(s_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD135" ))
  nq_14 (
    .PAD(nq)
  );
  X_OBUF #(
    .LOC ( "PAD135" ))
  nq_OBUF (
    .I(\NlwBufferSignal_nq_OBUF/I ),
    .O(nq)
  );
  X_BUF   \nq_OBUF/nq_OBUF_AMUX_Delay  (
    .I(q_OBUF_pack_1),
    .O(q_OBUF_23)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y2" ),
    .INIT ( 64'h0303030303030303 ))
  \nor2_0/z1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(s_IBUF_0),
    .ADR1(q_OBUF_23),
    .ADR5(1'b1),
    .O(nq_OBUF_20)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y2" ),
    .INIT ( 32'h0000FCFC ))
  \nor2_1/a_b_OR_1_o1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(r_IBUF_0),
    .ADR2(s_IBUF_0),
    .ADR1(q_OBUF_23),
    .O(q_OBUF_pack_1)
  );
  X_BUF   \NlwBufferBlock_q_OBUF/I  (
    .I(q_OBUF_23),
    .O(\NlwBufferSignal_q_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_nq_OBUF/I  (
    .I(nq_OBUF_20),
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

