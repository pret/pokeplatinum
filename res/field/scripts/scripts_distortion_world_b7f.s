#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b7f.h"

// NOTE: These constants must mirror those in ov9_02249960.c
#define LOCALID_CYNTHIA 128
#define LOCALID_CYRUS   129

    ScriptEntry DistortionWorldB7F_OnTransition
    ScriptEntry DistortionWorldB7F_TriggerWarpToGiratinaRoom
    ScriptEntry DistortionWorldB7F_OnFrameFirstEntry
    ScriptEntry DistortionWorldB7F_TriggerCynthiaCyrus
    ScriptEntry DistortionWorldB7F_Cyrus
    ScriptEntry DistortionWorldB7F_Cynthia
    ScriptEntryEnd

DistortionWorldB7F_OnTransition:
    InitPersistedMapFeaturesForDistortionWorld
    End

DistortionWorldB7F_TriggerWarpToGiratinaRoom:
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_DISTORTION_WORLD_GIRATINA_ROOM, 0, 15, 25, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

DistortionWorldB7F_OnFrameFirstEntry:
    LockAll
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB7F_Movement_CynthiaWalkOnSpotNorth
    ApplyMovement LOCALID_PLAYER, DistortionWorldB7F_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    Message DistortionWorldB7F_Text_GiratinaIsUpAhead
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB7F_Movement_CynthiaWalkNorth
    WaitMovement
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 8
    End

DistortionWorldB7F_TriggerCynthiaCyrus:
    LockAll
    Message DistortionWorldB7F_Text_YouWereAlreadyHere
    CloseMessage
    ApplyMovement LOCALID_CYRUS, DistortionWorldB7F_Movement_CyrusWalkToCynthia
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB7F_Movement_CynthiaMoveAside
    WaitMovement
    Message DistortionWorldB7F_Text_WhyChangeTheWorld
    Message DistortionWorldB7F_Text_ThatIsMyJustice
    WaitABPadPress
    CloseMessage
    ReleaseAll
    End

DistortionWorldB7F_Cyrus:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message DistortionWorldB7F_Text_IWontLose
    CloseMessage
    StartTrainerBattle TRAINER_GALACTIC_BOSS_CYRUS_DISTORTION_WORLD
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, DistortionWorldB7F_LostBattle
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 10
    Message DistortionWorldB7F_Text_YoullDestroyThisWorld
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 86, DistortionWorldB7F_PlayerWatchCyrusLeave
    ApplyMovement LOCALID_PLAYER, DistortionWorldB7F_Movement_PlayerMoveAside
    GoTo DistortionWorldB7F_CyrusLeave

DistortionWorldB7F_PlayerWatchCyrusLeave:
    ApplyMovement LOCALID_PLAYER, DistortionWorldB7F_Movement_PlayerWatchCyrusLeave
DistortionWorldB7F_CyrusLeave:
    ApplyMovement LOCALID_CYRUS, DistortionWorldB7F_Movement_CyrusLeave
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB7F_Movement_CynthiaWatchCyrusLeave
    WaitMovement
    DeleteDistortionWorldMapObject LOCALID_CYRUS
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB7F_Movement_CynthiaWalkToPlayer
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 74, DistortionWorldB7F_CynthiaPlayerFaceEachOtherAfterDelay
    ApplyMovement LOCALID_PLAYER, DistortionWorldB7F_Movement_PlayerFaceCynthiaNorthAfterDelay
    GoTo DistortionWorldB7F_DontBelieveHisLies

DistortionWorldB7F_CynthiaPlayerFaceEachOtherAfterDelay:
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB7F_Movement_CynthiaFaceCynthiaEastAfterDelay
    ApplyMovement LOCALID_PLAYER, DistortionWorldB7F_Movement_PlayerFaceCynthiaWestAfterDelay
DistortionWorldB7F_DontBelieveHisLies:
    Message DistortionWorldB7F_Text_DontBelieveHisLies
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 74, DistortionWorldB7F_CynthiaPlayerWalkOnSpotEastWest
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB7F_Movement_CynthiaWalkOnSpotSouth
    ApplyMovement LOCALID_PLAYER, DistortionWorldB7F_Movement_PlayerWalkOnSpotNorthAfterDelay
    GoTo DistortionWorldB7F_MeetGiratina

DistortionWorldB7F_CynthiaPlayerWalkOnSpotEastWest:
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB7F_Movement_CynthiaWalkOnSpotEast
    ApplyMovement LOCALID_PLAYER, DistortionWorldB7F_Movement_PlayerWalkOnSpotWestAfterDelay
DistortionWorldB7F_MeetGiratina:
    BufferPlayerName 0
    Message DistortionWorldB7F_Text_CynthiaFullyHealedPokemon
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    WaitMovement
    Message DistortionWorldB7F_Text_LetsGoMeetGiratina
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB7F_Movement_CynthiaWalkToGiratina
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 74, DistortionWorldB7F_PlayerFollowCynthiaToGiratinaY74
    ApplyMovement LOCALID_PLAYER, DistortionWorldB7F_Movement_PlayerFollowCynthiaToGiratinaY75
    GoTo DistortionWorldB7F_GiratinaIsEnraged

DistortionWorldB7F_PlayerFollowCynthiaToGiratinaY74:
    ApplyMovement LOCALID_PLAYER, DistortionWorldB7F_Movement_PlayerFollowCynthiaToGiratinaY74
DistortionWorldB7F_GiratinaIsEnraged:
    WaitMovement
    Message DistortionWorldB7F_Text_GiratinaIsEnraged
    WaitButton
    CloseMessage
    End

DistortionWorldB7F_LostBattle:
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 9
    BlackOutFromBattle
    ReleaseAll
    End

DistortionWorldB7F_Cynthia:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfGe VAR_DISTORTION_WORLD_PROGRESS, 10, DistortionWorldB7F_YourBondIsStrong
    Message DistortionWorldB7F_Text_ThatsNoJustice
    WaitButton
    CloseMessage
    ReleaseAll
    End

DistortionWorldB7F_YourBondIsStrong:
    Message DistortionWorldB7F_Text_YourBondIsStrong
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
DistortionWorldB7F_Movement_PlayerWalkOnSpotNorth:
    Delay16 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_PlayerMoveAside:
    WalkNormalEast
    WalkOnSpotNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_PlayerFollowCynthiaToGiratinaY75:
    WalkNormalWest
    WalkNormalNorth 7
    WalkNormalEast 4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_PlayerFollowCynthiaToGiratinaY74:
    WalkNormalWest
    WalkNormalNorth 6
    WalkNormalEast 4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_PlayerWatchCyrusLeave:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_PlayerFaceCynthiaNorthAfterDelay:
    Delay32 2
    Delay16
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_PlayerFaceCynthiaWestAfterDelay:
    Delay32 2
    Delay16
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_PlayerWalkOnSpotNorthAfterDelay:
    Delay4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_PlayerWalkOnSpotWestAfterDelay:
    Delay4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_CynthiaWalkOnSpotNorth:
    Delay16 2
    WalkOnSpotNormalNorth
    Delay16 2
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_CynthiaWalkNorth:
    WalkNormalEast
    JumpDistortionWorldNorth
    WalkNormalNorth 7
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_CynthiaMoveAside:
    Delay8 3
    WalkNormalWest
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_CynthiaWalkToPlayer:
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_CynthiaWalkToGiratina:
    WalkNormalNorth 6
    WalkNormalEast 4
    WalkNormalSouth
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_CynthiaWatchCyrusLeave:
    Delay16
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_CynthiaFaceCynthiaEastAfterDelay:
    Delay32 2
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_CynthiaWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_CynthiaWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_CyrusWalkToCynthia:
    WalkNormalSouth 4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
DistortionWorldB7F_Movement_CyrusLeave:
    WalkNormalSouth 7
    JumpDistortionWorldSouth
    Delay16
    EndMovement
