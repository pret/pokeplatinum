#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_galactic_warehouse.h"

    .data

    ScriptEntry _003B
    ScriptEntry _00D8
    ScriptEntry _0184
    ScriptEntry _0016
    ScriptEntry _0197
    ScriptEntryEnd

_0016:
    CallIfLt VAR_UNK_0x411F, 2, _0025
    End

_0025:
    SetObjectEventPos 4, 8, 10
    ScrCmd_188 4, 14
    ScrCmd_189 4, 0
    Return

_003B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_STORAGE_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0063
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0063:
    Message 8
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0086
    GoToIfEq VAR_RESULT, MENU_NO, _00C2
    End

_0086:
    SetFlag FLAG_UNK_0x010E
    RemoveItem ITEM_STORAGE_KEY, 1, VAR_RESULT
    BufferPlayerName 0
    Message 9
    WaitABXPadPress
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_DOOR10
    ApplyMovement 2, _00C8
    ApplyMovement 3, _00D0
    WaitMovement
    RemoveObject 2
    RemoveObject 3
    CloseMessage
    ReleaseAll
    End

_00C2:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00C8:
    WalkFastWest
    EndMovement

    .balign 4, 0
_00D0:
    WalkFastEast
    EndMovement

_00D8:
    LockAll
    ApplyMovement 4, _012C
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0168
    ApplyMovement 4, _0134
    WaitMovement
    BufferPlayerName 0
    Message 1
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0174
    ApplyMovement 4, _015C
    WaitMovement
    SetVar VAR_UNK_0x407C, 1
    SetVar VAR_UNK_0x411F, 2
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_012C:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_0134:
    WalkNormalSouth 2
    WalkOnSpotNormalWest
    Delay8 2
    WalkOnSpotNormalEast
    Delay8 2
    WalkNormalEast 5
    WalkOnSpotNormalNorth
    EmoteExclamationMark
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_015C:
    WalkNormalWest 5
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0168:
    Delay8 9
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0174:
    Delay8 4
    Delay2
    WalkOnSpotNormalNorth
    EndMovement

_0184:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0197:
    LockAll
    SetObjectEventPos 4, 8, 11
    ScrCmd_188 4, 14
    ScrCmd_189 4, 0
    ClearFlag FLAG_UNK_0x020D
    AddObject 4
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 8, _025A
    CallIfEq VAR_0x8004, 9, _026E
    Message 4
    CloseMessage
    ApplyMovement 4, _0308
    WaitMovement
    Message 5
    CloseMessage
    SetFlag FLAG_UNK_0x010E
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_DOOR10
    ApplyMovement 2, _00C8
    ApplyMovement 3, _00D0
    WaitMovement
    RemoveObject 2
    RemoveObject 3
    CallIfEq VAR_0x8004, 8, _0282
    CallIfEq VAR_0x8004, 9, _028E
    Message 6
    CloseMessage
    CallIfEq VAR_0x8004, 8, _029A
    CallIfEq VAR_0x8004, 9, _02AE
    RemoveObject 4
    SetFlag FLAG_UNK_0x028A
    SetVar VAR_UNK_0x411F, 4
    ReleaseAll
    End

_025A:
    ApplyMovement 4, _02E8
    ApplyMovement LOCALID_PLAYER, _02C4
    WaitMovement
    Return

_026E:
    ApplyMovement 4, _02FC
    ApplyMovement LOCALID_PLAYER, _02D0
    WaitMovement
    Return

_0282:
    ApplyMovement 4, _0318
    WaitMovement
    Return

_028E:
    ApplyMovement 4, _0310
    WaitMovement
    Return

_029A:
    ApplyMovement 4, _0320
    ApplyMovement LOCALID_PLAYER, _02DC
    WaitMovement
    Return

_02AE:
    ApplyMovement 4, _0338
    ApplyMovement LOCALID_PLAYER, _02DC
    WaitMovement
    Return

    .balign 4, 0
_02C4:
    Delay8 4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_02D0:
    Delay8 3
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_02DC:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_02E8:
    WalkNormalNorth 2
    WalkNormalEast
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_02FC:
    WalkNormalNorth 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0308:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0310:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0318:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0320:
    WalkNormalNorth 5
    WalkOnSpotFastWest
    WalkOnSpotFastEast
    Delay8 2
    WalkFastEast 6
    EndMovement

    .balign 4, 0
_0338:
    WalkNormalNorth 5
    WalkOnSpotFastWest
    WalkOnSpotFastEast
    Delay8 2
    WalkFastEast 7
    EndMovement
