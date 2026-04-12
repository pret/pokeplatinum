#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/spear_pillar.h"
#include "res/field/events/events_spear_pillar.h"
#include "generated/versions.h"


    ScriptEntry SpearPillar_OnTransition
    ScriptEntry SpearPillar_OnLoad
    ScriptEntry SpearPillar_TriggerGrunts
    ScriptEntry SpearPillar_Cyrus
    ScriptEntry SpearPillar_TriggerMarsJupiter
    ScriptEntry SpearPillar_Grunts
    ScriptEntry SpearPillar_Jupiter
    ScriptEntry SpearPillar_Mars
    ScriptEntryEnd

SpearPillar_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_SPEAR_PILLAR
    Call SpearPillar_TryHideRival
    Call SpearPillar_TryEnableHallOfOrigin
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, SpearPillar_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, SpearPillar_SetCounterpartGraphicsLucas
    End

SpearPillar_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_F
    End

SpearPillar_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_M
    End

SpearPillar_TryEnableHallOfOrigin:
    CheckGameCompleted VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, SpearPillar_TryEnableHallOfOriginEnd
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, SpearPillar_TryEnableHallOfOriginEnd
    CheckItem ITEM_AZURE_FLUTE, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, SpearPillar_TryEnableHallOfOriginEnd
    CheckDistributionEvent DISTRIBUTION_EVENT_ARCEUS, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, SpearPillar_TryEnableHallOfOriginEnd
    GoToIfSet FLAG_CAUGHT_ARCEUS, SpearPillar_TryEnableHallOfOriginEnd
    SetVar VAR_HALL_OF_ORIGIN_STATE, 1
    GoTo SpearPillar_TryEnableHallOfOriginEnd
    End

SpearPillar_TryEnableHallOfOriginEnd:
    Return

SpearPillar_TryHideRival:
    Dummy1F9 VAR_SPEAR_PILLAR_STATE
    GoToIfInRange VAR_SPEAR_PILLAR_STATE, 0, 3, SpearPillar_HideRival
    Return

SpearPillar_HideRival:
    SetFlag FLAG_HIDE_SPEAR_PILLAR_RIVAL
    Return

SpearPillar_OnLoad:
    End

SpearPillar_SetMessageVar:
    GetGameVersion VAR_RESULT
    SetVar VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_RESULT, VERSION_DIAMOND, SpearPillar_SetMessageVarReturn
    GoToIfEq VAR_RESULT, VERSION_PLATINUM, SpearPillar_SetMessageVarReturn
    SetVar VAR_0x8004, VAR_0x8006
SpearPillar_SetMessageVarReturn:
    Return

SpearPillar_Unused:
    GetPlayerGender VAR_RESULT
    SetVar VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SpearPillar_Unused2
    SetVar VAR_0x8004, VAR_0x8006
SpearPillar_Unused2:
    Return

SpearPillar_TriggerGrunts:
    LockAll
    ApplyMovement LOCALID_GRUNT_F, SpearPillar_Movement_GruntFWalkOnSpotEast
    ApplyMovement LOCALID_GRUNT_M, SpearPillar_Movement_GruntMWalkOnSpotWest
    WaitMovement
    CheckHasTwoAliveMons VAR_RESULT
    GoToIfNe VAR_RESULT, FALSE, SpearPillar_BattleGrunts
    GoTo SpearPillar_GruntsOnlyOnePokemon
    End

SpearPillar_GruntsOnlyOnePokemon:
    Message SpearPillar_Text_OnlyOnePokemon
    CloseMessage
    ApplyMovement LOCALID_PLAYER, SpearPillar_Movement_PlayerWalkSouth
    WaitMovement
    ApplyMovement LOCALID_GRUNT_F, SpearPillar_Movement_GruntFWalkOnSpotSouth
    ApplyMovement LOCALID_GRUNT_M, SpearPillar_Movement_GruntMWalkOnSpotSouth
    WaitMovement
    ReleaseAll
    End

SpearPillar_BattleGrunts:
    Call SpearPillar_StartBattleGrunts
    GoToIfEq VAR_RESULT, FALSE, SpearPillar_BlackOutGrunts
    SetVar VAR_SPEAR_PILLAR_STATE, 1
    Message SpearPillar_Text_WeLetYouPass
    WaitButton
    CloseMessage
    ReleaseAll
    End

SpearPillar_StartBattleGrunts:
    Message SpearPillar_Text_TakeYouDown
    CloseMessage
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_SPEAR_PILLAR_1, TRAINER_GALACTIC_GRUNT_SPEAR_PILLAR_2
    CheckWonBattle VAR_RESULT
    Return

SpearPillar_BlackOutGrunts:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
SpearPillar_Movement_GruntFWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
SpearPillar_Movement_GruntFWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SpearPillar_Movement_GruntMWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SpearPillar_Movement_GruntMWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SpearPillar_Movement_PlayerWalkSouth:
    Delay4 5
    WalkNormalSouth
    EndMovement

SpearPillar_Grunts:
    NPCMessage SpearPillar_Text_WeLetYouPass
    End

SpearPillar_Jupiter:
    NPCMessage SpearPillar_Text_BeQuietAndWatch
    End

SpearPillar_Mars:
    NPCMessage SpearPillar_Text_SurprisedYouMadeIt
    End

SpearPillar_TriggerMarsJupiter:
    LockAll
    Call SpearPillar_MarsJupiterWalkToPlayer
    Message SpearPillar_Text_GoThroughMeFirst
    Message SpearPillar_Text_IllBeNext
    CloseMessage
    Call SpearPillar_RivalEnter
    BufferRivalName 0
    Message SpearPillar_Text_DontPartyWithoutMe
    Message SpearPillar_Text_Huh
    Message SpearPillar_Text_ImHereForRevenge
    Message SpearPillar_Text_LetsBattleTwoOnTwo
    CloseMessage
    Call SpearPillar_SetRivalPartnerTeam
    StartTagBattle VAR_0x8004, TRAINER_COMMANDER_MARS_SPEAR_PILLAR, TRAINER_COMMANDER_JUPITER_SPEAR_PILLAR
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SpearPillar_BlackOutMarsJupiter
    Call SpearPillar_PlayerRivalFaceEachOther
    BufferRivalName 0
    BufferPlayerName 1
    Message SpearPillar_Text_IllHelpYou
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    Message SpearPillar_Text_FullyHealedPokemon
    Message SpearPillar_Text_ItsYourShowNow
    CloseMessage
    ScrCmd_18C LOCALID_PLAYER, DIR_SOUTH
    ApplyMovement LOCALID_RIVAL, SpearPillar_Movement_RivalLeave
    WaitMovement
    RemoveObject LOCALID_RIVAL
    SetVar VAR_SPEAR_PILLAR_STATE, 2
    GoTo SpearPillar_Cyrus
    End

SpearPillar_BlackOutMarsJupiter:
    SetVar VAR_SPEAR_PILLAR_STATE, 1
    BlackOutFromBattle
    ReleaseAll
    End

SpearPillar_RivalEnter:
    ClearFlag FLAG_HIDE_SPEAR_PILLAR_RIVAL
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    SetVar VAR_0x8008, VAR_0x8004
    GoToIfEq VAR_0x8008, 30, SpearPillar_RivalEnterX30
    GoToIfEq VAR_0x8008, 31, SpearPillar_RivalEnterX31
    GoToIfEq VAR_0x8008, 32, SpearPillar_RivalEnterX32
    Return

SpearPillar_RivalEnterX30:
    SetObjectEventPos LOCALID_RIVAL, 31, 40
    AddObject LOCALID_RIVAL
    ApplyMovement LOCALID_RIVAL, SpearPillar_Movement_RivalEnter
    WaitMovement
    ScrCmd_18C LOCALID_RIVAL, DIR_EAST
    Return

SpearPillar_RivalEnterX31:
    SetObjectEventPos LOCALID_RIVAL, 30, 40
    AddObject LOCALID_RIVAL
    ApplyMovement LOCALID_RIVAL, SpearPillar_Movement_RivalEnter
    WaitMovement
    ScrCmd_18C LOCALID_RIVAL, DIR_WEST
    Return

SpearPillar_RivalEnterX32:
    SetObjectEventPos LOCALID_RIVAL, 31, 40
    AddObject LOCALID_RIVAL
    ApplyMovement LOCALID_RIVAL, SpearPillar_Movement_RivalEnter
    WaitMovement
    ScrCmd_18C LOCALID_RIVAL, DIR_WEST
    Return

SpearPillar_MarsJupiterWalkToPlayer:
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    SetVar VAR_0x8008, VAR_0x8004
    GoToIfEq VAR_0x8008, 30, SpearPillar_MarsJupiterWalkToPlayerX30
    GoToIfEq VAR_0x8008, 31, SpearPillar_MarsJupiterWalkToPlayerX31
    GoToIfEq VAR_0x8008, 32, SpearPillar_MarsJupiterWalkToPlayerX32
    Return

SpearPillar_MarsJupiterWalkToPlayerX30:
    ScrCmd_18C LOCALID_PLAYER, DIR_WEST
    ApplyMovement LOCALID_JUPITER, SpearPillar_Movement_JupiterWalkOnSpotEast
    ApplyMovement LOCALID_MARS, SpearPillar_Movement_MarsWalkWest
    WaitMovement
    Return

SpearPillar_MarsJupiterWalkToPlayerX31:
    ScrCmd_18C LOCALID_PLAYER, DIR_EAST
    ApplyMovement LOCALID_JUPITER, SpearPillar_Movement_JupiterWalkOnSpotEast2
    ApplyMovement LOCALID_MARS, SpearPillar_Movement_MarsWalkWest2
    WaitMovement
    Return

SpearPillar_MarsJupiterWalkToPlayerX32:
    ScrCmd_18C LOCALID_PLAYER, DIR_EAST
    ApplyMovement LOCALID_JUPITER, SpearPillar_Movement_JupiterWalkEast
    ApplyMovement LOCALID_MARS, SpearPillar_Movement_MarsWalkOnSpotWest
    WaitMovement
    Return

    .balign 4, 0
SpearPillar_Movement_JupiterWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
SpearPillar_Movement_MarsWalkWest:
    WalkNormalWest
    EndMovement

    .balign 4, 0
SpearPillar_Movement_JupiterWalkOnSpotEast2:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
SpearPillar_Movement_MarsWalkWest2:
    WalkNormalWest
    EndMovement

    .balign 4, 0
SpearPillar_Movement_JupiterWalkEast:
    WalkNormalEast
    EndMovement

    .balign 4, 0
SpearPillar_Movement_MarsWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

SpearPillar_SetRivalPartnerTeam:
    GetPlayerStarterSpecies VAR_RESULT
    SetVar VAR_0x8004, TRAINER_RIVAL_SPEAR_PILLAR_CHIMCHAR
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, SpearPillar_Return
    SetVar VAR_0x8004, TRAINER_RIVAL_SPEAR_PILLAR_TURTWIG
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, SpearPillar_Return
    SetVar VAR_0x8004, TRAINER_RIVAL_SPEAR_PILLAR_PIPLUP
SpearPillar_Return:
    Return

SpearPillar_PlayerRivalFaceEachOther:
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    SetVar VAR_0x8008, VAR_0x8004
    GoToIfEq VAR_0x8008, 30, SpearPillar_PlayerRivalFaceEachOtherX30
    GoToIfEq VAR_0x8008, 31, SpearPillar_PlayerRivalFaceEachOtherX31
    GoToIfEq VAR_0x8008, 32, SpearPillar_PlayerRivalFaceEachOtherX32
    Return

SpearPillar_PlayerRivalFaceEachOtherX30:
    ScrCmd_18C LOCALID_PLAYER, DIR_EAST
    ScrCmd_18C LOCALID_RIVAL, DIR_WEST
    Return

SpearPillar_PlayerRivalFaceEachOtherX31:
    ScrCmd_18C LOCALID_PLAYER, DIR_WEST
    ScrCmd_18C LOCALID_RIVAL, DIR_EAST
    Return

SpearPillar_PlayerRivalFaceEachOtherX32:
    ScrCmd_18C LOCALID_PLAYER, DIR_WEST
    ScrCmd_18C LOCALID_RIVAL, DIR_EAST
    Return

SpearPillar_Unused3:
    ApplyMovement LOCALID_JUPITER, SpearPillar_UnusedMovement
    ApplyMovement LOCALID_MARS, SpearPillar_UnusedMovement2
    WaitMovement
    Return

    .balign 4, 0
SpearPillar_UnusedMovement:
    FaceEast
    LockDir
    WalkSlowWest
    UnlockDir
    EndMovement

SpearPillar_UnusedMovement2:
    FaceWest
    LockDir
    WalkSlowEast
    UnlockDir
    EndMovement

    .balign 4, 0
SpearPillar_Movement_RivalEnter:
    Delay4 2
    WalkFastNorth 8
    EndMovement

    .balign 4, 0
SpearPillar_Movement_RivalLeave:
    WalkFastSouth 8
    EndMovement

SpearPillar_Cyrus:
    ApplyMovement LOCALID_PLAYER, SpearPillar_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    AddFreeCamera VAR_0x8000, VAR_0x8001
    Call SpearPillar_CameraMoveToCyrus
    WaitMovement
    SetVar VAR_0x8005, SpearPillar_Text_EverythingIsReady
    SetVar VAR_0x8006, SpearPillar_Text_Dummy68
    Call SpearPillar_SetMessageVar
    MessageVar VAR_0x8004
    CloseMessage
    FadeOutBGM 0, 30
    ScrCmd_20D 0, VAR_RESULT
    WaitTime 10, VAR_RESULT
    PlaySE SEQ_SE_PL_KUSARI
    WaitTime 20, VAR_RESULT
    PlayMusic SEQ_THE_EVENT02
    SetSubScene63
    GoTo SpearPillar_WaitThenWarpToSpearPillarDistorted
    End

SpearPillar_WaitThenWarpToSpearPillarDistorted:
    ScrCmd_20D 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, SpearPillar_WaitThenWarpToSpearPillarDistorted
    ScrCmd_2FB
    SetFlag FLAG_HIDE_SPEAR_PILLAR_GRUNTS
    SetFlag FLAG_HIDE_SPEAR_PILLAR_MARS_JUPITER
    SetFlag FLAG_HIDE_SPEAR_PILLAR_CYRUS
    SetVar VAR_SPEAR_PILLAR_STATE, 3
    SetFlag FLAG_UNLOCKED_VS_SEEKER_LVL_3
    ClearFlag FLAG_HIDE_SPEAR_PILLAR_DISTORTED_TEAM_GALACTIC
    SetFlag FLAG_SPEAR_PILLAR_IS_DISTORTED
    SetVar VAR_SPEAR_PILLAR_DISTORTED_STATE, 1
    SetSpeciesSeen SPECIES_DIALGA
    SetSpeciesSeen SPECIES_PALKIA
    RestoreCamera
    Warp MAP_HEADER_SPEAR_PILLAR_DISTORTED, 0, 30, 30, 0
    End

    .balign 4, 0
SpearPillar_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

SpearPillar_CameraMoveToCyrus:
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    SetVar VAR_0x8008, VAR_0x8004
    GoToIfEq VAR_0x8008, 29, SpearPillar_CameraMoveToCyrusX29
    GoToIfEq VAR_0x8008, 30, SpearPillar_CameraMoveToCyrusX30
    GoToIfEq VAR_0x8008, 31, SpearPillar_CameraMoveToCyrusX31
    GoToIfEq VAR_0x8008, 32, SpearPillar_CameraMoveToCyrusX32
    GoToIfEq VAR_0x8008, 33, SpearPillar_CameraMoveToCyrusX33
    Return

SpearPillar_CameraMoveToCyrusX29:
    ApplyFreeCameraMovement SpearPillar_Movement_CameraMoveToCyrusX29
    Return

SpearPillar_CameraMoveToCyrusX30:
    ApplyFreeCameraMovement SpearPillar_Movement_CameraMoveToCyrusX30
    Return

SpearPillar_CameraMoveToCyrusX31:
    ApplyFreeCameraMovement SpearPillar_Movement_CameraMoveToCyrusX31
    Return

SpearPillar_CameraMoveToCyrusX32:
    ApplyFreeCameraMovement SpearPillar_Movement_CameraMoveToCyrusX32
    Return

SpearPillar_CameraMoveToCyrusX33:
    ApplyFreeCameraMovement SpearPillar_Movement_CameraMoveToCyrusX33
    Return

    .balign 4, 0
SpearPillar_Movement_CameraMoveToCyrusX29:
    Delay8
    WalkNormalNorth 6
    WalkNormalEast 2
    EndMovement

    .balign 4, 0
SpearPillar_Movement_CameraMoveToCyrusX30:
    Delay8
    WalkNormalNorth 6
    WalkNormalEast
    EndMovement

    .balign 4, 0
SpearPillar_Movement_CameraMoveToCyrusX31:
    Delay8
    WalkNormalNorth 6
    EndMovement

    .balign 4, 0
SpearPillar_Movement_CameraMoveToCyrusX32:
    Delay8
    WalkNormalNorth 6
    WalkNormalWest
    EndMovement

    .balign 4, 0
SpearPillar_Movement_CameraMoveToCyrusX33:
    Delay8
    WalkNormalNorth 6
    WalkNormalWest 2
    EndMovement
