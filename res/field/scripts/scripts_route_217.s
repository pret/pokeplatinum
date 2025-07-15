#include "macros/scrcmd.inc"
#include "res/text/bank/route_217.h"


    ScriptEntry _0012
    ScriptEntry _0023
    ScriptEntry _003A
    ScriptEntry _004D
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0023:
    ShowArrowSign 4
    End

_003A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_004D:
    LockAll
    ClearFlag FLAG_UNK_0x0297
    AddObject 15
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 0x12E, _00CA
    CallIfEq VAR_0x8004, 0x12F, _00D6
    BufferPlayerName 0
    Message 0
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _010C
    WaitMovement
    ApplyMovement 15, _014C
    WaitMovement
    Message 1
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 0x12E, _00E2
    CallIfEq VAR_0x8004, 0x12F, _00F6
    RemoveObject 15
    SetVar VAR_UNK_0x40A8, 1
    SetFlag FLAG_UNK_0x0298
    ReleaseAll
    End

_00CA:
    ApplyMovement 15, _0124
    WaitMovement
    Return

_00D6:
    ApplyMovement 15, _0138
    WaitMovement
    Return

_00E2:
    ApplyMovement LOCALID_PLAYER, _0114
    ApplyMovement 15, _0154
    WaitMovement
    Return

_00F6:
    ApplyMovement LOCALID_PLAYER, _0114
    ApplyMovement 15, _0168
    WaitMovement
    Return

    .balign 4, 0
_010C:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0114:
    Delay8 2
    Delay4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0124:
    WalkNormalNorth 4
    WalkNormalWest 3
    WalkNormalNorth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0138:
    WalkNormalNorth 4
    WalkNormalWest 2
    WalkNormalNorth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_014C:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0154:
    WalkNormalEast
    WalkNormalNorth 3
    WalkNormalEast 2
    WalkNormalNorth 9
    EndMovement

    .balign 4, 0
_0168:
    WalkNormalWest
    WalkNormalNorth 3
    WalkNormalEast 3
    WalkNormalNorth 9
    EndMovement
