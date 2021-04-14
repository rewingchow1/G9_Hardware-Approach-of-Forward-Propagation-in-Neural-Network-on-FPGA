// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sat Mar 27 05:44:24 2021
// Host        : ece1373-2021-dev-1 running 64-bit Ubuntu 16.04.7 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/rewingchow/NN_16/tcp_client/TCP_Client/T5.srcs/sources_1/bd/design_1/ip/design_1_axi_ethernet_0_0/bd_0/ip/ip_3/bd_929b_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_929b_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_929b_c_counter_binary_0_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.3.1" *) 
(* NotValidForBitStream *)
module bd_929b_c_counter_binary_0_0
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
  bd_929b_c_counter_binary_0_0_c_counter_binary_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_929b_c_counter_binary_0_0_c_counter_binary_v12_0_12
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
  bd_929b_c_counter_binary_0_0_c_counter_binary_v12_0_12_viv i_synth
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
AKSTWBvpqpjKSMIYlpWFz8fw8uOlcH7CasnFUo3MYegOyI25kKyky901T7JOJio6WgCQwr3ADs2X
yyIvaV8EdKZzzmiqQqsB5s5M2aql5J+YCFyE8UTJoP+EGe72F3F8CfmgEJhDcy1vwFhbR2vC+RIK
5MIepe2Kr8E5PasniBvM5eqC87RCekFF1KnM6GzmuRPXzjQudb1a17ss0Zj3mPLGLepeAHXqWFa8
bGlyb/CR+YJQ4sJ8jjGdZlPr7wxkcW7ccpjIGwUyoYo0MWnBxZjRs8FYg8IGCmdxUZw6vbBTw9fg
+4muFh/50y5+jeuks7vEwQNrmyf7WU6jb+yKpA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E7fd+s6ixroQltO7rrsw5vhQ/wryNDwZOLU+N05C1zgrgHRBpy8suBbmdAr0sf4Sdivcm1qhRkZf
utM1sY6fxKDHhT2NXae0uV7xfPunHh93yQfMcGjr9Ja4SjQf3uEaP6vdcAPjmiSXfOcMFTVDs26T
IvUQSRSeml1AtYPLm5B5CViyqZPycm08ytXgoQNM/ubL0iBC2NXnzU6RGG99eVVDVD8vGNcFES0Y
slI3aNwLnCjPHbZWwnzF1bT6yXbWUcVhYb9XNKrC2Vr3RpqYEmQ6vJrTwvaOu7AUbbkEaL1P98RT
SIvwtOui6sqG7HaDvQddjtAHec524RLMApe4EA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12624)
`pragma protect data_block
+Dn23mrQ6Ztz7MAL2vYVsgm70Cg8Z4lJA9LWwVyKofm1HMN7s/1S3rTNt+EAqOTN1LDYMLGn5L/g
wxMwZObNpa7++NaJdjmIAoHqblMecRKLGjWC+A0XZt+MCGQtiAqbKk20VIT5/7eipqQJWUuDwkZU
gkT1UdU26DUb8G/NR87STF7T3MIdBqUJR39ao/RljjE8tCke/lxkvVmIOMjB0mukvUvxLnjsPAGp
LXqXID7+k2vGayz7C8+Uo/W3m6Rdw3DxR0y/Dz0v+bwnGL9oz1Hdv9jbtdwItRwaJDJA1NnvsDUa
5cVLmNatNKoyoSEy3vL+TtCF2OISEyumoxgI0PZtWsnybp4zoQslmkMU9l9kif/BaoQmRHJKumJB
CzWAge7t2j3nWJ3SNuOvQJzahpmDoFLvgzIDg3I/E66FcVrRisA7wAnr96BvDqRLEv7h74q+HkZm
fJay1JqWfEub3kSSMWMDWW1Gt+Yg1y8ABH0bhQ9j5Fb2TmQi7BIrLKGch7TRcqa7RNW/IEVvVaI/
H9deHCbtVm954phQIqTWWAIczAAJA0hYzpnixRXGLIgt85tiENMrZD5ADCdw99q+gu6nhyeRQtVk
Dm2OhSdhAtV5pelCHwtEq5yQQavc4PEp0Tabx8qL/oj7BgKTEbG8P4ndIrhAwYYBX4eEK7RHX4cv
mq+/84YERAWNe9eevA3noOUWXkLmYnqHstnEV2pPuEgIOxFdEwp6G5ajMPjxYX4AhF/omlp2ea+R
zudSzEGQFrG0YxFuNN06P4LGHg6/focrtRpxMSaLgeYET+S5xy1nYSNp8Xfl8q33kPTH3creCS+7
eDDVl7/Q9kwGBhfso1OSEGwrlxSyknPPEZjV0rgM+4Y3YUTzwyCm29VP55hYoidnoVG2aB6lQ9i+
/X1DhmsEPqKcYILkRLFmE8XHYPOrVHpaoxMJMSzI9U9h9fCpJEWDLw7qaPbUY932sk9QA0B/Mj3K
dGCSRoPo0m7PDme6IdjSDvGcY7tSXYK3F0i1HSwpgk3UngNCCshfByDcESoyn3aqQa+Kmz2RK65E
tkPCb7R50EU51kJs0oLDjF1ifvdPhYHSwh0xtnKZ49o2qYWDTQ1B6VwlvUw3ky1iSDxBQrZk6AR8
/Nd/rWkllz+DDm+yerifXA2kPG4+TrOdaMuaP6HZKVO43ig6QjAYCu1CGXqQb69RdeDk7I4t2aEs
f7oGctneDKziG0IWnlwtzp5LbSse1dlHfX7bM4mVd7NuFhMUXXT3UORQR3wIGaMP0XFUcMyf4wAX
0MsNiJ13pZh8VQHSOEqxbk71OaaLI8h3FxTh5DcVYYCQt8bakgHYaDIy48JOG381V8d984oph9Yi
vFz5lZzlE4uD1vBgUVE9pcRPwf/f9rveizYgGTNMtIposS7lkNSub1b3Ya0Q7ia1zNrjt/Hc6Ddb
M6e23fGjg9oXWy5GWVdDO7s/UBybnOmiqIh8aT9NZ2gzeoL3koNyKmJzLBFR4iv/xu3H87zeIxk+
E9Zzf1jTK4ihnNuBJbu3XExM73iKjgqJd/4KDn6yAUdWbRuFYmF4ovGKEz9FBAhT4nsGr+dpIsIF
Svzd6DmwCK8nybchUGLD/mg8S+if1J+M5+FaisFQlKcL+VndhmVo44i3fzgC2abF9QvosnM5/Xiy
1mWqgWg+vYgKpnReLgNk8J+NF/PalYZ9tHvP7hCVfiRwhBM97LDGrsnD4f28wUlVwOU9BrqkrTj/
GA9NbUFFvx2Ik+qGBOfsPVHidIvXjeCVhHHEsFEfdqt5Mf8Fy81As7ge7/1wfA/MGeUbA9mcmiv2
JzXBfOPymtAwkKsV8zgzm9OFlolCGO/N65wzZJn8gC0wUYr4f5IxrbGStypCZuoqSBXcRTd1lyWi
jciCyqZKFYj/agYWY4E8M0bmQBQ7xJRI/DNfY2iDprV4kfJuYmLCPoNZPmDqKBBjitmhAOxBHx/V
H5M+G3/8y/bTX4EXYwEy39iGXUFQREgSMeoPRUrz82IeyZdPqoXutdtPxMcwTLIjPyRxRWooHi+l
FhfXsx9pMRnpVuLdzaD36TsNKQteMU7WUgGUWLHIpEgJ8/PyEeu+ysJ6vmWN1uzP23Y4gdv+FvMk
OGOcHa30EDCIoPdKJUw448SW3iSkDRntq6BSQV18e/FqZ9WO3Puni3sTq3S1BXKd5VGiQlk6fNP8
EjR1rBv4ClSj8ZDjTQL1bKiTGTI1RsoWd14zpg1DZKqlDz6zgVlyH43kXlKf6IRUBB31BwwLwlg/
bUmhd66EdgizlSTrWbIXCGjGj4qErE7KjZpbcgAQITOkZFCi9MO/wAWvtgcjDx8DXIcRunFKaw0A
Sq9UgH9n/6VOmKceaFQBgbg0SH7B7Pcc3vaVPOppOHnBgfKtd5eyNtUGTq+ebJY7vWTHT/b4Milv
Bpb66mYpFjp7JSCUdtqtm7OJ97ZuVEHyfu8lm8IRMYKVS5ePy2Qd4uzsu7wfiZI/qJ2XgCTt6QcW
QIvLk23PR2cP6/RjZZB9IdJ3YVMVENc/S1uZRCjF454m4rY491BQmwbrcJcyYOBNW4Ol7RMGqO6X
3wLrGiq5tX8ZZWnDZBxAIrhKqHTQOU/XemK4NEz3tQiMxQfkkFRbEV9t1UPIOYUYcRln5swHUWlc
5wz2/ZRzz0wunuLhfQD9clUckNx+BPPQdIXKpTJgT0ipXP0NTNg6WLFLj3k02vQgk63yXhnOYlEQ
lRqY7ZFOR272HesGRN+U1oKihCdKZbfW5qeA3hooaTUdAuz9vtYAS2J0KAUe/MGmlACWgoS9G60F
VrKu2I3VHqpafJpl0BiGlFnn5YBrJwJH1bLZUqwRDL1Z/LBLxgxgXS7/ShHNbzEVDYOebeRdF0fK
7xMamXghXcb07lPbrqdW95xfm39X0Q7kN4hIsRGk6xvQueSg5Bvt4t+GUkK6RWG4sWWKPlsbJ8CV
eXQnysmi8VPOzY+P0t6GFLevQQjCwiVNSFlkXA7edXJxt031gaAIK3G7S1x6knuGcj4xGEUVul77
8DMsnFDTR2Qy5Z0vj8ve2y3iYTWVfCx0pGQEsMRXobrfKLbg/iUTA8Mf4RXcpHKYoe+iGctGzgkH
MCpDrWb5vRcWTnaO1waKCBNkAfg9pYuJ63kAb20/t1r3/b2zMhzHkF5XFdWrpHRRoXXrQlVcUKCZ
jZafhB5n5C98Al4C0y3iTkJ9Pp3hmlNkW83hGOKXQrLW0npxCidRlQ9w2FroTxM6JtJDSaXpkhm2
0hV2CG/fSNiNR+5Gp39v90oZqOo6V4XhOQ+uU+4PdkH3/SfUuBOidWkih36kiW8h4cPeMaPHOnSU
sEgCe+qxn8FBwl6BX6yzLKnKqD/XEsxIzBFt9jwpeXyOlFUmmFkT9A46RM+zY7zrDTobrTMH5tnu
Qs4qbxCwu8Yf5ziyIax3DjtJCpKC3vn9hPya0LCRPZ7Pi+25gVRdKvQktQFdfRwi0aFmJ0w3HfVa
HBzamlz/7BrETx4pSlKnirbsvYL2qMyC9qZH/7cmLcBhi+/4cWtMCvivg54J1mMd07t130tMINmY
9oXOQM68wVNcz74aUUyF0Y9ZykBVDDL1j+cgKBjCsI75eJTlOiWD7xv5PrRIqNKmxzKJdz+fO7nz
YPvyxDLaUtAVbJg1SEByHB2gHvOAlFymRTNgkzHCvGjRMbcEfZ7uchSefmzzyvxsrjsjIGW8NsFP
cNaByGRgjroG3R0qLtHSR6JiKHwWqCz4OHc2kd8Qe+w1Hh+JstdEmuXNoqgjYibHzyhjh1yvWe9E
Yb7H32XX3SAG/V0uTi7gK9hTVBjm1zSfD/cOLO0NrdA/xm7sMmHzaZ4sGXoj1R81jHJo9533OF8X
zsWKQpTGMp2fWMnFhbVgPkVVdFSBKz8R5u0nR35LfQew/sbtVr8h7UJrD1Dw2SExOzMyKrnQfZoU
6QdT8FteQa60hf8gJ6/5OSntuYSGBWnRKS1V4gDT/ma285GklC6Yh5EToRzwLqyINIF+kVLgpV0k
TkmtIBBHoWiuEGWKBmEjuWO+xfH0qrl7SyR/9jnXL3Dyde5FchHrT6izNPU6a0oJCg3LRt4Vr8Fk
gRfx0Vheiiis1Mj+R7Pf0riDcbBoWdGRHdwV9ZCwIsLFa2zu/gjlBpGyWKSp7/NwHR8CAKmqAMfB
tsjJGCGEhGV5oje3ndGFeJtfzbjrG/DULGzVzlVgwF8mxx5n0ClD1SsYm42Cx97xM/kKFhP02go4
j9j254wB6D5JbZqeYPQfzL2Of9DSDJ6rWa0muMt+YDIu4UiicvtQ+BdnIqnbw5NOiiuQpY+Xgue0
xFH4etKC4b8e1s5N4n0gTDPFWW9DaUVJFA2EwEFHBCflnLYiJv2mgSE5AG4seobzQMBeO7p7WWOO
/TmQ3Q3hS00NRUn4c8kpTF+IQsjfjpWJssFWPYMhwZHnLL2vhX8YQ7WY0MoL7SZ7EVUJn8nbDp8N
w0zGSz9HA8KsvsET1n2fBeCi9cqbVSNc0T7+dwrQeTgkTy1URfEp97KLPb/1hRVnk8KLATbHLy67
A36lTApZkxn+dNSeI1unybCwqpqPi4LlptLAez1oCcuSf34wwIU8u3P8siK8tDxAgdXEdTxvOowZ
wrLCUhiyg7HwJubE0+SWTHyqDWaRQqDm8jdv3jFWmGOqqArOGPbmUJAX/YR9sHxzDO6hL0DknXdY
6kQbsZ1p8fXn+NK341q9KioR/A3my3agOyntSclnxQoBj1UhGoglx8S7SoX931wBjbI4zHUCWM6e
ywEHY2xCoICwlKzvOlGyrjnRQ50nI+dtUDE0xkPXWWtxeC5YpdmaP7rtuO0b5Bd0hdOpwIfjy30k
NPF7OyS6RThGw1lkhjwi+l0q1oUeLjzyk0DyDW9TI4pztqfR5XQw4+X9qCGz4Egegdg2yM8P9Cqs
fACWtQs1SpLF5cjG6dkO7hZUhi52ZM3F9VWKTkLDVaGylWl98+aIlkYYIq+V3YqcJ92cToTKOVQT
LAh3I2gK9srXby/Vy8DUszfCqBKIe1ziVJ1+zlSGhnzKxWRHyCrR2ceUBMuOHFmN0FdlKIhmjhCF
KAwXejqhaotItoPc+onN/wZaDnDrqvpwSMbtAUm6kVbUFyMZ5aGs75dsnPJMrvu4vVOxKiOZ5BqT
1QD01DJYnfQBRq9ZxEX36B7zp89wLGWdc6WFub7/qkIC8CCQwLf/VFyeMLMc2tnTfU2qk/7KFRax
Pqrin7XHejzyYWkWuzNBnsZ13G1buz8e1oq/vQJxwxYvMn9jr67YtPUfM3ZhUzEwAnJ5mlhicqYF
ihLtJjQM05lSbxR4FHFTV7JiNoW3DoFYQJY0aifHj5Fn2tD0wdrl/EU6QJ57SATOahz1bymIUZC8
UUdHjrr/gyY0Khie3DljNJwnyB1ExKz0vpqxP8BDsuglLLmkjTp+XLdMpwSMmcyj37vJHsMkkwpR
m0bf8aS0zLLbUZQnXrIVIvhhALX7DYDIEQn3r7/HgZ2pKtl1P/Nni+zhPRwOJimDSovvxeRnlZMP
oJNZTmf43alJR0XwtlZ3mS6DBAjsj6FmSV1aBLGURK1fYOcZ1uhKF21FHB2XibUMxQLZRvJ7+B68
2pUpGucagN/Y8Vr/fd53K9ywMQdtnSJJhgJ2ekMAUbj9hoQkwdFjH354OqVwBMsPwJnBzzLKWnQr
nhXC5eQS5AjF0xHQDno2BAFrSuR1ngJtDPYARQf7bZlJP/1GrDrzu1X8hginkXaO5hIO7Z8wumON
B6A9u5A32lsEyQlr9z+ZZp3I6yDR4uDjnrN/dzpAVxl6Z7s8exuz9lCtcmAnXWCZw3MTATDhlaMb
ADykpifwFe9qaMj8Z5m/2x13OCaKN29/TEfiSBa/TXHkOsUNA8q25g2JqS2tWZZpIEwY1v9b7vy8
OgD7y1z5bOGyvpnQt4Zuil8M224GbSEEH4DF0rT1er0cmQ/tMdfdB8m3MYqBmNRxfBXoSGoEBlR/
sTNmYsWqSDsaIlxqa0bTdYJap/deBYTSHqI9Jz1+H2sZ6aHgONWPijqDVGWFdnm7bgFCdz49E/Xd
etK0itTfBY6SVSgslFjiC1aPbLpnjakBpjqx7rYrl2371dZE4GyBwkguR+oa/U9liRFzJ02JYQPS
KMp/d5v0a9/aTXbWVEbLAAr5QwAzjocjaNYQtV7zMcj2qJuajt55kqZnDXvK5uo8KcGW2qXonygx
1Nh7Eru+H25TJx1ZaKINuN6nD5drH05OtFP/2lVIvYDlUxhF8+dkSh1CR6vGzHRhImu+IhpXEifr
sFmBSkcHKVkXOMHemXaecLQg/Od9Qt5pKEc0XBPVUKnI0feLYfauutR1CTwK44/JD9Ak7y3+xdvX
648NrUeocD+l4ZbuPtpw9uWfl1xvaODT9B3AlnhQKFUmUtdnFYbGz4d2oSgCOIHevCvgY5v0XCW0
Kl1mikkkHs3CUiGDfU3MCvhHpdmCTpVq+JfbuwuYGMhsvZCx8wHPKe5+QuyLHBVugq2xlPYYUsy0
ie+FLO4buk874YqTZi/gsuqjXxo5d17yPP1acql7GfJwgPzr2k6NBfwNGGIyfDslBA+AXlXyGCWG
RbXLtbQOuUsmlVWfW0c95kMFj3vKaOX2WdvjrGjNCFSevDsa1fq7W6UsMrwiYY/6jZXVJbGQfcDZ
YxeJdmDVztr3V7aLg1kduiKW6DycnqbzmHvw/e98nNt5Tuqwt5AR7dVAhp2tKEMmoXSa/Ju/e5xz
F5C0FcD5Abae4b7iTtnkseBzhH1+fw9TS1cVDSlER41+iMfMVhPJh0WEm4M06owFYMtD0gFfFzfD
71Vj0x46Wa0jMVG51fB/o09TiuV4zjdaRteoucSi2kNmHOVMcI8b/e7lObUoo7xDVevLgMr9DuzE
x9KrFMBq4RIHDqPhvI4/AJEau/pc0+yBj+vgpAKrLu/3XtPyNelJWlaHlfMaF5daFlQ3+XB4Se6s
uS7ERx4rMIfdDz4P1UDNZBCdXXk07o8zwdSOvwuvboiJubm7qOtTYxZsfKmm6TRyF/v+quop58CE
j+m9j+kLgZ9qQI1bVp6UR0FH6YZTmdFJ0h2qD7NFYgqWwU6Q/PPSc6fp4RW8R96S/R+mnzdiJUKb
S5mnbd9SZgvP7Jnfzrz2k+aHW0/W/GMOMUcOWis1XzyB7e9OzDPXbIm9OVR8ZQBbTEmtjjtZUzEY
DGiZBaUD4ixMv0ytPcRQnhOiIoK5oX075KhssSrhzxBqaqVWeQFY7vJaykLP0JUSdLzejBzvdSYq
5mBItAWhloG9oYz+J3pjAp1kJEz4FxDCj4FjidkoxLX9YKOBHnjPkAU2L1/29g2jWE9j/OlpPK4D
oixfhho9JdhBudTUeGQWR4/tlCW7gdKaQRkE1o2Iyxtj4ERLDsixRVHl6IsTHlbQN2gG44iradLj
bWDBVN/qCTjNXXbeRRqZLEW2v7jfMFpC817n4loH7qbkwe6fvBarjx0ii50m3nzdaVedpBHPQNaM
AfnMv38+vxOyY7acYPwuixr8NcnrO+nDQg8rO8PQEFWNjWzLicHVRxm4IphhiHu9pg+PzqdGfHjV
ofSN2H7qpTEpVex6A43qU4fQHw8Yccr1mw5V0WdGJQcieMz8SbcwsUOrZJ69TcFkQ+78mi4fsWSS
6oG+i4iYME+nM/L07fyTM5MjIQbmEvsFgO/IdwxebRr9SoGSOf0uJlUXRj6nLyC6+VnQpcvG50UD
dcppAu8Qv7xkZS3HSa5+dY9uM3/SA8gTvAoLl5Ofvxge3PPZNGMoYII20ayWFJC0Mt4VsperAsSZ
tNt50IlffsvxAPs15Q4PTvnZAAkrIExHLLZi+KGLzSdXgGxYI61Gk4/rELFMTepFsURPaZ+13btT
HdCKzWyxanJoNXxyruEbYmAFfkpbGJ8d1ysoAwXqAcwqiV4t4lSGEZOztFuWjJ5uPFAMjWufU8A3
VPSFFWDKmdxHNx+OBq0Q7btxZzcf93euYLmJcG3glh9BYaoaDWXioPw6Z2AH00Q8NjlTt3ejBnSc
1G5oiehRPAc9+8IftLpRG8EEhVJqPXIwslnuItNNcAuMc6CJlRISY/9/VLIeZYFLWen6R1blVYcF
IDRtoEbWAubmAbFagDPYXfnInII6zu8+awj4rpEhciUBCFyDLDwPozy0i6QC7yFc8CYBQpmtJo4b
5p6kS2xdKfiFdkI2RHzqVsRE8u3IunqF15nGE8CzaAgejITVDl0buVuu3Y6MJoX5/ZZRqXIZBeHP
Ir/n3gOUh/OaaDal6X9V7mZHyLGZPk2bKqR7Qg6Ln5x93BCfFYxTZv8RegtybuOwrW/tKJqMfad4
FzfZmexPTq6ueEJ+jCe8XvBWPPn1I+qTrRN1UAY+5fLL+44e7DHu3yqHeg74Hq62eJpE69wkhmB6
6GR0g6gt+6oMCETTON/BzVOhdgIzOTWy9R8hmikwQ6qGzktilXBFWLvgqAdoKt7C+E3u6Plz//jj
0wFIpqvDalMEKF74x6M3e7z+CRZ4Hfzhn+Z+jP9NwTlxXMZzbUc0aafO7pLbhFOw2ridupkfNvqa
ePDZFtLW39+GGaJzl8USKUBdrSLCseuGjA2BceSvLqwDj9QOtwZZHQhfQze8qzC1IzTrAAsEt2cQ
HaS5/psyNYVyiToZ3LYmpkzMCv2cggOv0Sgp4cyrAQ+ZOuSuRI0/SOjMIUfMXJduFZABox84lUDt
9EeWGY5DOdMEtsyjba0yFt1aNmGzdIMZl+SR4CTOaqv9LJeFKCYpMyjYzi7aaB36RZRkkoz784rW
lhT0JTJuASKkSJ6JKpSvYxEg8EQnI5XFmXIvZbIh8Ws6GhTbd0/zABGIdlEO/m/Pzvdp/uokKVwG
t0/TiPRsd1ir2tOc4eAgSHjcD0T23/uMTqQHygye3AaUBbhY2YNOC2O57cfpwuc70ArlUKVpD+P/
Py42g043cdRTQQ75XnZ99o4Ohu5T3UMn2jXmC+s/EbpTLze9dF4qmX6u5cK7Tov99DXZT6ZdyTXX
MYuccdKOQeMCeOc0yafP93teqRw4cbJx6Ql59foBF/mAD3q3aNj4je8EK2ZdMzO/VM8ZcwnvNgYY
SGNUYFqLTwoxqKwBwLzoNUc63awLXIHUSMyC05hBwwFZRgtTfh/xaLYaxRb3oiCP9MoC4OzqQaFa
h9VTz41GjhiUvA/yZvVCKPfHALRmcYnLmGHG/KjrbbD8qT04HCemJzf7OSYVtZp8V8HLc9fPg9Pc
HnlWN80QjKLM3WNyoTkwk/7oCjHlEGbpMfJ93VWAE0PJ292H1Jye4P9otTXK0JHtQsffbPpxjSkS
TpDkJoCSWTNJpSyFciA1Lab7fv94YGYxUPdeelDlsKUHC5xFMPYQR9H1g3ItWTcqTatATQ+7toK/
wRrFXZWTDmAUftwqyYlNxU7RoOUsPk5Ao21p6O4vwj4IjilzfsEv+tR4FhvqeZq3clddTdMdlu79
SLNFiWATujH7tLQmjElYFWSTr6FlFw/y0tUWbw6hj/h/OqbjaseZbDkJnFXgh1bB7g7Zw+HOyLHX
V+rFu7yv7O/ZAYPmOUCwvRpwsl39NyE9Aafw6f6VRbxjtUsmmWNNgSHnbp8n3caaywQ9PaeDM2Lx
VUx6ET+tHmAIV6o4tffAiVYaaupVpFRN09+XBL72TTEHIphZvrPPCk8Ki8yQvccFMa+20dw8hlKv
/PKtYKhSBPm0P3T28sqbeWLEEr5NuVuzl767MCfiLd5VBApC30KlmVvBCHrZdOrMu59VXN4kehfv
suo4BXP4NTmkEiZeWG4wdSQmVQtyQfWGu6Z4MtrlRhQFkeLF9B7P+ZU43CXOVGyeCCglxDqGEzNh
IyNXyVqY5ti0FbyYNE/0oiQA9XjSBghAG/EegU94NOtRXaiGF4oqw98XsGfe4QbIpFFJ0SlKfcoC
VMXtWtkh8L09Agk4Gk+iCS8PDegMMvIPEx47DGq77Yyc9wkkQsDfInBJljRh8/vRf08be9lMkAxE
smjtEbmaYZYUPjxuRzneaYBy7woWtzRPi7IguOwHv03KVhS1lHCLA3zh8AgaDniMydovTnrjc9qi
zzLms4m+678AwdpdFruvt/ys8NdARZVJU85sjK5h6BiH1RlIgjOtuYvPRYdDBKZOgXhAU2yAtsvr
2FHb2kPgwBd/sfMMfcdZ4XVxGuvqbwdpj8NffnYVK18CCi/XU4+yt2qn3w3laEOjZNus+MO/7p1F
6UiLHyiUbylFYp94FERCu3B2ue/olNLEZBOEdXYLScBsLBBuhbVk6xLHDzSVXNUVgNS9GLiZfynQ
6lNm1xWkjhEyMAl3MPlujb30U8cewcHYlVbMg0lr5oLitvNrfr4bnw0VnUVfEF80SJwMUPsK+R9L
Fqgh7rfRoqFt3O+YjeBNC5pVqkRnAAhI7xM1IZorZugXj8iT6QuxOMgTi+4WFKfZP7Q1fz19O7Mo
01VDEQhIuuzYnDIomza6X5X0yHHPhdmtm0bSHEWf0eMLUkTTkrh7ESuSGoZYJF2zPrVGvgPQ/mAY
0X5YdHK9jgNslYNsk5N+swYuQvOZRdRvJd6GMAGmhv5XXCOM77UQTH3qSVAJcne84RD6p8uemNbL
TqzPs1RQvmHiC1KEqLgi8oAleu4QLOaaAlRgIPfkjG2cq6uq6rLvBE018i/mZZajKHJRcFG2Lc4P
WrDo54EwP1V4iq7ve5Sybhwuuq0r5rxCi5n4vTKO597LF9zRFBSMiwlQuRyNsigwOfdRFx+j3b1q
BywNmYB6ClNvKxlrlIZ2M9tEw6+lwU0EiqQKzZVbx531YR0CDs0Cr4Ul/CzPN6Uz6arWFLC0NVoQ
i3X+SND55QvZjSNLDy5Q2vrbUNfF3zivrsJXQBTqt4p8+atyqYTdwRM/X2MmB/yfkdDYrFGc2JvA
Op3kJwya32a5PHbnYwGHul8QufLXHfdrCGsKFPE4ycTOT10ni3ebhqMkejuiimL1jI6bJu1cX2X8
xw+IZAdVZyw4nD+xA5cWRp+mz3/UZq8cgW7vxVbQ1AgXirBJIatN3K7U0/jek+7w1kMk3TYb9thV
2qku3eO3N9qmgxyf01J/27/5NTe5MwypLwvlb5TDGaqJeDxYBq48InajHdRvnpCzjU4vP1acy9ab
kY8tC8AwEP6QqHVfvE+0+W7UeRtq7MRNbjcbfSvYoeWXdPoWYItoDhHezXxzctZHXYI8YKQFGnJx
s9UduqMARsL42AU7RX84xzpxkGJ4VlMyKa9p06y0/QLLRG5oWy5Lmtlx4osZ8t6xs8kdnXlDlljX
wVVOQI2dus9vZlgKt0iYS5wPVfHOhUo/8j7tBkmAGjFaJN4IiLNBfbyVXW48MgMW/II4wL5okMXi
lQivUClNa1lHWZOJkYos8wYRAepwOR7EabIAGkU6x2Ox38xfK3Y3DHJX7UijgIQa0Wn6WsfXaNBr
Skaot2KDsZtIiDNVMPdOiRsAOv3c0Al2FXUBHOsHoUz48E69+J23cFUxGyh9zvMNQtzvf6Dm6Y+8
16r9OrtIvRWjk8liFrauG+l1akBCaTX2Xhholb36/KpQim7fW44F5mN6YsnHgKTQL6T4u7l6Q6Tg
eS+vF0ICVjWpDo2Sie3B+z55N0EGxk7RSfNUnwZqq1lKQw8t8Bc9oaHApU7vHdbmP2a/pwMCcvGp
Den/q6Y3lKRbi/cKBYpf5wgm4pMBDPrD2Xpx8Kwq2WwgbvtTA6bp3k07yUijTBfoiz7TXkR3ybe5
W59ZwOUuLmIZ5nFLOvaC58hSHWYBOczham0BTphnISsrb9gU0uS11WapN7sVReRqJSPX4Yt2e6de
2vzJNRXpvLkfj4UulrHtd5hL54annm28wGSTEdzeuGNKSGbqMV+KEDxXGgO0DOSKQOL4PZhRoU1B
IhxzKFdPJ2Gt7iQpgdpyERqFA+uYJEZgwEVj7I9E2tO2BSnaEJ76H2gN4ATdXnYD9g7upE+t6+VS
OwUOIcNeIxOgHT9a61jrzvSgIrZ9IoCHOKT6NiJfT3gkrX/NCk3i7Ijn+sxQe0yZsSKCW2RYxckU
zf2coU5yr9xG9VhJflvJHfo60p9Q2FcMJlY8cFe3US7yRySfyrDXGc+uCQL77ECj3ef/tAKUreAH
ZxQCn62QiE9ljBS583BehOqP5ORjRIafxJ6ryyJa5KoNatPFYnGhRnBLhMLqvFVIZZfgtUeyC2Sh
KrvWQrXiauUdyp74r8WP4XbT6NaNhnR7KS+38ZVDXeb1cYuaYW7ZaD0ATdtq8W3KF/ybkykshZGO
RM5nzeZr7yMLRPU87mJyN0b6IHkOjtIjvvghwOKvvSu3NXQ9BY9mXrXBeHhkufaLGt0uU+bL8jU+
MIvqujDZknzgdprNPXXrAMAO38kridwj+FLeQeMUBvMKeb8WzkB31IvcKjMZaREfUd9by7WbDsaw
/BpFoK9XL1P3jJUfcswlDAcqNkI1a404d1YZcxTFGEdhLrcJTrmVCeFVW1Fwx1/0CvshVzqe6RuS
MyzgYC2sD9dyJ8cvZKAgkoqVT2e/MEIjOkaCK9munmZ686lGSrtPdRuIuD/BveGw3pDOXX+JnZti
l9pfiJ0NWfl7VH7+1b/9PpsdOGchCmeaPk2pzy41X8lmaZDR6li4FVWZZP7QkDSxAWtGxp/nFmuu
rjMUbezwDFlqVsPX3HQWxIryI20YMW9HUOcF3rsyZV+BLSBQlXNrTyvJ1hMy2YlTxrxDo/08ccvR
InZHToIa5huqY2AyFCsmPFlAGpwBr6kfS5Ee6LzNo8/V5vqUBqMYQVR5OaV6yh2TmGrytiMjmKPX
7ggkABA+vs76fublV6HGztSTVVspgU3sWLWIiz2Fx8+9UgX+GLjz35mHe7D6AVFq1MSi52ucwmzU
8XADfKnmMeQ15R+Kzz8ELhej2VBKKsjoDgJZ7ZGIKzFfu4c4aro0aVwy8yW0rap7M4GyOTiU+ogr
RgYnkn+T6UMKxVhb4sMiEyUVhWhVw2ge8FXykGA6dvVM4hike+ZKbwGGAbY1N2vNPDC6OPEiH8yO
b5hYt0rvRguXLtam3a6xsP7lWB7ugAsg10/a2cYpQRVXLtlrZPlG61Erzr4L1TYovqNHRBqK3sk3
Q4X8IXu6ZZ7e801Hl7iStic2qlnid6gktC1yPclRX8dr4f+1KHaOWkeDWYwUFDtlj/is5ZzNgIqP
3J7nN49MZFFitFLdQ4WNDxnQsOklSEkpLFmLb6nyp/0rgCFjjKFc48LVYeLjcLFlb24Xv48kx3ao
mxQH1h7WLopr3kogbfHmbVW9fRZI8enrqJ2vVtkv5z2kr+nLJaU0ZMB2oTTKVgCsxZkjPHhNCVPO
rXHEhYgPDtUK4JpMRywUz45f6rBcEeE77UbJBuez0k76ppXkFDFAFpwYYgbA8k068omy1D34ltoq
IKOQCx+0zf2tv8Kv/ZWw+0DViolhQsyJNuB2IDGdY2/VVENRzQnMCQpIkSICEupq192dFC0PdpTc
uJyByRS86w0acm12qVNXv2ec7tx90DPmYI7htfhOMQCkty9J4toTjcPSt2pahp4LNUXcIjDmlEyZ
zw9of+9a7vzH7VnOqPBYxOYC0mFk02KhUx1uSmPFAG6WTGnwAqeTDrVseqQ9vU9jH3dsT9Wm6nZT
cZJRFpMaoiHBWH/nXO1r3xIDjpzrWEj2nLirZ6I5Q/bFxJvjhFVssq6r0xMtnezBPuIp5ihUMswx
unQefe+9fya3QpCPUjtSSxllMrfWmqM+oF3m7PMKZhpZxmyCPrMGKla2Sk4fst5SlKveq/0Afrez
67rMMJD+GeHVG3nk5aq1IE012d6V2WOkoO2WacZ9Fa1EzAS9kMKhSZRUg2SdS6hT2dqF9h5w0jcw
BY/GfVIiKkX+PnWX3P5bgLKHZ3z1mZGjhl5TdqR9RDdd4i/UO2R++WK4esdtBlTlEAoBc8YKa/zC
bKY/Gtnw7u+NvJ6Aof7ULeK+yIzt0DId/gWERl6gp5k8PiPXkzkC3/VkCNPTRPxDFUCdRNMWRpqX
ngiskQTLHrO+HEpr6Ya1gSXbLMy8DO/pU1KjO8bOgF4OWS/4OLzkKe20VRRlZBeMt6WmEPDA5J49
6ZSGik1tAykR3/KGXTF32hNY8/FUp9/7+kRGqLsMkOBwVYPHBUx1dVm4rUJAqzmz1SLlFRSp2UWV
HWJWwGBnTu8RGs271fiwgwxU835NkUfP03GlVqRzWYf8VUxlmDkrA4BgURqsDCSLcrUjXz6D7FZM
kt1KqWjVhTL1cMOa7r717fAHyIbUtrE5OHYSHTeWzpsIASiGl3E9F1S5GxOM8vYVzAaJgVSxBAUb
bWCWRGOajL3u78tLM1eekA0vTx+qPKvLOYBWGdBZfWBHSrX6nJrR2D7zRhUhIKQb6ODMLMuYXWFq
lLV/aJwmaR+SlTY4rB1OZE6BHDfrbQdlqxWkGWkwHYORgUipr2m2eDgNDDij360dz/mwalqxyiHc
3X3ZYxqA8/TgocE3wCyjGYid3rod/4j05ssL7ToxcRLHdaryffHLZeKwqL+Qlwjne0DZnAXjM3jW
gb7Ag6krn70GeKTUo979deotjGyLts4VWukU6o6SxsoWSCSA+pS4fig7iTj1SqC/Vm4AJAXPQeiK
oXGCGFxHiJkGsPtVcvQgJ4vXTyRdipIESbtMD7nbuFEGrAkZbLu56Mm+4bPS4qu8eY6pt5H4PE3X
NuLBUahxvj28y5BUtRngcHyifhnBwthXHDjqD1/+z7YBrOHWkUlD6grL6pWA97yVat1HILLnzW0J
6htvz3W8mYHEAQ/VlGa7MbFcDTnppdWIj12rrw9+ck9JbMuwcxhrRs2NZmlQo+HPkNdwmmyRJA49
tGkxLwGLMe03xBZ7qhnOerTwhtNFqetzrhg7uXUFr4XuRp/qMrcJ3obSZAiJxtmNSKqioY5X1W0J
UQhAxKfkOgkwu5XLK380Fj374ignYnlajeR4rSgdp1zB1LfgV0DqsXCAN6qKqQ3uRHTGkC7E35vd
kp4NFAYb0F25b2vurPxhtz+wwIaoKXmSiP94Fvz2nB0GwySWemJ1jvGM5UnQx1IzJZGKNe+oVQoP
pNm/8hPYxkpfHMx0GjtcC+I39daujX0QorshW4vLJ+q6KyybWhbnsReL3SW3ej1SBPDqkr2LL942
SLZ/WQivcFlFeVz533ZKyRLX2ha2lzvdYGFHmAOyyhF4349d+D64dbh0T03fIP5y+/mVWPKQhorz
mtmHpWNYwyJQqytn86e/VWh//yOeKx8+Xm4XlGWqELBttVBGE/WNScS064m2VlY4cpGmYjHMXaK1
v1C9efU8HJuxN84mVwyykbIRDDVuSOUmqUdr7C7TwEQpg123lKa6khjZKZjmN8C+KJboiZvHsZaS
JcA0pgvkN5N4qpIQtsW9MiZTdcGL+B9tYGkcDdvCKgDGIoOHNmditDkxSf2IEOWFMzejWrFaNJaL
ju/lx6ZP3hB/YRj19RDM78x6qn2oJTIpdQAvBvT1pXYxFHr5rPLIyEznQ/GO2N+Qs0zGWUkcCAnL
FvJGDEzATDeBbytbgaWkhbR4lRXHxCOX8+zkePXcqYV1ds22+mzUb9xDFK00hpozIebUrViRYI89
kLfP2uVx28sXodrBc1KofwghF6/5LswnQUVriO4NeqiO3kNlDrM6yij21tYRvyyXNEyVTGF+BdJj
JpqjHTlphxxEKoAy+UdWIKHAr0ze9NzJwOoqOBOw1QN4fHYobvYoUQRVhSi7phgTc9NYgMgSQunO
YdUNn6+aKo9NdZyxRTZ1K4EtGhBTC/lh7uHlyQEZonLpDLxYCudZU+DLX71vnEdX2cqVNh8YzOSU
s4JTqKtAs2Ch8GYJjw64O2tsdqG2aES3K/OE29HOpXN9WrLzne1gvcdyUvQAHbjPV7p6IcOCkHf6
76ThAHK9KVqb+Zc6F6QrofUgzZZ9zA/Rix3YB/KKFtVTshVhiFkmKG+Ul6E0InuZV4E1t4tmNiZC
zfNo1FV1witXFzI2nup7O0yBuEJz4/JIxxXzo1kInj1I6vj7HJLLuoqZWLiXydn60M23HM4Fr887
gMs8Phn64vNmil0RlH3WXsFVnYpNDPBkuiicgb6ym9kKpnUM5mj92G+YR9QuGzvfgodCySeS6Mjs
oDOqrrdNJXOgizFdjDpU//5gAwndgZgVhDqWptGIL+qUUcFxirjVoZ+AIAsALg56G+sbXOq7vbJK
PGWwN1T1ehweWkqz8p3ZaEKCa+labX1rqaf+T0+/94gmNiA8Y0kahXphCwNbhGi1xn2Vjkz66nuU
3gk2oMx8qwnDdU288mzB9HXPIhZPdZ90pAYP2/pjNYJccz50OjXWCiTA4KWpUfBYsqCek/Ot1oj0
1fB60ip72cLDrFwxNiRjgG4KjU8SYVYDQPvvoXyfAmWqIOW7MyOJPl16G90PhzPfBr6wPcGcWzwX
wOoLMoS8nxVZk30kaTNJ0gGKwffPIe2mpjA4tAFhDw3idP6NLeHTE05dTG//FNIrjiHn1YBsEsCZ
R0rwlleEFqj400xTdLvlMy1h7Dg5zOBJe8LCduN0aOjw0y2YjzxoCpjd8Pw2JShYYssZ1Q610OgC
6rIma8692l76JFH3Q5QaAA5lUDgkd1LlrAknKtc/NAEqmqbxhg7QbxF2Vg63oDXFmKiUcq7yWL2w
XZHKoUAmLuLE9uczOTi8KRrxmwcFMrCK899ea2W8z21J7W5LnTU5hdo9Nc5ekiczTGdY5tV6b/VE
IHbP1a8fFVazveKa378FGKDf0L/87XgHCMuW
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
