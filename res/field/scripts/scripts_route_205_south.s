#include "macros/scrcmd.inc"
#include "res/text/bank/route_205_south.h"


    ScriptEntry _002A
    ScriptEntry _00F8
    ScriptEntry _010B
    ScriptEntry _002C
    ScriptEntry _011E
    ScriptEntry _015D
    ScriptEntry _0070
    ScriptEntry _0280
    ScriptEntry _0297
    ScriptEntry _02AE
    ScriptEntryEnd

_002A:
    End

_002C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement 13, _0060
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 12, _0068
    WaitMovement
    Call _00B6
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0060:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0068:
    WalkOnSpotNormalSouth
    EndMovement

_0070:
    LockAll
    ApplyMovement 13, _00BC
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 12, _00C4
    WaitMovement
    Message 3
    CloseMessage
    ApplyMovement 13, _00CC
    ApplyMovement LOCALID_PLAYER, _00EC
    WaitMovement
    ApplyMovement 12, _00E4
    WaitMovement
    Call _00B6
    ReleaseAll
    End

_00B6:
    SetFlag FLAG_UNK_0x007F
    Return

    .balign 4, 0
_00BC:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_00C4:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_00CC:
    WalkFastEast
    WalkOnSpotFastSouth
    Delay8 2
    WalkNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_00E4:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_00EC:
    WalkNormalSouth
    WalkOnSpotFastNorth
    EndMovement

_00F8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0091, _0142
    Call _014D
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0142:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014D:
    SetFlag FLAG_UNK_0x01A1
    SetFlag FLAG_UNK_0x0091
    SetVar VAR_UNK_0x4089, 1
    Return

_015D:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x293, _01A8
    GoToIfEq VAR_0x8005, 0x294, _01C2
    GoToIfEq VAR_0x8005, 0x295, _01DC
    GoToIfEq VAR_0x8005, 0x296, _01E2
    GoToIfEq VAR_0x8005, 0x297, _01FC
    End

_01A8:
    ApplyMovement 18, _0238
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0228
    WaitMovement
    GoTo _0216

_01C2:
    ApplyMovement 18, _024C
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0228
    WaitMovement
    GoTo _0216

_01DC:
    GoTo _0216

_01E2:
    ApplyMovement 18, _025C
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0230
    WaitMovement
    GoTo _0216

_01FC:
    ApplyMovement 18, _026C
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0230
    WaitMovement
    GoTo _0216

_0216:
    Call _014D
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0228:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0230:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0238:
    WalkOnSpotNormalNorth
    EmoteExclamationMark
    Delay8
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_024C:
    WalkOnSpotNormalNorth
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
_025C:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
_026C:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    Delay8
    WalkNormalSouth
    EndMovement

_0280:
    ShowArrowSign 7
    End

_0297:
    ShowArrowSign 8
    End

_02AE:
    ShowScrollingSign 9
    End

    .balign 4, 0
