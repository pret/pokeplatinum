    .include "macros/scrcmd.inc"

    .data

    .long _0046-.-4
    .long _0108-.-4
    .long _051E-.-4
    .long _0544-.-4
    .long _0694-.-4
    .long _0696-.-4
    .long _0698-.-4
    .long _069A-.-4
    .long _069C-.-4
    .long _069E-.-4
    .long _06A0-.-4
    .long _06B4-.-4
    .long _005B-.-4
    .long _0075-.-4
    .long _005B-.-4
    .long _005B-.-4
    .long _0763-.-4
    .short 0xFD13

_0046:
    CompareVar 0x40D5, 0
    CallIf 5, _0055
    End

_0055:
    ScrCmd_1B2 0xFF
    Return

_005B:
    SetVar 0x4000, 13
    SetVar 0x4001, 5
    SetVar 0x4002, 2
    GoTo _008F
    End

_0075:
    SetVar 0x4000, 8
    SetVar 0x4001, 5
    SetVar 0x4002, 2
    GoTo _008F
    End

_008F:
    ScrCmd_060
    ScrCmd_168 0, 0, 0x4000, 0x4002, 77
    Call _050B
    ScrCmd_1B1 0xFF
    ApplyMovement 0xFF, _00F0
    WaitMovement
    Call _0513
    ApplyMovement 0xFF, _00F8
    WaitMovement
    ScrCmd_168 0, 0, 0x4000, 0x4001, 77
    Call _050B
    ApplyMovement 0xFF, _0100
    WaitMovement
    Call _0513
    ClearFlag 0x966
    SetVar 0x40D5, 0
    ScrCmd_061
    End

    .balign 4, 0
_00F0:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_00F8:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0100:
    MoveAction_00D 2
    EndMovement

_0108:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_2B7 0x800C
    GoToIfEq 0x800C, 1, _0755
    ScrCmd_02C 0
    GoTo _012C
    End

_012C:
    ScrCmd_02C 1
    ScrCmd_044 1, 1, 1, 1, 0x800C
    ScrCmd_046 163, 0xFF, 250
    ScrCmd_046 6, 0xFF, 0
    ScrCmd_046 7, 0xFF, 1
    ScrCmd_046 8, 0xFF, 2
    ScrCmd_046 164, 0xFF, 250
    ScrCmd_046 9, 0xFF, 3
    ScrCmd_046 10, 0xFF, 4
    ScrCmd_046 11, 0xFF, 5
    ScrCmd_047
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01DE
    GoToIfEq 0x8008, 1, _01F2
    GoToIfEq 0x8008, 2, _021A
    GoToIfEq 0x8008, 3, _0242
    GoToIfEq 0x8008, 4, _01C8
    GoTo _01D3
    End

_01C8:
    ScrCmd_02C 2
    GoTo _012C
    End

_01D3:
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01DE:
    SetVar 0x8004, 1
    GoTo _026A

    .byte 22
    .byte 0
    .byte 160
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_01F2:
    SetVar 0x8004, 2
    ScrCmd_19A 0x800C
    GoToIfLt 0x800C, 2, _020F
    GoTo _026A

_020F:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_021A:
    SetVar 0x8004, 3
    ScrCmd_19A 0x800C
    GoToIfLt 0x800C, 3, _0237
    GoTo _0290

_0237:
    ScrCmd_02C 126
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0242:
    SetVar 0x8004, 4
    ScrCmd_19A 0x800C
    GoToIfLt 0x800C, 3, _025F
    GoTo _0290

_025F:
    ScrCmd_02C 125
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_026A:
    ScrCmd_239 0x800C
    GoToIfEq 0x800C, 1, _0290
    GoToIfEq 0x800C, 3, _0290
    GoTo _01D3
    End

_0290:
    SetVar 0x8005, 0
    GoTo _02E4

    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
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
    .byte 5
    .byte 128
    .byte 1
    .byte 0
    .byte 22
    .byte 0
    .byte 44
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 2
    .byte 0
    .byte 22
    .byte 0
    .byte 30
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 3
    .byte 0
    .byte 22
    .byte 0
    .byte 16
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 4
    .byte 0
    .byte 22
    .byte 0
    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_02E4:
    ScrCmd_14E
    ScrCmd_014 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 1, _0305
    GoTo _01D3
    End

_0305:
    CompareVar 0x8004, 1
    CallIf 1, _037A
    CompareVar 0x8004, 2
    CallIf 1, _037A
    CompareVar 0x8004, 3
    CallIf 1, _037A
    CompareVar 0x8004, 4
    CallIf 1, _037F
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0384
    GoToIfEq 0x8008, 1, _03F7
    GoTo _01D3
    End

_037A:
    ScrCmd_02C 22
    Return

_037F:
    ScrCmd_02C 43
    Return

_0384:
    ScrCmd_02C 124
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0305
    ScrCmd_034
    ScrCmd_0F2 0x8004, 0x8005, 0, 0x800C
    GoToIfEq 0x800C, 1, _03D3
    GoToIfEq 0x800C, 3, _03DD
    GoToIfEq 0x800C, 4, _03EA
    GoTo _046A
    End

_03D3:
    ScrCmd_150
    GoTo _0305
    End

_03DD:
    ScrCmd_150
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03EA:
    ScrCmd_150
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03F7:
    ScrCmd_02C 124
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0305
    ScrCmd_034
    ScrCmd_0F3 0x8004, 0x8005, 0, 0x800C
    GoToIfEq 0x800C, 1, _0446
    GoToIfEq 0x800C, 3, _0450
    GoToIfEq 0x800C, 4, _045D
    GoTo _046A
    End

_0446:
    ScrCmd_150
    GoTo _0305
    End

_0450:
    ScrCmd_150
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_045D:
    ScrCmd_150
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_046A:
    SetVar 0x40D5, 1
    SetFlag 0x966
    ScrCmd_02E 52
    ScrCmd_190 45
    ScrCmd_135 96
    ScrCmd_034
    ScrCmd_168 0, 0, 13, 5, 77
    Call _050B
    ApplyMovement 0xFF, _0524
    WaitMovement
    Call _0513
    ApplyMovement 0xFF, _0530
    WaitMovement
    ScrCmd_168 0, 0, 13, 2, 77
    Call _050B
    ApplyMovement 0xFF, _0538
    WaitMovement
    Call _0513
    GoToIfEq 0x8004, 4, _04F3
    ScrCmd_207 0x800C
    AddVar 0x800C, 7
    ScrCmd_203 0x14C, 0, 0x800C, 11, 0
    End

_04F3:
    ScrCmd_207 0x800C
    AddVar 0x800C, 6
    ScrCmd_203 0x14D, 0, 0x800C, 11, 0
    End

_050B:
    ScrCmd_16B 77
    ScrCmd_169 77
    Return

_0513:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Return

_051E:
    ScrCmd_0F6
    ScrCmd_151
    End

    .balign 4, 0
_0524:
    MoveAction_00F
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_0530:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0538:
    MoveAction_00C
    MoveAction_045
    EndMovement

_0544:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_2B7 0x800C
    GoToIfEq 0x800C, 1, _0755
    GoTo _0565
    End

_0565:
    ScrCmd_02C 57
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 41, 0
    ScrCmd_042 42, 1
    ScrCmd_042 10, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _05CF
    GoToIfEq 0x8008, 1, _01D3
    GoToIfEq 0x8008, 2, _05B3
    GoTo _01D3
    End

_05B3:
    ScrCmd_02C 58
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _05CF
    GoTo _01D3
    End

_05CF:
    SetVar 0x8004, 9
    ScrCmd_14E
    ScrCmd_02C 124
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _01D3
    ScrCmd_31D 0x800C
    GoToIfEq 0x800C, 0xFF, _068E
    SetVar 0x40D5, 2
    SetFlag 0x966
    ScrCmd_014 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 1, _062D
    SetVar 0x40D5, 0
    ClearFlag 0x966
    GoTo _01D3

_062D:
    SetVar 0x40D5, 2
    SetFlag 0x966
    ScrCmd_02C 63
    ScrCmd_034
    ScrCmd_168 0, 0, 8, 5, 77
    Call _050B
    ApplyMovement 0xFF, _0524
    WaitMovement
    Call _0513
    ApplyMovement 0xFF, _0530
    WaitMovement
    ScrCmd_168 0, 0, 8, 2, 77
    Call _050B
    ApplyMovement 0xFF, _0538
    WaitMovement
    Call _0513
    ScrCmd_061
    ScrCmd_153
    End

_068E:
    ScrCmd_014 0x809
    End

_0694:
    End

_0696:
    End

_0698:
    End

_069A:
    End

_069C:
    End

_069E:
    End

_06A0:
    ScrCmd_1F8
    ScrCmd_0A3
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_06B4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    SetFlag 170
    ScrCmd_02C 102
    GoTo _06CB
    End

_06CB:
    ScrCmd_02C 103
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 41, 0
    ScrCmd_042 42, 1
    ScrCmd_042 10, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0724
    GoToIfEq 0x8008, 1, _074A
    GoToIfEq 0x8008, 2, _0719
    GoTo _074A
    End

_0719:
    ScrCmd_02C 105
    GoTo _06CB
    End

_0724:
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_12B
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    GoTo _074A
    End

_074A:
    ScrCmd_02C 104
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0755:
    Call _076D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0763:
    Call _076D
    ScrCmd_015
    End

_076D:
    ScrCmd_02C 127
    Return

    .byte 0
    .byte 0
