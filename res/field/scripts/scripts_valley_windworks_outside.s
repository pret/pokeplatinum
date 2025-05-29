#include "macros/scrcmd.inc"
#include "res/text/bank/valley_windworks_outside.h"

    .data

    ScriptEntry _0024
    ScriptEntry _008A
    ScriptEntry _00CF
    ScriptEntry _0150
    ScriptEntry _01A8
    ScriptEntry _01BF
    ScriptEntry _0022
    ScriptEntry _0201
    ScriptEntryEnd

_0022:
    End

_0024:
    CallIfEq VAR_UNK_0x40CF, 2, _0082
    CallIfSet FLAG_UNK_0x010F, _00BB
    CallIfUnset FLAG_UNK_0x010F, _00C5
    GoToIfLt VAR_UNK_0x4089, 2, _007C
    GoToIfSet FLAG_UNK_0x0AA8, _007C
    GetDayOfWeek VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, 5, _007C
    GoTo _0076

_0076:
    ClearFlag FLAG_UNK_0x020B
    End

_007C:
    SetFlag FLAG_UNK_0x020B
    End

_0082:
    SetVar VAR_UNK_0x40CF, 3
    Return

_008A:
    CallIfSet FLAG_UNK_0x010F, _00BB
    CallIfUnset FLAG_UNK_0x010F, _00C5
    GoToIfSet FLAG_UNK_0x008E, _00AD
    End

_00AD:
    SetFlag FLAG_UNK_0x020B
    RemoveObject 4
    ClearFlag FLAG_UNK_0x008E
    End

_00BB:
    ScrCmd_18B 1, 243, 0x28A
    Return

_00C5:
    SetWarpEventPos 0, 243, 0x28A
    Return

_00CF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    CloseMessage
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_VALLEY_WINDWORKS_1
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0133
    Message 1
    CloseMessage
    ApplyMovement 0, _013C
    WaitMovement
    ScrCmd_168 7, 20, 19, 14, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 0, _0144
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Message 4
    RemoveObject 0
    CloseMessage
    ReleaseAll
    End

_0133:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_013C:
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_WalkNormalNorth
    MoveAction_SetInvisible
    EndMovement

_0150:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_UNK_0x009F, _016C
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_016C:
    BufferItemName 0, 0x1B6
    Message 6
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _01A2
    SetFlag FLAG_UNK_0x010F
    Call _00BB
    SetWarpEventPos 0, 243, 0x28E
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A2:
    CloseMessage
    ReleaseAll
    End

_01A8:
    ShowLandmarkSign 9
    End

_01BF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    PlayCry SPECIES_DRIFLOON
    Message 8
    CloseMessage
    WaitCry
    SetFlag FLAG_UNK_0x008E
    StartLegendaryBattle SPECIES_DRIFLOON, 15
    ClearFlag FLAG_UNK_0x008E
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _01FB
    SetFlag FLAG_UNK_0x0AA8
    ReleaseAll
    End

_01FB:
    BlackOutFromBattle
    ReleaseAll
    End

_0201:
    LockAll
    ApplyMovement 6, _02D8
    ApplyMovement LOCALID_PLAYER, _02AC
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _02BC
    ApplyMovement 6, _02EC
    WaitMovement
    ScrCmd_168 7, 20, 19, 14, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 6, _0300
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    WaitTime 120, VAR_RESULT
    ScrCmd_168 7, 20, 19, 14, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 6, _0310
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ApplyMovement 6, _031C
    WaitMovement
    Message 3
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _02C8
    ApplyMovement 6, _0324
    WaitMovement
    RemoveObject 6
    SetVar VAR_UNK_0x411E, 2
    ReleaseAll
    End

    .balign 4, 0
_02AC:
    MoveAction_Delay8 5
    MoveAction_Delay4
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_02BC:
    MoveAction_WalkNormalSouth
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_02C8:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalWest
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_02D8:
    MoveAction_ExclamationPoint
    MoveAction_Delay8
    MoveAction_WalkFastNorth 4
    MoveAction_WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
_02EC:
    MoveAction_Delay8
    MoveAction_Delay4
    MoveAction_WalkNormalEast
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0300:
    MoveAction_WalkNormalNorth
    MoveAction_SetInvisible
    MoveAction_FaceSouth
    EndMovement

    .balign 4, 0
_0310:
    MoveAction_SetVisible
    MoveAction_WalkFastSouth
    EndMovement

    .balign 4, 0
_031C:
    MoveAction_WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
_0324:
    MoveAction_WalkFastWest
    MoveAction_WalkFastSouth
    MoveAction_WalkFastSouth 6
    MoveAction_WalkFastWest 9
    EndMovement
