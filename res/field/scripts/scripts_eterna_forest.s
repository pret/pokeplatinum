#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_forest.h"

    .data

    ScriptEntry _0047
    ScriptEntry _0108
    ScriptEntry _0198
    ScriptEntry _03EC
    ScriptEntry _03F5
    ScriptEntry _03FE
    ScriptEntry _0411
    ScriptEntry _04E0
    ScriptEntry _04F7
    ScriptEntry _050C
    ScriptEntry _0032
    ScriptEntry _051D
    ScriptEntryEnd

_0032:
    GoToIfUnset FLAG_UNK_0x00E3, _003F
    End

_003F:
    SetVar VAR_UNK_0x40B1, 0
    End

_0047:
    LockAll
    SetPlayerBike FALSE
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 28, _006E
    GoToIfEq VAR_0x8004, 29, _007E
    End

_006E:
    ApplyMovement 0, _00E8
    WaitMovement
    GoTo _008E

_007E:
    ApplyMovement 0, _00F4
    WaitMovement
    GoTo _008E

_008E:
    CallIfUnset FLAG_UNK_0x008B, _00D8
    CallIfSet FLAG_UNK_0x008B, _00E0
    BufferPlayerName 0
    PlaySound SEQ_GONIN
    Message 1
    WaitSound
    SetFlag FLAG_UNK_0x008B
    SetVar VAR_UNK_0x40B1, 1
    Message 2
    WaitABXPadPress
    CloseMessage
    SetVar VAR_PARTNER_TRAINER_ID, TRAINER_CHERYL_ETERNA_FOREST
    SetHasPartner
    ScrCmd_06D 0, 48
    ScrCmd_06C 0, 1
    ReleaseAll
    End

_00D8:
    BufferPlayerName 0
    Message 0
    Return

_00E0:
    BufferPlayerName 0
    Message 3
    Return

    .balign 4, 0
_00E8:
    MoveAction_153
    MoveAction_WalkNormalSouth
    EndMovement

    .balign 4, 0
_00F4:
    MoveAction_153
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

_0108:
    LockAll
    ClearHasPartner
    ScrCmd_06D 0, 15
    ScrCmd_06C 0, 0
    ApplyMovement 0, _0190
    WaitMovement
    Message 4
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 28, _0148
    GoToIfEq VAR_0x8004, 29, _0158
    End

_0148:
    ApplyMovement 0, _0174
    WaitMovement
    GoTo _0168

_0158:
    ApplyMovement 0, _0180
    WaitMovement
    GoTo _0168

_0168:
    SetVar VAR_UNK_0x40B1, 0
    ReleaseAll
    End

    .balign 4, 0
_0174:
    MoveAction_WalkNormalNorth 2
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0180:
    MoveAction_WalkNormalNorth 2
    MoveAction_WalkNormalWest
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0190:
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

_0198:
    LockAll
    ApplyMovement 0, _0300
    ApplyMovement LOCALID_PLAYER, _0368
    WaitMovement
    BufferPlayerName 0
    Message 5
    SetVar VAR_0x8004, ITEM_SOOTHE_BELL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _01EA
    GoTo _01DB
    End

_01DB:
    Message 6
    CallCommonScript 0x7E0
    GoTo _01EA
    End

_01EA:
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 34, _023B
    GoToIfEq VAR_0x8005, 35, _0253
    GoToIfEq VAR_0x8005, 36, _026B
    GoToIfEq VAR_0x8005, 37, _0283
    GoToIfEq VAR_0x8005, 38, _029B
    GoTo _02B3
    End

_023B:
    ApplyMovement 0, _030C
    ApplyMovement LOCALID_PLAYER, _0374
    WaitMovement
    GoTo _02CB

_0253:
    ApplyMovement 0, _0318
    ApplyMovement LOCALID_PLAYER, _0388
    WaitMovement
    GoTo _02CB

_026B:
    ApplyMovement 0, _0324
    ApplyMovement LOCALID_PLAYER, _039C
    WaitMovement
    GoTo _02CB

_0283:
    ApplyMovement 0, _0330
    ApplyMovement LOCALID_PLAYER, _03B0
    WaitMovement
    GoTo _02CB

_029B:
    ApplyMovement 0, _033C
    ApplyMovement LOCALID_PLAYER, _03C4
    WaitMovement
    GoTo _02CB

_02B3:
    ApplyMovement 0, _0348
    ApplyMovement LOCALID_PLAYER, _03D8
    WaitMovement
    GoTo _02CB

_02CB:
    ApplyMovement 0, _0354
    WaitMovement
    Message 7
    CloseMessage
    ApplyMovement 0, _035C
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ClearHasPartner
    RemoveObject 0
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetFlag FLAG_UNK_0x00E3
    SetVar VAR_UNK_0x40B1, 2
    ReleaseAll
    End

    .balign 4, 0
_0300:
    MoveAction_WalkOnSpotNormalEast
    MoveAction_153
    EndMovement

    .balign 4, 0
_030C:
    MoveAction_WalkNormalSouth 2
    MoveAction_WalkNormalEast 5
    EndMovement

    .balign 4, 0
_0318:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast 5
    EndMovement

    .balign 4, 0
_0324:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast 5
    EndMovement

    .balign 4, 0
_0330:
    MoveAction_WalkNormalNorth
    MoveAction_WalkNormalEast 5
    EndMovement

    .balign 4, 0
_033C:
    MoveAction_WalkNormalNorth
    MoveAction_WalkNormalEast 5
    EndMovement

    .balign 4, 0
_0348:
    MoveAction_WalkNormalNorth 2
    MoveAction_WalkNormalEast 5
    EndMovement

    .balign 4, 0
_0354:
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_035C:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0368:
    MoveAction_Delay8 3
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0374:
    MoveAction_Delay8 2
    MoveAction_WalkOnSpotNormalSouth
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0388:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalSouth
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalSouth
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_03B0:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalNorth
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalNorth
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_03D8:
    MoveAction_Delay8 2
    MoveAction_WalkOnSpotNormalNorth
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalEast
    EndMovement

_03EC:
    LockAll
    BufferPlayerName 0
    ReleaseAll
    End

_03F5:
    LockAll
    BufferPlayerName 0
    ReleaseAll
    End

_03FE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0411:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    CloseMessage
    ApplyMovement 24, _04BC
    WaitMovement
    Message 12
    FacePlayer
    Message 13
    CloseMessage
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _046C
    GoToIfEq VAR_RESULT, 1, _047E
    GoToIfEq VAR_RESULT, 2, _0490
    GoToIfEq VAR_RESULT, 3, _04A2
    End

_046C:
    ApplyMovement 24, _04D0
    WaitMovement
    GoTo _04B4
    End

_047E:
    ApplyMovement 24, _04C4
    WaitMovement
    GoTo _04B4
    End

_0490:
    ApplyMovement 24, _04C4
    WaitMovement
    GoTo _04B4
    End

_04A2:
    ApplyMovement 24, _04C4
    WaitMovement
    GoTo _04B4
    End

_04B4:
    RemoveObject 24
    ReleaseAll
    End

    .balign 4, 0
_04BC:
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_WalkNormalSouth 2
    MoveAction_WalkNormalEast 9
    EndMovement

    .balign 4, 0
_04D0:
    MoveAction_WalkNormalWest
    MoveAction_WalkNormalSouth 2
    MoveAction_WalkNormalEast 10
    EndMovement

_04E0:
    ShowLandmarkSign 14
    End

_04F7:
    ShowScrollingSign 15
    End

_050C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_051D:
    LockAll
    SetVar VAR_UNK_0x40CD, 2
    ApplyMovement 0, _053C
    WaitMovement
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_053C:
    MoveAction_WalkOnSpotNormalNorth
    EndMovement
