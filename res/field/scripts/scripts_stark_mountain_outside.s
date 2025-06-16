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
    WalkNormalEast 4
    EndMovement

    .balign 4, 0
_00AC:
    WalkNormalSouth 2
    WalkNormalEast 4
    WalkNormalNorth
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
    WalkOnSpotNormalWest
    Delay8 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_00D4:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_00E0:
    WalkNormalNorth
    WalkNormalEast 3
    EndMovement

    .balign 4, 0
_00EC:
    WalkNormalEast
    WalkNormalSouth 2
    WalkNormalEast 3
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0100:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0108:
    WalkNormalEast
    WalkNormalNorth 2
    SetInvisible
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
    WalkOnSpotNormalWest
    Delay8 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_01DC:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_01E8:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_01F0:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_01F8:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_0204:
    SetVisible
    WalkNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0214:
    WalkNormalSouth 2
    WalkNormalWest 5
    WalkNormalNorth 2
    WalkNormalWest 3
    WalkFasterSouth 9
    WalkFasterEast 10
    WalkNormalNorth 6
    WalkNormalEast 8
    EndMovement

    .balign 4, 0
_0238:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0240:
    WalkOnSpotNormalNorth
    EndMovement
