#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city.h"

    .data

    ScriptEntry _005A
    ScriptEntry _0090
    ScriptEntry _03F8
    ScriptEntry _00D7
    ScriptEntry _0350
    ScriptEntry _0363
    ScriptEntry _0376
    ScriptEntry _03D2
    ScriptEntry _03E5
    ScriptEntry _0634
    ScriptEntry _0647
    ScriptEntry _0670
    ScriptEntry _0683
    ScriptEntry _0696
    ScriptEntry _06A9
    ScriptEntry _06C0
    ScriptEntry _06D5
    ScriptEntry _06EC
    ScriptEntry _0703
    ScriptEntry _0722
    ScriptEntry _0735
    ScriptEntry _0754
    ScriptEntryEnd

_005A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x008A, _0082
    BufferRivalName 0
    BufferPlayerName 1
    Message 0
    WaitABXPadPress
    SetFlag FLAG_UNK_0x008A
    CloseMessage
    ReleaseAll
    End

_0082:
    BufferRivalName 0
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0090:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_COAL, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _00C1
    GoToIfSet FLAG_UNK_0x007A, _00CC
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C1:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CC:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D7:
    LockAll
    ClearFlag FLAG_UNK_0x017C
    ScrCmd_188 3, 16
    ScrCmd_189 3, 2
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x2EC, _011E
    GoToIfEq VAR_0x8005, 0x2ED, _0144
    GoToIfEq VAR_0x8005, 0x2EE, _016A
    GoTo _0190
    End

_011E:
    SetObjectEventPos 3, 0x10F, 0x2EC
    AddObject 3
    ApplyMovement LOCALID_PLAYER, _02A0
    ApplyMovement 3, _02B8
    WaitMovement
    GoTo _01B6
    End

_0144:
    SetObjectEventPos 3, 0x10F, 0x2ED
    AddObject 3
    ApplyMovement LOCALID_PLAYER, _02A0
    ApplyMovement 3, _02B8
    WaitMovement
    GoTo _01B6
    End

_016A:
    SetObjectEventPos 3, 0x10F, 0x2EE
    AddObject 3
    ApplyMovement LOCALID_PLAYER, _02A0
    ApplyMovement 3, _02B8
    WaitMovement
    GoTo _01B6
    End

_0190:
    SetObjectEventPos 3, 0x10F, 0x2EF
    AddObject 3
    ApplyMovement LOCALID_PLAYER, _02A0
    ApplyMovement 3, _02B8
    WaitMovement
    GoTo _01B6
    End

_01B6:
    PlayFanfare SEQ_SE_DP_WALL_HIT2
    Message 2
    CloseMessage
    CallCommonScript 0x7FA
    BufferRivalName 0
    BufferPlayerName 1
    Message 3
    CloseMessage
    ApplyMovement 3, _0340
    WaitMovement
    Message 4
    ApplyMovement 3, _0348
    WaitMovement
    Message 5
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x2EC, _021F
    GoToIfEq VAR_0x8005, 0x2ED, _0239
    GoToIfEq VAR_0x8005, 0x2EE, _0253
    GoTo _026D
    End

_021F:
    ApplyMovement LOCALID_PLAYER, _0310
    ApplyMovement 3, _02C0
    WaitMovement
    GoTo _0287
    End

_0239:
    ApplyMovement LOCALID_PLAYER, _031C
    ApplyMovement 3, _02D0
    WaitMovement
    GoTo _0287
    End

_0253:
    ApplyMovement LOCALID_PLAYER, _0328
    ApplyMovement 3, _02E8
    WaitMovement
    GoTo _0287
    End

_026D:
    ApplyMovement LOCALID_PLAYER, _0334
    ApplyMovement 3, _02F8
    WaitMovement
    GoTo _0287
    End

_0287:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 3
    CallCommonScript 0x7FB
    SetVar VAR_UNK_0x4079, 3
    ReleaseAll
    End

    .balign 4, 0
_02A0:
    MoveAction_Delay4 7
    MoveAction_LockDir
    MoveAction_WalkFastWest
    MoveAction_UnlockDir
    MoveAction_FaceEast
    EndMovement

    .balign 4, 0
_02B8:
    MoveAction_WalkFastWest 9
    EndMovement

    .balign 4, 0
_02C0:
    MoveAction_WalkFastSouth
    MoveAction_WalkFastWest 4
    MoveAction_WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_02D0:
    MoveAction_WalkFastSouth
    MoveAction_WalkFastWest 3
    MoveAction_WalkFastNorth
    MoveAction_WalkFastWest
    MoveAction_WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_WalkFastNorth
    MoveAction_WalkFastWest 4
    MoveAction_WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_02F8:
    MoveAction_WalkFastNorth
    MoveAction_WalkFastWest 3
    MoveAction_WalkFastNorth
    MoveAction_WalkFastWest
    MoveAction_WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_0310:
    MoveAction_WalkOnSpotNormalSouth
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_031C:
    MoveAction_WalkOnSpotNormalSouth
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0328:
    MoveAction_WalkOnSpotNormalNorth
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0334:
    MoveAction_WalkOnSpotNormalNorth
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0340:
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0348:
    MoveAction_WalkOnSpotNormalWest
    EndMovement

_0350:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0363:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0376:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0109, _03BD
    Message 17
    SetVar VAR_0x8004, ITEM_SUPER_POTION
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _03C8
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0109
    GoTo _03BD
    End

_03BD:
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03C8:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_03D2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03E5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03F8:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x2EC, _042F
    GoToIfEq VAR_0x8005, 0x2ED, _0449
    GoToIfEq VAR_0x8005, 0x2EE, _0463
    GoTo _047D
    End

_042F:
    ApplyMovement LOCALID_PLAYER, _055C
    ApplyMovement 4, _0604
    WaitMovement
    GoTo _0497
    End

_0449:
    ApplyMovement LOCALID_PLAYER, _055C
    ApplyMovement 4, _0610
    WaitMovement
    GoTo _0497
    End

_0463:
    ApplyMovement LOCALID_PLAYER, _055C
    ApplyMovement 4, _061C
    WaitMovement
    GoTo _0497
    End

_047D:
    ApplyMovement LOCALID_PLAYER, _055C
    ApplyMovement 4, _0628
    WaitMovement
    GoTo _0497
    End

_0497:
    Message 6
    CloseMessage
    CallCommonScript 0x800
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x2EC, _04DC
    GoToIfEq VAR_0x8005, 0x2ED, _04F6
    GoToIfEq VAR_0x8005, 0x2EE, _0510
    GoToIfEq VAR_0x8005, 0x2EF, _052A
    End

_04DC:
    ApplyMovement LOCALID_PLAYER, _0564
    ApplyMovement 4, _05B4
    WaitMovement
    GoTo _0544
    End

_04F6:
    ApplyMovement LOCALID_PLAYER, _0578
    ApplyMovement 4, _05C8
    WaitMovement
    GoTo _0544
    End

_0510:
    ApplyMovement LOCALID_PLAYER, _058C
    ApplyMovement 4, _05DC
    WaitMovement
    GoTo _0544
    End

_052A:
    ApplyMovement LOCALID_PLAYER, _05A0
    ApplyMovement 4, _05F0
    WaitMovement
    GoTo _0544
    End

_0544:
    Message 7
    WaitABXPadPress
    CloseMessage
    CallCommonScript 0x801
    SetVar VAR_UNK_0x4079, 1
    ReleaseAll
    End

    .balign 4, 0
_055C:
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0564:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast
    MoveAction_WalkNormalSouth 10
    MoveAction_WalkNormalEast 12
    EndMovement

    .balign 4, 0
_0578:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast
    MoveAction_WalkNormalSouth 9
    MoveAction_WalkNormalEast 12
    EndMovement

    .balign 4, 0
_058C:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast
    MoveAction_WalkNormalSouth 8
    MoveAction_WalkNormalEast 12
    EndMovement

    .balign 4, 0
_05A0:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast
    MoveAction_WalkNormalSouth 7
    MoveAction_WalkNormalEast 12
    EndMovement

    .balign 4, 0
_05B4:
    MoveAction_WalkNormalEast
    MoveAction_WalkNormalSouth 10
    MoveAction_WalkNormalEast 13
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_05C8:
    MoveAction_WalkNormalEast
    MoveAction_WalkNormalSouth 9
    MoveAction_WalkNormalEast 13
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_05DC:
    MoveAction_WalkNormalEast
    MoveAction_WalkNormalSouth 8
    MoveAction_WalkNormalEast 13
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_05F0:
    MoveAction_WalkNormalEast
    MoveAction_WalkNormalSouth 7
    MoveAction_WalkNormalEast 13
    MoveAction_WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0604:
    MoveAction_ExclamationPoint
    MoveAction_WalkNormalNorth 3
    EndMovement

    .balign 4, 0
_0610:
    MoveAction_ExclamationPoint
    MoveAction_WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_061C:
    MoveAction_ExclamationPoint
    MoveAction_WalkNormalNorth
    EndMovement

    .balign 4, 0
_0628:
    MoveAction_ExclamationPoint
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

_0634:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0647:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x007A, _0665
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0665:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0670:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0683:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0696:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 22
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06A9:
    ShowMapSign 27
    End

_06C0:
    ShowScrollingSign 28
    End

_06D5:
    ShowLandmarkSign 29
    End

_06EC:
    ShowLandmarkSign 30
    End

_0703:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_MACHOP
    Message 24
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0722:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0735:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_MACHOP
    Message 25
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0754:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_MACHOP
    Message 26
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
