    .include "macros/scrcmd.inc"

    .data

    .long _0036-.-4
    .long _0148-.-4
    .long _014A-.-4
    .long _0184-.-4
    .long _01D4-.-4
    .long _01E9-.-4
    .long _01FC-.-4
    .long _021B-.-4
    .long _0E74-.-4
    .long _0E74-.-4
    .long _0E74-.-4
    .long _0E74-.-4
    .long _1399-.-4
    .short 0xFD13

_0036:
    ScrCmd_060
    SetVar 0x800C, 7
    Call _0052
    ClearFlag 0x966
    SetVar 0x40D5, 0
    ScrCmd_061
    End

_0052:
    ApplyMovement 0xFF, _0120
    WaitMovement
    ScrCmd_168 0, 0, 0x800C, 5, 77
    Call _010D
    ApplyMovement 0xFF, _0128
    WaitMovement
    Call _0115
    Return

_007F:
    ApplyMovement 0xFF, _013C
    WaitMovement
    Return

_008B:
    ApplyMovement 0xFF, _0130
    WaitMovement
    CompareVar 0x8007, 3
    CallIf 1, _00C8
    CompareVar 0x8007, 5
    CallIf 1, _00DF
    CompareVar 0x8007, 7
    CallIf 1, _00F6
    SetVar 0x8004, 0
    ScrCmd_03E 0x800C
    Return

_00C8:
    GoToIfGt 0x8004, 1, _00DA
    ScrCmd_02C 184
    Return

_00DA:
    ScrCmd_02C 185
    Return

_00DF:
    GoToIfGt 0x8004, 1, _00F1
    ScrCmd_02C 194
    Return

_00F1:
    ScrCmd_02C 195
    Return

_00F6:
    GoToIfGt 0x8004, 1, _0108
    ScrCmd_02C 204
    Return

_0108:
    ScrCmd_02C 205
    Return

_010D:
    ScrCmd_16B 77
    ScrCmd_169 77
    Return

_0115:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Return

    .balign 4, 0
_0120:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0128:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0130:
    MoveAction_00E
    MoveAction_024
    EndMovement

    .balign 4, 0
_013C:
    MoveAction_00E 2
    MoveAction_024
    EndMovement

_0148:
    End

_014A:
    CompareVar 0x40CC, 0
    CallIf 1, _0168
    GoToIfEq 0x40CC, 0, _0166
    ScrCmd_265
_0166:
    End

_0168:
    SetVar 0x40CC, 0
    SetFlag 0x201
    SetFlag 0x202
    SetFlag 0x203
    SetFlag 0x204
    SetFlag 0x205
    Return

_0184:
    ScrCmd_266
    Call _01B1
    Call _0168
    ScrCmd_238 7, 0x4000
    GoToIfEq 0x4000, 0, _01AB
    ClearFlag 0x213
    End

_01AB:
    SetFlag 0x213
    End

_01B1:
    GoToIfSet 0x159, _01BE
    Return

_01BE:
    ScrCmd_186 9, 24, 6
    ScrCmd_188 9, 15
    ScrCmd_189 9, 1
    Return

_01D4:
    CompareVar 0x40CC, 1
    CallIf 1, _01E3
    End

_01E3:
    ScrCmd_1B2 0xFF
    Return

_01E9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01FC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    SetVar 0x4003, 0
    SetVar 0x8007, 2
    ScrCmd_02C 3
    GoTo _023A
    End

_021B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    SetVar 0x4003, 1
    SetVar 0x8007, 2
    ScrCmd_02C 7
    GoTo _023A
    End

_023A:
    GoToIfEq 0x4003, 1, _0250
    ScrCmd_02C 4
    GoTo _0253

_0250:
    ScrCmd_02C 12
_0253:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 8, 0
    ScrCmd_042 9, 1
    ScrCmd_042 10, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _02A8
    GoToIfEq 0x8008, 1, _02F0
    GoTo _0291
    End

_0291:
    ScrCmd_150
    SetVar 0x40D5, 0
    ClearFlag 0x966
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02A8:
    GoToIfEq 0x4003, 1, _02BD
    GoTo _040D
    End

_02BD:
    ScrCmd_14E
    ClearFlag 0x966
    ScrCmd_014 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 1, _02E2
    GoTo _0291
    End

_02E2:
    SetVar 0x8004, 2
    GoTo _04A8
    End

_02F0:
    GoToIfEq 0x4003, 1, _0305
    GoTo _030E
    End

_0305:
    ScrCmd_02C 13
    GoTo _023A

_030E:
    ScrCmd_02C 5
_0311:
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 96, 0
    ScrCmd_042 97, 1
    ScrCmd_042 98, 2
    ScrCmd_042 99, 3
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0360
    GoToIfEq 0x8008, 1, _0368
    GoToIfEq 0x8008, 2, _0373
    GoTo _023A
    End

_0360:
    GoTo _0381
    End

_0368:
    ScrCmd_02C 18
    GoTo _030E
    End

_0373:
    ScrCmd_02C 19
    GoTo _030E
    End

_037E:
    ScrCmd_02C 117
_0381:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 36, 0
    ScrCmd_042 37, 1
    ScrCmd_042 38, 2
    ScrCmd_042 39, 3
    ScrCmd_042 40, 4
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _03E1
    GoToIfEq 0x8008, 1, _03EC
    GoToIfEq 0x8008, 2, _03F7
    GoToIfEq 0x8008, 3, _0402
    GoTo _0311
    End

_03E1:
    ScrCmd_02C 14
    GoTo _037E
    End

_03EC:
    ScrCmd_02C 15
    GoTo _037E
    End

_03F7:
    ScrCmd_02C 16
    GoTo _037E
    End

_0402:
    ScrCmd_02C 17
    GoTo _037E
    End

_040D:
    ScrCmd_02C 27
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 105, 0
    ScrCmd_042 106, 1
    ScrCmd_042 107, 2
    ScrCmd_042 108, 3
    ScrCmd_042 109, 4
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0470
    GoToIfEq 0x8008, 1, _047E
    GoToIfEq 0x8008, 2, _048C
    GoToIfEq 0x8008, 3, _049A
    GoTo _0291
    End

_0470:
    SetVar 0x8004, 0
    GoTo _04A8
    End

_047E:
    SetVar 0x8004, 1
    GoTo _04A8
    End

_048C:
    SetVar 0x8004, 2
    GoTo _04A8
    End

_049A:
    SetVar 0x8004, 3
    GoTo _04A8
    End

_04A8:
    ScrCmd_02C 28
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 110, 0
    ScrCmd_042 111, 1
    ScrCmd_042 112, 2
    ScrCmd_042 113, 3
    ScrCmd_042 114, 4
    ScrCmd_042 115, 5
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _051C
    GoToIfEq 0x8008, 1, _052A
    GoToIfEq 0x8008, 2, _0538
    GoToIfEq 0x8008, 3, _0546
    GoToIfEq 0x8008, 4, _0554
    GoTo _0291
    End

_051C:
    SetVar 0x8005, 0
    GoTo _0562
    End

_052A:
    SetVar 0x8005, 1
    GoTo _0562
    End

_0538:
    SetVar 0x8005, 2
    GoTo _0562
    End

_0546:
    SetVar 0x8005, 3
    GoTo _0562
    End

_0554:
    SetVar 0x8005, 4
    GoTo _0562
    End

_0562:
    ScrCmd_02C 20
    ScrCmd_02C 21
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    CompareVar 0x4003, 0
    CallIf 1, _0600
    CompareVar 0x4003, 1
    CallIf 1, _0608
    SetVar 0x800C, 0
_0596:
    ScrCmd_194 0x800C, 0x8004, 0x8005, 0x4004
    ScrCmd_195 0x4002, 0x800C
    GoToIfEq 0x800C, 0, _05C1
    ScrCmd_196 0x4002
    ScrCmd_197 0x800C
    GoTo _0596

_05C1:
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    GoToIfEq 0x4002, 0xFF, _05E4
    GoTo _0610
    End

_05E4:
    ScrCmd_02C 215
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0291
    GoTo _0562
    End

_0600:
    SetVar 0x4004, 0
    Return

_0608:
    SetVar 0x4004, 1
    Return

_0610:
    GoToIfEq 0x4003, 1, _0625
    GoTo _070D
    End

_0625:
    ScrCmd_02C 219
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0669
    GoToIfEq 0x8008, 1, _06BB
    GoTo _0291
    End

_0669:
    ScrCmd_02C 212
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0625
    ScrCmd_034
    ScrCmd_0F2 8, 0x8005, 0x8004, 0x800C
    GoToIfEq 0x800C, 1, _06AB
    GoToIfEq 0x800C, 3, _06B3
    GoTo _070D
    End

_06AB:
    GoTo _0625
    End

_06B3:
    GoTo _0625
    End

_06BB:
    ScrCmd_02C 212
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0625
    ScrCmd_034
    ScrCmd_0F3 8, 0x8005, 0x8004, 0x800C
    GoToIfEq 0x800C, 1, _06FD
    GoToIfEq 0x800C, 3, _0705
    GoTo _070D
    End

_06FD:
    GoTo _0625
    End

_0705:
    ScrCmd_150
    ScrCmd_034
    ScrCmd_061
    End

_070D:
    ScrCmd_0FA 0x8004, 0x8005, 0x8007, 0x4002
    CompareVar 0x4003, 1
    CallIf 1, _07B5
    GoToIfEq 0x4003, 2, _078A
    ScrCmd_109 0x800C
    AddVar 0x800C, 1
    ScrCmd_0FF 0x800C, 0
    ScrCmd_02F 22
    ScrCmd_109 0x800C
    ScrCmd_0FD 0x800C, 0
    ScrCmd_0FE 0x800C, 1
    ScrCmd_02F 64
    ScrCmd_0F8 25
    ScrCmd_0F9 25
    ScrCmd_034
_0761:
    GoToIfEq 0x4003, 0, _07BC
    GoToIfEq 0x4003, 1, _07F1
    GoToIfEq 0x4003, 2, _0830
    End

_078A:
    ScrCmd_109 0x800C
    AddVar 0x800C, 1
    ScrCmd_0FF 0x800C, 0
    ScrCmd_02C 177
    ScrCmd_109 0x800C
    ScrCmd_0FD 0x800C, 0
    ScrCmd_0FE 0x800C, 1
    ScrCmd_034
    GoTo _0761

_07B5:
    ScrCmd_02C 210
    ScrCmd_100
    Return

_07BC:
    ScrCmd_168 0, 0, 19, 5, 77
    Call _010D
    WaitMovement
    ApplyMovement 0xFF, _0DA0
    ApplyMovement 0, _0E08
    WaitMovement
    Call _0115
    WaitMovement
    GoTo _086A
    End

_07F1:
    SetFlag 0x966
    SetVar 0x40D5, 5
    ScrCmd_168 0, 0, 7, 5, 77
    Call _010D
    WaitMovement
    ApplyMovement 0xFF, _0DB0
    ApplyMovement 1, _0E18
    WaitMovement
    Call _0115
    WaitMovement
    GoTo _086A
    End

_0830:
    ScrCmd_168 0, 0, 28, 5, 77
    Call _010D
    WaitMovement
    ApplyMovement 0xFF, _0DC0
    ApplyMovement 2, _0E28
    WaitMovement
    Call _0115
    WaitMovement
    ScrCmd_02F 211
    ScrCmd_034
    GoTo _086A
    End

_086A:
    GoToIfEq 0x4003, 2, _08CD
    ScrCmd_0C6
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0892
    GoTo _08A0
    End

_0892:
    ScrCmd_0CD 0
    ScrCmd_02F 66
    GoTo _08AE
    End

_08A0:
    ScrCmd_0CD 0
    ScrCmd_02F 67
    GoTo _08AE
    End

_08AE:
    ApplyMovement 0xFF, _0E00
    WaitMovement
    ScrCmd_02F 68
    ScrCmd_0F8 26
    ScrCmd_0F9 26
    ScrCmd_034
    GoTo _0947
    End

_08CD:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_101
    ScrCmd_110 0x8004, 0x8005, 0x8007, 0x4002
    SetVar 0x40CC, 0
    ScrCmd_0BE 117, 0, 28, 3, 1
    ScrCmd_060
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_10C 0x4003
    ScrCmd_110 0x8004, 0x8005, 0x8007, 0x4002
    ScrCmd_107 0x8004
    ScrCmd_118
    ScrCmd_0FB 0x4002
    SetVar 0x800C, 28
    Call _0052
    Call _008B
    GoToIfEq 0x800C, 0, _070D
    ScrCmd_02C 116
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0947:
    ClearFlag 0x220
    SetVar 0x40CC, 1
    Call _0D20
    ScrCmd_049 0x603
    ClearFlag 0x201
    ClearFlag 0x202
    ClearFlag 0x203
    ClearFlag 0x204
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 118, 0, 29, 7, 0
    ScrCmd_117
    ScrCmd_10C 0x4003
    ScrCmd_113
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_114
    ScrCmd_0F8 3
    ScrCmd_0F9 3
    ScrCmd_049 0x645
    ApplyMovement 0, _0E38
    WaitMovement
    ScrCmd_102 0
    ScrCmd_103 1
    ScrCmd_02F 69
    ScrCmd_0F8 19
    ScrCmd_0F9 19
    ApplyMovement 0, _0E54
    WaitMovement
    ScrCmd_0FD 0, 0
    ScrCmd_02F 70
    ScrCmd_10B 0, 0x800C
    ScrCmd_111 0
    Call _0C47
    ScrCmd_112
    ScrCmd_0F8 20
    ScrCmd_0F9 20
    ApplyMovement 0, _0E5C
    WaitMovement
    ScrCmd_0FD 1, 0
    ScrCmd_02F 71
    ScrCmd_10B 1, 0x800C
    ScrCmd_111 1
    Call _0C47
    ScrCmd_112
    ScrCmd_0F8 21
    ScrCmd_0F9 21
    ScrCmd_003 8, 0x800C
    ScrCmd_0FD 2, 0
    ScrCmd_02F 72
    ScrCmd_10B 2, 0x800C
    ScrCmd_111 2
    Call _0C47
    ScrCmd_112
    ScrCmd_0F8 22
    ScrCmd_0F9 22
    ApplyMovement 0, _0E64
    WaitMovement
    ScrCmd_0FD 3, 0
    ScrCmd_02F 73
    ScrCmd_10B 3, 0x800C
    ScrCmd_111 3
    Call _0C47
    ScrCmd_112
    ScrCmd_0F8 23
    ScrCmd_0F9 23
    ApplyMovement 0, _0E6C
    WaitMovement
    ScrCmd_02F 74
    ScrCmd_034
    ScrCmd_0F8 4
    ScrCmd_0F9 4
    ScrCmd_049 0x645
    ScrCmd_003 30, 0x800C
    ScrCmd_113
    ScrCmd_0BC 6, 1, 20, 0
    ScrCmd_0BD
    ScrCmd_114
    ScrCmd_2B1
    ScrCmd_101
    ScrCmd_117
    ScrCmd_110 0x8004, 0x8005, 0x8007, 0x4002
    ScrCmd_10C 0x4003
    Call _0D3A
    ScrCmd_2B0
    ScrCmd_0BC 6, 1, 1, 0x7FFF
    ScrCmd_0BD
    ScrCmd_108 0x800C
    ScrCmd_111 0x800C
    ScrCmd_10B 0x800C, 0x800C
    Call _0C47
    ScrCmd_112
    ScrCmd_02F 76
    ScrCmd_115 0x800C
    GoToIfEq 0x800C, 1, _0B50
    ScrCmd_104 0
    ScrCmd_106 1
    ScrCmd_10E 2
    ScrCmd_10D 0x800C
    GoToIfEq 0x800C, 0, _0B1B
    ScrCmd_02F 79
    GoTo _0B50

_0B1B:
    ScrCmd_02F 77
    ScrCmd_034
    ApplyMovement 0, _0E64
    ApplyMovement 5, _0E54
    WaitMovement
    ScrCmd_003 15, 0x800C
    ScrCmd_04E 0x483
    ScrCmd_04F
    ApplyMovement 0, _0E6C
    ApplyMovement 5, _0E6C
    WaitMovement
_0B50:
    ScrCmd_02F 78
    ScrCmd_034
    ScrCmd_049 0x645
    ScrCmd_108 0x800C
    ScrCmd_111 0x800C
    ScrCmd_10B 0x800C, 0x800C
    Call _0C47
    ScrCmd_112
    ScrCmd_003 30, 0x800C
    ScrCmd_0F8 24
    ScrCmd_0F9 24
    ScrCmd_2BB
    ScrCmd_003 10, 0x800C
    ScrCmd_2B1
    ScrCmd_113
    ScrCmd_0BC 6, 1, 20, 0
    ScrCmd_0BD
    ScrCmd_114
    ScrCmd_110 0x8004, 0x8005, 0x8007, 0x4002
    ScrCmd_10F 0x8004
    ScrCmd_118
    ScrCmd_0FB 0x4002
    SetVar 0x40CC, 0
    GoToIfEq 0x4003, 0, _0BF2
    ScrCmd_0BE 117, 0, 7, 3, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetVar 0x800C, 7
    Call _0052
    ClearFlag 0x966
    SetVar 0x40D5, 0
    GoTo _0C45

_0BF2:
    ScrCmd_0BE 117, 0, 18, 3, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetVar 0x800C, 19
    Call _0052
    Call _007F
    GoToIfEq 0x8004, -1, _0C3E
    ScrCmd_0CD 0
    ScrCmd_261 1, 0x8004
    ScrCmd_02C 80
    SetVar 0x8005, 1
    ScrCmd_014 0x7FF
_0C3E:
    ScrCmd_02C 82
    ScrCmd_031
    ScrCmd_034
_0C45:
    End

_0C47:
    ScrCmd_049 0x645
    CompareVar 0x800C, 1
    CallIf 1, _0C8E
    CompareVar 0x800C, 2
    CallIf 1, _0C98
    CompareVar 0x800C, 3
    CallIf 1, _0CAC
    CompareVar 0x800C, 4
    CallIf 1, _0CC8
    CompareVar 0x800C, 5
    CallIf 4, _0CEE
    Return

_0C8E:
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    Return

_0C98:
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    Return

_0CAC:
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    Return

_0CC8:
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    Return

_0CEE:
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_003 10, 0x800C
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    Return

_0D20:
    ScrCmd_10A 0, 0x4020
    ScrCmd_10A 1, 0x4021
    ScrCmd_10A 2, 0x4022
    ScrCmd_10A 3, 0x4023
    Return

_0D3A:
    ScrCmd_108 0x800C
    ScrCmd_10A 0x800C, 0x4024
    ClearFlag 0x205
    ScrCmd_064 5
    ScrCmd_108 0x4000
    GoToIfEq 0x4000, 0, _0D86
    GoToIfEq 0x4000, 1, _0D8C
    GoToIfEq 0x4000, 2, _0D92
    GoToIfEq 0x4000, 3, _0D98
    Return

_0D86:
    ScrCmd_065 1
    Return

_0D8C:
    ScrCmd_065 2
    Return

_0D92:
    ScrCmd_065 3
    Return

_0D98:
    ScrCmd_065 4
    Return

    .balign 4, 0
_0DA0:
    MoveAction_00F 2
    MoveAction_00C 3
    MoveAction_022
    EndMovement

    .balign 4, 0
_0DB0:
    MoveAction_00F 2
    MoveAction_00C 3
    MoveAction_022
    EndMovement

    .balign 4, 0
_0DC0:
    MoveAction_00F
    MoveAction_00C 3
    EndMovement

    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 61
    .byte 0
    .byte 1
    .byte 0
    .byte 2
    .byte 0
    .byte 1
    .byte 0
    .byte 60
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 60
    .byte 0
    .byte 1
    .byte 0
    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 60
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0E00:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0E08:
    MoveAction_03F 2
    MoveAction_00C
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0E18:
    MoveAction_03F 2
    MoveAction_00C
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0E28:
    MoveAction_03F 2
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0E38:
    MoveAction_03F 2
    MoveAction_022
    MoveAction_03F
    MoveAction_023
    MoveAction_03F
    MoveAction_025
    EndMovement

    .balign 4, 0
_0E54:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0E5C:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0E64:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0E6C:
    MoveAction_021
    EndMovement

_0E74:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    SetVar 0x4003, 2
    SetVar 0x8004, 0
    ScrCmd_02C 111
    GoTo _0E93
    End

_0E93:
    ScrCmd_02C 112
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 113, 0
    ScrCmd_042 114, 1
    ScrCmd_042 115, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0EE1
    GoToIfEq 0x8008, 1, _1169
    GoToIfEq 0x8008, 2, _138E
    GoTo _138E
    End

_0EE1:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 155, 0
    ScrCmd_042 156, 1
    ScrCmd_042 157, 2
    ScrCmd_042 158, 3
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0F30
    GoToIfEq 0x8008, 1, _0F44
    GoToIfEq 0x8008, 2, _0F5E
    GoTo _0F72
    End

_0F30:
    SetVar 0x4004, 0
    SetVar 0x8007, 3
    GoTo _1027
    End

_0F44:
    SetVar 0x4004, 1
    SetVar 0x8005, 0
    SetVar 0x8007, 5
    GoTo _1027
    End

_0F5E:
    SetVar 0x4004, 0
    SetVar 0x8007, 7
    GoTo _1027
    End

_0F72:
    ScrCmd_02C 159
    ScrCmd_031
    GoTo _1393

    .byte 2
    .byte 0
    .byte 44
    .byte 0
    .byte 168
    .byte 65
    .byte 0
    .byte 1
    .byte 1
    .byte 0
    .byte 1
    .byte 12
    .byte 128
    .byte 66
    .byte 0
    .byte 169
    .byte 0
    .byte 66
    .byte 0
    .byte 170
    .byte 1
    .byte 66
    .byte 0
    .byte 171
    .byte 2
    .byte 66
    .byte 0
    .byte 172
    .byte 3
    .byte 66
    .byte 0
    .byte 173
    .byte 4
    .byte 67
    .byte 0
    .byte 41
    .byte 0
    .byte 8
    .byte 128
    .byte 12
    .byte 128
    .byte 17
    .byte 0
    .byte 8
    .byte 128
    .byte 0
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 47
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 8
    .byte 128
    .byte 1
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 48
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 8
    .byte 128
    .byte 2
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 49
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 8
    .byte 128
    .byte 3
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 50
    .byte 0
    .byte 0
    .byte 0
    .byte 22
    .byte 0
    .byte 58
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 4
    .byte 128
    .byte 0
    .byte 0
    .byte 22
    .byte 0
    .byte 57
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 4
    .byte 128
    .byte 1
    .byte 0
    .byte 22
    .byte 0
    .byte 43
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 4
    .byte 128
    .byte 2
    .byte 0
    .byte 22
    .byte 0
    .byte 29
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 4
    .byte 128
    .byte 3
    .byte 0
    .byte 22
    .byte 0
    .byte 15
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 44
    .byte 0
    .byte 174
    .byte 49
    .byte 0
    .byte 22
    .byte 0
    .byte 110
    .byte 3
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_1027:
    GoToIfEq 0x4004, 1, _1101
    GoTo _103A

_103A:
    ScrCmd_02C 160
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 161, 0
    ScrCmd_042 162, 1
    ScrCmd_042 163, 2
    ScrCmd_042 164, 3
    ScrCmd_042 165, 4
    ScrCmd_042 166, 5
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _10AE
    GoToIfEq 0x8008, 1, _10BC
    GoToIfEq 0x8008, 2, _10CA
    GoToIfEq 0x8008, 3, _10D8
    GoToIfEq 0x8008, 4, _10E6
    GoTo _10F4
    End

_10AE:
    SetVar 0x8005, 0
    GoTo _1101
    End

_10BC:
    SetVar 0x8005, 1
    GoTo _1101
    End

_10CA:
    SetVar 0x8005, 2
    GoTo _1101
    End

_10D8:
    SetVar 0x8005, 3
    GoTo _1101
    End

_10E6:
    SetVar 0x8005, 4
    GoTo _1101
    End

_10F4:
    ScrCmd_02C 167
    ScrCmd_031
    GoTo _1393
    End

_1101:
    ScrCmd_02C 175
    ScrCmd_02C 176
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    SetVar 0x800C, 0
_111B:
    ScrCmd_194 0x800C, 0x8004, 0x8005, 0
    ScrCmd_195 0x4002, 0x800C
    GoToIfEq 0x800C, 0, _1146
    ScrCmd_196 0x4002
    ScrCmd_197 0x800C
    GoTo _111B

_1146:
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    GoToIfEq 0x4002, 0xFF, _10F4
    GoTo _070D
    End

_1169:
    ScrCmd_02C 117
_116C:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 121, 0
    ScrCmd_042 118, 1
    ScrCmd_042 119, 2
    ScrCmd_042 120, 3
    ScrCmd_042 122, 4
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _1375
    GoToIfEq 0x8008, 1, _11CF
    GoToIfEq 0x8008, 2, _124A
    GoToIfEq 0x8008, 3, _12E1
    GoTo _0E93
    End

_11CC:
    ScrCmd_02C 117
_11CF:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 125, 0
    ScrCmd_042 126, 1
    ScrCmd_042 127, 2
    ScrCmd_042 129, 3
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _121E
    GoToIfEq 0x8008, 1, _1229
    GoToIfEq 0x8008, 2, _1234
    GoTo _123F
    End

_121E:
    ScrCmd_02C 130
    GoTo _11CC
    End

_1229:
    ScrCmd_02C 131
    GoTo _11CC
    End

_1234:
    ScrCmd_02C 132
    GoTo _11CC
    End

_123F:
    GoTo _116C
    End

_1247:
    ScrCmd_02C 117
_124A:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 135, 0
    ScrCmd_042 136, 1
    ScrCmd_042 137, 2
    ScrCmd_042 138, 3
    ScrCmd_042 139, 4
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _12AA
    GoToIfEq 0x8008, 1, _12B5
    GoToIfEq 0x8008, 2, _12C0
    GoToIfEq 0x8008, 3, _12CB
    GoTo _12D6
    End

_12AA:
    ScrCmd_02C 140
    GoTo _1247
    End

_12B5:
    ScrCmd_02C 141
    GoTo _1247
    End

_12C0:
    ScrCmd_02C 142
    GoTo _1247
    End

_12CB:
    ScrCmd_02C 143
    GoTo _1247
    End

_12D6:
    GoTo _116C
    End

_12DE:
    ScrCmd_02C 117
_12E1:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 145, 0
    ScrCmd_042 146, 1
    ScrCmd_042 147, 2
    ScrCmd_042 148, 3
    ScrCmd_042 149, 4
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _1341
    GoToIfEq 0x8008, 1, _134C
    GoToIfEq 0x8008, 2, _1357
    GoToIfEq 0x8008, 3, _1362
    GoTo _136D
    End

_1341:
    ScrCmd_02C 150
    GoTo _12DE
    End

_134C:
    ScrCmd_02C 151
    GoTo _12DE
    End

_1357:
    ScrCmd_02C 152
    GoTo _12DE
    End

_1362:
    ScrCmd_02C 153
    GoTo _12DE
    End

_136D:
    GoTo _116C
    End

_1375:
    ScrCmd_02C 124
    ScrCmd_02C 117
    GoTo _116C

    .byte 2
    .byte 0
    .byte 44
    .byte 0
    .byte 123
    .byte 22
    .byte 0
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_138E:
    ScrCmd_02C 116
    ScrCmd_031
_1393:
    ScrCmd_034
    ScrCmd_061
    End

_1399:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_116
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
