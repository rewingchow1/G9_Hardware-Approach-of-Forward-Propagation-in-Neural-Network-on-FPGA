// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Mar 27 05:44:23 2021
// Host        : ece1373-2021-dev-1 running 64-bit Ubuntu 16.04.7 LTS
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
LO9nOJOG1JoA0xbRL/OS4M/reTYueIYILHbIfdIbAZxNtogy9jEKglXNZ+opy3zuXIDF25Ue5mPE
WFMdZzu1XpoVItT4b6Crt8pstRpIs4eejoQICebB232tnb0uAgxUriiKl3pGmxB6IiLU1Tx1kuUu
gkUVemA5cO0ge2dFZQK0xehkn5iyRkEtIMDtZwnD9iVBomxsK/6KR7iH0sumgBk0LKlymPL5uSEW
NWyjHWzENsx82eMYGjCMInWZuZF8YsZLIgk3KhAFwljkoSC9dOtCAsaYmWbdwmp3H0EiSN/1Jtvm
weJ0TG+KNntSUeqdC/rqSE1GwUtg5NHIycgIKg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
0EmGiCsexc/4EBczS51FbYYuwosVyXtSvMAgs3Bvy6pk27vuuCGm8ZB9dcfAhhtflVWKEei9N7cF
UWPRo8m+E1BvkI86dHFunu2TUafe12vyXe4Dn3bMHUhEBuhqyPYfwr6kLH+ImrRWW26jOBVyUUz8
+pJlonUMnsnJHYYYqLzbxymiQRDUzrOhLWTvEuHfu7Kuo3SyqDKILtsP+v1O7ArFTlaUCmb+Cx/b
T+T7RXDbVOTp2RiZ/Y7+vnlVkn5OsSpW6AuaZdbtlV2Ke1kCTc/J3mXVC8/Jsagp81DG+p/7vj19
SNeCfG4Y4Bd8CdvSHjSqKN62TKUchnCk5ns5Fg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12448)
`pragma protect data_block
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
sD2w2VvHFN+pFTVm2s02u2qozHgmMg==
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
