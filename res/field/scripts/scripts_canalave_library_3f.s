#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0032
    ScriptEntry _0062
    ScriptEntry _03E8
    ScriptEntry _0411
    ScriptEntry _043A
    ScriptEntry _047C
    ScriptEntry _04BE
    ScriptEntry _0500
    ScriptEntry _056A
    ScriptEntry _05D4
    ScriptEntry _0616
    ScriptEntry _06A2
    .short 0xFD13

_0032:
    ScrCmd_14D 0x4000
    GoToIfEq 0x4000, 0, _0052
    GoToIfEq 0x4000, 1, _005A
    End

_0052:
    SetVar 0x4020, 97
    End

_005A:
    SetVar 0x4020, 0
    End

_0062:
    LockAll
    BufferRivalName 0
    BufferPlayerName 1
    Message 0
    CloseMessage
    ApplyMovement 4, _0364
    ApplyMovement 0xFF, _0310
    WaitMovement
    GetPlayerMapPos 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ApplyMovement 241, _0340
    WaitMovement
    WaitTime 30, 0x800C
    BufferRivalName 0
    BufferPlayerName 1
    Message 1
    CloseMessage
    ApplyMovement 4, _0350
    WaitMovement
    BufferPlayerName 0
    Message 2
    BufferRivalName 0
    Message 3
    CloseMessage
    ApplyMovement 4, _035C
    WaitMovement
    WaitTime 10, 0x800C
    BufferPlayerName 0
    Message 4
    CloseMessage
    ApplyMovement 2, _02C8
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement 2, _02D4
    WaitMovement
    Message 6
    BufferRivalName 0
    Message 7
    Message 8
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0116
    GoTo _0124
    End

_0116:
    BufferPlayerName 0
    Message 9
    GoTo _0132
    End

_0124:
    BufferPlayerName 0
    Message 10
    GoTo _0132
    End

_0132:
    Message 11
    CloseMessage
    ApplyMovement 2, _02E0
    ApplyMovement 3, _03D8
    WaitMovement
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _0162
    GoTo _0173
    End

_0162:
    Message 12
    BufferCounterpartName 0
    Message 13
    GoTo _0184
    End

_0173:
    Message 14
    BufferCounterpartName 0
    Message 15
    GoTo _0184
    End

_0184:
    CloseMessage
    ApplyMovement 2, _02E8
    ApplyMovement 3, _03E0
    WaitMovement
    BufferRivalName 0
    Message 16
    CloseMessage
    ApplyMovement 4, _039C
    WaitMovement
    Message 17
    CloseMessage
    ApplyMovement 4, _03A4
    WaitMovement
    BufferPlayerName 0
    Message 18
    WaitFanfare SEQ_SE_CONFIRM
    MessageInstant 19
    ScrCmd_29F 1
    Message 20
    BufferRivalName 0
    Message 21
    CloseMessage
    ApplyMovement 4, _03AC
    ApplyMovement 0xFF, _0330
    WaitMovement
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_067
    ScrCmd_310
    ScrCmd_0A1
    GetPlayerMapPos 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ApplyMovement 241, _0340
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Message 22
    CloseMessage
    WaitTime 15, 0x800C
    ApplyMovement 4, _03B4
    WaitMovement
    BufferRivalName 0
    Message 23
    ApplyMovement 0xFF, _0338
    WaitMovement
    Message 24
    CloseMessage
    ApplyMovement 3, _03BC
    ApplyMovement 4, _0388
    ApplyMovement 2, _02F0
    ApplyMovement 241, _0348
    WaitMovement
    ScrCmd_065 4
    ScrCmd_065 3
    ScrCmd_067
    ApplyMovement 0xFF, _02C0
    WaitMovement
    Message 25
    CloseMessage
    ScrCmd_04A 0x5DC
    ApplyMovement 2, _0308
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 2
    ScrCmd_04A 0x603
    SetVar 0x4078, 4
    SetVar 0x40B2, 2
    SetFlag 168
    SetFlag 0x1AE
    ClearFlag 0x1B3
    ClearFlag 0x1B5
    ClearFlag 0x1B2
    ReleaseAll
    End

    .balign 4, 0
_02C0:
    MoveAction_020
    EndMovement

    .balign 4, 0
_02C8:
    MoveAction_00B
    MoveAction_021
    EndMovement

    .balign 4, 0
_02D4:
    MoveAction_00E
    MoveAction_020
    EndMovement

    .balign 4, 0
_02E0:
    MoveAction_022
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_020
    EndMovement

    .balign 4, 0
_02F0:
    MoveAction_00F
    MoveAction_00C 4
    MoveAction_00E 5
    MoveAction_00C 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_0308:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0310:
    MoveAction_03F 3
    MoveAction_021
    MoveAction_00D 2
    MoveAction_00F
    MoveAction_00D
    MoveAction_00F 2
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0330:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0338:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0340:
    MoveAction_00B 3
    EndMovement

    .balign 4, 0
_0348:
    MoveAction_00A 3
    EndMovement

    .balign 4, 0
_0350:
    MoveAction_010
    MoveAction_021
    EndMovement

    .balign 4, 0
_035C:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0364:
    MoveAction_00D
    MoveAction_00F 2
    MoveAction_020
    MoveAction_00D
    MoveAction_00F
    MoveAction_00D
    MoveAction_00F 3
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0388:
    MoveAction_012 4
    MoveAction_010 3
    MoveAction_013
    MoveAction_045
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_027
    EndMovement

    .balign 4, 0
_03A4:
    MoveAction_021
    EndMovement

    .balign 4, 0
_03AC:
    MoveAction_010
    EndMovement

    .balign 4, 0
_03B4:
    MoveAction_021
    EndMovement

    .balign 4, 0
_03BC:
    MoveAction_00E
    MoveAction_00C 5
    MoveAction_00E 2
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_045
    EndMovement

    .balign 4, 0
_03D8:
    MoveAction_023
    EndMovement

    .balign 4, 0
_03E0:
    MoveAction_020
    EndMovement

_03E8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 168, _0406
    Message 26
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0406:
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0411:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 168, _042F
    Message 28
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_042F:
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_043A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 30
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0471
    GoToIfEq 0x800C, 1, _0463
    End

_0463:
    BufferPlayerName 0
    Message 31
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0471:
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_047C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 33
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _04B3
    GoToIfEq 0x800C, 1, _04A5
    End

_04A5:
    BufferPlayerName 0
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04B3:
    Message 35
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04BE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 36
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _04F5
    GoToIfEq 0x800C, 1, _04E7
    End

_04E7:
    BufferPlayerName 0
    Message 37
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04F5:
    Message 38
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0500:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 39
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0537
    GoToIfEq 0x800C, 1, _0529
    End

_0529:
    BufferPlayerName 0
    Message 40
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0537:
    Message 41
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0529
    Message 42
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0529
    Message 43
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_056A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 44
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _05A1
    GoToIfEq 0x800C, 1, _0593
    End

_0593:
    BufferPlayerName 0
    Message 45
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05A1:
    Message 46
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0593
    Message 47
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0593
    Message 48
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05D4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 49
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _060B
    GoToIfEq 0x800C, 1, _05FD
    End

_05FD:
    BufferPlayerName 0
    Message 50
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_060B:
    Message 51
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0616:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 52
    Message 53
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_29D 0x103, 0
    ScrCmd_29D 0x104, 1
    ScrCmd_29D 0x105, 2
    ScrCmd_29D 0x106, 3
    ScrCmd_043
    GoToIfEq 0x800C, 0, _0673
    GoToIfEq 0x800C, 1, _067E
    GoToIfEq 0x800C, 2, _0689
    GoTo _0694
    End

_0673:
    Message 55
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_067E:
    Message 56
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0689:
    Message 57
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0694:
    BufferPlayerName 0
    Message 54
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06A2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 58
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
