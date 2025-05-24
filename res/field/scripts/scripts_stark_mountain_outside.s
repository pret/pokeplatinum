#include "macros/scrcmd.inc"
#include "res/text/bank/stark_mountain_outside.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0018
    ScriptEntry _002F
    ScriptEntry _0118
    ScriptEntryEnd

_0012:
    SetFlag FLAG_UNK_0x09D1
    End

_0018:
    ShowLandmarkSign 9
    End

_002F:
    LockAll
    ApplyMovement 6, _00A4
    ApplyMovement 7, _00E0
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 6, _00AC
    ApplyMovement 7, _00EC
    WaitMovement
    ApplyMovement 7, _0100
    WaitMovement
    Message 1
    CloseMessage
    ApplyMovement 6, _00C4
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 6, _00D4
    ApplyMovement 7, _0108
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 6
    RemoveObject 7
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar VAR_UNK_0x40A0, 1
    ReleaseAll
    End

    .balign 4, 0
_00A4:
    MoveAction_WalkNormalEast 4
    EndMovement

    .balign 4, 0
_00AC:
    MoveAction_WalkNormalSouth 2
    MoveAction_WalkNormalEast 4
    MoveAction_WalkNormalNorth
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00C4:
    MoveAction_WalkOnSpotNormalWest
    MoveAction_Delay8 2
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_00D4:
    MoveAction_WalkNormalNorth 2
    MoveAction_SetInvisible
    EndMovement

    .balign 4, 0
_00E0:
    MoveAction_WalkNormalNorth
    MoveAction_WalkNormalEast 3
    EndMovement

    .balign 4, 0
_00EC:
    MoveAction_WalkNormalEast
    MoveAction_WalkNormalSouth 2
    MoveAction_WalkNormalEast 3
    MoveAction_WalkNormalNorth
    EndMovement

    .balign 4, 0
_0100:
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0108:
    MoveAction_WalkNormalEast
    MoveAction_WalkNormalNorth 2
    MoveAction_SetInvisible
    EndMovement

_0118:
    LockAll
    Message 3
    CloseMessage
    WaitTime 15, VAR_RESULT
    Message 4
    ApplyMovement 5, _01F0
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement 5, _01F8
    WaitMovement
    ApplyMovement 4, _01CC
    WaitMovement
    BufferPlayerName 0
    Message 6
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement 5, _0204
    ApplyMovement 4, _01DC
    WaitMovement
    BufferPlayerName 0
    Message 7
    CloseMessage
    ApplyMovement 5, _0214
    ApplyMovement LOCALID_PLAYER, _0238
    WaitMovement
    RemoveObject 5
    ApplyMovement 4, _01E8
    ApplyMovement LOCALID_PLAYER, _0240
    WaitMovement
    BufferPlayerName 0
    Message 8
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject 4
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar VAR_UNK_0x40A0, 3
    ReleaseAll
    End

    .balign 4, 0
_01CC:
    MoveAction_WalkOnSpotNormalWest
    MoveAction_Delay8 2
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_01E8:
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_01F8:
    MoveAction_WalkNormalNorth 2
    MoveAction_SetInvisible
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_SetVisible
    MoveAction_WalkNormalSouth
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0214:
    MoveAction_WalkNormalSouth 2
    MoveAction_WalkNormalWest 5
    MoveAction_WalkNormalNorth 2
    MoveAction_WalkNormalWest 3
    MoveAction_WalkFasterSouth 9
    MoveAction_WalkFasterEast 10
    MoveAction_WalkNormalNorth 6
    MoveAction_WalkNormalEast 8
    EndMovement

    .balign 4, 0
_0238:
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0240:
    MoveAction_WalkOnSpotNormalNorth
    EndMovement
