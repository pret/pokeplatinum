#include "macros/scrcmd.inc"
#include "res/text/bank/route_227.h"


    ScriptEntry _0012
    ScriptEntry _01CC
    ScriptEntry _01F6
    ScriptEntry _01E3
    ScriptEntryEnd

_0012:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 0x2E3, _00E7
    ApplyMovement 4, _0188
    ApplyMovement 3, _0154
    ApplyMovement LOCALID_PLAYER, _0100
    WaitMovement
    BufferPlayerName 0
    Message 5
    CloseMessage
    ApplyMovement 3, _0160
    WaitMovement
    WaitTime 15, VAR_RESULT
    BufferRivalName 1
    Message 6
    CloseMessage
    ApplyMovement 4, _0194
    WaitMovement
    Message 7
    BufferRivalName 1
    Message 8
    ApplyMovement 4, _019C
    WaitMovement
    BufferPlayerName 0
    Message 9
    CloseMessage
    ApplyMovement 4, _01B8
    ApplyMovement LOCALID_PLAYER, _012C
    ApplyMovement 3, _0168
    WaitMovement
    RemoveObject 4
    ApplyMovement 3, _0170
    ApplyMovement LOCALID_PLAYER, _0108
    WaitMovement
    WaitTime 5, VAR_RESULT
    BufferRivalName 1
    Message 10
    Message 11
    CloseMessage
    ApplyMovement 3, _0178
    ApplyMovement LOCALID_PLAYER, _0118
    WaitMovement
    RemoveObject 3
    SetVar VAR_UNK_0x408B, 1
    ReleaseAll
    End

_00E7:
    ApplyMovement LOCALID_PLAYER, _00F4
    WaitMovement
    Return

    .balign 4, 0
_00F4:
    WalkNormalWest
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0100:
    FaceNorth
    EndMovement

    .balign 4, 0
_0108:
    WalkNormalEast
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0118:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_012C:
    WalkNormalWest
    WalkOnSpotNormalEast
    Delay4
    WalkOnSpotNormalSouth
    EndMovement

    .byte 63
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
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0154:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0160:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0168:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0170:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0178:
    WalkFastSouth 9
    EndMovement

    .byte 17
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0188:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0194:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_019C:
    WalkOnSpotNormalSouth
    EndMovement

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
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01B8:
    Delay8 2
    WalkNormalSouth 9
    EndMovement

    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_01CC:
    ShowArrowSign 12
    End

_01E3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01F6:
    LockAll
    ApplyMovement 11, _0280
    ApplyMovement LOCALID_PLAYER, _026C
    WaitMovement
    GoTo _0212
    End

_0212:
    BufferPlayerName 0
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0243
    GoToIfEq VAR_RESULT, MENU_NO, _0238
    End

_0238:
    Message 3
    GoTo _0212
    End

_0243:
    ApplyMovement 11, _0290
    WaitMovement
    Message 1
    ApplyMovement 11, _0298
    WaitMovement
    Message 2
    CloseMessage
    SetVar VAR_UNK_0x4119, 1
    ReleaseAll
    End

    .balign 4, 0
_026C:
    FaceNorth
    EndMovement

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

    .balign 4, 0
_0280:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0290:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0298:
    WalkOnSpotNormalSouth
    EndMovement
