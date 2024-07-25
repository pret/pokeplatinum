#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0059
    ScriptEntry _05B0
    ScriptEntry _05E9
    ScriptEntry _05FA
    ScriptEntry _066E
    ScriptEntry _0075
    ScriptEntry _0698
    ScriptEntry _06AB
    ScriptEntry _06BE
    ScriptEntry _06D1
    ScriptEntry _06E4
    ScriptEntry _06F7
    ScriptEntry _070A
    ScriptEntry _003A
    .short 0xFD13

_003A:
    ScrCmd_238 19, 0x4000
    GoToIfEq 0x4000, 0, _0053
    ClearFlag 0x2C3
    End

_0053:
    SetFlag 0x2C3
    End

_0059:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x4003, 0
    SetVar 0x4004, 0
    GoTo _0091
    End

_0075:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x4003, 0
    SetVar 0x4004, 1
    GoTo _0091
    End

_0091:
    ScrCmd_313 0
    CallIfEq 0x4004, 0, _0570
    CallIfEq 0x4004, 1, _0575
    GoTo _00B7
    End

_00B7:
    CallIfEq 0x4004, 0, _057A
    CallIfEq 0x4004, 1, _0592
    ScrCmd_042 19, 2
    ScrCmd_042 20, 3
    ScrCmd_043
    GoToIfEq 0x800C, 0, _0152
    GoToIfEq 0x800C, 1, _0160
    GoToIfEq 0x800C, 2, _0117
    GoToIfEq 0x800C, 4, _016E
    GoTo _0139
    End

_0117:
    CallIfEq 0x4004, 0, _05A6
    CallIfEq 0x4004, 1, _05AB
    GoTo _00B7
    End

_0139:
    GoTo _0141
    End

_0141:
    SetVar 0x40B7, 0
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0152:
    SetVar 0x40B8, 0
    GoTo _017C
    End

_0160:
    SetVar 0x40B8, 1
    GoTo _017C
    End

_016E:
    SetVar 0x40B8, 2
    GoTo _017C
    End

_017C:
    Message 7
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 21, 0
    ScrCmd_042 22, 1
    ScrCmd_042 23, 2
    ScrCmd_043
    GoToIfEq 0x800C, 0, _01BA
    GoToIfEq 0x800C, 1, _01C8
    GoTo _0139
    End

_01BA:
    SetVar 0x40B9, 0
    GoTo _01D6
    End

_01C8:
    SetVar 0x40B9, 1
    GoTo _01D6
    End

_01D6:
    GoTo _01DE
    End

_01DE:
    CallIfEq 0x40B8, 0, _0386
    CallIfEq 0x40B8, 1, _0386
    SetVar 0x4000, 0
    ScrCmd_14E
    CallCommonScript 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 0, _0139
    GoToIfEq 0x40B8, 2, _022C
    GoTo _038E
    End

_022C:
    Message 24
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0270
    GoToIfEq 0x8008, 1, _02EC
    GoTo _0139
    End

_0270:
    Message 25
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _022C
    CloseMessage
    CallIfEq 0x40B9, 0, _02C2
    CallIfEq 0x40B9, 1, _02CE
    GoToIfEq 0x800C, 1, _02DA
    GoToIfEq 0x800C, 3, _02E2
    GoTo _0368
    End

_02C2:
    ScrCmd_0F2 27, 0, 0, 0x800C
    Return

_02CE:
    ScrCmd_0F2 28, 0, 0, 0x800C
    Return

_02DA:
    GoTo _022C
    End

_02E2:
    ScrCmd_150
    GoTo _022C
    End

_02EC:
    Message 25
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _022C
    CloseMessage
    CallIfEq 0x40B9, 0, _033E
    CallIfEq 0x40B9, 1, _034A
    GoToIfEq 0x800C, 1, _0356
    GoToIfEq 0x800C, 3, _035E
    GoTo _0368
    End

_033E:
    ScrCmd_0F3 27, 0, 0, 0x800C
    Return

_034A:
    ScrCmd_0F3 28, 0, 0, 0x800C
    Return

_0356:
    GoTo _022C
    End

_035E:
    ScrCmd_150
    GoTo _022C
    End

_0368:
    Message 26
    CallIfEq 0x40B8, 2, _0386
    Call _05D7
    GoTo _038E
    End

_0386:
    SetVar 0x40B7, 0xFF
    Return

_038E:
    CallIfEq 0x40B8, 0, _042E
    CallIfEq 0x40B8, 1, _0449
    CallIfEq 0x40B8, 2, _0464
    PlayFanfare SEQ_SE_DP_KAIDAN2
    GoTo _03C1
    End

_03C1:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CallIfEq 0x40B8, 0, _048A
    CallIfEq 0x40B8, 1, _049E
    CallIfEq 0x40B8, 2, _04B2
    ScrCmd_1E5 58
    ScrCmd_1CD 37, 0, 0, 0, 0
    ScrCmd_1F8
    ScrCmd_2C4 3
    CallIfEq 0x40B8, 2, _042A
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ScrCmd_313 1
    End

_042A:
    ScrCmd_150
    Return

_042E:
    Message 9
    WaitABPress
    CloseMessage
    ApplyMovement 0xFF, _04C8
    ApplyMovement 0x800D, _04F0
    WaitMovement
    Return

_0449:
    Message 9
    WaitABPress
    CloseMessage
    ApplyMovement 0xFF, _04C8
    ApplyMovement 0x800D, _04F0
    WaitMovement
    Return

_0464:
    ScrCmd_02E 9
    WaitTime 15, 0x800C
    ScrCmd_136
    ScrCmd_135 169
    CloseMessage
    ApplyMovement 0xFF, _04DC
    ApplyMovement 0x800D, _0504
    WaitMovement
    Return

_048A:
    ApplyMovement 0xFF, _0518
    ApplyMovement 0x800D, _0548
    WaitMovement
    Return

_049E:
    ApplyMovement 0xFF, _0518
    ApplyMovement 0x800D, _0548
    WaitMovement
    Return

_04B2:
    ApplyMovement 0xFF, _0530
    ApplyMovement 0x800D, _055C
    WaitMovement
    Return

    .balign 4, 0
_04C8:
    MoveAction_00C 3
    MoveAction_00F
    MoveAction_00C 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_04DC:
    MoveAction_00C 3
    MoveAction_00E
    MoveAction_00C 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_04F0:
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_00C 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_0504:
    MoveAction_00C 2
    MoveAction_00E
    MoveAction_00C 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_0518:
    MoveAction_015 3
    MoveAction_016
    MoveAction_015 4
    MoveAction_000
    MoveAction_046
    EndMovement

    .balign 4, 0
_0530:
    MoveAction_015 3
    MoveAction_017
    MoveAction_015 4
    MoveAction_000
    MoveAction_046
    EndMovement

    .balign 4, 0
_0548:
    MoveAction_015 2
    MoveAction_016
    MoveAction_015 4
    MoveAction_046
    EndMovement

    .balign 4, 0
_055C:
    MoveAction_015 2
    MoveAction_017
    MoveAction_015 4
    MoveAction_046
    EndMovement

_0570:
    Message 0
    Return

_0575:
    Message 3
    Return

_057A:
    ScrCmd_041 31, 9, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 16, 0
    ScrCmd_042 17, 1
    Message 1
    Return

_0592:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 18, 4
    Message 4
    Return

_05A6:
    Message 2
    Return

_05AB:
    Message 5
    Return

_05B0:
    ScrCmd_313 0
    SetVar 0x4003, 1
    SetVar 0x40B7, 0
    Message 11
    Call _0386
    Call _05D7
    GoTo _038E
    End

_05D7:
    ScrCmd_18D
    ScrCmd_12D 0x800C
    ScrCmd_18E
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    Return

_05E9:
    Message 12
    ScrCmd_2C5 0x40B8, 0x40B9
    GoTo _0139
    End

_05FA:
    CallIfEq 0x40B8, 0, _0636
    CallIfEq 0x40B8, 1, _0636
    CallIfEq 0x4050, 1, _063C
    CallIfEq 0x4050, 3, _0653
    GoTo _0139
    End

_0636:
    ScrCmd_30A 38
    Return

_063C:
    Message 13
    BufferPlayerName 0
    Message 15
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar 0x4050, 2
    Return

_0653:
    Message 13
    BufferPlayerName 0
    Message 14
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar 0x4050, 4
    CallCommonScript 0x806
    Return

_066E:
    GoTo _0139

    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0698:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06AB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 28
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06BE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06D1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 30
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06E4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 31
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06F7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_070A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
