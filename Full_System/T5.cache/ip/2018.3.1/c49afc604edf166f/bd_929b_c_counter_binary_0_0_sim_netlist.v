// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Wed Mar 17 11:36:19 2021
// Host        : BA3145WS25 running 64-bit major release  (build 9200)
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
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
j7CH5LnaCtWYUY92ITRoSF2UqL30FlzBVp3YgjCt9mhoorTb5tu4UEJ0E6hYOqWqvqDmx6O/JNb6
fZRbhtzIzPMSLtFBKR7wvo722J0cNON6C9/PFDPafbd8jW0DEcQdGhXZBUTNJxmf4YdHWHa6znIa
3hpjPCvmLMg6YER9iLBt4S9V8jPzdIy8t9wBweJuCAuTi9mrpNuF8coHh9frTpGOsKG2ATEm0OXw
FEbT6Z0y5v12N0K5RM7OX6MLi2ou86OoMIbIwESaKqy5RWHRe5QiVPzSvDpvQs/cpS5Ph/hSX9ru
+NzYbM0alpPCvht4Xoqyiqgp4vNuhaey88Kung==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qprygnCTpWe7W4wPV2y7WamvFM1G2SoF+SulMv4jRmn942OHmnfg6RPp6DxW+WH89lHAixm1qISN
CQZH/Yw4bDmyxT7TzDf89mNMn3aCu7wgrGaK7YGQy0ZP5rfhZJgFl9hqYGa3sIEYgfZ299VeS2BR
ohlBmXovmW5LZMkSRFUk3wKMQR7Ohcp3iVJGNnMjrYjXtNsXT4e1oaXtG/2ZIRyxh95VGYKPD+OB
r7/wFxp5aILq7jTkGtWBXo/1uCztdWR7sVaCrV1Tlz/0Bf4IWqqk2W34AKV4UOwQpaTOZRG10Ody
n6xakQ4jQtemV+zp+jdNVKihchgP2qIEHZ+5tg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12448)
`pragma protect data_block
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
L6QWFKlN6HjxWy6c5m+ZGo06SFoNiw==
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
