////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: MyJohnsonCounter_timesim.v
// /___/   /\     Timestamp: Fri Oct 23 14:40:09 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 2 -pcf MyJohnsonCounter.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim MyJohnsonCounter.ncd MyJohnsonCounter_timesim.v 
// Device	: 6slx9ftg256-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: MyJohnsonCounter.ncd
// Output file	: D:\XilinxLabs\Lab4\netgen\par\MyJohnsonCounter_timesim.v
// # of Modules	: 1
// Design Name	: MyJohnsonCounter
// Xilinx        : D:\Xilinx\14.7\ISE_DS\ISE\
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

module MyJohnsonCounter (
  C, Q
);
  input C;
  output [3 : 0] Q;
  wire \firstFlipFlop/data_34 ;
  wire \flipFlops[1].flipFlop/data_35 ;
  wire \flipFlops[2].flipFlop/data_36 ;
  wire \flipFlops[3].flipFlop/data_37 ;
  wire \C_BUFGP/IBUFG_0 ;
  wire C_BUFGP;
  wire \C_BUFGP/IBUFG_9 ;
  wire \flipFlops[2].flipFlop/data/INV_flipFlops[2].flipFlop/dataCLK ;
  wire \flipFlops[2].flipFlop/Q_rstpot ;
  wire \flipFlops[1].flipFlop/data/INV_flipFlops[1].flipFlop/dataCLK ;
  wire \flipFlops[1].flipFlop/Q_rstpot ;
  wire \flipFlops[3].flipFlop/data/INV_flipFlops[3].flipFlop/dataCLK ;
  wire \flipFlops[3].flipFlop/Q_rstpot ;
  wire \firstFlipFlop/data/INV_firstFlipFlop/dataCLK ;
  wire \firstFlipFlop/Q_rstpot ;
  wire \NlwBufferSignal_Q_0_OBUF/I ;
  wire \NlwBufferSignal_Q_1_OBUF/I ;
  wire \NlwBufferSignal_Q_2_OBUF/I ;
  wire \NlwBufferSignal_Q_3_OBUF/I ;
  wire \NlwBufferSignal_C_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_flipFlops[2].flipFlop/data/CLK ;
  wire \NlwBufferSignal_flipFlops[1].flipFlop/data/CLK ;
  wire \NlwBufferSignal_flipFlops[3].flipFlop/data/CLK ;
  wire \NlwBufferSignal_firstFlipFlop/data/CLK ;
  wire VCC;
  wire GND;
  initial $sdf_annotate("netgen/par/myjohnsoncounter_timesim.sdf");
  X_OPAD #(
    .LOC ( "PAD183" ))
  \Q<0>  (
    .PAD(Q[0])
  );
  X_OBUF #(
    .LOC ( "PAD183" ))
  Q_0_OBUF (
    .I(\NlwBufferSignal_Q_0_OBUF/I ),
    .O(Q[0])
  );
  X_OPAD #(
    .LOC ( "PAD185" ))
  \Q<1>  (
    .PAD(Q[1])
  );
  X_OBUF #(
    .LOC ( "PAD185" ))
  Q_1_OBUF (
    .I(\NlwBufferSignal_Q_1_OBUF/I ),
    .O(Q[1])
  );
  X_OPAD #(
    .LOC ( "PAD195" ))
  \Q<2>  (
    .PAD(Q[2])
  );
  X_OBUF #(
    .LOC ( "PAD195" ))
  Q_2_OBUF (
    .I(\NlwBufferSignal_Q_2_OBUF/I ),
    .O(Q[2])
  );
  X_OPAD #(
    .LOC ( "PAD196" ))
  \Q<3>  (
    .PAD(Q[3])
  );
  X_OBUF #(
    .LOC ( "PAD196" ))
  Q_3_OBUF (
    .I(\NlwBufferSignal_Q_3_OBUF/I ),
    .O(Q[3])
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \C_BUFGP/BUFG  (
    .I(\NlwBufferSignal_C_BUFGP/BUFG/IN ),
    .O(C_BUFGP)
  );
  X_IPAD #(
    .LOC ( "PAD120" ))
  C_16 (
    .PAD(C)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  \C_BUFGP/IBUFG  (
    .O(\C_BUFGP/IBUFG_9 ),
    .I(C)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  \ProtoComp1.IMUX  (
    .I(\C_BUFGP/IBUFG_9 ),
    .O(\C_BUFGP/IBUFG_0 )
  );
  X_INV   \INV_flipFlops[2].flipFlop/dataCLK  (
    .I(\flipFlops[1].flipFlop/data_35 ),
    .O(\flipFlops[2].flipFlop/data/INV_flipFlops[2].flipFlop/dataCLK )
  );
  X_FF #(
    .LOC ( "SLICE_X0Y52" ),
    .INIT ( 1'b0 ))
  \flipFlops[2].flipFlop/data  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_flipFlops[2].flipFlop/data/CLK ),
    .I(\flipFlops[2].flipFlop/Q_rstpot ),
    .O(\flipFlops[2].flipFlop/data_36 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y52" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \flipFlops[2].flipFlop/data_INV_4_o1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\flipFlops[2].flipFlop/data_36 ),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\flipFlops[2].flipFlop/Q_rstpot )
  );
  X_INV   \INV_flipFlops[1].flipFlop/dataCLK  (
    .I(\firstFlipFlop/data_34 ),
    .O(\flipFlops[1].flipFlop/data/INV_flipFlops[1].flipFlop/dataCLK )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y48" ),
    .INIT ( 1'b0 ))
  \flipFlops[1].flipFlop/data  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_flipFlops[1].flipFlop/data/CLK ),
    .I(\flipFlops[1].flipFlop/Q_rstpot ),
    .O(\flipFlops[1].flipFlop/data_35 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y48" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \flipFlops[1].flipFlop/data_INV_4_o1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\flipFlops[1].flipFlop/data_35 ),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\flipFlops[1].flipFlop/Q_rstpot )
  );
  X_INV   \INV_flipFlops[3].flipFlop/dataCLK  (
    .I(\flipFlops[2].flipFlop/data_36 ),
    .O(\flipFlops[3].flipFlop/data/INV_flipFlops[3].flipFlop/dataCLK )
  );
  X_FF #(
    .LOC ( "SLICE_X0Y58" ),
    .INIT ( 1'b0 ))
  \flipFlops[3].flipFlop/data  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_flipFlops[3].flipFlop/data/CLK ),
    .I(\flipFlops[3].flipFlop/Q_rstpot ),
    .O(\flipFlops[3].flipFlop/data_37 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y58" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \flipFlops[3].flipFlop/data_INV_4_o1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\flipFlops[3].flipFlop/data_37 ),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\flipFlops[3].flipFlop/Q_rstpot )
  );
  X_INV   \INV_firstFlipFlop/dataCLK  (
    .I(C_BUFGP),
    .O(\firstFlipFlop/data/INV_firstFlipFlop/dataCLK )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y39" ),
    .INIT ( 1'b0 ))
  \firstFlipFlop/data  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_firstFlipFlop/data/CLK ),
    .I(\firstFlipFlop/Q_rstpot ),
    .O(\firstFlipFlop/data_34 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y39" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \firstFlipFlop/data_INV_4_o1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(\firstFlipFlop/data_34 ),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .O(\firstFlipFlop/Q_rstpot )
  );
  X_BUF   \NlwBufferBlock_Q_0_OBUF/I  (
    .I(\firstFlipFlop/data_34 ),
    .O(\NlwBufferSignal_Q_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Q_1_OBUF/I  (
    .I(\flipFlops[1].flipFlop/data_35 ),
    .O(\NlwBufferSignal_Q_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Q_2_OBUF/I  (
    .I(\flipFlops[2].flipFlop/data_36 ),
    .O(\NlwBufferSignal_Q_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_Q_3_OBUF/I  (
    .I(\flipFlops[3].flipFlop/data_37 ),
    .O(\NlwBufferSignal_Q_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_C_BUFGP/BUFG/IN  (
    .I(\C_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_C_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_flipFlops[2].flipFlop/data/CLK  (
    .I(\flipFlops[2].flipFlop/data/INV_flipFlops[2].flipFlop/dataCLK ),
    .O(\NlwBufferSignal_flipFlops[2].flipFlop/data/CLK )
  );
  X_BUF   \NlwBufferBlock_flipFlops[1].flipFlop/data/CLK  (
    .I(\flipFlops[1].flipFlop/data/INV_flipFlops[1].flipFlop/dataCLK ),
    .O(\NlwBufferSignal_flipFlops[1].flipFlop/data/CLK )
  );
  X_BUF   \NlwBufferBlock_flipFlops[3].flipFlop/data/CLK  (
    .I(\flipFlops[3].flipFlop/data/INV_flipFlops[3].flipFlop/dataCLK ),
    .O(\NlwBufferSignal_flipFlops[3].flipFlop/data/CLK )
  );
  X_BUF   \NlwBufferBlock_firstFlipFlop/data/CLK  (
    .I(\firstFlipFlop/data/INV_firstFlipFlop/dataCLK ),
    .O(\NlwBufferSignal_firstFlipFlop/data/CLK )
  );
  X_ONE   NlwBlock_MyJohnsonCounter_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_MyJohnsonCounter_GND (
    .O(GND)
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

