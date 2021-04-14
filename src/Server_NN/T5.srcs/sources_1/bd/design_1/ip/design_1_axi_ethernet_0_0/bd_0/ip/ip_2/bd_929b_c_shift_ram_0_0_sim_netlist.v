// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Wed Apr 14 00:06:03 2021
// Host        : BA3145WS28 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               w:/ECE532/Server_NN/Server_NN/T5.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_2/bd_929b_c_shift_ram_0_0_sim_netlist.v
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
Xh/9hCHzcShWUhUHYgKU+RHhF5qZuMqWpRVuXnZBBBUG393k15Z8GLAAyMAsMkWxaW9t31LeSFVm
PiwhC7n3zQCdunZacKeG5awyGPm+e5+NX9t7HIn0Gq+MS55Wtx+bQeUn6UeOkKbVEMl61Ijq8Uw1
Tx0Lqlh7EJpF+mou0YO76xBcJKtZrYOcOVjM9TpUR9pY/T6yL//u0kUjV2ioRVOXrb25Gaww+9zN
m7DmjbjOPNqkQv3vmaau548LwAZ70dAPTB9MRgX9iDkqxnKaiIyOZylv7SE1U+xwJyXpXzNchOKH
iC9dNbwBx5bqrvXnWNBXEXy2LjisQ+ptQG9j6A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SzvS93XKw2ZF/L0FYvTPbx4jaIcilgvkBj1DTuvneroFsByZEzkHg+Uk8DL4A40p7f0GMWx/80CW
ClLbR21BkWslrMJupiO+MqfFuQp+RXbTII9c/V6f51P4BCtSbEVdS9YI0FsWtVK8isiN1PhvEXrM
YmYWkS3VODTI3aCcEyqEJBRFWzMvPQ0AgNgqjyO22ixoTHNE6zIpuv7fVoGg4+rh39lThw7Hwa/E
cfv+upvRuZCZ0WAxa6N679Dkcn2JeOoITVltIzgf0LOYufuWpQG0leLkdBUel09OJTXN/ot1pc0I
0CYr7NzVR/pvc+A1NRjMLXR/XQqHlRr2X3/AIg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4640)
`pragma protect data_block
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
Chlo/PMiUsqoV5W9qc6TnOG7OKylwEA=
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
