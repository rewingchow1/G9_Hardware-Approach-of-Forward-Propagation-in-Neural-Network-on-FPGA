// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Wed Apr 14 00:07:05 2021
// Host        : BA3145WS28 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               w:/ECE532/Server_NN/Server_NN/T5.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_3/bd_929b_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_929b_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module bd_929b_c_counter_binary_0_0
   (CLK,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME thresh0_intf, LAYERED_METADATA undef" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 24} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 24}" *) output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_929b_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1100000000000000000000" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1100000000000000000000" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "24" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_929b_c_counter_binary_0_0_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [23:0]L;
  output THRESH0;
  output [23:0]Q;

  wire CLK;
  wire [23:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "24" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1100000000000000000000" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1100000000000000000000" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_929b_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
fVPTYpjMQbp8Wicgrw7sJpLUiuoAX4UVdTbdo70nK9OK+7prVGMlMK3IDUPetzgVsRZ6HBRdXHnh
oqSpruFqRg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V8yBtaAUzGOHOo+H94tylzZ4Q/Q/UFBEMQcWSOAyqCqy0Vc4lefODfkAgSZ2UdqoRBNDtypBpiik
IqNewK8ouFSlJG51YJfjDF2etpg1+V5wCGPNxYwMbdVQGQ5NektteDAXv6SaYb0FgETMxey4KSPN
e8AIdUpeoUJyzPCpK50=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
yCAra44GtwykZ8W5FdunQODfPnu2cH6FhpfXoxDS0CTfRbOV3ZiFFg4TUi7uj4pSLHsiZ+zreKw7
cleU27p6cHhZCdai7E0EkzGilZEiI9EKVlxKRcoYL6LdtnHVgkZl46XiCVi/Ejnkf5lpXOlBlAou
KdT8dROosAcqIRIY8AkZ3yfY5umGvDegBVzWbfXLAvMxLnLzMz8WL/gWwW0zQpnLYYg22N0TJrLt
uPGjWR0REiif6nwuaEHVIFI7JhyQpcehgDVXpKZYse3RhAvjcWNJYRpQJJoQhom1jOT9nlDb9YlQ
vHFH4T8Xfae8M7bflW4p6IObjTpukUZFbOzPpA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kF3oebiolAQ9ZPhPlcNV/+FQGMcC2d4krlmLW9050SYrgyJbYR5aONti/fUuyDWKUoAc9gtHPq87
7Ozj/6VdAIN2n/7T4Iib612UPZ/BdtTYZwq1ezOEE6spCaupdkLCPaT3GWLKzvRGbBGqTosAUZAI
XIuYBnsoc/rqyJofpzVDNRXBpAKlaeIP+mC1qpir8T7Tws8DJChXJTFqUo2rNrGBJ+c1XGt6S1x1
p8n0dy4JAv+u5CeP0E9k+PUfczmt/WFlwmSX5SBwFm8jHNigfaWT8skLkCK8gTx4Lj4LwKJq4o/0
MRVBDGzjSicMxZHKKp03CqdPoXrRwxZddRSL8w==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aZoF8QXznN6G768IAoQYyEiNOBwcFDD9chuWODYE7vxynkttA34UwR1hpLIeKlc1e9TIoMsW7n7b
Y7Ff1FnHzhRxoXod6z43BHQwiRit2P81m+UJyYJMq0BPXJe4JPMss1gI/6x/nrMyZiAVkb0ohXFN
nso5TeQhw63CGa3Kr8PbeMaWWAYrUi4gOb5nlnNWYgV2cvyFfUzMsaPLXoRvMTXJ1XV20s0yAbty
2ZvE6ZHISzitkTpqNZGKVLD2gXt8O7Ymxr0uZhPv72Zp5rpSD4Ls7I35IcAXgzOF9z4KVX6GGEkD
6I2Q8VQ+uZJO9udK6+q/v/e7Q8pBqdGKbEQC2g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
E8/jGxrlfOGG9LK4wuUUu594L68yP8IPTi3ex7YqsLJiH03MgY0fiGPc18bNwR82r5Xx9uGXsOyT
5R0uz2bhIwYBMb0M+52x7RQiwsF86ZUG4kvTtCCYJVJ0aOhi5vCkZIVPDKhR0LvzqTW8ZgsC4vJf
YnmZhFrto1FTYCZdyvY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j+h+8f+ahW/WaD0+1qP7QLjYiVroG4+pqmnv+NmdKT4vctxbs9iFiYWnB254QsnlHpWsr6CmXooR
yviBFJweG5sSUzl55jvNWNMwkpXnaq2bVJiyJUhRv0BKyCTFTu/nU7lfCqejDTBeNvh9CSpqv2iY
9eyjfkk24o30JC7I8U+htXpUw/9bxkRoQMpZBQFU9OUnACY4WtImEG7joDOj4pJMizYmIIZ1uFBx
4UldwdaJVtl7zeTBxpaTozPoIdvp4es/Vzez+7/jucgFndlt6tZawXug8sxpa0dcz0NxOSsF2nkm
53pgpv1nOdSjspYCew87ICWc4Jix/rr8untHGQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KUbk4s4dkDsiIm1kvqVdPisuL8HlcY1ec38HzNF1DJPC+nVelVQ9xQZx75NLdl6DnFiCy4td/OQA
Jo2Y+zSVbrWhAlW9GGRENQNj88VBASXLUrFj9HVlh0/b342eJ0ctNi2cGZc+kNDpetnil5aTOqeW
yoGqFhjVKZsobkOExsO8ww0qBgtwY/PbYP7nq5mdlXXTxSH95uSvBAxBaunE8nVhGW3pNHe/5QoV
63np2sgtWGDl74E0mT6mTitW27MQFuFDltowFqJxvMv9AeXJk5HZgxxDlF6uDL+uVjtdi5yRkacR
Rcjsy2D5ncoicH+3cz7s5F67QRnjPDsbpX1qhA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zcjy9+igaAaQpoA1vo5cQQDRTPoEM/sWwnGtby5WoTfVpuy+Xdk8TLQyPMnRv90siMuupbHhT7cW
8fcCuKE1K99/D899rtciLFxVezTCNsYJq5OjXPKSaV31y78guAUWzNvu37pXITPUDguV5DQ/lsAj
3ZQm/xapG6DTaXO1crY/FUJw4thez3Eih1HWy8nwxivEONRerliFkOgZduaJUX7fiHjbmwdmKuE0
xADJqGDGOzPw/aNP7gbogLBbBFcU/tIxFsndtqwx+bcF2P+avW0bbBrTvsS9avzrd4LCIps6bWr2
IUTgrZeJYnYm2r8XTqn3svUFEKrEq7t7/hTFJQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12624)
`pragma protect data_block
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
n3q6vlov3oPkCIHQvIrcZIIxIb+Z6sW6aYRB
`pragma protect end_protected
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
