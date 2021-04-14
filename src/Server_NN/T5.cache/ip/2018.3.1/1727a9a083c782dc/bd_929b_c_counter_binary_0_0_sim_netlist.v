// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Wed Apr 14 00:07:02 2021
// Host        : BA3145WS28 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_929b_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_929b_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
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
LPz9FujaQpE/pqtS9vrGjq4gRei1WJ/YxXq+GCYK4yoY+dDxEGjkmDCZQ1TcKtO4Gt9AE3zw0hst
NfkO+0zS0+fSJaPRGjXAjri2AmhtPb15CJxG+Sr11NzDelYO1AUol+VNkeWkLossS8tG79EYHi68
gtc34V1NMtMTZqkBDsmtyTlKPGOp42WiiUvaQ3n9OYyjTSSTJhdGV/IBN3tE/SZqa7FT4QcPmJE9
MWCIwb9WYLnvboTXhAgq83gbM5XotDiSXj75YJXSNmyBMQP9d2RDgnPJAy/H7iWljboVCVXLKs2y
KdapFsJvLybNLOIKz+mUGJfpH50Ve1zEn5yEVw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YOa9j3y+r/GBiSp2RJHxPnWcl058XZuWKO7POeEa0ZOLzWXz5tWA1tNYhAnqWmjuNzocs3ZwpQj3
DsefVdsF85jPGDbEAMbJ6tQ2pl8EdgKMenp4lvQ3CTWsQsicLdb4nRdXNBfBZvDoTIan+i8eMh0S
5VFZXyge75VjsIBxzB9/Enw5k/wA43KAZGWYlWRo0BXgoIieW+v0pqANO11zkYh71OCADY3ruR4v
lGCOYUxTIbJAPuKgaJnDWMwPQsyPE32fataY1pduEcLb8Dffn5CW+1CnSgvGRzk2iH223RqE+qCR
UeVOj32JFf4lbcuhN4ip7+Rb1poK1jh1uiUF3Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12448)
`pragma protect data_block
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
I2ut+GXdHS4KmSYTNDKYmtNMwqO9cw==
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
