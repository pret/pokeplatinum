    .include "macros/scrcmd.inc"

    .data

    .long _00ED-.-4
    .long _0101-.-4
    .long _0115-.-4
    .long _0129-.-4
    .long _013D-.-4
    .long _07AA-.-4
    .long _0030-.-4
    .long _002E-.-4
    .long _07BB-.-4
    .long _0908-.-4
    .long _081E-.-4
    .short 0xFD13

_002E:
    End

_0030:
    ScrCmd_01E 0x2BB
    ScrCmd_01E 0x2BC
    ScrCmd_01E 0x2BD
    ScrCmd_01E 0x2BE
    ScrCmd_01E 0x2BF
    ScrCmd_28B 3, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _00A5
    ScrCmd_302 0x4000, 0x4001, 0x4002, 0x4003, 0x4004
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _00CF
    ScrCmd_011 0x4001, 0
    ScrCmd_01D 1, _00D5
    ScrCmd_011 0x4002, 0
    ScrCmd_01D 1, _00DB
    ScrCmd_011 0x4003, 0
    ScrCmd_01D 1, _00E1
    ScrCmd_011 0x4004, 0
    ScrCmd_01D 1, _00E7
    End

_00A5:
    ScrCmd_18B 0, 4, 1
    ScrCmd_18B 1, 4, 1
    ScrCmd_18B 2, 4, 1
    ScrCmd_18B 3, 4, 1
    ScrCmd_18B 4, 4, 1
    End

_00CF:
    ScrCmd_01F 0x2BB
    ScrCmd_01B

_00D5:
    ScrCmd_01F 0x2BC
    ScrCmd_01B

_00DB:
    ScrCmd_01F 0x2BD
    ScrCmd_01B

_00E1:
    ScrCmd_01F 0x2BE
    ScrCmd_01B

_00E7:
    ScrCmd_01F 0x2BF
    ScrCmd_01B

_00ED:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8004, 1
    ScrCmd_016 _0151
    End

_0101:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8004, 3
    ScrCmd_016 _0151
    End

_0115:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8004, 2
    ScrCmd_016 _0151
    End

_0129:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8004, 4
    ScrCmd_016 _0151
    End

_013D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8004, 5
    ScrCmd_016 _0151
    End

_0151:
    ScrCmd_1C0 0x800C, 0x1DF
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _06DE
    ScrCmd_07E 0x1D3, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _06DE
    ScrCmd_28B 3, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _06DE
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _06C5
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _06CA
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _06CF
    ScrCmd_011 0x8004, 4
    ScrCmd_01D 1, _06D4
    ScrCmd_011 0x8004, 5
    ScrCmd_01D 1, _06D9
    ScrCmd_303 0x8003, 0x800C
    ScrCmd_011 0x8003, 1
    ScrCmd_01C 4, _0254
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0740
    ScrCmd_016 _01F8
    End

_01F8:
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _069D
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _06A5
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _06AD
    ScrCmd_011 0x8004, 4
    ScrCmd_01D 1, _06B5
    ScrCmd_011 0x8004, 5
    ScrCmd_01D 1, _06BD
    ScrCmd_2CB 0x800C, 0x1DF
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _03F5
    ScrCmd_016 _0403
    End

_0254:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 15, 0
    ScrCmd_042 16, 1
    ScrCmd_042 14, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _01F8
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0295
    ScrCmd_016 _0740
    End

_0295:
    ScrCmd_303 0x8003, 0x800C
    ScrCmd_029 0x8000, 0x800C
    ScrCmd_011 0x8003, 2
    ScrCmd_01C 4, _037B
    ScrCmd_016 _02B6
    End

_02B6:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 11
    ScrCmd_304 0x8000, 0, 0, 0
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_305 0x8000, 0x8004
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0349
    ScrCmd_011 0x8004, 4
    ScrCmd_01D 1, _0367
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _0353
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _035D
    ScrCmd_011 0x8004, 5
    ScrCmd_01D 1, _0371
    ScrCmd_016 _0325
    End

_0325:
    ScrCmd_069 0x8006, 0x8007
    ScrCmd_1BD 0x800C
    ScrCmd_0BE 0x23B, 0, 0x8006, 0x8007, 0x800C
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_0349:
    ScrCmd_01F 0x2BB
    ScrCmd_064 0
    ScrCmd_01B

_0353:
    ScrCmd_01F 0x2BD
    ScrCmd_064 2
    ScrCmd_01B

_035D:
    ScrCmd_01F 0x2BC
    ScrCmd_064 3
    ScrCmd_01B

_0367:
    ScrCmd_01F 0x2BE
    ScrCmd_064 1
    ScrCmd_01B

_0371:
    ScrCmd_01F 0x2BF
    ScrCmd_064 4
    ScrCmd_01B

_037B:
    ScrCmd_02C 7
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x8000, 0xFF
    ScrCmd_01C 1, _03F3
    ScrCmd_198 0x8000, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _045D
    ScrCmd_011 0x800C, 0x1DF
    ScrCmd_01C 5, _0468
    ScrCmd_305 0x8000, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03E8
    ScrCmd_016 _02B6
    End

_03E8:
    ScrCmd_02C 17
    ScrCmd_016 _07A2
    End

_03F3:
    End

_03F5:
    ScrCmd_2DD 0x8000, 0x1DF
    ScrCmd_016 _0473
    End

_0403:
    ScrCmd_02C 7
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x8000, 0xFF
    ScrCmd_01C 1, _0740
    ScrCmd_198 0x8000, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _045D
    ScrCmd_011 0x800C, 0x1DF
    ScrCmd_01C 5, _0468
    ScrCmd_016 _0473
    End

_045D:
    ScrCmd_02C 8
    ScrCmd_016 _07A2
    End

_0468:
    ScrCmd_02C 9
    ScrCmd_016 _07A2
    End

_0473:
    ScrCmd_099 0x800C, 0x13B, 0x8000
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _04FD
    ScrCmd_099 0x800C, 59, 0x8000
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _04FD
    ScrCmd_099 0x800C, 56, 0x8000
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _04FD
    ScrCmd_099 0x800C, 0x193, 0x8000
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _04FD
    ScrCmd_099 0x800C, 0x1B5, 0x8000
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _04FD
    ScrCmd_1C8 0x800C, 0x8000
    ScrCmd_029 0x8002, 0x800C
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _051B
    ScrCmd_016 _050B
    End

_04FD:
    ScrCmd_028 0x8002, 0
    ScrCmd_016 _050B
    End

_050B:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 10
    ScrCmd_016 _0613
    End

_051B:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_0D4 1, 0x8001
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05FE
    ScrCmd_016 _0541
    End

_0541:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_2E7 0x8000, 0x8001
    ScrCmd_2E8 0x8002
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x8002, 4
    ScrCmd_01C 1, _05DD
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05FE
    ScrCmd_0D6 0, 0x8000
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    ScrCmd_02C 4
    ScrCmd_049 0x5E6
    ScrCmd_04B 0x5E6
    ScrCmd_003 30, 0x800C
    ScrCmd_02C 5
    ScrCmd_003 32, 0x800C
    ScrCmd_04E 0x483
    ScrCmd_0D4 1, 0x8001
    ScrCmd_02C 6
    ScrCmd_04F
    ScrCmd_003 16, 0x800C
    ScrCmd_016 _0613
    End

_05DD:
    ScrCmd_0D4 1, 0x8001
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0541
    ScrCmd_016 _05FE
    End

_05FE:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_0D4 1, 0x8001
    ScrCmd_02C 2
    ScrCmd_016 _07A2
    End

_0613:
    ScrCmd_304 0x8000, 0x8002, 0x8001, 0x8004
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _067F
    ScrCmd_011 0x8004, 4
    ScrCmd_01D 1, _0691
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _0685
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _068B
    ScrCmd_011 0x8004, 5
    ScrCmd_01D 1, _0697
    ScrCmd_020 119
    ScrCmd_01C 0, _080C
    ScrCmd_016 _0325
    End

_067F:
    ScrCmd_065 0
    ScrCmd_01B

_0685:
    ScrCmd_065 2
    ScrCmd_01B

_068B:
    ScrCmd_065 3
    ScrCmd_01B

_0691:
    ScrCmd_065 1
    ScrCmd_01B

_0697:
    ScrCmd_065 4
    ScrCmd_01B

_069D:
    ScrCmd_028 0x8001, 0x13B
    ScrCmd_01B

_06A5:
    ScrCmd_028 0x8001, 59
    ScrCmd_01B

_06AD:
    ScrCmd_028 0x8001, 56
    ScrCmd_01B

_06B5:
    ScrCmd_028 0x8001, 0x193
    ScrCmd_01B

_06BD:
    ScrCmd_028 0x8001, 0x1B5
    ScrCmd_01B

_06C5:
    ScrCmd_02C 20
    ScrCmd_01B

_06CA:
    ScrCmd_02C 23
    ScrCmd_01B

_06CF:
    ScrCmd_02C 26
    ScrCmd_01B

_06D4:
    ScrCmd_02C 29
    ScrCmd_01B

_06D9:
    ScrCmd_02C 32
    ScrCmd_01B

_06DE:
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0727
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _072C
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _0731
    ScrCmd_011 0x8004, 4
    ScrCmd_01D 1, _0736
    ScrCmd_011 0x8004, 5
    ScrCmd_01D 1, _073B
    ScrCmd_016 _07A2
    End

_0727:
    ScrCmd_02C 19
    ScrCmd_01B

_072C:
    ScrCmd_02C 22
    ScrCmd_01B

_0731:
    ScrCmd_02C 25
    ScrCmd_01B

_0736:
    ScrCmd_02C 28
    ScrCmd_01B

_073B:
    ScrCmd_02C 31
    ScrCmd_01B

_0740:
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0789
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _078E
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _0793
    ScrCmd_011 0x8004, 4
    ScrCmd_01D 1, _0798
    ScrCmd_011 0x8004, 5
    ScrCmd_01D 1, _079D
    ScrCmd_016 _07A2
    End

_0789:
    ScrCmd_02C 21
    ScrCmd_01B

_078E:
    ScrCmd_02C 24
    ScrCmd_01B

_0793:
    ScrCmd_02C 27
    ScrCmd_01B

_0798:
    ScrCmd_02C 30
    ScrCmd_01B

_079D:
    ScrCmd_02C 33
    ScrCmd_01B

_07A2:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07AA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07BB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_303 0x8003, 0x800C
    ScrCmd_011 0x8003, 0
    ScrCmd_01C 1, _0801
    ScrCmd_02C 13
    ScrCmd_041 31, 15, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 14, 0
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0295
    ScrCmd_034
    ScrCmd_061
    End

_0801:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_080C:
    ScrCmd_01E 119
    ScrCmd_028 0x411B, 1
    ScrCmd_016 _0325
    End

_081E:
    ScrCmd_060
    ScrCmd_01F 0x2C0
    ScrCmd_049 0x603
    ScrCmd_064 6
    ScrCmd_04B 0x603
    ScrCmd_05E 0xFF, _08AC
    ScrCmd_05E 6, _08D4
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 35
    ScrCmd_034
    ScrCmd_069 0x8006, 0x8007
    ScrCmd_011 0x8006, 10
    ScrCmd_01D 4, _08A8
    ScrCmd_011 0x8006, 4
    ScrCmd_01D 3, _08AA
    ScrCmd_05E 6, _08DC
    ScrCmd_05F
    ScrCmd_02C 36
    ScrCmd_034
    ScrCmd_05E 6, _08F4
    ScrCmd_05F
    ScrCmd_02C 37
    ScrCmd_034
    ScrCmd_05E 6, _0900
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 6
    ScrCmd_04B 0x603
    ScrCmd_028 0x411B, 2
    ScrCmd_061
    End

_08A8:
    ScrCmd_01B

_08AA:
    ScrCmd_01B

    .balign 4, 0
_08AC:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_08D4:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_08DC:
    MoveAction_00E 2
    MoveAction_020
    MoveAction_03F 2
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_08F4:
    MoveAction_00E 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0900:
    MoveAction_00D 2
    EndMovement

_0908:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 38
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _09CF
    ScrCmd_02C 39
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _09CF
    ScrCmd_02C 40
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _09CF
    ScrCmd_02C 41
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _09CF
    ScrCmd_02C 42
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _09CF
    ScrCmd_02C 43
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _09CF
    ScrCmd_02C 44
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _09CF
    ScrCmd_02C 45
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _09CF
    ScrCmd_02C 46
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _09CF
    ScrCmd_02C 47
    ScrCmd_016 _09D5
    End

_09CF:
    ScrCmd_034
    ScrCmd_061
    End

_09D5:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
