#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0046
    ScriptEntry _0108
    ScriptEntry _051E
    ScriptEntry _0544
    ScriptEntry _0694
    ScriptEntry _0696
    ScriptEntry _0698
    ScriptEntry _069A
    ScriptEntry _069C
    ScriptEntry _069E
    ScriptEntry _06A0
    ScriptEntry _06B4
    ScriptEntry _005B
    ScriptEntry _0075
    ScriptEntry _005B
    ScriptEntry _005B
    ScriptEntry _0763
    .short 0xFD13

_0046:
    CallIfNe 0x40D5, 0, _0055
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
    LockAll
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
    ReleaseAll
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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_2B7 0x800C
    GoToIfEq 0x800C, 1, _0755
    Message 0
    GoTo _012C
    End

_012C:
    Message 1
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
    Message 2
    GoTo _012C
    End

_01D3:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
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
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_021A:
    SetVar 0x8004, 3
    ScrCmd_19A 0x800C
    GoToIfLt 0x800C, 3, _0237
    GoTo _0290

_0237:
    Message 126
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0242:
    SetVar 0x8004, 4
    ScrCmd_19A 0x800C
    GoToIfLt 0x800C, 3, _025F
    GoTo _0290

_025F:
    Message 125
    WaitABXPadPress
    CloseMessage
    ReleaseAll
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
    CallCommonScript 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 1, _0305
    GoTo _01D3
    End

_0305:
    CallIfEq 0x8004, 1, _037A
    CallIfEq 0x8004, 2, _037A
    CallIfEq 0x8004, 3, _037A
    CallIfEq 0x8004, 4, _037F
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
    Message 22
    Return

_037F:
    Message 43
    Return

_0384:
    Message 124
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0305
    CloseMessage
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
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03EA:
    ScrCmd_150
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03F7:
    Message 124
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0305
    CloseMessage
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
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_045D:
    ScrCmd_150
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_046A:
    SetVar 0x40D5, 1
    SetFlag 0x966
    ScrCmd_02E 52
    WaitABPressTime 45
    ScrCmd_135 96
    CloseMessage
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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_2B7 0x800C
    GoToIfEq 0x800C, 1, _0755
    GoTo _0565
    End

_0565:
    Message 57
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
    Message 58
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _05CF
    GoTo _01D3
    End

_05CF:
    SetVar 0x8004, 9
    ScrCmd_14E
    Message 124
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _01D3
    ScrCmd_31D 0x800C
    GoToIfEq 0x800C, 0xFF, _068E
    SetVar 0x40D5, 2
    SetFlag 0x966
    CallCommonScript 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 1, _062D
    SetVar 0x40D5, 0
    ClearFlag 0x966
    GoTo _01D3

_062D:
    SetVar 0x40D5, 2
    SetFlag 0x966
    Message 63
    CloseMessage
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
    ReleaseAll
    ScrCmd_153
    End

_068E:
    CallCommonScript 0x809
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
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_06B4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetFlag 170
    Message 102
    GoTo _06CB
    End

_06CB:
    Message 103
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
    Message 105
    GoTo _06CB
    End

_0724:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_12B
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoTo _074A
    End

_074A:
    Message 104
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0755:
    Call _076D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0763:
    Call _076D
    ReturnCommonScript
    End

_076D:
    Message 127
    Return

    .byte 0
    .byte 0
