    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _015A
    ScriptEntry _0183
    ScriptEntry _0278
    ScriptEntry _0022
    ScriptEntry _02B4
    ScriptEntry _03CA
    ScriptEntry _0457
    ScriptEntry _04E4
    .short 0xFD13

_0022:
    SetFlag 200
    GoToIfUnset 0xAB7, _0039
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
    CallIfEq 0x4022, 0xFFF, _00ED
    CallIfEq 0x4023, 0xFFF, _00F3
    CallIfEq 0x4024, 0xFFF, _00F9
    CallIfEq 0x4024, 141, _00FF
    CallIfEq 0x4024, 142, _010C
    CallIfEq 0x4024, 143, _0119
    CallIfEq 0x4024, 144, _0126
    CallIfEq 0x4024, 145, _0133
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
    CallIfUnset 227, _00F9
    Return

_010C:
    CallIfUnset 229, _00F9
    Return

_0119:
    CallIfUnset 230, _00F9
    Return

_0126:
    CallIfUnset 231, _00F9
    Return

_0133:
    CallIfUnset 228, _00F9
    Return

_0140:
    SetVar 0x4021, 0x4065
    SetVar 0x4022, 0x4066
    SetVar 0x4023, 0x4067
    SetVar 0x4024, 0x4068
    Return

_015A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 215, _0178
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
    CallIfEq 0x8005, 7, _01D5
    CallIfEq 0x8005, 8, _01E9
    CallIfEq 0x8005, 9, _01FD
    ScrCmd_049 0x603
    ScrCmd_065 1
    SetFlag 231
    SetFlag 0x1D6
    ScrCmd_061
    End

_01D5:
    ApplyMovement 0xFF, _0214
    ApplyMovement 1, _0240
    WaitMovement
    Return

_01E9:
    ApplyMovement 0xFF, _0220
    ApplyMovement 1, _0254
    WaitMovement
    Return

_01FD:
    ApplyMovement 0xFF, _0234
    ApplyMovement 1, _0264
    WaitMovement
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
    SetVar 0x40C1, 1
    ApplyMovement 0, _02A0
    WaitMovement
    ApplyMovement 0xFF, _02A8
    WaitMovement
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
    SetVar 0x4001, 0x4021
    GoToIfSet 5, _034D
    Call _118A
    GoToIfEq 0x800C, 1, _034D
    CallIfUnset 1, _036E
    CallIfSet 1, _0376
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0386
    Call _032F
    GoToIfEq 0x8000, 0, _0398
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
    GoToIfEq 0x8001, 2, _039E
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
    CallIfEq 0x4001, 126, _03C0
    CallIfEq 0x4001, 132, _03C5
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
    SetVar 0x4001, 0x4022
    GoToIfSet 6, _034D
    Call _118A
    GoToIfEq 0x800C, 1, _034D
    CallIfUnset 2, _036E
    CallIfSet 2, _0376
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0445
    Call _032F
    GoToIfEq 0x8000, 0, _0398
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
    SetVar 0x4001, 0x4023
    GoToIfSet 7, _034D
    Call _118A
    GoToIfEq 0x800C, 1, _034D
    CallIfUnset 3, _036E
    CallIfSet 3, _0376
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _04D2
    Call _032F
    GoToIfEq 0x8000, 0, _0398
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
    SetVar 0x4001, 0x4024
    GoToIfSet 8, _034D
    Call _118A
    GoToIfEq 0x800C, 1, _034D
    CallIfUnset 4, _036E
    CallIfSet 4, _0376
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _055F
    Call _032F
    GoToIfEq 0x8000, 0, _0398
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
    SetVar 0x8001, 0
    GoToIfEq 0x4001, 126, _0593
    GoToIfEq 0x4001, 132, _0593
    Return

_0593:
    CallIfEq 0x4021, 126, _05FD
    CallIfEq 0x4022, 126, _05FD
    CallIfEq 0x4023, 126, _05FD
    CallIfEq 0x4024, 126, _05FD
    CallIfEq 0x4021, 132, _05FD
    CallIfEq 0x4022, 132, _05FD
    CallIfEq 0x4023, 132, _05FD
    CallIfEq 0x4024, 132, _05FD
    Return

_05FD:
    AddVar 0x8001, 1
    Return

_0605:
    CallIfEq 0x4001, 126, _06B0
    CallIfEq 0x4001, 127, _06B8
    CallIfEq 0x4001, 128, _06C0
    CallIfEq 0x4001, 129, _06C8
    CallIfEq 0x4001, 130, _06D0
    CallIfEq 0x4001, 131, _06D8
    CallIfEq 0x4001, 132, _06E0
    CallIfEq 0x4001, 133, _06E8
    CallIfEq 0x4001, 141, _06F0
    CallIfEq 0x4001, 142, _06F8
    CallIfEq 0x4001, 143, _0700
    CallIfEq 0x4001, 144, _0708
    CallIfEq 0x4001, 145, _0710
    Return

_06B0:
    SetVar 0x4005, 0x35A
    Return

_06B8:
    SetVar 0x4005, 0x359
    Return

_06C0:
    SetVar 0x4005, 0x35B
    Return

_06C8:
    SetVar 0x4005, 0x356
    Return

_06D0:
    SetVar 0x4005, 0x35C
    Return

_06D8:
    SetVar 0x4005, 0x355
    Return

_06E0:
    SetVar 0x4005, 0x358
    Return

_06E8:
    SetVar 0x4005, 0x357
    Return

_06F0:
    SetVar 0x4005, 0x361
    Return

_06F8:
    SetVar 0x4005, 0x35D
    Return

_0700:
    SetVar 0x4005, 0x35F
    Return

_0708:
    SetVar 0x4005, 0x35E
    Return

_0710:
    SetVar 0x4005, 0x360
    Return

_0718:
    GoToIfEq 0x4061, 1, _0BF5
    CallIfEq 0x4001, 126, _07D0
    CallIfEq 0x4001, 127, _07D5
    CallIfEq 0x4001, 128, _07DA
    CallIfEq 0x4001, 129, _07DF
    CallIfEq 0x4001, 130, _07E4
    CallIfEq 0x4001, 131, _07E9
    CallIfEq 0x4001, 132, _07EE
    CallIfEq 0x4001, 133, _07F3
    CallIfEq 0x4001, 141, _07F8
    CallIfEq 0x4001, 142, _07FD
    CallIfEq 0x4001, 143, _0802
    CallIfEq 0x4001, 144, _0807
    CallIfEq 0x4001, 145, _080C
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
    GoToIfEq 0x4061, 1, _0CE1
    CallIfEq 0x4001, 126, _08C9
    CallIfEq 0x4001, 127, _08CE
    CallIfEq 0x4001, 128, _08D3
    CallIfEq 0x4001, 129, _08D8
    CallIfEq 0x4001, 130, _08DD
    CallIfEq 0x4001, 131, _08E2
    CallIfEq 0x4001, 132, _08E7
    CallIfEq 0x4001, 133, _08EC
    CallIfEq 0x4001, 141, _08F1
    CallIfEq 0x4001, 142, _08F6
    CallIfEq 0x4001, 143, _08FB
    CallIfEq 0x4001, 144, _0900
    CallIfEq 0x4001, 145, _0905
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
    GoToIfEq 0x4061, 1, _0DCD
    CallIfEq 0x4001, 126, _09C2
    CallIfEq 0x4001, 127, _09C7
    CallIfEq 0x4001, 128, _09CC
    CallIfEq 0x4001, 129, _09D1
    CallIfEq 0x4001, 130, _09D6
    CallIfEq 0x4001, 131, _09DB
    CallIfEq 0x4001, 132, _09E0
    CallIfEq 0x4001, 133, _09E5
    CallIfEq 0x4001, 141, _09EA
    CallIfEq 0x4001, 142, _09EF
    CallIfEq 0x4001, 143, _09F4
    CallIfEq 0x4001, 144, _09F9
    CallIfEq 0x4001, 145, _09FE
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
    GoToIfEq 0x4061, 1, _0EB9
    CallIfEq 0x4001, 126, _0ABB
    CallIfEq 0x4001, 127, _0AC0
    CallIfEq 0x4001, 128, _0AC5
    CallIfEq 0x4001, 129, _0ACA
    CallIfEq 0x4001, 130, _0ACF
    CallIfEq 0x4001, 131, _0AD4
    CallIfEq 0x4001, 132, _0AD9
    CallIfEq 0x4001, 133, _0ADE
    CallIfEq 0x4001, 141, _0AE3
    CallIfEq 0x4001, 142, _0AE8
    CallIfEq 0x4001, 143, _0AED
    CallIfEq 0x4001, 144, _0AF2
    CallIfEq 0x4001, 145, _0AF7
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
    GoToIfEq 0x4061, 1, _0FA5
    CallIfEq 0x4001, 126, _0BB4
    CallIfEq 0x4001, 127, _0BB9
    CallIfEq 0x4001, 128, _0BBE
    CallIfEq 0x4001, 129, _0BC3
    CallIfEq 0x4001, 130, _0BC8
    CallIfEq 0x4001, 131, _0BCD
    CallIfEq 0x4001, 132, _0BD2
    CallIfEq 0x4001, 133, _0BD7
    CallIfEq 0x4001, 141, _0BDC
    CallIfEq 0x4001, 142, _0BE1
    CallIfEq 0x4001, 143, _0BE6
    CallIfEq 0x4001, 144, _0BEB
    CallIfEq 0x4001, 145, _0BF0
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
    CallIfEq 0x4001, 126, _0CA0
    CallIfEq 0x4001, 127, _0CA5
    CallIfEq 0x4001, 128, _0CAA
    CallIfEq 0x4001, 129, _0CAF
    CallIfEq 0x4001, 130, _0CB4
    CallIfEq 0x4001, 131, _0CB9
    CallIfEq 0x4001, 132, _0CBE
    CallIfEq 0x4001, 133, _0CC3
    CallIfEq 0x4001, 141, _0CC8
    CallIfEq 0x4001, 142, _0CCD
    CallIfEq 0x4001, 143, _0CD2
    CallIfEq 0x4001, 144, _0CD7
    CallIfEq 0x4001, 145, _0CDC
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
    CallIfEq 0x4001, 126, _0D8C
    CallIfEq 0x4001, 127, _0D91
    CallIfEq 0x4001, 128, _0D96
    CallIfEq 0x4001, 129, _0D9B
    CallIfEq 0x4001, 130, _0DA0
    CallIfEq 0x4001, 131, _0DA5
    CallIfEq 0x4001, 132, _0DAA
    CallIfEq 0x4001, 133, _0DAF
    CallIfEq 0x4001, 141, _0DB4
    CallIfEq 0x4001, 142, _0DB9
    CallIfEq 0x4001, 143, _0DBE
    CallIfEq 0x4001, 144, _0DC3
    CallIfEq 0x4001, 145, _0DC8
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
    CallIfEq 0x4001, 126, _0E78
    CallIfEq 0x4001, 127, _0E7D
    CallIfEq 0x4001, 128, _0E82
    CallIfEq 0x4001, 129, _0E87
    CallIfEq 0x4001, 130, _0E8C
    CallIfEq 0x4001, 131, _0E91
    CallIfEq 0x4001, 132, _0E96
    CallIfEq 0x4001, 133, _0E9B
    CallIfEq 0x4001, 141, _0EA0
    CallIfEq 0x4001, 142, _0EA5
    CallIfEq 0x4001, 143, _0EAA
    CallIfEq 0x4001, 144, _0EAF
    CallIfEq 0x4001, 145, _0EB4
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
    CallIfEq 0x4001, 126, _0F64
    CallIfEq 0x4001, 127, _0F69
    CallIfEq 0x4001, 128, _0F6E
    CallIfEq 0x4001, 129, _0F73
    CallIfEq 0x4001, 130, _0F78
    CallIfEq 0x4001, 131, _0F7D
    CallIfEq 0x4001, 132, _0F82
    CallIfEq 0x4001, 133, _0F87
    CallIfEq 0x4001, 141, _0F8C
    CallIfEq 0x4001, 142, _0F91
    CallIfEq 0x4001, 143, _0F96
    CallIfEq 0x4001, 144, _0F9B
    CallIfEq 0x4001, 145, _0FA0
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
    CallIfEq 0x4001, 126, _1050
    CallIfEq 0x4001, 127, _1055
    CallIfEq 0x4001, 128, _105A
    CallIfEq 0x4001, 129, _105F
    CallIfEq 0x4001, 130, _1064
    CallIfEq 0x4001, 131, _1069
    CallIfEq 0x4001, 132, _106E
    CallIfEq 0x4001, 133, _1073
    CallIfEq 0x4001, 141, _1078
    CallIfEq 0x4001, 142, _107D
    CallIfEq 0x4001, 143, _1082
    CallIfEq 0x4001, 144, _1087
    CallIfEq 0x4001, 145, _108C
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
    CallIfEq 0x4001, 126, _113C
    CallIfEq 0x4001, 127, _1142
    CallIfEq 0x4001, 128, _1148
    CallIfEq 0x4001, 129, _114E
    CallIfEq 0x4001, 130, _1154
    CallIfEq 0x4001, 131, _115A
    CallIfEq 0x4001, 132, _1160
    CallIfEq 0x4001, 133, _1166
    CallIfEq 0x4001, 141, _116C
    CallIfEq 0x4001, 142, _1172
    CallIfEq 0x4001, 143, _1178
    CallIfEq 0x4001, 144, _117E
    CallIfEq 0x4001, 145, _1184
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
    SetVar 0x800C, 0
    GoToIfEq 0x4001, 126, _123B
    GoToIfEq 0x4001, 127, _1248
    GoToIfEq 0x4001, 128, _1255
    GoToIfEq 0x4001, 129, _1262
    GoToIfEq 0x4001, 130, _126F
    GoToIfEq 0x4001, 131, _127C
    GoToIfEq 0x4001, 132, _1289
    GoToIfEq 0x4001, 133, _1296
    GoToIfEq 0x4001, 141, _12A3
    GoToIfEq 0x4001, 142, _12B0
    GoToIfEq 0x4001, 143, _12BD
    GoToIfEq 0x4001, 144, _12CA
    GoToIfEq 0x4001, 145, _12D7
    Return

_123B:
    GoToIfSet 0xAB8, _12E4
    Return

_1248:
    GoToIfSet 0xAB9, _12E4
    Return

_1255:
    GoToIfSet 0xABA, _12E4
    Return

_1262:
    GoToIfSet 0xABB, _12E4
    Return

_126F:
    GoToIfSet 0xAC5, _12E4
    Return

_127C:
    GoToIfSet 0xAC6, _12E4
    Return

_1289:
    GoToIfSet 0xAC7, _12E4
    Return

_1296:
    GoToIfSet 0xAC8, _12E4
    Return

_12A3:
    GoToIfSet 0xAC9, _12E4
    Return

_12B0:
    GoToIfSet 0xACA, _12E4
    Return

_12BD:
    GoToIfSet 0xACB, _12E4
    Return

_12CA:
    GoToIfSet 0xACC, _12E4
    Return

_12D7:
    GoToIfSet 0xACD, _12E4
    Return

_12E4:
    SetVar 0x800C, 1
    Return
