#include "macros/scrcmd.inc"
#include "res/text/bank/victory_road_1f_room_2.h"

    .data

    ScriptEntry _0027
    ScriptEntry _0190
    ScriptEntry _02E4
    ScriptEntry _0012
    ScriptEntryEnd

_0012:
    GoToIfUnset FLAG_UNK_0x00E6, _001F
    End

_001F:
    SetVar VAR_UNK_0x4090, 0
    End

_0027:
    LockAll
    SetPlayerBike FALSE
    ApplyMovement 28, _0140
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 55, _008C
    GoToIfEq VAR_0x8005, 56, _009C
    GoToIfEq VAR_0x8005, 57, _00AC
    GoToIfEq VAR_0x8005, 58, _00BC
    GoToIfEq VAR_0x8005, 59, _00CC
    GoToIfEq VAR_0x8005, 60, _00DC
    End

_008C:
    ApplyMovement 28, _014C
    WaitMovement
    GoTo _00EC

_009C:
    ApplyMovement 28, _0158
    WaitMovement
    GoTo _00EC

_00AC:
    ApplyMovement 28, _0164
    WaitMovement
    GoTo _00EC

_00BC:
    ApplyMovement 28, _0170
    WaitMovement
    GoTo _00EC

_00CC:
    ApplyMovement 28, _0178
    WaitMovement
    GoTo _00EC

_00DC:
    ApplyMovement 28, _0184
    WaitMovement
    GoTo _00EC

_00EC:
    BufferPlayerName 0
    CallIfUnset FLAG_UNK_0x00DF, _0134
    CallIfSet FLAG_UNK_0x00DF, _0139
    BufferPlayerName 0
    PlaySound SEQ_GONIN
    Message 1
    WaitSound
    SetFlag FLAG_UNK_0x00DF
    SetVar VAR_UNK_0x4090, 1
    Message 2
    WaitABXPadPress
    CloseMessage
    SetVar VAR_PARTNER_TRAINER_ID, TRAINER_MARLEY_VICTORY_ROAD
    SetHasPartner
    ScrCmd_06D 28, 48
    ReleaseAll
    End

_0134:
    Message 0
    Return

_0139:
    Message 3
    Return

    .balign 4, 0
_0140:
    WalkOnSpotNormalWest
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_014C:
    WalkNormalNorth 3
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0158:
    WalkNormalNorth 2
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0164:
    WalkNormalNorth
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0170:
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0178:
    WalkNormalSouth
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0184:
    WalkNormalSouth 2
    WalkNormalWest
    EndMovement

_0190:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0274
    ApplyMovement 28, _02DC
    WaitMovement
    Message 4
    CloseMessage
    SetVar VAR_UNK_0x4090, 0
    ClearHasPartner
    ScrCmd_06D 28, 14
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 55, _020D
    GoToIfEq VAR_0x8005, 56, _021D
    GoToIfEq VAR_0x8005, 57, _022D
    GoToIfEq VAR_0x8005, 58, _023D
    GoToIfEq VAR_0x8005, 59, _024D
    GoToIfEq VAR_0x8005, 60, _025D
    End

_020D:
    ApplyMovement 28, _0284
    WaitMovement
    GoTo _026D

_021D:
    ApplyMovement 28, _0294
    WaitMovement
    GoTo _026D

_022D:
    ApplyMovement 28, _02A4
    WaitMovement
    GoTo _026D

_023D:
    ApplyMovement 28, _02B4
    WaitMovement
    GoTo _026D

_024D:
    ApplyMovement 28, _02BC
    WaitMovement
    GoTo _026D

_025D:
    ApplyMovement 28, _02CC
    WaitMovement
    GoTo _026D

_026D:
    ReleaseAll
    End

    .balign 4, 0
_0274:
    WalkOnSpotNormalEast
    EndMovement

    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0284:
    WalkNormalEast 2
    WalkNormalSouth 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0294:
    WalkNormalEast 2
    WalkNormalSouth 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_02A4:
    WalkNormalEast 2
    WalkNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_02B4:
    WalkNormalEast 2
    EndMovement

    .balign 4, 0
_02BC:
    WalkNormalEast 2
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_02CC:
    WalkNormalEast 2
    WalkNormalNorth 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_02DC:
    FaceWest
    EndMovement

_02E4:
    LockAll
    ClearHasPartner
    ScrCmd_06D 28, 14
    ApplyMovement LOCALID_PLAYER, _03B4
    ApplyMovement 28, _03E0
    WaitMovement
    Message 5
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 51, _0341
    GoToIfEq VAR_0x8004, 52, _0359
    GoToIfEq VAR_0x8004, 53, _0371
    GoToIfEq VAR_0x8004, 54, _0389
    End

_0341:
    ApplyMovement LOCALID_PLAYER, _03C0
    ApplyMovement 28, _03EC
    WaitMovement
    GoTo _03A1

_0359:
    ApplyMovement LOCALID_PLAYER, _03C0
    ApplyMovement 28, _0400
    WaitMovement
    GoTo _03A1

_0371:
    ApplyMovement LOCALID_PLAYER, _03C0
    ApplyMovement 28, _0414
    WaitMovement
    GoTo _03A1

_0389:
    ApplyMovement LOCALID_PLAYER, _03D0
    ApplyMovement 28, _0428
    WaitMovement
    GoTo _03A1

_03A1:
    RemoveObject 28
    SetFlag FLAG_UNK_0x00E6
    SetVar VAR_UNK_0x4090, 2
    ReleaseAll
    End

    .balign 4, 0
_03B4:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_03C0:
    Delay8
    WalkOnSpotNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_03D0:
    Delay8
    WalkOnSpotNormalWest
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_03E0:
    WalkOnSpotNormalNorth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_03EC:
    WalkNormalEast
    WalkNormalNorth 7
    WalkNormalEast 4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0400:
    WalkNormalEast
    WalkNormalNorth 7
    WalkNormalEast 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0414:
    WalkNormalEast
    WalkNormalNorth 7
    WalkNormalEast 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0428:
    WalkNormalWest
    WalkNormalNorth 7
    WalkNormalEast 3
    WalkOnSpotNormalEast
    EndMovement
