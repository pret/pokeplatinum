#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0022
    ScriptEntry _005F
    ScriptEntry _00AC
    ScriptEntry _00BF
    ScriptEntry _037C
    ScriptEntry _03A7
    ScriptEntry _03D2
    ScriptEntry _03DA
    .short 0xFD13

_0022:
    SetFlag 0x9C3
    GoToIfGe 0x4089, 2, _0035
    End

_0035:
    ScrCmd_186 5, 21, 5
    ScrCmd_189 5, 2
    ScrCmd_188 5, 16
    ScrCmd_186 2, 18, 4
    ScrCmd_189 2, 1
    ScrCmd_188 2, 15
    End

_005F:
    LockAll
    ApplyMovement 0, _0090
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 0, _0098
    ApplyMovement 0xFF, _00A0
    WaitMovement
    ScrCmd_065 0
    SetVar 0x40CF, 1
    ReleaseAll
    End

    .balign 4, 0
_0090:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0098:
    MoveAction_012 9
    EndMovement

    .balign 4, 0
_00A0:
    MoveAction_03F
    MoveAction_022
    EndMovement

_00AC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BF:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 6, _00E3
    GoToIfEq 0x8005, 7, _00F5
    End

_00E3:
    ApplyMovement 1, _0348
    WaitMovement
    GoTo _0107
    End

_00F5:
    ApplyMovement 1, _0358
    WaitMovement
    GoTo _0107
    End

_0107:
    Message 2
    CloseMessage
    ScrCmd_0E5 0x127, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _02B9
    Message 3
    CloseMessage
    ApplyMovement 7, _0374
    WaitMovement
    WaitTime 15, 0x800C
    Message 4
    ApplyMovement 1, _0364
    WaitMovement
    Message 5
    ApplyMovement 1, _036C
    WaitMovement
    Message 6
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_065 1
    ScrCmd_065 7
    ScrCmd_065 6
    ScrCmd_065 3
    ScrCmd_065 4
    SetFlag 0x1A2
    ClearFlag 0x17F
    SetVar 0x4089, 2
    SetFlag 0xAA8
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 6, _01B7
    GoToIfEq 0x8005, 7, _01C9
    End

_01B7:
    ApplyMovement 2, _02E8
    WaitMovement
    GoTo _01DB
    End

_01C9:
    ApplyMovement 2, _02F4
    WaitMovement
    GoTo _01DB
    End

_01DB:
    Message 7
    CloseMessage
    SetFlag 0x1F8
    ClearFlag 0x1F9
    ScrCmd_188 5, 16
    ScrCmd_064 5
    ScrCmd_062 5
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 6, _0218
    GoToIfEq 0x8005, 7, _0232
    End

_0218:
    ApplyMovement 5, _02C0
    ApplyMovement 2, _0300
    WaitMovement
    GoTo _024C
    End

_0232:
    ApplyMovement 5, _02D4
    ApplyMovement 2, _030C
    WaitMovement
    GoTo _024C
    End

_024C:
    Message 8
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 6, _0273
    GoToIfEq 0x8005, 7, _0285
    End

_0273:
    ApplyMovement 2, _0318
    WaitMovement
    GoTo _0297
    End

_0285:
    ApplyMovement 2, _0330
    WaitMovement
    GoTo _0297
    End

_0297:
    Message 9
    Message 10
    WaitABXPadPress
    CloseMessage
    SetVar 0x411E, 1
    ClearFlag 0x1FA
    SetVar 0x40CF, 2
    SetFlag 0x988
    ReleaseAll
    End

_02B9:
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_02C0:
    MoveAction_013 4
    MoveAction_010
    MoveAction_013 6
    MoveAction_024
    EndMovement

    .balign 4, 0
_02D4:
    MoveAction_013 4
    MoveAction_010 2
    MoveAction_013 6
    MoveAction_025
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_00D 3
    MoveAction_00E
    EndMovement

    .balign 4, 0
_02F4:
    MoveAction_00D 4
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0300:
    MoveAction_03F 6
    MoveAction_021
    EndMovement

    .balign 4, 0
_030C:
    MoveAction_03F 6
    MoveAction_020
    EndMovement

    .balign 4, 0
_0318:
    MoveAction_003
    MoveAction_03F 2
    MoveAction_002
    MoveAction_03F 2
    MoveAction_001
    EndMovement

    .balign 4, 0
_0330:
    MoveAction_003
    MoveAction_03F 2
    MoveAction_002
    MoveAction_03F 2
    MoveAction_000
    EndMovement

    .balign 4, 0
_0348:
    MoveAction_04B
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_0358:
    MoveAction_04B
    MoveAction_022
    EndMovement

    .balign 4, 0
_0364:
    MoveAction_020
    EndMovement

    .balign 4, 0
_036C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0374:
    MoveAction_021
    EndMovement

_037C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40CF, 3, _039C
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_039C:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03A7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40CF, 3, _03C7
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03C7:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03D2:
    GoTo _03E2
    End

_03DA:
    GoTo _03E2
    End

_03E2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfGe 0x40AA, 2, _0400
    Message 14
    GoTo _040B
    End

_0400:
    Message 15
    GoTo _040B
    End

_040B:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
