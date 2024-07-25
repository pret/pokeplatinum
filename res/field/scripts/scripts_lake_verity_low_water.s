#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _004E
    ScriptEntry _006F
    ScriptEntry _0418
    ScriptEntry _044B
    ScriptEntry _048A
    ScriptEntry _048C
    .short 0xFD13

_001E:
    ScrCmd_14D 0x4000
    GoToIfEq 0x4000, 0, _003E
    GoToIfEq 0x4000, 1, _0046
    End

_003E:
    SetVar 0x4020, 97
    End

_0046:
    SetVar 0x4020, 0
    End

_004E:
    GoToIfSet 142, _005B
    End

_005B:
    SetFlag 0x18F
    ScrCmd_065 3
    ScrCmd_065 2
    ClearFlag 142
    End
    End

_006F:
    LockAll
    ScrCmd_162
    ApplyMovement 5, _0298
    ApplyMovement 0xFF, _0368
    WaitMovement
    BufferRivalName 0
    Message 0
    CloseMessage
    ScrCmd_066 46, 53
    ApplyMovement 241, _01B4
    WaitMovement
    WaitTime 15, 0x800C
    Message 1
    CloseMessage
    WaitTime 30, 0x800C
    ApplyMovement 4, _01E0
    ApplyMovement 241, _01C0
    WaitMovement
    ScrCmd_067
    Message 2
    CloseMessage
    ApplyMovement 5, _02A0
    ApplyMovement 0xFF, _0370
    WaitMovement
    ApplyMovement 4, _01F0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 4
    WaitTime 50, 0x800C
    ApplyMovement 0xFF, _0378
    ApplyMovement 5, _02AC
    WaitMovement
    BufferRivalName 0
    Message 3
    CloseMessage
    ApplyMovement 5, _02B8
    ApplyMovement 0xFF, _0380
    WaitMovement
    WaitTime 30, 0x800C
    BufferPlayerName 1
    Message 4
    ScrCmd_04C 0x1E1, 0
    Message 5
    ScrCmd_04D
    CloseMessage
    ApplyMovement 5, _02C0
    ApplyMovement 0xFF, _0388
    WaitMovement
    WaitTime 15, 0x800C
    ApplyMovement 5, _02F0
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 6
    CloseMessage
    ApplyMovement 5, _02E8
    WaitMovement
    WaitTime 15, 0x800C
    BufferPlayerName 1
    Message 7
    CloseMessage
    ApplyMovement 5, _02F8
    ApplyMovement 0xFF, _039C
    WaitMovement
    SetFlag 0x196
    ScrCmd_065 5
    PlayFanfare SEQ_SE_DP_KAIDAN2
    GoTo _01A1
    End

_01A1:
    SetVar 0x4086, 4
    SetVar 0x4095, 1
    ReleaseAll
    End

    .balign 4, 0
_01B4:
    MoveAction_03F
    MoveAction_00C 9
    EndMovement

    .balign 4, 0
_01C0:
    MoveAction_00D 9
    EndMovement

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01E0:
    MoveAction_00D 5
    MoveAction_00E
    MoveAction_00D 4
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_00D 3
    MoveAction_045
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 4
    .byte 0
    .byte 14
    .byte 0
    .byte 2
    .byte 0
    .byte 13
    .byte 0
    .byte 5
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 5
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 38
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 4
    .byte 0
    .byte 15
    .byte 0
    .byte 2
    .byte 0
    .byte 12
    .byte 0
    .byte 4
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0298:
    MoveAction_010
    EndMovement

    .balign 4, 0
_02A0:
    MoveAction_00F
    MoveAction_022
    EndMovement

    .balign 4, 0
_02AC:
    MoveAction_00E
    MoveAction_021
    EndMovement

    .balign 4, 0
_02B8:
    MoveAction_026
    EndMovement

    .balign 4, 0
_02C0:
    MoveAction_04B
    MoveAction_010 3
    MoveAction_03F 3
    MoveAction_026
    MoveAction_03F
    MoveAction_024
    MoveAction_03F 2
    MoveAction_011 3
    MoveAction_026
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_02F0:
    MoveAction_026 4
    EndMovement

    .balign 4, 0
_02F8:
    MoveAction_011 2
    EndMovement

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 7
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 62
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
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 37
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 6
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0368:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0370:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0378:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0380:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0388:
    MoveAction_03F 4
    MoveAction_020
    MoveAction_03F 9
    MoveAction_023
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_021
    EndMovement

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 5
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
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
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 32
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
    .byte 13
    .byte 0
    .byte 4
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 6
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 16
    .byte 0
    .byte 6
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 18
    .byte 0
    .byte 7
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0418:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 184, _043D
    SetFlag 184
    BufferPlayerName 0
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_043D:
    BufferPlayerName 0
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_044B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _046A
    GoTo _0476

_046A:
    BufferPlayerName 0
    Message 10
    GoTo _0482

_0476:
    BufferPlayerName 0
    Message 11
    GoTo _0482

_0482:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_048A:
    End

_048C:
    End

    .byte 0
    .byte 0
