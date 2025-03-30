#include "macros/scrcmd.inc"
#include "res/text/bank/battle_park.h"

    .data

    ScriptEntry _0032
    ScriptEntry _0308
    ScriptEntry _03AD
    ScriptEntry _03C4
    ScriptEntry _031B
    ScriptEntry _032C
    ScriptEntry _033D
    ScriptEntry _0350
    ScriptEntry _0361
    ScriptEntry _0374
    ScriptEntry _0387
    ScriptEntry _039A
    ScriptEntryEnd

_0032:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 23, _01A8
    CallIfEq 0x8004, 24, _01BA
    CallIfEq 0x8004, 25, _01CC
    CallIfEq 0x8004, 26, _01DE
    ClearFlag FLAG_UNK_0x0276
    AddObject 11
    ScrCmd_062 11
    ApplyMovement 11, _02C8
    ApplyMovement LOCALID_PLAYER, _0290
    WaitMovement
    PlayFanfare SEQ_SE_DP_WALL_HIT2
    BufferPlayerName 1
    Message 0
    CloseMessage
    WaitTime 30, 0x800C
    ApplyMovement 11, _02D0
    WaitMovement
    Message 1
    CloseMessage
    ApplyMovement 11, _02E0
    WaitMovement
    Message 2
    ApplyMovement 11, _02E8
    WaitMovement
    Message 3
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 23, _01F0
    CallIfEq 0x8004, 24, _0204
    CallIfEq 0x8004, 25, _0218
    CallIfEq 0x8004, 26, _022C
    RemoveObject 11
    ClearFlag FLAG_UNK_0x0277
    AddObject 12
    ScrCmd_062 12
    ApplyMovement 12, _02C8
    ApplyMovement LOCALID_PLAYER, _0290
    WaitMovement
    PlayFanfare SEQ_SE_DP_WALL_HIT2
    BufferRivalName 0
    BufferPlayerName 1
    Message 4
    CloseMessage
    WaitTime 30, 0x800C
    CallIfLt 0x409E, 1, _019E
    CallIfGe 0x409E, 1, _01A3
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 23, _0240
    CallIfEq 0x8004, 24, _0254
    CallIfEq 0x8004, 25, _0268
    CallIfEq 0x8004, 26, _027C
    RemoveObject 12
    SetVar 0x410E, 1
    ReleaseAll
    End

_019E:
    Message 5
    Return

_01A3:
    Message 6
    Return

_01A8:
    SetObjectEventPos 11, 23, 41
    SetObjectEventPos 12, 23, 40
    Return

_01BA:
    SetObjectEventPos 11, 24, 41
    SetObjectEventPos 12, 24, 40
    Return

_01CC:
    SetObjectEventPos 11, 25, 41
    SetObjectEventPos 12, 25, 40
    Return

_01DE:
    SetObjectEventPos 11, 26, 41
    SetObjectEventPos 12, 26, 40
    Return

_01F0:
    ApplyMovement 11, _02F0
    ApplyMovement LOCALID_PLAYER, _02A8
    WaitMovement
    Return

_0204:
    ApplyMovement 11, _02F0
    ApplyMovement LOCALID_PLAYER, _02A8
    WaitMovement
    Return

_0218:
    ApplyMovement 11, _02FC
    ApplyMovement LOCALID_PLAYER, _02B8
    WaitMovement
    Return

_022C:
    ApplyMovement 11, _02FC
    ApplyMovement LOCALID_PLAYER, _02B8
    WaitMovement
    Return

_0240:
    ApplyMovement 12, _02F0
    ApplyMovement LOCALID_PLAYER, _02A8
    WaitMovement
    Return

_0254:
    ApplyMovement 12, _02F0
    ApplyMovement LOCALID_PLAYER, _02A8
    WaitMovement
    Return

_0268:
    ApplyMovement 12, _02FC
    ApplyMovement LOCALID_PLAYER, _02B8
    WaitMovement
    Return

_027C:
    ApplyMovement 12, _02FC
    ApplyMovement LOCALID_PLAYER, _02B8
    WaitMovement
    Return

    .balign 4, 0
_0290:
    MoveAction_062 7
    MoveAction_037
    MoveAction_071
    MoveAction_016
    MoveAction_072
    EndMovement

    .balign 4, 0
_02A8:
    MoveAction_063
    MoveAction_035
    MoveAction_032
    EndMovement

    .balign 4, 0
_02B8:
    MoveAction_063
    MoveAction_034
    MoveAction_032
    EndMovement

    .balign 4, 0
_02C8:
    MoveAction_016 8
    EndMovement

    .balign 4, 0
_02D0:
    MoveAction_034
    MoveAction_035
    MoveAction_033
    EndMovement

    .balign 4, 0
_02E0:
    MoveAction_032
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_075
    EndMovement

    .balign 4, 0
_02F0:
    MoveAction_019
    MoveAction_016 8
    EndMovement

    .balign 4, 0
_02FC:
    MoveAction_018
    MoveAction_016 8
    EndMovement

_0308:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_031B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_032C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_033D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0350:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0361:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0374:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0387:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_039A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03AD:
    ShowLandmarkSign 7
    End

_03C4:
    ShowLandmarkSign 8
    End

    .byte 0
