    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0398-.-4
    .long _040F-.-4
    .short 0xFD13

_000E:
    ScrCmd_01E 0x183
    ScrCmd_01E 0x184
    ScrCmd_020 0x97F
    ScrCmd_01C 0, _0029
    ScrCmd_01A _002B
    ScrCmd_002

_0029:
    ScrCmd_002

_002B:
    ScrCmd_234 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _008C
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _00ED
    ScrCmd_011 0x4000, 2
    ScrCmd_01D 1, _014E
    ScrCmd_011 0x4000, 3
    ScrCmd_01D 1, _01AF
    ScrCmd_011 0x4000, 4
    ScrCmd_01D 1, _0203
    ScrCmd_011 0x4000, 5
    ScrCmd_01D 1, _0264
    ScrCmd_011 0x4000, 6
    ScrCmd_01D 1, _02C5
    ScrCmd_01B

_008C:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 168
    ScrCmd_01D 1, _0326
    ScrCmd_011 0x4001, 189
    ScrCmd_01D 1, _0332
    ScrCmd_011 0x4001, 189
    ScrCmd_01D 1, _0348
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _035E
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _036A
    ScrCmd_011 0x4001, 0x1CB
    ScrCmd_01D 1, _0380
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _038C
    ScrCmd_01B

_00ED:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _0326
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0332
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0348
    ScrCmd_011 0x4001, 0x1BB
    ScrCmd_01D 1, _035E
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _036A
    ScrCmd_011 0x4001, 0x1AC
    ScrCmd_01D 1, _0380
    ScrCmd_011 0x4001, 36
    ScrCmd_01D 1, _038C
    ScrCmd_01B

_014E:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 48
    ScrCmd_01D 1, _0326
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0332
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0348
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _035E
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _036A
    ScrCmd_011 0x4001, 0x1B3
    ScrCmd_01D 1, _0380
    ScrCmd_011 0x4001, 36
    ScrCmd_01D 1, _038C
    ScrCmd_01B

_01AF:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0332
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0348
    ScrCmd_011 0x4001, 0x1BB
    ScrCmd_01D 1, _035E
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _036A
    ScrCmd_011 0x4001, 0x1CB
    ScrCmd_01D 1, _0380
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _038C
    ScrCmd_01B

_0203:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 48
    ScrCmd_01D 1, _0326
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0332
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0348
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _035E
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _036A
    ScrCmd_011 0x4001, 0x1AC
    ScrCmd_01D 1, _0380
    ScrCmd_011 0x4001, 151
    ScrCmd_01D 1, _038C
    ScrCmd_01B

_0264:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _0326
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0332
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0348
    ScrCmd_011 0x4001, 0x1BB
    ScrCmd_01D 1, _035E
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _036A
    ScrCmd_011 0x4001, 0x1B3
    ScrCmd_01D 1, _0380
    ScrCmd_011 0x4001, 151
    ScrCmd_01D 1, _038C
    ScrCmd_01B

_02C5:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 168
    ScrCmd_01D 1, _0326
    ScrCmd_011 0x4001, 189
    ScrCmd_01D 1, _0332
    ScrCmd_011 0x4001, 189
    ScrCmd_01D 1, _0348
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _035E
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _036A
    ScrCmd_011 0x4001, 0x1CB
    ScrCmd_01D 1, _0380
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _038C
    ScrCmd_01B

_0326:
    ScrCmd_01F 0x183
    ScrCmd_028 0x402A, 35
    ScrCmd_01B

_0332:
    ScrCmd_01F 0x183
    ScrCmd_01F 0x184
    ScrCmd_028 0x402A, 22
    ScrCmd_028 0x402B, 23
    ScrCmd_01B

_0348:
    ScrCmd_01F 0x183
    ScrCmd_01F 0x184
    ScrCmd_028 0x402A, 22
    ScrCmd_028 0x402B, 23
    ScrCmd_01B

_035E:
    ScrCmd_01F 0x183
    ScrCmd_028 0x402A, 43
    ScrCmd_01B

_036A:
    ScrCmd_01F 0x183
    ScrCmd_01F 0x184
    ScrCmd_028 0x402A, 22
    ScrCmd_028 0x402B, 23
    ScrCmd_01B

_0380:
    ScrCmd_01F 0x183
    ScrCmd_028 0x402A, 71
    ScrCmd_01B

_038C:
    ScrCmd_01F 0x183
    ScrCmd_028 0x402A, 10
    ScrCmd_01B

_0398:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x8004, 0
    ScrCmd_028 0x8006, 0
    ScrCmd_011 0x402A, 35
    ScrCmd_01D 1, _1331
    ScrCmd_011 0x402A, 22
    ScrCmd_01D 1, _133E
    ScrCmd_011 0x402A, 43
    ScrCmd_01D 1, _13A3
    ScrCmd_011 0x402A, 22
    ScrCmd_01D 1, _13B0
    ScrCmd_011 0x402A, 71
    ScrCmd_01D 1, _13DD
    ScrCmd_011 0x402A, 10
    ScrCmd_01D 1, _13EA
    ScrCmd_011 0x8006, 1
    ScrCmd_01C 1, _06A8
    ScrCmd_016 _0486
    ScrCmd_002

_040F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x8004, 1
    ScrCmd_028 0x8006, 0
    ScrCmd_011 0x402B, 35
    ScrCmd_01D 1, _1331
    ScrCmd_011 0x402B, 23
    ScrCmd_01D 1, _1378
    ScrCmd_011 0x402B, 43
    ScrCmd_01D 1, _13A3
    ScrCmd_011 0x402B, 22
    ScrCmd_01D 1, _13B0
    ScrCmd_011 0x402B, 71
    ScrCmd_01D 1, _13DD
    ScrCmd_011 0x402B, 10
    ScrCmd_01D 1, _13EA
    ScrCmd_011 0x8006, 1
    ScrCmd_01C 1, _06A8
    ScrCmd_016 _0486
    ScrCmd_002

_0486:
    ScrCmd_028 0x8000, 1
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _05B9
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _05B9
    ScrCmd_011 0x8000, 0
    ScrCmd_01C 1, _0590
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _051A
    ScrCmd_011 0x402A, 35
    ScrCmd_01D 1, _0828
    ScrCmd_011 0x402A, 22
    ScrCmd_01D 1, _0864
    ScrCmd_011 0x402A, 43
    ScrCmd_01D 1, _08F6
    ScrCmd_011 0x402A, 22
    ScrCmd_01D 1, _0932
    ScrCmd_011 0x402A, 71
    ScrCmd_01D 1, _0986
    ScrCmd_011 0x402A, 10
    ScrCmd_01D 1, _09C2
    ScrCmd_016 _0570
    ScrCmd_002

_051A:
    ScrCmd_011 0x402B, 35
    ScrCmd_01D 1, _0828
    ScrCmd_011 0x402B, 23
    ScrCmd_01D 1, _08A0
    ScrCmd_011 0x402B, 43
    ScrCmd_01D 1, _08F6
    ScrCmd_011 0x402B, 22
    ScrCmd_01D 1, _095C
    ScrCmd_011 0x402B, 71
    ScrCmd_01D 1, _0986
    ScrCmd_011 0x402B, 10
    ScrCmd_01D 1, _09C2
    ScrCmd_016 _0570
    ScrCmd_002

_0570:
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _05CE
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0761
    ScrCmd_002

_0590:
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _05AB
    ScrCmd_01A _100C
    ScrCmd_016 _081A
    ScrCmd_002

_05AB:
    ScrCmd_01A _1036
    ScrCmd_016 _081A
    ScrCmd_002

_05B9:
    ScrCmd_011 0x402A, 22
    ScrCmd_01C 1, _05C8
    ScrCmd_01B

_05C8:
    ScrCmd_0EE 0x8000
    ScrCmd_01B

_05CE:
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _0631
    ScrCmd_011 0x402A, 35
    ScrCmd_01D 1, _09FE
    ScrCmd_011 0x402A, 22
    ScrCmd_01D 1, _0A40
    ScrCmd_011 0x402A, 43
    ScrCmd_01D 1, _0AF6
    ScrCmd_011 0x402A, 22
    ScrCmd_01D 1, _0B38
    ScrCmd_011 0x402A, 71
    ScrCmd_01D 1, _0BA4
    ScrCmd_011 0x402A, 10
    ScrCmd_01D 1, _0BE6
    ScrCmd_016 _0687
    ScrCmd_002

_0631:
    ScrCmd_011 0x402B, 35
    ScrCmd_01D 1, _09FE
    ScrCmd_011 0x402B, 23
    ScrCmd_01D 1, _0A8E
    ScrCmd_011 0x402B, 43
    ScrCmd_01D 1, _0AF6
    ScrCmd_011 0x402B, 22
    ScrCmd_01D 1, _0B6E
    ScrCmd_011 0x402B, 71
    ScrCmd_01D 1, _0BA4
    ScrCmd_011 0x402B, 10
    ScrCmd_01D 1, _0BE6
    ScrCmd_016 _0687
    ScrCmd_002

_0687:
    ScrCmd_034
    ScrCmd_0E5 0x8005, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0822
    ScrCmd_016 _06A8
    ScrCmd_002

_06A8:
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _070B
    ScrCmd_011 0x402A, 35
    ScrCmd_01D 1, _0DFE
    ScrCmd_011 0x402A, 22
    ScrCmd_01D 1, _0E3E
    ScrCmd_011 0x402A, 43
    ScrCmd_01D 1, _0EE8
    ScrCmd_011 0x402A, 22
    ScrCmd_01D 1, _0F28
    ScrCmd_011 0x402A, 71
    ScrCmd_01D 1, _0F8C
    ScrCmd_011 0x402A, 10
    ScrCmd_01D 1, _0FCC
    ScrCmd_016 _081A
    ScrCmd_002

_070B:
    ScrCmd_011 0x402B, 35
    ScrCmd_01D 1, _0DFE
    ScrCmd_011 0x402B, 23
    ScrCmd_01D 1, _0E86
    ScrCmd_011 0x402B, 43
    ScrCmd_01D 1, _0EE8
    ScrCmd_011 0x402B, 22
    ScrCmd_01D 1, _0F5A
    ScrCmd_011 0x402B, 71
    ScrCmd_01D 1, _0F8C
    ScrCmd_011 0x402B, 10
    ScrCmd_01D 1, _0FCC
    ScrCmd_016 _081A
    ScrCmd_002

_0761:
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _07C4
    ScrCmd_011 0x402A, 35
    ScrCmd_01D 1, _0C28
    ScrCmd_011 0x402A, 22
    ScrCmd_01D 1, _0C64
    ScrCmd_011 0x402A, 43
    ScrCmd_01D 1, _0CF6
    ScrCmd_011 0x402A, 22
    ScrCmd_01D 1, _0D32
    ScrCmd_011 0x402A, 71
    ScrCmd_01D 1, _0D86
    ScrCmd_011 0x402A, 10
    ScrCmd_01D 1, _0DC2
    ScrCmd_016 _081A
    ScrCmd_002

_07C4:
    ScrCmd_011 0x402B, 35
    ScrCmd_01D 1, _0C28
    ScrCmd_011 0x402B, 23
    ScrCmd_01D 1, _0CA0
    ScrCmd_011 0x402B, 43
    ScrCmd_01D 1, _0CF6
    ScrCmd_011 0x402B, 22
    ScrCmd_01D 1, _0D5C
    ScrCmd_011 0x402B, 71
    ScrCmd_01D 1, _0D86
    ScrCmd_011 0x402B, 10
    ScrCmd_01D 1, _0DC2
    ScrCmd_016 _081A
    ScrCmd_002

_081A:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0822:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

_0828:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 48
    ScrCmd_01D 1, _0855
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _085A
    ScrCmd_011 0x4001, 168
    ScrCmd_01D 1, _085F
    ScrCmd_01B

_0855:
    ScrCmd_02C 16
    ScrCmd_01B

_085A:
    ScrCmd_02C 38
    ScrCmd_01B

_085F:
    ScrCmd_02C 64
    ScrCmd_01B

_0864:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0891
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0896
    ScrCmd_011 0x4001, 189
    ScrCmd_01D 1, _089B
    ScrCmd_01B

_0891:
    ScrCmd_02C 0
    ScrCmd_01B

_0896:
    ScrCmd_02C 30
    ScrCmd_01B

_089B:
    ScrCmd_02C 68
    ScrCmd_01B

_08A0:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _08E7
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _08EC
    ScrCmd_011 0x4001, 189
    ScrCmd_01D 1, _08F1
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _097C
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _0981
    ScrCmd_01B

_08E7:
    ScrCmd_02C 4
    ScrCmd_01B

_08EC:
    ScrCmd_02C 34
    ScrCmd_01B

_08F1:
    ScrCmd_02C 72
    ScrCmd_01B

_08F6:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0923
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _0928
    ScrCmd_011 0x4001, 0x1BB
    ScrCmd_01D 1, _092D
    ScrCmd_01B

_0923:
    ScrCmd_02C 8
    ScrCmd_01B

_0928:
    ScrCmd_02C 42
    ScrCmd_01B

_092D:
    ScrCmd_02C 84
    ScrCmd_01B

_0932:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _0952
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _0957
    ScrCmd_01B

_0952:
    ScrCmd_02C 26
    ScrCmd_01B

_0957:
    ScrCmd_02C 56
    ScrCmd_01B

_095C:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _097C
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _0981
    ScrCmd_01B

_097C:
    ScrCmd_02C 21
    ScrCmd_01B

_0981:
    ScrCmd_02C 51
    ScrCmd_01B

_0986:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 0x1AC
    ScrCmd_01D 1, _09B3
    ScrCmd_011 0x4001, 0x1B3
    ScrCmd_01D 1, _09B8
    ScrCmd_011 0x4001, 0x1CB
    ScrCmd_01D 1, _09BD
    ScrCmd_01B

_09B3:
    ScrCmd_02C 76
    ScrCmd_01B

_09B8:
    ScrCmd_02C 80
    ScrCmd_01B

_09BD:
    ScrCmd_02C 88
    ScrCmd_01B

_09C2:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 36
    ScrCmd_01D 1, _09EF
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _09F4
    ScrCmd_011 0x4001, 151
    ScrCmd_01D 1, _09F9
    ScrCmd_01B

_09EF:
    ScrCmd_02C 12
    ScrCmd_01B

_09F4:
    ScrCmd_02C 46
    ScrCmd_01B

_09F9:
    ScrCmd_02C 60
    ScrCmd_01B

_09FE:
    ScrCmd_01A _1060
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 48
    ScrCmd_01D 1, _0A31
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _0A36
    ScrCmd_011 0x4001, 168
    ScrCmd_01D 1, _0A3B
    ScrCmd_01B

_0A31:
    ScrCmd_02C 17
    ScrCmd_01B

_0A36:
    ScrCmd_02C 39
    ScrCmd_01B

_0A3B:
    ScrCmd_02C 65
    ScrCmd_01B

_0A40:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0A6D
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0A78
    ScrCmd_011 0x4001, 189
    ScrCmd_01D 1, _0A83
    ScrCmd_01B

_0A6D:
    ScrCmd_01A _10C7
    ScrCmd_02C 1
    ScrCmd_01B

_0A78:
    ScrCmd_01A _10C7
    ScrCmd_02C 31
    ScrCmd_01B

_0A83:
    ScrCmd_01A _10C7
    ScrCmd_02C 69
    ScrCmd_01B

_0A8E:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0AD5
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0AE0
    ScrCmd_011 0x4001, 189
    ScrCmd_01D 1, _0AEB
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _0B8E
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _0B99
    ScrCmd_01B

_0AD5:
    ScrCmd_01A _112E
    ScrCmd_02C 5
    ScrCmd_01B

_0AE0:
    ScrCmd_01A _112E
    ScrCmd_02C 35
    ScrCmd_01B

_0AEB:
    ScrCmd_01A _112E
    ScrCmd_02C 73
    ScrCmd_01B

_0AF6:
    ScrCmd_01A _1195
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0B29
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _0B2E
    ScrCmd_011 0x4001, 0x1BB
    ScrCmd_01D 1, _0B33
    ScrCmd_01B

_0B29:
    ScrCmd_02C 9
    ScrCmd_01B

_0B2E:
    ScrCmd_02C 43
    ScrCmd_01B

_0B33:
    ScrCmd_02C 85
    ScrCmd_01B

_0B38:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _0B58
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _0B63
    ScrCmd_01B

_0B58:
    ScrCmd_01A _11FC
    ScrCmd_02C 27
    ScrCmd_01B

_0B63:
    ScrCmd_01A _11FC
    ScrCmd_02C 57
    ScrCmd_01B

_0B6E:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _0B8E
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _0B99
    ScrCmd_01B

_0B8E:
    ScrCmd_01A _11FC
    ScrCmd_02C 22
    ScrCmd_01B

_0B99:
    ScrCmd_01A _11FC
    ScrCmd_02C 52
    ScrCmd_01B

_0BA4:
    ScrCmd_01A _1263
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 0x1AC
    ScrCmd_01D 1, _0BD7
    ScrCmd_011 0x4001, 0x1B3
    ScrCmd_01D 1, _0BDC
    ScrCmd_011 0x4001, 0x1CB
    ScrCmd_01D 1, _0BE1
    ScrCmd_01B

_0BD7:
    ScrCmd_02C 77
    ScrCmd_01B

_0BDC:
    ScrCmd_02C 81
    ScrCmd_01B

_0BE1:
    ScrCmd_02C 89
    ScrCmd_01B

_0BE6:
    ScrCmd_01A _12CA
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 36
    ScrCmd_01D 1, _0C19
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _0C1E
    ScrCmd_011 0x4001, 151
    ScrCmd_01D 1, _0C23
    ScrCmd_01B

_0C19:
    ScrCmd_02C 13
    ScrCmd_01B

_0C1E:
    ScrCmd_02C 47
    ScrCmd_01B

_0C23:
    ScrCmd_02C 61
    ScrCmd_01B

_0C28:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 48
    ScrCmd_01D 1, _0C55
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _0C5A
    ScrCmd_011 0x4001, 168
    ScrCmd_01D 1, _0C5F
    ScrCmd_01B

_0C55:
    ScrCmd_02C 18
    ScrCmd_01B

_0C5A:
    ScrCmd_02C 40
    ScrCmd_01B

_0C5F:
    ScrCmd_02C 66
    ScrCmd_01B

_0C64:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0C91
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0C96
    ScrCmd_011 0x4001, 189
    ScrCmd_01D 1, _0C9B
    ScrCmd_01B

_0C91:
    ScrCmd_02C 2
    ScrCmd_01B

_0C96:
    ScrCmd_02C 32
    ScrCmd_01B

_0C9B:
    ScrCmd_02C 70
    ScrCmd_01B

_0CA0:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0CE7
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0CEC
    ScrCmd_011 0x4001, 189
    ScrCmd_01D 1, _0CF1
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _0D7C
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _0D81
    ScrCmd_01B

_0CE7:
    ScrCmd_02C 6
    ScrCmd_01B

_0CEC:
    ScrCmd_02C 36
    ScrCmd_01B

_0CF1:
    ScrCmd_02C 74
    ScrCmd_01B

_0CF6:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0D23
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _0D28
    ScrCmd_011 0x4001, 0x1BB
    ScrCmd_01D 1, _0D2D
    ScrCmd_01B

_0D23:
    ScrCmd_02C 10
    ScrCmd_01B

_0D28:
    ScrCmd_02C 44
    ScrCmd_01B

_0D2D:
    ScrCmd_02C 86
    ScrCmd_01B

_0D32:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _0D52
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _0D57
    ScrCmd_01B

_0D52:
    ScrCmd_02C 28
    ScrCmd_01B

_0D57:
    ScrCmd_02C 58
    ScrCmd_01B

_0D5C:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _0D7C
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _0D81
    ScrCmd_01B

_0D7C:
    ScrCmd_02C 23
    ScrCmd_01B

_0D81:
    ScrCmd_02C 53
    ScrCmd_01B

_0D86:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 0x1AC
    ScrCmd_01D 1, _0DB3
    ScrCmd_011 0x4001, 0x1B3
    ScrCmd_01D 1, _0DB8
    ScrCmd_011 0x4001, 0x1CB
    ScrCmd_01D 1, _0DBD
    ScrCmd_01B

_0DB3:
    ScrCmd_02C 78
    ScrCmd_01B

_0DB8:
    ScrCmd_02C 82
    ScrCmd_01B

_0DBD:
    ScrCmd_02C 90
    ScrCmd_01B

_0DC2:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 36
    ScrCmd_01D 1, _0DEF
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _0DF4
    ScrCmd_011 0x4001, 151
    ScrCmd_01D 1, _0DF9
    ScrCmd_01B

_0DEF:
    ScrCmd_02C 14
    ScrCmd_01B

_0DF4:
    ScrCmd_02C 48
    ScrCmd_01B

_0DF9:
    ScrCmd_02C 62
    ScrCmd_01B

_0DFE:
    ScrCmd_01E 0xABC
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 48
    ScrCmd_01D 1, _0E2F
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _0E34
    ScrCmd_011 0x4001, 168
    ScrCmd_01D 1, _0E39
    ScrCmd_01B

_0E2F:
    ScrCmd_02C 19
    ScrCmd_01B

_0E34:
    ScrCmd_02C 41
    ScrCmd_01B

_0E39:
    ScrCmd_02C 67
    ScrCmd_01B

_0E3E:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0E6B
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0E74
    ScrCmd_011 0x4001, 189
    ScrCmd_01D 1, _0E7D
    ScrCmd_01B

_0E6B:
    ScrCmd_01E 0xABD
    ScrCmd_02C 3
    ScrCmd_01B

_0E74:
    ScrCmd_01E 0xABD
    ScrCmd_02C 33
    ScrCmd_01B

_0E7D:
    ScrCmd_01E 0xABD
    ScrCmd_02C 71
    ScrCmd_01B

_0E86:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 6
    ScrCmd_01D 1, _0ECD
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0ED6
    ScrCmd_011 0x4001, 189
    ScrCmd_01D 1, _0EDF
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _0F7A
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _0F83
    ScrCmd_01B

_0ECD:
    ScrCmd_01E 0xABE
    ScrCmd_02C 7
    ScrCmd_01B

_0ED6:
    ScrCmd_01E 0xABE
    ScrCmd_02C 37
    ScrCmd_01B

_0EDF:
    ScrCmd_01E 0xABE
    ScrCmd_02C 75
    ScrCmd_01B

_0EE8:
    ScrCmd_01E 0xABF
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 101
    ScrCmd_01D 1, _0F19
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _0F1E
    ScrCmd_011 0x4001, 0x1BB
    ScrCmd_01D 1, _0F23
    ScrCmd_01B

_0F19:
    ScrCmd_02C 11
    ScrCmd_01B

_0F1E:
    ScrCmd_02C 45
    ScrCmd_01B

_0F23:
    ScrCmd_02C 87
    ScrCmd_01B

_0F28:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _0F48
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _0F51
    ScrCmd_01B

_0F48:
    ScrCmd_01E 0xAC0
    ScrCmd_02C 29
    ScrCmd_01B

_0F51:
    ScrCmd_01E 0xAC0
    ScrCmd_02C 59
    ScrCmd_01B

_0F5A:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _0F7A
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _0F83
    ScrCmd_01B

_0F7A:
    ScrCmd_01E 0xAC0
    ScrCmd_02C 24
    ScrCmd_01B

_0F83:
    ScrCmd_01E 0xAC0
    ScrCmd_02C 54
    ScrCmd_01B

_0F8C:
    ScrCmd_01E 0xAC1
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 0x1AC
    ScrCmd_01D 1, _0FBD
    ScrCmd_011 0x4001, 0x1B3
    ScrCmd_01D 1, _0FC2
    ScrCmd_011 0x4001, 0x1CB
    ScrCmd_01D 1, _0FC7
    ScrCmd_01B

_0FBD:
    ScrCmd_02C 79
    ScrCmd_01B

_0FC2:
    ScrCmd_02C 83
    ScrCmd_01B

_0FC7:
    ScrCmd_02C 91
    ScrCmd_01B

_0FCC:
    ScrCmd_01E 0xAC2
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 36
    ScrCmd_01D 1, _0FFD
    ScrCmd_011 0x4001, 123
    ScrCmd_01D 1, _1002
    ScrCmd_011 0x4001, 151
    ScrCmd_01D 1, _1007
    ScrCmd_01B

_0FFD:
    ScrCmd_02C 15
    ScrCmd_01B

_1002:
    ScrCmd_02C 49
    ScrCmd_01B

_1007:
    ScrCmd_02C 63
    ScrCmd_01B

_100C:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _102C
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _1031
    ScrCmd_01B

_102C:
    ScrCmd_02C 25
    ScrCmd_01B

_1031:
    ScrCmd_02C 55
    ScrCmd_01B

_1036:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01D 1, _1056
    ScrCmd_011 0x4001, 134
    ScrCmd_01D 1, _105B
    ScrCmd_01B

_1056:
    ScrCmd_02C 20
    ScrCmd_01B

_105B:
    ScrCmd_02C 50
    ScrCmd_01B

_1060:
    ScrCmd_028 0x8005, 0x173
    ScrCmd_020 0x97F
    ScrCmd_01D 1, _109F
    ScrCmd_020 0x980
    ScrCmd_01D 1, _10A7
    ScrCmd_020 0x981
    ScrCmd_01D 1, _10AF
    ScrCmd_020 0x982
    ScrCmd_01D 1, _10B7
    ScrCmd_020 0x983
    ScrCmd_01D 1, _10BF
    ScrCmd_01B

_109F:
    ScrCmd_028 0x8005, 0x370
    ScrCmd_01B

_10A7:
    ScrCmd_028 0x8005, 0x371
    ScrCmd_01B

_10AF:
    ScrCmd_028 0x8005, 0x372
    ScrCmd_01B

_10B7:
    ScrCmd_028 0x8005, 0x38C
    ScrCmd_01B

_10BF:
    ScrCmd_028 0x8005, 0x394
    ScrCmd_01B

_10C7:
    ScrCmd_028 0x8005, 0x172
    ScrCmd_020 0x97F
    ScrCmd_01D 1, _1106
    ScrCmd_020 0x980
    ScrCmd_01D 1, _110E
    ScrCmd_020 0x981
    ScrCmd_01D 1, _1116
    ScrCmd_020 0x982
    ScrCmd_01D 1, _111E
    ScrCmd_020 0x983
    ScrCmd_01D 1, _1126
    ScrCmd_01B

_1106:
    ScrCmd_028 0x8005, 0x37E
    ScrCmd_01B

_110E:
    ScrCmd_028 0x8005, 0x37F
    ScrCmd_01B

_1116:
    ScrCmd_028 0x8005, 0x380
    ScrCmd_01B

_111E:
    ScrCmd_028 0x8005, 0x390
    ScrCmd_01B

_1126:
    ScrCmd_028 0x8005, 0x398
    ScrCmd_01B

_112E:
    ScrCmd_028 0x8005, 0x171
    ScrCmd_020 0x97F
    ScrCmd_01D 1, _116D
    ScrCmd_020 0x980
    ScrCmd_01D 1, _1175
    ScrCmd_020 0x981
    ScrCmd_01D 1, _117D
    ScrCmd_020 0x982
    ScrCmd_01D 1, _1185
    ScrCmd_020 0x983
    ScrCmd_01D 1, _118D
    ScrCmd_01B

_116D:
    ScrCmd_028 0x8005, 0x36A
    ScrCmd_01B

_1175:
    ScrCmd_028 0x8005, 0x36B
    ScrCmd_01B

_117D:
    ScrCmd_028 0x8005, 0x36C
    ScrCmd_01B

_1185:
    ScrCmd_028 0x8005, 0x38A
    ScrCmd_01B

_118D:
    ScrCmd_028 0x8005, 0x392
    ScrCmd_01B

_1195:
    ScrCmd_028 0x8005, 0x1CC
    ScrCmd_020 0x97F
    ScrCmd_01D 1, _11D4
    ScrCmd_020 0x980
    ScrCmd_01D 1, _11DC
    ScrCmd_020 0x981
    ScrCmd_01D 1, _11E4
    ScrCmd_020 0x982
    ScrCmd_01D 1, _11EC
    ScrCmd_020 0x983
    ScrCmd_01D 1, _11F4
    ScrCmd_01B

_11D4:
    ScrCmd_028 0x8005, 0x376
    ScrCmd_01B

_11DC:
    ScrCmd_028 0x8005, 0x377
    ScrCmd_01B

_11E4:
    ScrCmd_028 0x8005, 0x378
    ScrCmd_01B

_11EC:
    ScrCmd_028 0x8005, 0x38E
    ScrCmd_01B

_11F4:
    ScrCmd_028 0x8005, 0x396
    ScrCmd_01B

_11FC:
    ScrCmd_028 0x8005, 0x170
    ScrCmd_020 0x97F
    ScrCmd_01D 1, _123B
    ScrCmd_020 0x980
    ScrCmd_01D 1, _1243
    ScrCmd_020 0x981
    ScrCmd_01D 1, _124B
    ScrCmd_020 0x982
    ScrCmd_01D 1, _1253
    ScrCmd_020 0x983
    ScrCmd_01D 1, _125B
    ScrCmd_01B

_123B:
    ScrCmd_028 0x8005, 0x373
    ScrCmd_01B

_1243:
    ScrCmd_028 0x8005, 0x374
    ScrCmd_01B

_124B:
    ScrCmd_028 0x8005, 0x375
    ScrCmd_01B

_1253:
    ScrCmd_028 0x8005, 0x38D
    ScrCmd_01B

_125B:
    ScrCmd_028 0x8005, 0x395
    ScrCmd_01B

_1263:
    ScrCmd_028 0x8005, 0x1D1
    ScrCmd_020 0x97F
    ScrCmd_01D 1, _12A2
    ScrCmd_020 0x980
    ScrCmd_01D 1, _12AA
    ScrCmd_020 0x981
    ScrCmd_01D 1, _12B2
    ScrCmd_020 0x982
    ScrCmd_01D 1, _12BA
    ScrCmd_020 0x983
    ScrCmd_01D 1, _12C2
    ScrCmd_01B

_12A2:
    ScrCmd_028 0x8005, 0x379
    ScrCmd_01B

_12AA:
    ScrCmd_028 0x8005, 0x37A
    ScrCmd_01B

_12B2:
    ScrCmd_028 0x8005, 0x37B
    ScrCmd_01B

_12BA:
    ScrCmd_028 0x8005, 0x38F
    ScrCmd_01B

_12C2:
    ScrCmd_028 0x8005, 0x397
    ScrCmd_01B

_12CA:
    ScrCmd_028 0x8005, 0x1AF
    ScrCmd_020 0x97F
    ScrCmd_01D 1, _1309
    ScrCmd_020 0x980
    ScrCmd_01D 1, _1311
    ScrCmd_020 0x981
    ScrCmd_01D 1, _1319
    ScrCmd_020 0x982
    ScrCmd_01D 1, _1321
    ScrCmd_020 0x983
    ScrCmd_01D 1, _1329
    ScrCmd_01B

_1309:
    ScrCmd_028 0x8005, 0x36D
    ScrCmd_01B

_1311:
    ScrCmd_028 0x8005, 0x36E
    ScrCmd_01B

_1319:
    ScrCmd_028 0x8005, 0x36F
    ScrCmd_01B

_1321:
    ScrCmd_028 0x8005, 0x38B
    ScrCmd_01B

_1329:
    ScrCmd_028 0x8005, 0x393
    ScrCmd_01B

_1331:
    ScrCmd_020 0xABC
    ScrCmd_01C 1, _13F7
    ScrCmd_01B

_133E:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 6
    ScrCmd_01C 1, _136B
    ScrCmd_011 0x4001, 101
    ScrCmd_01C 1, _136B
    ScrCmd_011 0x4001, 189
    ScrCmd_01C 1, _136B
    ScrCmd_01B

_136B:
    ScrCmd_020 0xABD
    ScrCmd_01C 1, _13F7
    ScrCmd_01B

_1378:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01C 1, _13B0
    ScrCmd_011 0x4001, 134
    ScrCmd_01C 1, _13B0
    ScrCmd_020 0xABE
    ScrCmd_01C 1, _13F7
    ScrCmd_01B

_13A3:
    ScrCmd_020 0xABF
    ScrCmd_01C 1, _13F7
    ScrCmd_01B

_13B0:
    ScrCmd_201 0x4001
    ScrCmd_011 0x4001, 69
    ScrCmd_01C 1, _13D0
    ScrCmd_011 0x4001, 134
    ScrCmd_01C 1, _13D0
    ScrCmd_01B

_13D0:
    ScrCmd_020 0xAC0
    ScrCmd_01C 1, _13F7
    ScrCmd_01B

_13DD:
    ScrCmd_020 0xAC1
    ScrCmd_01C 1, _13F7
    ScrCmd_01B

_13EA:
    ScrCmd_020 0xAC2
    ScrCmd_01C 1, _13F7
    ScrCmd_01B

_13F7:
    ScrCmd_028 0x8006, 1
    ScrCmd_01B

    .byte 0
