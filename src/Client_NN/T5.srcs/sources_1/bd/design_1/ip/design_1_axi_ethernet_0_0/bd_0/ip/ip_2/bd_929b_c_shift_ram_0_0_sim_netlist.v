// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Mar 27 05:44:22 2021
// Host        : ece1373-2021-dev-1 running 64-bit Ubuntu 16.04.7 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rewingchow/NN_16/tcp_client/TCP_Client/T5.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_2/bd_929b_c_shift_ram_0_0_sim_netlist.v
// Design      : bd_929b_c_shift_ram_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_shift_ram_0_0,c_shift_ram_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_shift_ram_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module bd_929b_c_shift_ram_0_0
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
  bd_929b_c_shift_ram_0_0_c_shift_ram_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_shift_ram_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_929b_c_shift_ram_0_0_c_shift_ram_v12_0_12
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
  bd_929b_c_shift_ram_0_0_c_shift_ram_v12_0_12_viv i_synth
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
LF65wkBTh5Z6cl9rM0GDepNOa7K4JYtdCP1GiOze/DuNEF+88aDnaKAalyTnnn4uKmwhiAaG8Dp6
NKh8LUbi5yN4NjY9EaeD7xDnotaWViJoL8g/f1NGWkjazPKTePkTf2BJl8U1PG/4D1sUtYSyDzsx
FaBduzgHWDgY3/uQEKtQDI5QvMhSyAwG2JKI32AfR7dT5f+qTkIA5DZkWtSLjxHzd/HxmtzmS4WU
WXcwFy7GtywUKpQQRg/EnrM0X8NppCxUNYedMl2pElXI6okESsyusIWC/yodDOg2dWQoTe32PdII
nzsFaPPhckb0l3SMqIwweW3RrCy3iyQUXT232g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnZQ+KP3AuGtCpkxr5hLTJ06gFKGwuOgkToGjCnlxaiFb/600NV+yKJourhxqGk6ewn9SGnZnBpR
ouk8UBwkSf9weZz7fszhOagRb08tW8NJkX9pJ1ZMOqzVD2eU/zWsfVM/NRRRKvxPgHPwGUZOASwP
5dgRM9CfyAmNH8zE753J8Nvkkt7SyXwxAS/JyfhPH0OI4koKlXl0Y+VuKySoAYqn/EQwTkmNXC4L
BlMe73Fe7c3PMioGfuSkaqvfEMHuD+EL8BgUWA86sdJI72vD5/7USt0yWLon1bzl0ZMmWahxodXt
70QHKx3shgqspFn9dbk83ZsMVIOwEufwQD4SCQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4640)
`pragma protect data_block
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
VO5Y58j/ax6V3M7M3TmpcSDIuvvtxYg=
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
