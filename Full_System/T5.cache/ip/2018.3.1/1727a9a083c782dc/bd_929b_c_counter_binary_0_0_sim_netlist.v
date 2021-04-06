// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue Mar  2 23:17:38 2021
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
g9OALf1p+Zo51QU3yQ/yRGwi9v3oiecukYneAF2f3gy4V71Ss7Kh8MkturQdeQNxSMnKrZBrO09L
hY3xprcMwQ78ngq4lN4nu4i9n0eU1kTVI7Vs+nrxQpNwbPWLJQ6X2NMlufyduI1z0+CHhY0Qt73X
x4a5GHiEFvOGB06QSb2WwmxmXwm+rZkbUg5l3z4yU+a+ENhbnUta3kB1Z0FC7z6kLAFdAZxnst7v
+WtZ5U/LATJTA8NTMjdZnRtuVVdqQMo3hAyv0+VZGZdG9a6yf0J1jff/Wq1bp8lfTyv0SzWngZ+t
HTtodL5sCquaQggrLTGQ0wnRWsznTu/Mmv0plw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lN0NxcYWEAUc6EzF1gz4Vdl3xRDFPidcGDqQ/Qws8O6fFwByYz8p0vsfU519+GUUqeUtNUxbxRy6
xo8fm2YEKHfYEsAKevekYj6kBI+uoyaLS4Nf8MqWP971/lsOiqthUEXwnJlLwfsJtME4tf72a47g
bMHncZwm4wnmPIbK6oDrjG7WAKrq5rV8CGGdxQJNvtoFRBeJuWv+EYj/RrIKZiuuwY6i47MccLfS
56ducD752O0ro4Y61GvnBllpGhVKDF+BfnmCbkhLMJwyvVPRnWu8sQ/6qTyfOlJEm+14s0Uj4529
TCbqRKHOdIjJew7nAkGSq68sc5HpWYpU4Dwzuw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12448)
`pragma protect data_block
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
q6OKL4lwcpvH3pw4MI1pTT+cqG8Erg==
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
