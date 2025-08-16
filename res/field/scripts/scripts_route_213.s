#include "macros/scrcmd.inc"
#include "res/text/bank/route_213.h"


    ScriptEntry _0022
    ScriptEntry _0078
    ScriptEntry _0422
    ScriptEntry _03FC
    ScriptEntry _040F
    ScriptEntry _0435
    ScriptEntry _044C
    ScriptEntry _0463
    ScriptEntryEnd

_0022:
    GoToIfUnset FLAG_UNK_0x0104, _002F
    End

_002F:
    CheckBadgeAcquired BADGE_ID_FEN, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, _0044
    End

_0044:
    GoToIfSet FLAG_UNK_0x0103, _0051
    End

_0051:
    CallIfUnset FLAG_UNK_0x0118, _0062
    ClearFlag FLAG_UNK_0x021A
    End

_0062:
    SetObjectEventPos 30, 0x28E, 0x32C
    SetObjectEventDir 30, DIR_EAST
    SetObjectEventMovementType 30, MOVEMENT_TYPE_LOOK_RIGHT
    Return

_0078:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_UNK_0x0118, _0133
    Message 0
    CloseMessage
    FacePlayer
    ApplyMovement 30, _0388
    WaitMovement
    Message 1
    CloseMessage
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, 2, _00F1
    GoToIfEq VAR_0x8004, 3, _00DF
    GoTo _00C5
    End

_00C5:
    ApplyMovement 30, _0390
    ApplyMovement LOCALID_PLAYER, _03F0
    WaitMovement
    GoTo _010B
    End

_00DF:
    ApplyMovement 30, _0390
    WaitMovement
    GoTo _010B
    End

_00F1:
    ApplyMovement 30, _0398
    ApplyMovement LOCALID_PLAYER, _03F0
    WaitMovement
    GoTo _010B
    End

_010B:
    SetFlag FLAG_UNK_0x0118
    RemoveObject 30
    SetObjectEventPos 30, 0x2AB, 0x341
    SetObjectEventDir 30, DIR_EAST
    SetObjectEventMovementType 30, MOVEMENT_TYPE_LOOK_RIGHT
    ClearFlag FLAG_UNK_0x021A
    AddObject 30
    ReleaseAll
    End

_0133:
    GetPlayerDir VAR_0x8004
    Message 2
    CloseMessage
    FacePlayer
    ApplyMovement 30, _0388
    WaitMovement
    Message 3
    CloseMessage
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, 2, _0180
    GoTo _0166
    End

_0166:
    ApplyMovement LOCALID_PLAYER, _03C0
    ApplyMovement 30, _03A4
    WaitMovement
    GoTo _019A
    End

_0180:
    ApplyMovement LOCALID_PLAYER, _03C0
    ApplyMovement 30, _03B4
    WaitMovement
    GoTo _019A
    End

_019A:
    RemoveObject 30
    SetFlag FLAG_UNK_0x0104
    ClearFlag FLAG_UNK_0x01E8
    AddObject 33
    CallCommonScript CommonScript_Unk37
    ScrCmd_315 VAR_RESULT
    CallIfEq VAR_RESULT, 2, _0261
    CallIfEq VAR_0x8004, 2, _0267
    CallIfEq VAR_0x8004, 3, _027B
    CallIfEq VAR_0x8004, 0, _028F
    CallIfEq VAR_0x8004, 1, _02A3
    Message 4
    ApplyMovement 33, _0348
    WaitMovement
    Message 5
    Message 6
    CloseMessage
    CallIfEq VAR_0x8004, 2, _02B7
    CallIfEq VAR_0x8004, 3, _02CB
    CallIfEq VAR_0x8004, 0, _02DF
    CallIfEq VAR_0x8004, 1, _02F3
    RemoveObject 33
    CallCommonScript CommonScript_Unk29_4
    ScrCmd_315 VAR_RESULT
    CallIfEq VAR_RESULT, 2, _0261
    ClearFlag FLAG_UNK_0x0211
    ClearFlag FLAG_UNK_0x021B
    ReleaseAll
    End

_0261:
    PlayFanfare SEQ_SE_DP_T_AME
    Return

_0267:
    ApplyMovement 33, _0318
    ApplyMovement LOCALID_PLAYER, _03CC
    WaitMovement
    Return

_027B:
    ApplyMovement 33, _0308
    ApplyMovement LOCALID_PLAYER, _03CC
    WaitMovement
    Return

_028F:
    ApplyMovement 33, _0338
    ApplyMovement LOCALID_PLAYER, _03CC
    WaitMovement
    Return

_02A3:
    ApplyMovement 33, _0328
    ApplyMovement LOCALID_PLAYER, _03D8
    WaitMovement
    Return

_02B7:
    ApplyMovement 33, _035C
    ApplyMovement LOCALID_PLAYER, _03E4
    WaitMovement
    Return

_02CB:
    ApplyMovement 33, _0350
    ApplyMovement LOCALID_PLAYER, _03E4
    WaitMovement
    Return

_02DF:
    ApplyMovement 33, _037C
    ApplyMovement LOCALID_PLAYER, _03E4
    WaitMovement
    Return

_02F3:
    ApplyMovement 33, _0368
    ApplyMovement LOCALID_PLAYER, _03E4
    WaitMovement
    Return

    .balign 4, 0
_0308:
    WalkFastEast 10
    WalkFastNorth 2
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
_0318:
    WalkFastEast 10
    WalkFastNorth 2
    WalkFastEast 2
    EndMovement

    .balign 4, 0
_0328:
    WalkFastEast 10
    WalkFastNorth 3
    WalkFastEast
    EndMovement

    .balign 4, 0
_0338:
    WalkFastEast 10
    WalkFastNorth
    WalkFastEast
    EndMovement

    .balign 4, 0
_0348:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
_0350:
    WalkFastNorth
    WalkFastEast 10
    EndMovement

    .balign 4, 0
_035C:
    WalkFastNorth
    WalkFastEast 10
    EndMovement

    .balign 4, 0
_0368:
    WalkFastSouth
    WalkFastEast 4
    WalkFastNorth
    WalkFastEast 6
    EndMovement

    .balign 4, 0
_037C:
    WalkFastNorth 2
    WalkFastEast 10
    EndMovement

    .balign 4, 0
_0388:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0390:
    WalkFastEast 10
    EndMovement

    .balign 4, 0
_0398:
    WalkFastSouth 2
    WalkFastEast 9
    EndMovement

    .balign 4, 0
_03A4:
    WalkFastEast 4
    WalkFastNorth
    WalkFastEast 6
    EndMovement

    .balign 4, 0
_03B4:
    WalkFastNorth
    WalkFastEast 10
    EndMovement

    .balign 4, 0
_03C0:
    Delay8
    FaceEast
    EndMovement

    .balign 4, 0
_03CC:
    Delay4 10
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_03D8:
    Delay4 11
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_03E4:
    Delay4 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_03F0:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

_03FC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_040F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0422:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0435:
    ShowArrowSign 10
    End

_044C:
    ShowLandmarkSign 11
    End

_0463:
    ShowLandmarkSign 12
    End

    .balign 4, 0
