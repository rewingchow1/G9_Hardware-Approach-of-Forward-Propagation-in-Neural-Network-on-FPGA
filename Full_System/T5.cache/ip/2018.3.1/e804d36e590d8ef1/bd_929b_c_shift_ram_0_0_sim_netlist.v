// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3.1 (win64) Build 2489853 Tue Mar 26 04:20:25 MDT 2019
// Date        : Wed Mar 17 11:35:36 2021
// Host        : BA3145WS25 running 64-bit major release  (build 9200)
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:sinit_intf:sset_intf:d_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input CLK;
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
Pkilh5lglU2lo8BmByq7bZVbkDbrDrc7wqxH9QXF6iRNqSIQ0xorGpuNgNOgLxp2GVjRzoNVs0Jz
kc5Sl/r434Tk7aLr3KxDMPE2rGZAl/Wcw4KwJQ2bMW6rGyd47Wr21J29pfuB9UM5+TME5R08gjot
G9JMbYWI/yqWDuajWm4pMUR5TRpPFU7eb1r08X9gkZQXdl8HzwR8YppxWjbv21i07dt4UxWh2+d9
SWnHmT7yxVH0Qe6IE03ZbwvPK5yBTQT4ECoGb5/gvO2oCsACQzvS+Ljf5Jy2f+ehlRCJzTQoAt5Y
OLowW92fE9226t6i8kiQ6qCGTkjwO/51wzBujA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zC4Veth6xcACbK6s0/gHilwN16968CiIF44/ueJ/dq+CiG76PumEBnEep+vUbfOapuxZnYevIazt
9Z+TRkcZxBGMxaRnm+NnrjtJg+b2tbbcIHc2W/EvHS1JXbHSzk1+eetOJV5ig2TZbsFkjkYsAlG3
F0McjVMoB+BIlA43N+hTpoXBpGScZpWkVOGkAeqbFn3Rouia9MUKz/6tsoC8nvf0hEPApSHb0tv3
Dvf5P8qnz1gI4LctluvTVBM0Y6amdRJDpz4s/e8dnAUU1Li/63hoUa5hEwmsbCY4twpE+0+dydTg
Z2lsux9ofb6DBO2Xjc6MI+iMyIAy1cEVHcw5og==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 4576)
`pragma protect data_block
vFJMMuWBnb4de+CCnAeSQLz1B7X/vJP8nKUaLGkewvMDa1br5rDq3ALxa/e+SeqL299G8+D6eIAG
e1vjJL46PRYLWzUFPasp6JQDkWyD+RsnpjzB3Xi3ku1wOg5v8asbu5KczXOKZ2zzftjhqizwi9KS
bYwkDbKIqUfRASf8FWF5ht0sU03NH48mkoNVX16hD1bCa3HJotkKzdkPrUoKIoOrmVhsqZOZY28a
PDgnWcU4KqNHcg6JvAj0CqHEKNMUaE4U4cv+kNDARJrknkVPnIABDBxJTpVWeg/yFhYSQGT4Fa+q
WOCUk6mnos8yg1b5HZEzLA6key7qAVnB3sPu1M0CZWNneOqVd6NmtK8lWJrZZC4ewWi5eSrmkza4
QBl8dHIqUUuncuAbG26SnNNZWnkJGoNHNetmhu3aAa+h6rVfatsHgW/zuAD/f168q3kskmmVfqNs
j+NUTqvcbUTFdTEumbEVVyoPvSDK0cxgd8EfmBi0cLT2SjGv7paLZRCL+dG9hHaBCPYOO7x+Yina
XNyoebj86igB4xyjVbn/Ql9S9JvWsRK/PhspNpZ+bw5VN9cRm4YdKvXP1nZSHPxvBygBgXuQYKyY
UPz1k8bAsziY5jXY+NcRT7pTFaX0hVigTt7XteFO+i+DJx/67VdbBsVX3jmiYcNoon0wpst6dKyY
IqpC56V6/77jitYkn/gMweOwiZfcDyqPLUHtjYlVma7s3MROpwbfAhzHrA6HOub7RZJ07HArIujc
odE+nB0Xj/O2f8tpIO+dHWXrwFSv+Owtt1NS6mzYZQaR3eR93HelqQo/93l0UTkd8NSKzXm2XSyl
KV4gE02rkLniSA3aTRhTZykLx6agYcIxOo9ucmuXxeCRKouqvF5s3kXA3ud2Iq4AjpoDVV33qCXw
YPUHRa6zZyZl9vWAc1L/Uv0LSXiz3Vq3tfJ2dAutVOgCxsXR5iNGK0u/O4IjHLgS/6BbbEmfe9wQ
mmbsmvtTL8p6LcENKFP5u2jcURe+5xBgeobl2Vzlv+Xgnll1Zqeo+DsdJtMl5jNM/GLFcOZFpEiD
J6oBPssZV2/yOed0Q415Q3nTe33NdCuTj8XwdMkwRIsKwqXwFC4xrtuVjN4E5ClRmLeD0HLVQV79
BiC8Dosrsznza+DIAKuCDdWhX3JdobHWk9rd2NYXFfTkmHmzTKimfxyY6206+E90OqhqRujC5b7/
CnOLDT7fAyJLnyL537XctUpK2NEqDGJ+NVkwWq7Vgufs50wr5ssVryFUhyoHOeNFDVcyHAMbSHfR
i9IOZkeCvDDyAfqcwyFGpFxajx+QYB4FPydq6C2/ihzFQpbMeTQrk9k7skyfErU0w6KjYymhrfRw
j6FIBR9NH2lLcing9Jh4l/7+Jr+mvzkJ25g4619D+hXpswd3FUVqR/J3mn9ZNMqtwB93pxbtpoAN
ZnDfjuUf3aIgwrDjqxX4soEsgbrFiSoUwqEMezJXb8D+whL0nKtcks8W1k7nhywtcS5zKuQyTgFq
1W3xBf8sKdTx2+PTNihWF/Z9BP7tbcXDdgQIiupJNq5lAt2l9K1BQilIxUHAuJgw1DkE897jYNn2
DgrGhx4ZRkqJ4RiddzivGcQWo4y0mNd7y2KjkQomz5FuNfLCoplWnVgOUvtS8W69zwEMXAR1Twmq
rPuewWvPEWheF9FL2q+LAsODuZ9MbJCzOeOleYi9Re7bJ/8Cw3F56MPogGjHC7RW6LyBKAuWIga2
RY8isdU8xHpx6mDGS5pPymSGDRGaTeftU1bQXH0joCers20BrB+KGO9kCD5sJW8kzQg4QesqFxVv
zwWovfAlOYlyRAEWIN0ZI0vtQvsRnnWKn14Fs6Xjes0axz7dsTxhVCmjqDgm0KIIhoqcBed8I9OM
jbQYPwvdsEgyPsMrTB6ojPfX8ltXQVTQ8DgsMVrqc6ToGRnHbfEt4efE6w5D1LYVQPBNLoaM+6qr
3cV5YdhLiDpjS+pWB6k9dS/gZBiQRvjRFWNZ3VTCRuXrXiqH823gS6i8EFh8byH0BghhQK9K7A5c
FT9p51ymdEsOYxhWPfpomQ9HIexFXAOdLYL9mvkl1he/jgTQ3vsg2nDDiVLOd1Fax64rMfuo2ylc
M6336wEcyLRGMVDvDl9LdSISU7Tx7m1jn0nt1vWCgJcM8eiTBVlJiWQIZLTf2KW3XwKhPaOd13cw
HAwaDPWiX0q8SqC9mhy7+1CN3zWUGQ8G1MXWLu90i33scgtpxrRPdvLluD1qJpEIYjWG9cNo39Lg
DdpBFUiIZ3PIHd+pV3FxDsbQkfLX2TvlC3u0IOtO8W/00z61SjJ/VyQ8XLcVeR0U1b5k5u+qYqN/
C9jZdHJ9/3bfqcrcTdycIo+LLaeFiad5LWrcVtwNiLd1tY3HWfQPX1ppaWbK6iP4G4Drp5FlBHNR
6ydaGTiEjr6oUbFNQI+bt94PQKGknoT2nViCIKt2MrisYeaRr7ra5oiMMwb7+ReNn+H6kEehDELz
IELOwsVw1FpKYap1I8uvY+m4h47DjtzW5x3lRh4lpJ062Gtl1GdqmwDuC8fLYEMOYoULOj6gNbru
5eaWeIH0cSWYVNt++g2GA3n5GwYSZ5hh05gRQ0SHtuE/8i/TI6CSX0gKWTQ4ivUe86+DcQ/d5LvD
FzuS6wW10zd27ev7MajKCJedz1AQ0cCWpQp+iktEPFBjjl0TqesttKXN8BU5AZOwmHQnuRCVOZqZ
nf4yAPrlT/mEMHKYR6tdfVVCIxL6Bqdn+Jy+TTPZ4IQ9/uoRjy5+vkFS2x3zIbPFyYAOxkJHKn4b
nIOFLOhuEkjZgBgA3JSzHPVCCnONys1fLUJQ57yVaPWY+oASNBaTH4GZMsesYjBgK26ylWbWi40s
sj1I3ejAKjHdTnugdDzEd2gwgApDAnbKuYpCKQNCCfJVa92c78uPS5jE8+uAttXXxRCvIRHRsLpd
Ay7/Yc1/w6jxJbXKkRCN06I5F6xT3Kmlu5TnSErlGt4nNtEf0TQXbCogiLW7+JJnOsyLDumZriAZ
Pl7sSl54f6trwjA7wc7g3poIfX4eB2Sb8LNtgGi95YbDSza4vqnOzgpvwsOss9tphhJ5Z1bbX9hD
ypXAc3UUeQC1g9ALJIR4rP9FE/QUMHHiz2oAJDHO3ZffPWRUfLZvlOAGHzHxKEKaK+ubYIFa4i/o
CJjnYebNBvOr0h+C5WLy633XJWfR1MNzWr1BRf3Q0XbfSjmsYEfD3zvgV8/oiaYqj9fFj+kBRIlv
/VtHXW2qJrq2R1nGBlZmlcGc9uwFGFsdUGkWXm9utn1I5HiQlqYCbwemifLrDA5OGy0NXqX4yLb2
b6BGvzQSd2mkkb4zLTtSsuziOsWIRwE9OAIItqS0Ma0voeueswhRJw1etPELURXhOl9fYPn2aWAF
2TIBKICdgybY8n7B7jmbm4iC7zpejWjOucMdui3NslzKIFUDJblUEize789m+ILs8BE3g+cRJb8m
QmuCQqYZXe6mpTf7AhgycrB7PJtgVTFJsF6CYdhPrpc93TY9taCXoypvw+utSJOHF0Z0bB6mCiOe
Ri1/ccNShI8v6U9HIEzH0UR9usnFs6icE2UfN286YbUR2580Fjmbs5SdbQ/8EnsmB47I69ubPQKw
dKgV6VrxGQBL6ZR2I6AAmnOvQ9G/PnW00RzdXARbO7M8Nzr5MtKIOj8DrpAR3UkaA1oryk4dntP1
xTNorvV3widr+fvIHGfPjUqhneVdgz+2LDp9KSarYvRgjB048tx2l9axQrEb72glbbmjMurMzzpn
1xP83abxncZlQ+pSEIgFIT34t+wCZqXsXgOQ4QCfwDNVHRF1CZx8DfxLWgjB6zHi1DjYiixUsUo8
R6X5r76ENXDYbR8EsglcjXC1WM4BPA/xMbFgTO8GvhGu1kyQsSCJ0A+EwcK1lyW9WdPNjEZoP5cd
tDohABz8hEg36mLWOQ9JZh4rCOYMd4jurPxJgCRnhgkdaPS3FxTU7Usy2MJYbvNGIG+et3BHgeW7
5zPzs+lfNIL7iu7MPFR1m2qEkLog5SMPEjyzBOX7oKJyeAipl1gzcKcc8SpkOewAmaAtTfRmKUuL
OfIaLuRAgM/rm04gWo0cfI7RcN47UJvS4u1HPoAS64s91LxMijvKGvIKaDr6qsrCqnYTChS21hx6
EuF867rzxUhRbKqxuEl0N21i84SZhrOAKQGiqxDwwOQ2CuXnLy89p/ANH6A1VWnbQsDCUV0GL9O4
6lV7cs4Af2K0A6JK/d20zkNyHLZ37CtrZuvLoWAjp8VXKfLGv2DdiqOO+140E1TvPuyevJW4P5Kq
Hi1oISgxvWF0yIm6EKL4+kEpc20T2e9EHwVDGQ74rnmRouZ57Q3v9bdVduMtWmLjYmZao4qQ1QDs
/dW2oTibDlNsZrdqmd/B4RegsbR775xcKXI+CMSIWTQ0vzEDAoz/e8WfGVLKYThQbo7wC5uasuae
AQJ1su3C/C+N8Rb9T7oT7MQdc+5yiHhxHY0SnBnqDcOUA6lVH9NOca7D2fR+FgCEtTXfsIkzGWJz
daKPPecn1htS4ZPoBy7gVLWFxXfXbF5VPeD+xHmi9xPSbCP/hZZ+jAhMM92TrUULphHe9YL7/ztQ
Upbd169/7A2rEAizkiJt+QhlFuXVyBMolRQXvd1dwyq0X55xJJ4SDFuojpzsXZ0SKkhhSrVtlulB
j7IvziAIcH612YgdXdHnbKlxJNShSmM5SufOfNq9g0Ff4WKzrwDeonjezKBh/PKHlyFngyFFvfVi
0i6PWCgGB3DN6x8HzFm+OqgkaggiGlbYJYn3KSiuHSO8HL0eXDa1/NTw3OtJ417yrzZveIx3vj8g
3IfeGVruNn1rZ49C6vyyP/QShjRt3fO2TCzXSf1SPz2UkO0sF/SbypRsDC6p54YhprM+6a0OxVVK
XuAAbPpVWhRnD6bdXw+TgoRd885FhzSghz35tY46RAdF1mmaCYtraaMUo7fGVZHfE+l/gbc39Wbw
OoIC5XEKZfpym5sUZ18O2Kl/esSPbPTBGCG944q49SNsXb+MwkbCiShNQEjN5Up+TaX9Yb9z53we
UCZmM8JSpEM//BVdlKXpXTK3SEgKgHdPMncmwNQKnU8+Yu5RvKYHDqjFJKgmSiCeCbh4Yb9x3i6+
z3Qff+4m9sG9mQ16xaOqcsCktl8QBLwPAP6c95X/po8ELuiiJkTwmHsl44SCLhcfcHIiPxclKZSj
X2vZ+qo49fdL6vkrxSC2owkj/VAcRWi+3/Z4jqfIbpvYbTQ/4tOlnLcZBld7hvl8mhjXhr6sEQHf
xKRjTGnb1+/6SiJAcHAjm4UItHJpq6YpZKQdCKbfCihDyIhW3jKFgEddFUe8mpOq45scymzVMyq9
g8enSUShN6QZyPZjPIQYmleQ9AKKP62l8PnkwCXb0wXumMtJXLueDCNcCJcYCS+3W5Zfsv8FU0Nx
iq/fRIFjg3hqX0mpslJCGQweyn5cnyJHiOm/CnNyAwBxq/eMSHt4XUJtuiVgM6v81uBsodurNCwJ
88W/WS+/YgJQmjsjFW1G7AmygOti/jQzboL0IAF7/U2alfATnKCBoM9rMjfQRh82sXcd53nmDh9M
Ud+p9sOZbfvf8M1IU3IEpT88oNxnrKe8WOBl0vI8YxgAeEr64MDEwCBkOlvvHbNeTooPy+0FUyni
weEw1CFmEj5O/4a4HBpToNJ3sxjOfSz2EMW2TXXavZIcR7tw1vksqMxdJi6Xyr0pj8VAGodoI5tq
ZETvZPWVm2+YqUVT1MGdx/+5m/wUa4yxpwwPXjL2qfC2X82NWnqYP+4JM79Da2dwEAlhrs7aqjoL
oksnRGwXPI5WMnYQ8RpEkjuOA6Mjq5aMh1nhtW3luGZosfOeD4IfFCN0K9h9GodhxQYFS55+SQgb
E25bcRtilly0FD0TkVZSMRWTgoHohmiDEwyuiv7Biktg9QlYm99CEO2iwxLm1Ax+SyAsfsGx1ccI
rnmQjxBpSjjDpkR3Kl3qrYLsfROIXxS3jdZWiLFfd/HKhg9GtL3d2RuToAwfKPpnsunQfsNxJypO
UykSlhyIbYoZeUQQjP+3xA==
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
