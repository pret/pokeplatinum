#include "macros/scrcmd.inc"
#include "res/text/bank/route_210_south.h"


    ScriptEntry _0079
    ScriptEntry _030C
    ScriptEntry _031F
    ScriptEntry _0379
    ScriptEntry _0390
    ScriptEntry _03A7
    ScriptEntry _001E
    ScriptEntryEnd

_001E:
    GetTimeOfDay VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0065
    GoToIfEq VAR_MAP_LOCAL_0, 1, _006F
    GoToIfEq VAR_MAP_LOCAL_0, 2, _006F
    GoToIfEq VAR_MAP_LOCAL_0, 3, _006F
    GoToIfEq VAR_MAP_LOCAL_0, 4, _006F
    End

_0065:
    ClearFlag FLAG_UNK_0x0271
    SetFlag FLAG_UNK_0x0270
    End

_006F:
    ClearFlag FLAG_UNK_0x0270
    SetFlag FLAG_UNK_0x0271
    End

_0079:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_SECRETPOTION, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _00A1
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A1:
    Message 1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _00CA
    GoToIfEq VAR_RESULT, MENU_NO, _00C4
    End

_00C4:
    CloseMessage
    ReleaseAll
    End

_00CA:
    BufferPlayerName 0
    BufferItemName 1, 0x1D0
    Message 2
    CloseMessage
    PlayCry SPECIES_PSYDUCK
    WaitCry
    ApplyMovement 27, _024C
    ApplyMovement 28, _024C
    ApplyMovement 26, _024C
    ApplyMovement 19, _024C
    WaitMovement
    ApplyMovement 27, _0258
    ApplyMovement 28, _026C
    ApplyMovement 26, _0280
    ApplyMovement 19, _02B4
    WaitMovement
    RemoveObject 27
    RemoveObject 28
    RemoveObject 26
    RemoveObject 19
    WaitTime 45, VAR_RESULT
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 0x230, _015B
    GoToIfEq VAR_0x8004, 0x231, _016F
    End

_015B:
    SetObjectEventPos 20, 0x230, 0x254
    SetObjectEventMovementType 20, MOVEMENT_TYPE_LOOK_NORTH
    GoTo _0183

_016F:
    SetObjectEventPos 20, 0x231, 0x254
    SetObjectEventMovementType 20, MOVEMENT_TYPE_LOOK_NORTH
    GoTo _0183

_0183:
    ClearFlag FLAG_UNK_0x01B1
    AddObject 20
    ScrCmd_062 20
    ApplyMovement 20, _02C4
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _02DC
    WaitMovement
    Message 3
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _01E9
    GoToIfEq VAR_RESULT, MENU_NO, _01C6
    End

_01C6:
    Message 5
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _01E9
    GoToIfEq VAR_RESULT, MENU_NO, _01C6
    End

_01E9:
    SetVar VAR_0x8004, 0x1B7
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    Message 4
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 0x230, _0220
    GoToIfEq VAR_0x8004, 0x231, _0230
    End

_0220:
    ApplyMovement 20, _02CC
    WaitMovement
    GoTo _0240

_0230:
    ApplyMovement 20, _02D4
    WaitMovement
    GoTo _0240

_0240:
    RemoveObject 20
    SetFlag FLAG_UNK_0x0107
    ReleaseAll
    End

    .balign 4, 0
_024C:
    EmoteExclamationMark
    Delay8 4
    EndMovement

    .balign 4, 0
_0258:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    Delay8 8
    WalkNormalNorth 8
    EndMovement

    .balign 4, 0
_026C:
    WalkNormalNorth 2
    WalkOnSpotNormalSouth 2
    Delay8 6
    WalkNormalNorth 8
    EndMovement

    .balign 4, 0
_0280:
    WalkOnSpotNormalEast
    WalkOnSpotNormalWest
    WalkOnSpotNormalEast
    Delay8 2
    WalkOnSpotNormalNorth
    WalkFastNorth 2
    Delay8 2
    WalkNormalWest 3
    WalkOnSpotNormalEast
    EmoteExclamationMark
    WalkFastEast 3
    WalkFastNorth 8
    EndMovement

    .balign 4, 0
_02B4:
    WalkNormalNorth 2
    Delay8 8
    WalkNormalNorth 8
    EndMovement

    .balign 4, 0
_02C4:
    WalkNormalNorth 7
    EndMovement

    .balign 4, 0
_02CC:
    WalkNormalSouth 9
    EndMovement

    .balign 4, 0
_02D4:
    WalkNormalSouth 9
    EndMovement

    .balign 4, 0
_02DC:
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
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_030C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_031F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00C7, _0364
    Message 7
    SetVar VAR_0x8004, ITEM_TM51
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _036F
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00C7
    GoTo _0364

_0364:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_036F:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0379:
    ShowLandmarkSign 10
    End

_0390:
    ShowArrowSign 11
    End

_03A7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
