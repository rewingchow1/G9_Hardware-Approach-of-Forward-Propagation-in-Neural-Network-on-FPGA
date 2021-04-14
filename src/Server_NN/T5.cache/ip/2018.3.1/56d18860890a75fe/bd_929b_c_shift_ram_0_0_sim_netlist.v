// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Wed Apr 14 00:06:00 2021
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
Pn13qHZ1g97TnzGetLKX7oDvCpsqRSpYP1bUC5csgWbLaxUFlHtZpvO4fK6grqbrbjdi+WWcoX+x
86ZGkDNsfntCB31gEnpFtqHbkbfzF3UgXSo5p5zuBlg3FnB9RfWZW44baRhg0Wrt8wx+bkejRfk8
WQTd2KQKlJ3iKCscfaAy5SG7NTuMrh4tY/BF24MluHT/HMLxnMxpmo1EWmXaeOiLvhNNHVn9uC+J
2+srxAyhONGH2mguC+11i+rPrwO25jvEetXEzOw2MewY1Yl63xQN10TvLC+n+MAdectQwpgFlXzd
wIgkB94TmAHEgN+4wD4yBR3bXZcbbC/Ly0ejTA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RQiwi+6RF/yqvm8dlnfqon+ps0Lox96pFL+gjIjxEsCxQRsDAttWHClIG1jlY+RqXSHZ8RK6lXVE
Y8Bs1H7B/zqvWpLaPienncmH/bVgLkl2Ee3kD2tNp+6O6ZpsinxOQXcHjvE5fGSQfVt58BXg0s2V
SL+XislxNDGqdp/ughIdc23ynt2Tue3mDYdKOLhc6fV7dhEzUgFy17aBjqciIH2mxbmiixDAuY+n
YMd967SehVh090iBnpoWnBZstQB10tB/Jm/WG3YTcrAZMuwNjY4L/pcwBTJnzunMtE3pudYEtl9O
4+MAPVjEZml/AuCae8/jDmwYfOThrVX/EixTnA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4576)
`pragma protect data_block
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
K7akHNtJq4XszJ8jO9Jnug==
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
