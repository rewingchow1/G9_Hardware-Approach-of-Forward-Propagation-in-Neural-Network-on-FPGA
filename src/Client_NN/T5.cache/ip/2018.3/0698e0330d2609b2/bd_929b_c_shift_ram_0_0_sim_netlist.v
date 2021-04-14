// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Mar 27 05:44:21 2021
// Host        : ece1373-2021-dev-1 running 64-bit Ubuntu 16.04.7 LTS
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
HVhODi3y0F51Mdo8m9bVOO5YRsVx8Z2LpLuiliSvjXZAtAI+nJZsku33cHtmvLalgLmoctLZmOuH
QRjTeo07rMAYdEHIzB3lWxFuAE1CzXZK+fmR+y3Z76l0ThYZflqtcZ+JFdVL2/SJpbwML5g6g1EV
+WtunsxRZFXoIjpMbeEBeEDqrdum1c9dP4jepguhf45mZnfvp8wfCvrcFwiSswpHQUvCejO8aWxY
SK64YhozlSWwRJzFXgdBmAYNgp+LFTDFmfD07Du0mOWR8AtVEen1cz8wE0UedH1FGkc9mDBFoeRh
H1QrEKsdfvMNg0vMSvZs/xM32G4wsB3KKtH1Pg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wnRPPUeoKQhANhy8VC32W8STNxwtNOa18YQzXhT+ZZOZL3e/fTMhnslVqf3U83Q18VTALxadDvhK
o0sZCNxMIahilK2XsnQXgqiglY1kwSox03/isGVkgdqXmD/qdDNQWCE/sXFVeUlXXeNPRLxX6rOt
p7c5O0pG5lOXa8f7cMW4RO0YZXMWt7yQR6qMfPfkg0IfwX3Q3+ilG8enmSGV6G7/9EUvwYXTOLFN
aJauJk4rgHgtt+LyZsHpF+Tn4ULVzn/qycWpgtjBRiKQ6LjX7ahAkxFk1M2G4Tpdoeo6qpyu0sM9
Mt2j2ZJsZvGIP+Fk1pfGXglbG5wEWR9NghShDg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4576)
`pragma protect data_block
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
VhV3Vq2nrILOoXPTcBQMJA==
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
