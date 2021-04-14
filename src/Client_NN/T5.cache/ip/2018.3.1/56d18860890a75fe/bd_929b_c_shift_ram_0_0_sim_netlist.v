// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Tue Mar  2 23:16:51 2021
// Host        : BA3145WS28 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_929b_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_929b_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (D,
    CLK,
    CE,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [0:0]D;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_LOW" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency data_bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_12 U0
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADDR_WIDTH = "4" *) (* C_AINIT_VAL = "0" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DEPTH = "1" *) (* C_ELABORATION_DIR = "./" *) (* C_HAS_A = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_MEM_INIT_FILE = "no_coe_file_loaded" *) (* C_OPT_GOAL = "0" *) 
(* C_PARSER_TYPE = "0" *) (* C_READ_MIF = "0" *) (* C_REG_LAST_BIT = "1" *) 
(* C_SHIFT_TYPE = "0" *) (* C_SINIT_VAL = "0" *) (* C_SYNC_ENABLE = "0" *) 
(* C_SYNC_PRIORITY = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "1" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_12
   (A,
    D,
    CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]A;
  input [0:0]D;
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]D;
  wire [0:0]Q;
  wire SCLR;

  (* C_AINIT_VAL = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_SYNC_ENABLE = "0" *) 
  (* C_SYNC_PRIORITY = "1" *) 
  (* C_WIDTH = "1" *) 
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_a = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_opt_goal = "0" *) 
  (* c_parser_type = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_last_bit = "1" *) 
  (* c_shift_type = "0" *) 
  (* c_verbosity = "0" *) 
  (* c_xdevicefamily = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_shift_ram_v12_0_12_viv i_synth
       (.A({1'b0,1'b0,1'b0,1'b0}),
        .CE(CE),
        .CLK(CLK),
        .D(D),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
dOi6VY5D1/sdj+MA23a00mQh3ZKf0dcEKM2Zy2FinLlOm2+KQ1uADaoo3k3nb8kUQ7wpkF3beqRE
8PfeHcn0wA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
feHNIgRfdDisHsZ68q5ITWd2OfvIf5ylsDTxdimXVYA7ebQ0q+hcSksNa+/hhRPhoFzXqwHM/Qpl
3brbV2RxuJuc38roZSqT2WTxhiHrmEAgLixS4Tk4nkCMYvpY8HowH0qXwfE+ztSCmBm+JiY20ZuO
Md/an1vbqEVFR96fBG4=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wJpgv0YPxM9rcnJb88eNF1QlcCuz2BOE1JQfGGNUR/f6/JjbwpxciLu4BO00dTnvjZlYvJdVTxV4
1cV1ZBBQbO3GttRjvxR97uX0cQ1iCapk+YqYWMT0vAiiisAQkTRO1eChUiEpCOsFeO7Lb9D61/P2
A0O+XvjfusaZoQkoWDPS15DQFJEBzXZ2UFXApA3+xA0xxLcAmHyFHYnL4HuAT+5Q9hIWuSAz0eLV
UZOtvE9s9NwWE+YgJ5/zXkWDdA/Y/gSTE67gu//AIaGWHyGobsWaepQLxcNdBjcJQoZzIh3TYHtM
XSQ6YgefDmtIgM47FNHkoT8CVv2JoJjNac9qCg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BWeyWLqYO0Np2IT8iE7DNPkHCfdCxzCoFH9NjxT/ntsBAyo/xbbPQoB84T5CnZk8z+DSHA5VK0zH
gGd7/oCb8EL5pIP4suuMFBAbVROrV+d4gZvKNxvNj6PXX2JYi/QPt8qTrfEAb/gPScN/qS0GefEX
Qfjg5dXB8/G+UnqjZxTiAzaZLNTRfsah4cMbebxyzQ0pHD9pVwaR/ZDiWjdjPBKqvDjm4CYcmQRS
fpmR3LcHtqk78Sy+kHWS8LDS0qs9ofOXw5oK27eNoR/Ua9EXuYckLmG6sgLcMpwepo7n9noSV/wc
VXs3lLhoO9y1uyzp1sfWv8vFAJCzs6Yt/4mjmg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VR99LzRdFWVcAq630Y7EFJRWQc95NvBiiG4gSJwhRmT1/xIsUwXsB0IgETo3hhtRpmONs4u/A9gr
WUtUyhABXvsexa+/srZm3hPY1uk51B2PSh4KTLi7YgfRMSetR8td/41CO+rhn2THz5HXx9R3iYw/
COHnLU9IDyPyiphL2Y0nHqiJgtzVG30bir5mRljyoNSwht5DgRVHlUMTItehc7+72q2PBiUJudXg
QnLZ6HVdzvBeXUYnQLHYHMXehifbIgWDqN8XMtE5N6tyjgaffHNm9GmwT6YOiZ0bdkq3hFfgPv4g
FvSi7q8lqRsQf/1LAWxd1cS2Z4PRo5HGI3lFxA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
d2CGkFfJikZgaCIdQX2KTqCfSnK+q/1odHeipUFKo3oDNQyUCy5NY/8q11fk0pyKvgOxqJM/2iKh
CkHahNFXhVGHrpWD8YZ8fMQG7y/xxyU0LmBUOR2Nxhg8KLbVsGwzhzKY9/LpAOij485oex2Im7dQ
LJ06qfjOhjOy408hjUI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mBm7GXflll37i5i8mo/ka1qz/dYi5x27FmlBQUUsnGJTLO6X55r12lwvWQf+mOfIvw5S9RWAJ3MG
t7y/ZEt7r2gmOAn19Ah6TUgQ+f74R7tzqLGdrLliQ4woWO6i7YqKU8XnZYQxB4RN2cxUgJ7oqw46
0zTi2oVE351BkvXzA0RFyv17rvaoWTbAb+Z+lm3pNJmWqpAbvUyAYDbyT0IgRPf0k8MPH0Rs6W2+
+Iws7a5f0qZBiOvgftuu5ooUbW9UGZjixdKdQ218xDqXiIZLWBRJ1hx8DxMZyVCjeK/FaXbc0VaT
7QJwubx75RPO2g0KC3Yj5ngfsXxgheoucI52hw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hitVmtqD7Q8RnkCm2t6FRySxoNIpWecFZylULBFPM2WrnMOjGRpX8w0+PHv3O53T6akL/bPKCi19
TLbFsSwil2QIDnPMhZNZwGOKslpbwJxbRsuSlb5SEx/+LQML0L1ZSKkt/8d95QlekgqkPx8w5TsM
6+h45s+KB9Igj+3n8k3lT/s5OymDlpG+USbLUW2d1pPmK6zjuOlJGBBsC/zpwCEQs5YKvuK+H8rT
ErfSfRczZZfJ60LtgF8TAieKV+3/1ji4Ps/iG/r6K7mv4F92v5sMlfzKe3+csgVVS/piZkD2DsUt
MrI2mRWra0ENxYgiFrJxLFfRnkiEaReCWtAV+Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q09q9bT/Bzrs2viF2h3vACAseMQLWlRC27oL4a/v/pAnD9UmlUebCgbmsLQozXBtluSQ87Eocg82
FNkYPu8hBRaDgWRuhoScMYE76DGzwGZtN3neETy3/A1fDir+TwgD5LJzI9uK/qAotRmvrwdRK2Vr
w0Egpm/sZQe25W9NF116RtGg6PA8YrlnjjixTup1+3vGkLhpbi7WXhzLEyWJkHqLAu1mYaZD8OUW
gEhc8Uoa2Er/tcmp/E32uf17v1dcYwp29fd+FxUJ7FO0MKM0TTNeqHFqsOZjW7mH9qCMp7VbuneQ
KIIhn/HUjhnATvZ2s0LndMXA3Tdhuj0vZWfA0A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4576)
`pragma protect data_block
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
0w3zf2hi/eqrc1Gi9D6YRQ==
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
