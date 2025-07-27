#include "macros/scrcmd.inc"
#include "res/text/bank/valley_windworks_building.h"


    ScriptEntry _0022
    ScriptEntry _005F
    ScriptEntry _00AC
    ScriptEntry _00BF
    ScriptEntry _037C
    ScriptEntry _03A7
    ScriptEntry _03D2
    ScriptEntry _03DA
    ScriptEntryEnd

_0022:
    SetFlag FLAG_UNK_0x09C3
    GoToIfGe VAR_UNK_0x4089, 2, _0035
    End

_0035:
    SetObjectEventPos 5, 21, 5
    SetObjectEventDir 5, DIR_WEST
    SetObjectEventMovementType 5, MOVEMENT_TYPE_LOOK_LEFT
    SetObjectEventPos 2, 18, 4
    SetObjectEventDir 2, DIR_SOUTH
    SetObjectEventMovementType 2, MOVEMENT_TYPE_LOOK_SOUTH
    End

_005F:
    LockAll
    ApplyMovement 0, _0090
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 0, _0098
    ApplyMovement LOCALID_PLAYER, _00A0
    WaitMovement
    RemoveObject 0
    SetVar VAR_UNK_0x40CF, 1
    ReleaseAll
    End

    .balign 4, 0
_0090:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0098:
    WalkFastWest 9
    EndMovement

    .balign 4, 0
_00A0:
    Delay8
    WalkOnSpotNormalWest
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
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 6, _00E3
    GoToIfEq VAR_0x8005, 7, _00F5
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
    StartTrainerBattle TRAINER_COMMANDER_MARS_VALLEY_WINDWORKS
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _02B9
    Message 3
    CloseMessage
    ApplyMovement 7, _0374
    WaitMovement
    WaitTime 15, VAR_RESULT
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
    RemoveObject 1
    RemoveObject 7
    RemoveObject 6
    RemoveObject 3
    RemoveObject 4
    SetFlag FLAG_UNK_0x01A2
    ClearFlag FLAG_UNK_0x017F
    SetVar VAR_UNK_0x4089, 2
    SetFlag FLAG_UNK_0x0AA8
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 6, _01B7
    GoToIfEq VAR_0x8005, 7, _01C9
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
    SetFlag FLAG_UNK_0x01F8
    ClearFlag FLAG_UNK_0x01F9
    SetObjectEventMovementType 5, MOVEMENT_TYPE_LOOK_LEFT
    AddObject 5
    LockObject 5
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 6, _0218
    GoToIfEq VAR_0x8005, 7, _0232
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
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 6, _0273
    GoToIfEq VAR_0x8005, 7, _0285
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
    SetVar VAR_UNK_0x411E, 1
    ClearFlag FLAG_UNK_0x01FA
    SetVar VAR_UNK_0x40CF, 2
    SetFlag FLAG_ALT_MUSIC_VALLEY_WINDWORKS_BUILDING
    ReleaseAll
    End

_02B9:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_02C0:
    WalkFastEast 4
    WalkFastNorth
    WalkFastEast 6
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_02D4:
    WalkFastEast 4
    WalkFastNorth 2
    WalkFastEast 6
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
_02E8:
    WalkNormalSouth 3
    WalkNormalWest
    EndMovement

    .balign 4, 0
_02F4:
    WalkNormalSouth 4
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0300:
    Delay8 6
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_030C:
    Delay8 6
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0318:
    FaceEast
    Delay8 2
    FaceWest
    Delay8 2
    FaceSouth
    EndMovement

    .balign 4, 0
_0330:
    FaceEast
    Delay8 2
    FaceWest
    Delay8 2
    FaceNorth
    EndMovement

    .balign 4, 0
_0348:
    EmoteExclamationMark
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0358:
    EmoteExclamationMark
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0364:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_036C:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0374:
    WalkOnSpotNormalSouth
    EndMovement

_037C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_UNK_0x40CF, 3, _039C
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
    GoToIfGe VAR_UNK_0x40CF, 3, _03C7
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
    GoToIfGe VAR_UNK_0x40AA, 2, _0400
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
