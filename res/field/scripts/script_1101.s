    .include "macros/scrcmd.inc"

    .data

    .long _015A-.-4
    .long _0183-.-4
    .long _0278-.-4
    .long _0022-.-4
    .long _02B4-.-4
    .long _03CA-.-4
    .long _0457-.-4
    .long _04E4-.-4
    .short 0xFD13

_0022:
    SetFlag 200
    CheckFlag 0xAB7
    ScrCmd_01C 0, _0039
    Call _0140
    End

_0039:
    SetFlag 0xAB7
    ScrCmd_2F4 0x4065, 0x4066, 0x4067, 0x4068
    Call _0140
    ClearFlag 0x2A2
    ClearFlag 0x2A3
    ClearFlag 0x2A4
    ClearFlag 0x2A5
    CompareVarToValue 0x4022, 0xFFF
    ScrCmd_01D 1, _00ED
    CompareVarToValue 0x4023, 0xFFF
    ScrCmd_01D 1, _00F3
    CompareVarToValue 0x4024, 0xFFF
    ScrCmd_01D 1, _00F9
    CompareVarToValue 0x4024, 141
    ScrCmd_01D 1, _00FF
    CompareVarToValue 0x4024, 142
    ScrCmd_01D 1, _010C
    CompareVarToValue 0x4024, 143
    ScrCmd_01D 1, _0119
    CompareVarToValue 0x4024, 144
    ScrCmd_01D 1, _0126
    CompareVarToValue 0x4024, 145
    ScrCmd_01D 1, _0133
    ClearFlag 1
    ClearFlag 2
    ClearFlag 3
    ClearFlag 4
    ClearFlag 5
    ClearFlag 6
    ClearFlag 7
    ClearFlag 8
    ScrCmd_1B7 0x4061, 2
    End

_00ED:
    SetFlag 0x2A3
    Return

_00F3:
    SetFlag 0x2A4
    Return

_00F9:
    SetFlag 0x2A5
    Return

_00FF:
    CheckFlag 227
    ScrCmd_01D 0, _00F9
    Return

_010C:
    CheckFlag 229
    ScrCmd_01D 0, _00F9
    Return

_0119:
    CheckFlag 230
    ScrCmd_01D 0, _00F9
    Return

_0126:
    CheckFlag 231
    ScrCmd_01D 0, _00F9
    Return

_0133:
    CheckFlag 228
    ScrCmd_01D 0, _00F9
    Return

_0140:
    ScrCmd_029 0x4021, 0x4065
    ScrCmd_029 0x4022, 0x4066
    ScrCmd_029 0x4023, 0x4067
    ScrCmd_029 0x4024, 0x4068
    Return

_015A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 215
    ScrCmd_01C 1, _0178
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0178:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0183:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    SetFlag 0x125
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 7
    ScrCmd_01D 1, _01D5
    CompareVarToValue 0x8005, 8
    ScrCmd_01D 1, _01E9
    CompareVarToValue 0x8005, 9
    ScrCmd_01D 1, _01FD
    ScrCmd_049 0x603
    ScrCmd_065 1
    SetFlag 231
    SetFlag 0x1D6
    ScrCmd_061
    End

_01D5:
    ScrCmd_05E 0xFF, _0214
    ScrCmd_05E 1, _0240
    ScrCmd_05F
    Return

_01E9:
    ScrCmd_05E 0xFF, _0220
    ScrCmd_05E 1, _0254
    ScrCmd_05F
    Return

_01FD:
    ScrCmd_05E 0xFF, _0234
    ScrCmd_05E 1, _0264
    ScrCmd_05F
    Return

    .balign 4, 0
_0214:
    MoveAction_03F 2
    MoveAction_022
    EndMovement

    .balign 4, 0
_0220:
    MoveAction_03F
    MoveAction_021
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0234:
    MoveAction_03F 2
    MoveAction_022
    EndMovement

    .balign 4, 0
_0240:
    MoveAction_00E
    MoveAction_00D
    MoveAction_00E 3
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0254:
    MoveAction_00D
    MoveAction_00E 4
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0264:
    MoveAction_00E
    MoveAction_00D
    MoveAction_00E 3
    MoveAction_00D 2
    EndMovement

_0278:
    ScrCmd_060
    ScrCmd_028 0x40C1, 1
    ScrCmd_05E 0, _02A0
    ScrCmd_05F
    ScrCmd_05E 0xFF, _02A8
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_02A0:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_02A8:
    MoveAction_00C 2
    MoveAction_00F 4
    EndMovement

_02B4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_029 0x4001, 0x4021
    CheckFlag 5
    ScrCmd_01C 1, _034D
    Call _118A
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _034D
    CheckFlag 1
    ScrCmd_01D 0, _036E
    CheckFlag 1
    ScrCmd_01D 1, _0376
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0386
    Call _032F
    CompareVarToValue 0x8000, 0
    ScrCmd_01C 1, _0398
    SetFlag 5
    Call _1091
    GoTo _034D
    End

_032F:
    Call _0811
    ScrCmd_034
    ScrCmd_1E5 57
    Call _0605
    ScrCmd_0E5 0x4005, 0
    ScrCmd_0EC 0x8000
    Return

_034D:
    Call _0571
    CompareVarToValue 0x8001, 2
    ScrCmd_01C 1, _039E
    Call _0AFC
    GoTo _037E
    End

_036E:
    Call _0718
    Return

_0376:
    Call _0A03
    Return

_037E:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0386:
    SetFlag 1
    Call _090A
    GoTo _037E
    End

_0398:
    ScrCmd_0EB
    ScrCmd_061
    End

_039E:
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _03C0
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _03C5
    GoTo _037E
    End

_03C0:
    ScrCmd_02C 22
    Return

_03C5:
    ScrCmd_02C 73
    Return

_03CA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_029 0x4001, 0x4022
    CheckFlag 6
    ScrCmd_01C 1, _034D
    Call _118A
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _034D
    CheckFlag 2
    ScrCmd_01D 0, _036E
    CheckFlag 2
    ScrCmd_01D 1, _0376
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0445
    Call _032F
    CompareVarToValue 0x8000, 0
    ScrCmd_01C 1, _0398
    SetFlag 6
    Call _1091
    GoTo _034D
    End

_0445:
    SetFlag 2
    Call _090A
    GoTo _037E
    End

_0457:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_029 0x4001, 0x4023
    CheckFlag 7
    ScrCmd_01C 1, _034D
    Call _118A
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _034D
    CheckFlag 3
    ScrCmd_01D 0, _036E
    CheckFlag 3
    ScrCmd_01D 1, _0376
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _04D2
    Call _032F
    CompareVarToValue 0x8000, 0
    ScrCmd_01C 1, _0398
    SetFlag 7
    Call _1091
    GoTo _034D
    End

_04D2:
    SetFlag 3
    Call _090A
    GoTo _037E
    End

_04E4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_029 0x4001, 0x4024
    CheckFlag 8
    ScrCmd_01C 1, _034D
    Call _118A
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _034D
    CheckFlag 4
    ScrCmd_01D 0, _036E
    CheckFlag 4
    ScrCmd_01D 1, _0376
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _055F
    Call _032F
    CompareVarToValue 0x8000, 0
    ScrCmd_01C 1, _0398
    SetFlag 8
    Call _1091
    GoTo _034D
    End

_055F:
    SetFlag 4
    Call _090A
    GoTo _037E
    End

_0571:
    ScrCmd_028 0x8001, 0
    CompareVarToValue 0x4001, 126
    ScrCmd_01C 1, _0593
    CompareVarToValue 0x4001, 132
    ScrCmd_01C 1, _0593
    Return

_0593:
    CompareVarToValue 0x4021, 126
    ScrCmd_01D 1, _05FD
    CompareVarToValue 0x4022, 126
    ScrCmd_01D 1, _05FD
    CompareVarToValue 0x4023, 126
    ScrCmd_01D 1, _05FD
    CompareVarToValue 0x4024, 126
    ScrCmd_01D 1, _05FD
    CompareVarToValue 0x4021, 132
    ScrCmd_01D 1, _05FD
    CompareVarToValue 0x4022, 132
    ScrCmd_01D 1, _05FD
    CompareVarToValue 0x4023, 132
    ScrCmd_01D 1, _05FD
    CompareVarToValue 0x4024, 132
    ScrCmd_01D 1, _05FD
    Return

_05FD:
    ScrCmd_026 0x8001, 1
    Return

_0605:
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _06B0
    CompareVarToValue 0x4001, 127
    ScrCmd_01D 1, _06B8
    CompareVarToValue 0x4001, 128
    ScrCmd_01D 1, _06C0
    CompareVarToValue 0x4001, 129
    ScrCmd_01D 1, _06C8
    CompareVarToValue 0x4001, 130
    ScrCmd_01D 1, _06D0
    CompareVarToValue 0x4001, 131
    ScrCmd_01D 1, _06D8
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _06E0
    CompareVarToValue 0x4001, 133
    ScrCmd_01D 1, _06E8
    CompareVarToValue 0x4001, 141
    ScrCmd_01D 1, _06F0
    CompareVarToValue 0x4001, 142
    ScrCmd_01D 1, _06F8
    CompareVarToValue 0x4001, 143
    ScrCmd_01D 1, _0700
    CompareVarToValue 0x4001, 144
    ScrCmd_01D 1, _0708
    CompareVarToValue 0x4001, 145
    ScrCmd_01D 1, _0710
    Return

_06B0:
    ScrCmd_028 0x4005, 0x35A
    Return

_06B8:
    ScrCmd_028 0x4005, 0x359
    Return

_06C0:
    ScrCmd_028 0x4005, 0x35B
    Return

_06C8:
    ScrCmd_028 0x4005, 0x356
    Return

_06D0:
    ScrCmd_028 0x4005, 0x35C
    Return

_06D8:
    ScrCmd_028 0x4005, 0x355
    Return

_06E0:
    ScrCmd_028 0x4005, 0x358
    Return

_06E8:
    ScrCmd_028 0x4005, 0x357
    Return

_06F0:
    ScrCmd_028 0x4005, 0x361
    Return

_06F8:
    ScrCmd_028 0x4005, 0x35D
    Return

_0700:
    ScrCmd_028 0x4005, 0x35F
    Return

_0708:
    ScrCmd_028 0x4005, 0x35E
    Return

_0710:
    ScrCmd_028 0x4005, 0x360
    Return

_0718:
    CompareVarToValue 0x4061, 1
    ScrCmd_01C 1, _0BF5
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _07D0
    CompareVarToValue 0x4001, 127
    ScrCmd_01D 1, _07D5
    CompareVarToValue 0x4001, 128
    ScrCmd_01D 1, _07DA
    CompareVarToValue 0x4001, 129
    ScrCmd_01D 1, _07DF
    CompareVarToValue 0x4001, 130
    ScrCmd_01D 1, _07E4
    CompareVarToValue 0x4001, 131
    ScrCmd_01D 1, _07E9
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _07EE
    CompareVarToValue 0x4001, 133
    ScrCmd_01D 1, _07F3
    CompareVarToValue 0x4001, 141
    ScrCmd_01D 1, _07F8
    CompareVarToValue 0x4001, 142
    ScrCmd_01D 1, _07FD
    CompareVarToValue 0x4001, 143
    ScrCmd_01D 1, _0802
    CompareVarToValue 0x4001, 144
    ScrCmd_01D 1, _0807
    CompareVarToValue 0x4001, 145
    ScrCmd_01D 1, _080C
    Return

_07D0:
    ScrCmd_02C 12
    Return

_07D5:
    ScrCmd_02C 23
    Return

_07DA:
    ScrCmd_02C 53
    Return

_07DF:
    ScrCmd_02C 43
    Return

_07E4:
    ScrCmd_02C 33
    Return

_07E9:
    ScrCmd_02C 74
    Return

_07EE:
    ScrCmd_02C 63
    Return

_07F3:
    ScrCmd_02C 84
    Return

_07F8:
    ScrCmd_02C 94
    Return

_07FD:
    ScrCmd_02C 114
    Return

_0802:
    ScrCmd_02C 124
    Return

_0807:
    ScrCmd_02C 134
    Return

_080C:
    ScrCmd_02C 104
    Return

_0811:
    CompareVarToValue 0x4061, 1
    ScrCmd_01C 1, _0CE1
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _08C9
    CompareVarToValue 0x4001, 127
    ScrCmd_01D 1, _08CE
    CompareVarToValue 0x4001, 128
    ScrCmd_01D 1, _08D3
    CompareVarToValue 0x4001, 129
    ScrCmd_01D 1, _08D8
    CompareVarToValue 0x4001, 130
    ScrCmd_01D 1, _08DD
    CompareVarToValue 0x4001, 131
    ScrCmd_01D 1, _08E2
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _08E7
    CompareVarToValue 0x4001, 133
    ScrCmd_01D 1, _08EC
    CompareVarToValue 0x4001, 141
    ScrCmd_01D 1, _08F1
    CompareVarToValue 0x4001, 142
    ScrCmd_01D 1, _08F6
    CompareVarToValue 0x4001, 143
    ScrCmd_01D 1, _08FB
    CompareVarToValue 0x4001, 144
    ScrCmd_01D 1, _0900
    CompareVarToValue 0x4001, 145
    ScrCmd_01D 1, _0905
    Return

_08C9:
    ScrCmd_02C 13
    Return

_08CE:
    ScrCmd_02C 24
    Return

_08D3:
    ScrCmd_02C 54
    Return

_08D8:
    ScrCmd_02C 44
    Return

_08DD:
    ScrCmd_02C 34
    Return

_08E2:
    ScrCmd_02C 75
    Return

_08E7:
    ScrCmd_02C 64
    Return

_08EC:
    ScrCmd_02C 85
    Return

_08F1:
    ScrCmd_02C 95
    Return

_08F6:
    ScrCmd_02C 115
    Return

_08FB:
    ScrCmd_02C 125
    Return

_0900:
    ScrCmd_02C 135
    Return

_0905:
    ScrCmd_02C 105
    Return

_090A:
    CompareVarToValue 0x4061, 1
    ScrCmd_01C 1, _0DCD
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _09C2
    CompareVarToValue 0x4001, 127
    ScrCmd_01D 1, _09C7
    CompareVarToValue 0x4001, 128
    ScrCmd_01D 1, _09CC
    CompareVarToValue 0x4001, 129
    ScrCmd_01D 1, _09D1
    CompareVarToValue 0x4001, 130
    ScrCmd_01D 1, _09D6
    CompareVarToValue 0x4001, 131
    ScrCmd_01D 1, _09DB
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _09E0
    CompareVarToValue 0x4001, 133
    ScrCmd_01D 1, _09E5
    CompareVarToValue 0x4001, 141
    ScrCmd_01D 1, _09EA
    CompareVarToValue 0x4001, 142
    ScrCmd_01D 1, _09EF
    CompareVarToValue 0x4001, 143
    ScrCmd_01D 1, _09F4
    CompareVarToValue 0x4001, 144
    ScrCmd_01D 1, _09F9
    CompareVarToValue 0x4001, 145
    ScrCmd_01D 1, _09FE
    Return

_09C2:
    ScrCmd_02C 14
    Return

_09C7:
    ScrCmd_02C 25
    Return

_09CC:
    ScrCmd_02C 55
    Return

_09D1:
    ScrCmd_02C 45
    Return

_09D6:
    ScrCmd_02C 35
    Return

_09DB:
    ScrCmd_02C 76
    Return

_09E0:
    ScrCmd_02C 65
    Return

_09E5:
    ScrCmd_02C 86
    Return

_09EA:
    ScrCmd_02C 96
    Return

_09EF:
    ScrCmd_02C 116
    Return

_09F4:
    ScrCmd_02C 126
    Return

_09F9:
    ScrCmd_02C 136
    Return

_09FE:
    ScrCmd_02C 106
    Return

_0A03:
    CompareVarToValue 0x4061, 1
    ScrCmd_01C 1, _0EB9
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _0ABB
    CompareVarToValue 0x4001, 127
    ScrCmd_01D 1, _0AC0
    CompareVarToValue 0x4001, 128
    ScrCmd_01D 1, _0AC5
    CompareVarToValue 0x4001, 129
    ScrCmd_01D 1, _0ACA
    CompareVarToValue 0x4001, 130
    ScrCmd_01D 1, _0ACF
    CompareVarToValue 0x4001, 131
    ScrCmd_01D 1, _0AD4
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _0AD9
    CompareVarToValue 0x4001, 133
    ScrCmd_01D 1, _0ADE
    CompareVarToValue 0x4001, 141
    ScrCmd_01D 1, _0AE3
    CompareVarToValue 0x4001, 142
    ScrCmd_01D 1, _0AE8
    CompareVarToValue 0x4001, 143
    ScrCmd_01D 1, _0AED
    CompareVarToValue 0x4001, 144
    ScrCmd_01D 1, _0AF2
    CompareVarToValue 0x4001, 145
    ScrCmd_01D 1, _0AF7
    Return

_0ABB:
    ScrCmd_02C 15
    Return

_0AC0:
    ScrCmd_02C 26
    Return

_0AC5:
    ScrCmd_02C 56
    Return

_0ACA:
    ScrCmd_02C 46
    Return

_0ACF:
    ScrCmd_02C 36
    Return

_0AD4:
    ScrCmd_02C 77
    Return

_0AD9:
    ScrCmd_02C 66
    Return

_0ADE:
    ScrCmd_02C 87
    Return

_0AE3:
    ScrCmd_02C 97
    Return

_0AE8:
    ScrCmd_02C 117
    Return

_0AED:
    ScrCmd_02C 127
    Return

_0AF2:
    ScrCmd_02C 137
    Return

_0AF7:
    ScrCmd_02C 107
    Return

_0AFC:
    CompareVarToValue 0x4061, 1
    ScrCmd_01C 1, _0FA5
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _0BB4
    CompareVarToValue 0x4001, 127
    ScrCmd_01D 1, _0BB9
    CompareVarToValue 0x4001, 128
    ScrCmd_01D 1, _0BBE
    CompareVarToValue 0x4001, 129
    ScrCmd_01D 1, _0BC3
    CompareVarToValue 0x4001, 130
    ScrCmd_01D 1, _0BC8
    CompareVarToValue 0x4001, 131
    ScrCmd_01D 1, _0BCD
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _0BD2
    CompareVarToValue 0x4001, 133
    ScrCmd_01D 1, _0BD7
    CompareVarToValue 0x4001, 141
    ScrCmd_01D 1, _0BDC
    CompareVarToValue 0x4001, 142
    ScrCmd_01D 1, _0BE1
    CompareVarToValue 0x4001, 143
    ScrCmd_01D 1, _0BE6
    CompareVarToValue 0x4001, 144
    ScrCmd_01D 1, _0BEB
    CompareVarToValue 0x4001, 145
    ScrCmd_01D 1, _0BF0
    Return

_0BB4:
    ScrCmd_02C 16
    Return

_0BB9:
    ScrCmd_02C 27
    Return

_0BBE:
    ScrCmd_02C 57
    Return

_0BC3:
    ScrCmd_02C 47
    Return

_0BC8:
    ScrCmd_02C 37
    Return

_0BCD:
    ScrCmd_02C 78
    Return

_0BD2:
    ScrCmd_02C 67
    Return

_0BD7:
    ScrCmd_02C 88
    Return

_0BDC:
    ScrCmd_02C 98
    Return

_0BE1:
    ScrCmd_02C 118
    Return

_0BE6:
    ScrCmd_02C 128
    Return

_0BEB:
    ScrCmd_02C 138
    Return

_0BF0:
    ScrCmd_02C 108
    Return

_0BF5:
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _0CA0
    CompareVarToValue 0x4001, 127
    ScrCmd_01D 1, _0CA5
    CompareVarToValue 0x4001, 128
    ScrCmd_01D 1, _0CAA
    CompareVarToValue 0x4001, 129
    ScrCmd_01D 1, _0CAF
    CompareVarToValue 0x4001, 130
    ScrCmd_01D 1, _0CB4
    CompareVarToValue 0x4001, 131
    ScrCmd_01D 1, _0CB9
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _0CBE
    CompareVarToValue 0x4001, 133
    ScrCmd_01D 1, _0CC3
    CompareVarToValue 0x4001, 141
    ScrCmd_01D 1, _0CC8
    CompareVarToValue 0x4001, 142
    ScrCmd_01D 1, _0CCD
    CompareVarToValue 0x4001, 143
    ScrCmd_01D 1, _0CD2
    CompareVarToValue 0x4001, 144
    ScrCmd_01D 1, _0CD7
    CompareVarToValue 0x4001, 145
    ScrCmd_01D 1, _0CDC
    Return

_0CA0:
    ScrCmd_02C 17
    Return

_0CA5:
    ScrCmd_02C 28
    Return

_0CAA:
    ScrCmd_02C 58
    Return

_0CAF:
    ScrCmd_02C 48
    Return

_0CB4:
    ScrCmd_02C 38
    Return

_0CB9:
    ScrCmd_02C 79
    Return

_0CBE:
    ScrCmd_02C 68
    Return

_0CC3:
    ScrCmd_02C 89
    Return

_0CC8:
    ScrCmd_02C 99
    Return

_0CCD:
    ScrCmd_02C 119
    Return

_0CD2:
    ScrCmd_02C 129
    Return

_0CD7:
    ScrCmd_02C 139
    Return

_0CDC:
    ScrCmd_02C 109
    Return

_0CE1:
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _0D8C
    CompareVarToValue 0x4001, 127
    ScrCmd_01D 1, _0D91
    CompareVarToValue 0x4001, 128
    ScrCmd_01D 1, _0D96
    CompareVarToValue 0x4001, 129
    ScrCmd_01D 1, _0D9B
    CompareVarToValue 0x4001, 130
    ScrCmd_01D 1, _0DA0
    CompareVarToValue 0x4001, 131
    ScrCmd_01D 1, _0DA5
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _0DAA
    CompareVarToValue 0x4001, 133
    ScrCmd_01D 1, _0DAF
    CompareVarToValue 0x4001, 141
    ScrCmd_01D 1, _0DB4
    CompareVarToValue 0x4001, 142
    ScrCmd_01D 1, _0DB9
    CompareVarToValue 0x4001, 143
    ScrCmd_01D 1, _0DBE
    CompareVarToValue 0x4001, 144
    ScrCmd_01D 1, _0DC3
    CompareVarToValue 0x4001, 145
    ScrCmd_01D 1, _0DC8
    Return

_0D8C:
    ScrCmd_02C 18
    Return

_0D91:
    ScrCmd_02C 29
    Return

_0D96:
    ScrCmd_02C 59
    Return

_0D9B:
    ScrCmd_02C 49
    Return

_0DA0:
    ScrCmd_02C 39
    Return

_0DA5:
    ScrCmd_02C 80
    Return

_0DAA:
    ScrCmd_02C 69
    Return

_0DAF:
    ScrCmd_02C 90
    Return

_0DB4:
    ScrCmd_02C 100
    Return

_0DB9:
    ScrCmd_02C 120
    Return

_0DBE:
    ScrCmd_02C 130
    Return

_0DC3:
    ScrCmd_02C 140
    Return

_0DC8:
    ScrCmd_02C 110
    Return

_0DCD:
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _0E78
    CompareVarToValue 0x4001, 127
    ScrCmd_01D 1, _0E7D
    CompareVarToValue 0x4001, 128
    ScrCmd_01D 1, _0E82
    CompareVarToValue 0x4001, 129
    ScrCmd_01D 1, _0E87
    CompareVarToValue 0x4001, 130
    ScrCmd_01D 1, _0E8C
    CompareVarToValue 0x4001, 131
    ScrCmd_01D 1, _0E91
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _0E96
    CompareVarToValue 0x4001, 133
    ScrCmd_01D 1, _0E9B
    CompareVarToValue 0x4001, 141
    ScrCmd_01D 1, _0EA0
    CompareVarToValue 0x4001, 142
    ScrCmd_01D 1, _0EA5
    CompareVarToValue 0x4001, 143
    ScrCmd_01D 1, _0EAA
    CompareVarToValue 0x4001, 144
    ScrCmd_01D 1, _0EAF
    CompareVarToValue 0x4001, 145
    ScrCmd_01D 1, _0EB4
    Return

_0E78:
    ScrCmd_02C 19
    Return

_0E7D:
    ScrCmd_02C 30
    Return

_0E82:
    ScrCmd_02C 60
    Return

_0E87:
    ScrCmd_02C 50
    Return

_0E8C:
    ScrCmd_02C 40
    Return

_0E91:
    ScrCmd_02C 81
    Return

_0E96:
    ScrCmd_02C 70
    Return

_0E9B:
    ScrCmd_02C 91
    Return

_0EA0:
    ScrCmd_02C 101
    Return

_0EA5:
    ScrCmd_02C 121
    Return

_0EAA:
    ScrCmd_02C 131
    Return

_0EAF:
    ScrCmd_02C 141
    Return

_0EB4:
    ScrCmd_02C 111
    Return

_0EB9:
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _0F64
    CompareVarToValue 0x4001, 127
    ScrCmd_01D 1, _0F69
    CompareVarToValue 0x4001, 128
    ScrCmd_01D 1, _0F6E
    CompareVarToValue 0x4001, 129
    ScrCmd_01D 1, _0F73
    CompareVarToValue 0x4001, 130
    ScrCmd_01D 1, _0F78
    CompareVarToValue 0x4001, 131
    ScrCmd_01D 1, _0F7D
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _0F82
    CompareVarToValue 0x4001, 133
    ScrCmd_01D 1, _0F87
    CompareVarToValue 0x4001, 141
    ScrCmd_01D 1, _0F8C
    CompareVarToValue 0x4001, 142
    ScrCmd_01D 1, _0F91
    CompareVarToValue 0x4001, 143
    ScrCmd_01D 1, _0F96
    CompareVarToValue 0x4001, 144
    ScrCmd_01D 1, _0F9B
    CompareVarToValue 0x4001, 145
    ScrCmd_01D 1, _0FA0
    Return

_0F64:
    ScrCmd_02C 20
    Return

_0F69:
    ScrCmd_02C 31
    Return

_0F6E:
    ScrCmd_02C 61
    Return

_0F73:
    ScrCmd_02C 51
    Return

_0F78:
    ScrCmd_02C 41
    Return

_0F7D:
    ScrCmd_02C 82
    Return

_0F82:
    ScrCmd_02C 71
    Return

_0F87:
    ScrCmd_02C 92
    Return

_0F8C:
    ScrCmd_02C 102
    Return

_0F91:
    ScrCmd_02C 122
    Return

_0F96:
    ScrCmd_02C 132
    Return

_0F9B:
    ScrCmd_02C 142
    Return

_0FA0:
    ScrCmd_02C 112
    Return

_0FA5:
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _1050
    CompareVarToValue 0x4001, 127
    ScrCmd_01D 1, _1055
    CompareVarToValue 0x4001, 128
    ScrCmd_01D 1, _105A
    CompareVarToValue 0x4001, 129
    ScrCmd_01D 1, _105F
    CompareVarToValue 0x4001, 130
    ScrCmd_01D 1, _1064
    CompareVarToValue 0x4001, 131
    ScrCmd_01D 1, _1069
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _106E
    CompareVarToValue 0x4001, 133
    ScrCmd_01D 1, _1073
    CompareVarToValue 0x4001, 141
    ScrCmd_01D 1, _1078
    CompareVarToValue 0x4001, 142
    ScrCmd_01D 1, _107D
    CompareVarToValue 0x4001, 143
    ScrCmd_01D 1, _1082
    CompareVarToValue 0x4001, 144
    ScrCmd_01D 1, _1087
    CompareVarToValue 0x4001, 145
    ScrCmd_01D 1, _108C
    Return

_1050:
    ScrCmd_02C 21
    Return

_1055:
    ScrCmd_02C 32
    Return

_105A:
    ScrCmd_02C 62
    Return

_105F:
    ScrCmd_02C 52
    Return

_1064:
    ScrCmd_02C 42
    Return

_1069:
    ScrCmd_02C 83
    Return

_106E:
    ScrCmd_02C 72
    Return

_1073:
    ScrCmd_02C 93
    Return

_1078:
    ScrCmd_02C 103
    Return

_107D:
    ScrCmd_02C 123
    Return

_1082:
    ScrCmd_02C 133
    Return

_1087:
    ScrCmd_02C 143
    Return

_108C:
    ScrCmd_02C 113
    Return

_1091:
    CompareVarToValue 0x4001, 126
    ScrCmd_01D 1, _113C
    CompareVarToValue 0x4001, 127
    ScrCmd_01D 1, _1142
    CompareVarToValue 0x4001, 128
    ScrCmd_01D 1, _1148
    CompareVarToValue 0x4001, 129
    ScrCmd_01D 1, _114E
    CompareVarToValue 0x4001, 130
    ScrCmd_01D 1, _1154
    CompareVarToValue 0x4001, 131
    ScrCmd_01D 1, _115A
    CompareVarToValue 0x4001, 132
    ScrCmd_01D 1, _1160
    CompareVarToValue 0x4001, 133
    ScrCmd_01D 1, _1166
    CompareVarToValue 0x4001, 141
    ScrCmd_01D 1, _116C
    CompareVarToValue 0x4001, 142
    ScrCmd_01D 1, _1172
    CompareVarToValue 0x4001, 143
    ScrCmd_01D 1, _1178
    CompareVarToValue 0x4001, 144
    ScrCmd_01D 1, _117E
    CompareVarToValue 0x4001, 145
    ScrCmd_01D 1, _1184
    Return

_113C:
    SetFlag 0xAB8
    Return

_1142:
    SetFlag 0xAB9
    Return

_1148:
    SetFlag 0xABA
    Return

_114E:
    SetFlag 0xABB
    Return

_1154:
    SetFlag 0xAC5
    Return

_115A:
    SetFlag 0xAC6
    Return

_1160:
    SetFlag 0xAC7
    Return

_1166:
    SetFlag 0xAC8
    Return

_116C:
    SetFlag 0xAC9
    Return

_1172:
    SetFlag 0xACA
    Return

_1178:
    SetFlag 0xACB
    Return

_117E:
    SetFlag 0xACC
    Return

_1184:
    SetFlag 0xACD
    Return

_118A:
    ScrCmd_028 0x800C, 0
    CompareVarToValue 0x4001, 126
    ScrCmd_01C 1, _123B
    CompareVarToValue 0x4001, 127
    ScrCmd_01C 1, _1248
    CompareVarToValue 0x4001, 128
    ScrCmd_01C 1, _1255
    CompareVarToValue 0x4001, 129
    ScrCmd_01C 1, _1262
    CompareVarToValue 0x4001, 130
    ScrCmd_01C 1, _126F
    CompareVarToValue 0x4001, 131
    ScrCmd_01C 1, _127C
    CompareVarToValue 0x4001, 132
    ScrCmd_01C 1, _1289
    CompareVarToValue 0x4001, 133
    ScrCmd_01C 1, _1296
    CompareVarToValue 0x4001, 141
    ScrCmd_01C 1, _12A3
    CompareVarToValue 0x4001, 142
    ScrCmd_01C 1, _12B0
    CompareVarToValue 0x4001, 143
    ScrCmd_01C 1, _12BD
    CompareVarToValue 0x4001, 144
    ScrCmd_01C 1, _12CA
    CompareVarToValue 0x4001, 145
    ScrCmd_01C 1, _12D7
    Return

_123B:
    CheckFlag 0xAB8
    ScrCmd_01C 1, _12E4
    Return

_1248:
    CheckFlag 0xAB9
    ScrCmd_01C 1, _12E4
    Return

_1255:
    CheckFlag 0xABA
    ScrCmd_01C 1, _12E4
    Return

_1262:
    CheckFlag 0xABB
    ScrCmd_01C 1, _12E4
    Return

_126F:
    CheckFlag 0xAC5
    ScrCmd_01C 1, _12E4
    Return

_127C:
    CheckFlag 0xAC6
    ScrCmd_01C 1, _12E4
    Return

_1289:
    CheckFlag 0xAC7
    ScrCmd_01C 1, _12E4
    Return

_1296:
    CheckFlag 0xAC8
    ScrCmd_01C 1, _12E4
    Return

_12A3:
    CheckFlag 0xAC9
    ScrCmd_01C 1, _12E4
    Return

_12B0:
    CheckFlag 0xACA
    ScrCmd_01C 1, _12E4
    Return

_12BD:
    CheckFlag 0xACB
    ScrCmd_01C 1, _12E4
    Return

_12CA:
    CheckFlag 0xACC
    ScrCmd_01C 1, _12E4
    Return

_12D7:
    CheckFlag 0xACD
    ScrCmd_01C 1, _12E4
    Return

_12E4:
    ScrCmd_028 0x800C, 1
    Return
