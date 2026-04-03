#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/canalave_city.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_canalave_city.h"


    ScriptEntry CanalaveCity_OnTransition
    ScriptEntry CanalaveCity_TriggerRival
    ScriptEntry CanalaveCity_RivalBridge
    ScriptEntry CanalaveCity_OnFrameRivalOutsideGym
    ScriptEntry CanalaveCity_OnFrameAfterExplosion
    ScriptEntry CanalaveCity_ProfRowan
    ScriptEntry CanalaveCity_Counterpart
    ScriptEntry CanalaveCity_Collector
    ScriptEntry CanalaveCity_PokemonBreederM
    ScriptEntry CanalaveCity_AceTrainerF
    ScriptEntry CanalaveCity_Lass
    ScriptEntry CanalaveCity_Psyduck
    ScriptEntry CanalaveCity_OldMan
    ScriptEntry CanalaveCity_MapSign
    ScriptEntry CanalaveCity_GymSign
    ScriptEntry CanalaveCity_SignCanalaveLibrary
    ScriptEntry CanalaveCity_SignSailorEldritchsHouse
    ScriptEntry CanalaveCity_SignCanalaveDock
    ScriptEntry CanalaveCity_SignHarborInn
    ScriptEntry CanalaveCity_SailorEldritch
    ScriptEntry CanalaveCity_Door
    ScriptEntry CanalaveCity_AskGoingToFullmoonIsland
    ScriptEntry CanalaveCity_OnFrameAfterDarkrai
    ScriptEntry CanalaveCity_OnLoad
    ScriptEntry CanalaveCity_RivalLibrary
    ScriptEntryEnd

CanalaveCity_OnTransition:
    SetFlag FLAG_HIDE_CELESTIC_TOWN_CYNTHIA
    CallIfEq VAR_DARKRAI_EVENT_STATE, 2, CanalaveCity_ResetDarkraiEventState
    CallIfEq VAR_DARKRAI_EVENT_STATE, 3, CanalaveCity_SetSailorEldritchPositionAfterDarkrai
    Call CanalaveCity_CheckDoDarkraiEvent
    CallIfEq VAR_MAP_LOCAL_0, FALSE, CanalaveCity_SetHarborInnDoorClosed
    CallIfEq VAR_MAP_LOCAL_0, TRUE, CanalaveCity_ShowNewmoonIslandForestDarkrai
    CallIfEq VAR_CANALAVE_STATE, 1, CanalaveCity_SetRivalPositionOutsideGym
    CallIfEq VAR_CANALAVE_STATE, 2, CanalaveCity_SetRivalPositionOutsideGym
    CallIfEq VAR_CANALAVE_STATE, 4, CanalaveCity_SetRivalPositionOutsideLibrary
    CallIfEq VAR_CANALAVE_STATE, 5, CanalaveCity_HideProfRowanAndCounterpart
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, CanalaveCity_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, CanalaveCity_SetCounterpartGraphicsLucas
    End

CanalaveCity_ResetDarkraiEventState:
    SetVar VAR_DARKRAI_EVENT_STATE, 0
    Return

CanalaveCity_SetSailorEldritchPositionAfterDarkrai:
    SetObjectEventPos LOCALID_SAILOR_ELDRITCH, 55, 716
    SetObjectEventDir LOCALID_SAILOR_ELDRITCH, DIR_EAST
    SetObjectEventMovementType LOCALID_SAILOR_ELDRITCH, MOVEMENT_TYPE_LOOK_EAST
    Return

CanalaveCity_ShowNewmoonIslandForestDarkrai:
    ClearFlag FLAG_HIDE_NEWMOON_ISLAND_FOREST_DARKRAI
    Return

CanalaveCity_SetRivalPositionOutsideLibrary:
    SetObjectEventPos LOCALID_RIVAL_BRIDGE, 37, 721
    SetObjectEventDir LOCALID_RIVAL_BRIDGE, DIR_SOUTH
    SetObjectEventMovementType LOCALID_RIVAL_BRIDGE, MOVEMENT_TYPE_LOOK_SOUTH
    Return

CanalaveCity_SetRivalPositionOutsideGym:
    SetObjectEventPos LOCALID_RIVAL_BRIDGE, 39, 733
    SetObjectEventDir LOCALID_RIVAL_BRIDGE, DIR_NORTH
    SetObjectEventMovementType LOCALID_RIVAL_BRIDGE, MOVEMENT_TYPE_LOOK_NORTH
    Return

CanalaveCity_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_F
    End

CanalaveCity_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_M
    End

CanalaveCity_HideProfRowanAndCounterpart:
    SetFlag FLAG_HIDE_CANALAVE_CITY_PROF_ROWAN
    SetFlag FLAG_HIDE_CANALAVE_CITY_COUNTERPART
    SetVar VAR_CANALAVE_STATE, 6
    Return

CanalaveCity_CheckDoDarkraiEvent:
    GoToIfSet FLAG_CAUGHT_DARKRAI, CanalaveCity_SetMapLocalFalse
    GoToIfUnset FLAG_GAME_COMPLETED, CanalaveCity_SetMapLocalFalse
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, CanalaveCity_SetMapLocalFalse
    CheckItem ITEM_MEMBER_CARD, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, CanalaveCity_SetMapLocalFalse
    CheckDistributionEvent DISTRIBUTION_EVENT_DARKRAI, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, CanalaveCity_SetMapLocalFalse
    GoToIfUnset FLAG_WOKE_UP_CANALAVE_CITY_SAILOR_ELDRITCH_HOUSE_LITTLE_BOY, CanalaveCity_SetMapLocalFalse
    SetVar VAR_MAP_LOCAL_0, TRUE
    Return

CanalaveCity_SetMapLocalFalse:
    SetVar VAR_MAP_LOCAL_0, FALSE
    Return

CanalaveCity_OnLoad:
    Call CanalaveCity_CheckDoDarkraiEvent
    CallIfEq VAR_MAP_LOCAL_0, FALSE, CanalaveCity_SetHarborInnDoorClosed
    End

CanalaveCity_SetHarborInnDoorClosed:
    SetBgEventPos 0, 58, 713
    SetWarpEventPos 5, 59, 712
    Return

CanalaveCity_TriggerRival:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 723, CanalaveCity_SetRivalBridgePositionZ707
    GoToIfEq VAR_0x8005, 724, CanalaveCity_SetRivalBridgePositionZ708
    GoToIfEq VAR_0x8005, 725, CanalaveCity_SetRivalBridgePositionZ709
    GoToIfEq VAR_0x8005, 726, CanalaveCity_SetRivalBridgePositionZ710
    GoToIfEq VAR_0x8005, 727, CanalaveCity_SetRivalBridgePositionZ711
    End

CanalaveCity_SetRivalBridgePositionZ707:
    SetObjectEventPos LOCALID_RIVAL_BRIDGE, 38, 723
    GoTo CanalaveCity_RivalBridgeEnter

CanalaveCity_SetRivalBridgePositionZ708:
    SetObjectEventPos LOCALID_RIVAL_BRIDGE, 38, 724
    GoTo CanalaveCity_RivalBridgeEnter

CanalaveCity_SetRivalBridgePositionZ709:
    SetObjectEventPos LOCALID_RIVAL_BRIDGE, 38, 725
    GoTo CanalaveCity_RivalBridgeEnter

CanalaveCity_SetRivalBridgePositionZ710:
    SetObjectEventPos LOCALID_RIVAL_BRIDGE, 38, 726
    GoTo CanalaveCity_RivalBridgeEnter

CanalaveCity_SetRivalBridgePositionZ711:
    SetObjectEventPos LOCALID_RIVAL_BRIDGE, 38, 727
    GoTo CanalaveCity_RivalBridgeEnter

CanalaveCity_RivalBridgeEnter:
    SetObjectEventMovementType LOCALID_RIVAL_BRIDGE, MOVEMENT_TYPE_LOOK_EAST
    ClearFlag FLAG_HIDE_CANALAVE_CITY_RIVAL_BRIDGE
    AddObject LOCALID_RIVAL_BRIDGE
    ApplyMovement LOCALID_RIVAL_BRIDGE, CanalaveCity_Movement_RivalNoticePlayer
    WaitMovement
    Common_SetRivalBGM
    ApplyMovement LOCALID_RIVAL_BRIDGE, CanalaveCity_Movement_RivalWalkToPlayer
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message CanalaveCity_Text_CheckIfYoureReady
    CloseMessage
    GetPlayerStarterSpecies VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, CanalaveCity_StartRivalBattleTurtwig
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, CanalaveCity_StartRivalBattleChimchar
    GoTo CanalaveCity_StartRivalBattlePiplup

CanalaveCity_StartRivalBattlePiplup:
    StartTrainerBattle TRAINER_RIVAL_CANALAVE_CITY_PIPLUP
    GoTo CanalaveCity_PostRivalBattle

CanalaveCity_StartRivalBattleTurtwig:
    StartTrainerBattle TRAINER_RIVAL_CANALAVE_CITY_TURTWIG
    GoTo CanalaveCity_PostRivalBattle

CanalaveCity_StartRivalBattleChimchar:
    StartTrainerBattle TRAINER_RIVAL_CANALAVE_CITY_CHIMCHAR
    GoTo CanalaveCity_PostRivalBattle

CanalaveCity_PostRivalBattle:
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, CanalaveCity_BlackOut
    BufferRivalName 0
    Message CanalaveCity_Text_TrainAtIronIsland
    CloseMessage
    ApplyMovement LOCALID_RIVAL_BRIDGE, CanalaveCity_Movement_RivalBridgeLeave
    WaitMovement
    RemoveObject LOCALID_RIVAL_BRIDGE
    SetVar VAR_CANALAVE_STATE, 1
    ReleaseAll
    End

CanalaveCity_BlackOut:
    SetFlag FLAG_HIDE_CANALAVE_CITY_RIVAL_BRIDGE
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
CanalaveCity_Movement_RivalNoticePlayer:
    WalkFastEast 4
    Delay8
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_RivalWalkToPlayer:
    WalkFastEast 4
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_RivalBridgeLeave:
    WalkFastWest 9
    EndMovement

CanalaveCity_RivalBridge:
    NPCMessage CanalaveCity_Text_TrainAtIronIsland
    End

CanalaveCity_OnFrameRivalOutsideGym:
    LockAll
    BufferRivalName 0
    BufferPlayerName 1
    Message CanalaveCity_Text_ComeToLibrary
    CloseMessage
    ApplyMovement LOCALID_RIVAL_BRIDGE, CanalaveCity_Movement_RivalWalkToLibrary
    ApplyMovement LOCALID_PLAYER, CanalaveCity_Movement_PlayerWatchRivalWalkToLibrary
    WaitMovement
    RemoveObject LOCALID_RIVAL_BRIDGE
    SetVar VAR_CANALAVE_STATE, 3
    SetVar VAR_CANALAVE_LIBRARY_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
CanalaveCity_Movement_RivalWalkToLibrary:
    WalkFastSouth
    WalkFastWest 5
    WalkFastNorth 10
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_PlayerWatchRivalWalkToLibrary:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

CanalaveCity_OnFrameAfterExplosion:
    LockAll
    ApplyMovement LOCALID_PROF_ROWAN, CanalaveCity_Movement_ProfRowanWalkOnSpotSouth
    WaitMovement
    Message CanalaveCity_Text_ThatTremorUnnatural
    CloseMessage
    ClearFlag FLAG_HIDE_CANALAVE_CITY_SAILOR
    AddObject LOCALID_SAILOR
    LockObject LOCALID_SAILOR
    ApplyMovement LOCALID_SAILOR, CanalaveCity_Movement_SailorToWalkProfRowan
    WaitMovement
    Message CanalaveCity_Text_HugeExplosionAtLakeValor
    CloseMessage
    ApplyMovement LOCALID_SAILOR, CanalaveCity_Movement_SailorLeave
    WaitMovement
    RemoveObject LOCALID_SAILOR
    ApplyMovement LOCALID_RIVAL_BRIDGE, CanalaveCity_Movement_RivalWalkOnSpotNorth
    WaitMovement
    BufferRivalName 0
    Message CanalaveCity_Text_BadFeelingAboutThis
    CloseMessage
    ApplyMovement LOCALID_RIVAL_BRIDGE, CanalaveCity_Movement_RivalLeaveAfterExplosion
    WaitMovement
    RemoveObject LOCALID_RIVAL_BRIDGE
    ApplyMovement LOCALID_PROF_ROWAN, CanalaveCity_Movement_ProfRowanWalkOnSpotNorth
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message CanalaveCity_Text_INeedYouAtLakeValor
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, CanalaveCity_Movement_CounterpartWalkOnSpotWest
    WaitMovement
    WaitTime 15, VAR_RESULT
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, CanalaveCity_DawnYoullBeOKRight
    GoTo CanalaveCity_LucasIWonderWhatHappened

CanalaveCity_DawnYoullBeOKRight:
    BufferPlayerName 0
    Message CanalaveCity_Text_DawnYoullBeOKRight
    GoTo CanalaveCity_ExplosionSceneEnd

CanalaveCity_LucasIWonderWhatHappened:
    Message CanalaveCity_Text_LucasIWonderWhatHappened
    GoTo CanalaveCity_ExplosionSceneEnd

CanalaveCity_ExplosionSceneEnd:
    WaitButton
    CloseMessage
    SetVar VAR_CANALAVE_STATE, 5
    ClearFlag FLAG_HIDE_LAKE_VERITY_LOW_WATER_COUNTERPART
    ClearFlag FLAG_HIDE_LAKE_VERITY_LOW_WATER_PROF_ROWAN
    ClearFlag FLAG_HIDE_LAKE_ACUITY_LOW_WATER_RIVAL
    ReleaseAll
    End

    .balign 4, 0
CanalaveCity_Movement_CounterpartWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_ProfRowanWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_ProfRowanWalkOnSpotNorth:
    Delay8 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_SailorToWalkProfRowan:
    WalkFastWest 5
    WalkFastNorth 2
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_SailorLeave:
    WalkFastSouth 6
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_RivalWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_RivalLeaveAfterExplosion:
    WalkFastSouth 3
    WalkFastEast 9
    EndMovement

CanalaveCity_ProfRowan:
    NPCMessage CanalaveCity_Text_WhatIsTakingPlace
    End

CanalaveCity_Counterpart:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, CanalaveCity_DawnGoingToLakeVerity
    GoTo CanalaveCity_LucasGoingToLakeVerity

CanalaveCity_DawnGoingToLakeVerity:
    Message CanalaveCity_Text_DawnGoingToLakeVerity
    GoTo CanalaveCity_CounterpartEnd

CanalaveCity_LucasGoingToLakeVerity:
    Message CanalaveCity_Text_LucasGoingToLakeVerity
    GoTo CanalaveCity_CounterpartEnd

CanalaveCity_CounterpartEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveCity_Collector:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_LAKE_VALOR_EXPLODED, CanalaveCity_TremorWasNoQuake
    Message CanalaveCity_Text_YourClothesLookDamp
    GoTo CanalaveCity_NPCEnd

CanalaveCity_TremorWasNoQuake:
    Message CanalaveCity_Text_TremorWasNoQuake
    GoTo CanalaveCity_NPCEnd

CanalaveCity_NPCEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveCity_PokemonBreederM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_LAKE_VALOR_EXPLODED, CanalaveCity_WhatWasThatTremor
    GoToIfBadgeAcquired BADGE_ID_MINE, CanalaveCity_ImpatientBoyAtLibrary
    GoTo CanalaveCity_WelcomeToCanalCity
    End

CanalaveCity_WelcomeToCanalCity:
    Message CanalaveCity_Text_WelcomeToCanalCity
    GoTo CanalaveCity_NPCEnd
    End

CanalaveCity_WhatWasThatTremor:
    Message CanalaveCity_Text_WhatWasThatTremor
    GoTo CanalaveCity_NPCEnd
    End

CanalaveCity_ImpatientBoyAtLibrary:
    GoToIfGe VAR_CANALAVE_STATE, 5, CanalaveCity_WelcomeToCanalCity
    Message CanalaveCity_Text_ImpatientBoyAtLibrary
    GoTo CanalaveCity_NPCEnd
    End

CanalaveCity_AceTrainerF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_LAKE_VALOR_EXPLODED, CanalaveCity_ExplosionAtLakeValor
    Message CanalaveCity_Text_GoingToStudy
    GoTo CanalaveCity_NPCEnd

CanalaveCity_ExplosionAtLakeValor:
    Message CanalaveCity_Text_ExplosionAtLakeValor
    GoTo CanalaveCity_NPCEnd

CanalaveCity_Lass:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_LAKE_VALOR_EXPLODED, CanalaveCity_CouldntForetellTremor
    Message CanalaveCity_Text_PsyduckIsVeryClose
    GoTo CanalaveCity_NPCEnd

CanalaveCity_CouldntForetellTremor:
    Message CanalaveCity_Text_CouldntForetellTremor
    GoTo CanalaveCity_NPCEnd

CanalaveCity_Psyduck:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_LAKE_VALOR_EXPLODED, CanalaveCity_PsyduckCryGuaagwa
    PlayCry SPECIES_PSYDUCK
    Message CanalaveCity_Text_PsyduckCryGua
    GoTo CanalaveCity_NPCEnd

CanalaveCity_PsyduckCryGuaagwa:
    PlayCry SPECIES_PSYDUCK
    Message CanalaveCity_Text_PsyduckCryGuaagwa
    GoTo CanalaveCity_NPCEnd

CanalaveCity_OldMan:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_LAKE_VALOR_EXPLODED, CanalaveCity_WhatCouldExplode
    Message CanalaveCity_Text_WorkOutAtIronIsland
    GoTo CanalaveCity_NPCEnd

CanalaveCity_WhatCouldExplode:
    Message CanalaveCity_Text_WhatCouldExplode
    GoTo CanalaveCity_NPCEnd

CanalaveCity_MapSign:
    ShowMapSign CanalaveCity_Text_MapSign
    End

CanalaveCity_GymSign:
    ShowScrollingSign CanalaveCity_Text_SignPokemonGym
    End

CanalaveCity_SignCanalaveLibrary:
    ShowLandmarkSign CanalaveCity_Text_SignCanalaveLibrary
    End

CanalaveCity_SignSailorEldritchsHouse:
    ShowLandmarkSign CanalaveCity_Text_SignSailorEldritchsHouse
    End

CanalaveCity_SignCanalaveDock:
    ShowLandmarkSign CanalaveCity_Text_SignCanalaveDock
    End

CanalaveCity_SignHarborInn:
    Call CanalaveCity_CheckDoDarkraiEvent
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, CanalaveCity_SignHarborInnFaded
    ShowScrollingSign CanalaveCity_Text_SignHarborInn
    End

CanalaveCity_SignHarborInnFaded:
    ShowScrollingSign CanalaveCity_Text_SignHarborInnFaded
    End

CanalaveCity_Door:
    EventMessage CanalaveCity_Text_DoorIsTightlyShut
    End

CanalaveCity_SailorEldritch:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerDir VAR_0x8004
    FacePlayer
    GoToIfEq VAR_LUNAR_WING_EVENT_STATE, 2, CanalaveCity_AskGoingToFullmoonIsland
    Message CanalaveCity_Text_DoYouWannaSetSail
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_CanalaveDock_IronIsland, 0
    CallIfSet FLAG_TALKED_TO_CANALAVE_CITY_SAILOR_ELDRITCH_HOUSE_LITTLE_BOY, CanalaveCity_AddMenuEntryFullmoonIsland
    CallIfSet FLAG_TRAVELED_TO_NEWMOON_ISLAND, CanalaveCity_AddMenuEntryNewmoonIsland
    AddMenuEntryImm MenuEntries_Text_CanalaveDock_Exit, 4
    ShowMenu
    GoToIfEq VAR_RESULT, 0, CanalaveCity_TakeShipToIronIsland
    GoToIfEq VAR_RESULT, 1, CanalaveCity_TakeShipToFullmoonIsland
    GoToIfEq VAR_RESULT, 2, CanalaveCity_TakeShipToNewmoonIsland
    GoToIfEq VAR_RESULT, 3, CanalaveCity_DontTakeShip
    GoTo CanalaveCity_DontTakeShip
    End

CanalaveCity_AddMenuEntryNewmoonIsland:
    AddMenuEntryImm MenuEntries_Text_CanalaveDock_NewmoonIsland, 2
    Return

CanalaveCity_AddMenuEntryFullmoonIsland:
    AddMenuEntryImm MenuEntries_Text_CanalaveDock_FullmoonIsland, 1
    Return

CanalaveCity_TakeShipToIronIsland:
    Call CanalaveCity_SailorEldritchEnterShip
    CallIfEq VAR_0x8004, DIR_SOUTH, CanalaveCity_PlayerEnterShipSouth
    CallIfEq VAR_0x8004, DIR_EAST, CanalaveCity_PlayerEnterShipEast
    CallIfEq VAR_0x8004, DIR_NORTH, CanalaveCity_PlayerEnterShipNorth
    TakeShipFromCanalave DIR_EAST, MAP_HEADER_IRON_ISLAND, 100, 502
    ReleaseAll
    End

CanalaveCity_TakeShipToFullmoonIsland:
    Call CanalaveCity_SailorEldritchEnterShip
    CallIfEq VAR_0x8004, DIR_SOUTH, CanalaveCity_PlayerEnterShipSouth
    CallIfEq VAR_0x8004, DIR_EAST, CanalaveCity_PlayerEnterShipEast
    CallIfEq VAR_0x8004, DIR_NORTH, CanalaveCity_PlayerEnterShipNorth
    TakeShipFromCanalave DIR_WEST, MAP_HEADER_FULLMOON_ISLAND, 39, 277
    ReleaseAll
    End

CanalaveCity_TakeShipToNewmoonIsland:
    Call CanalaveCity_SailorEldritchEnterShip
    CallIfEq VAR_0x8004, DIR_SOUTH, CanalaveCity_PlayerEnterShipSouth
    CallIfEq VAR_0x8004, DIR_EAST, CanalaveCity_PlayerEnterShipEast
    CallIfEq VAR_0x8004, DIR_NORTH, CanalaveCity_PlayerEnterShipNorth
    TakeShipFromCanalave DIR_EAST, MAP_HEADER_NEWMOON_ISLAND, 152, 277
    ReleaseAll
    End

CanalaveCity_DontTakeShip:
    Message CanalaveCity_Text_TellWheneverSetSail
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveCity_SailorEldritchEnterShip:
    Message CanalaveCity_Text_AnchorsAweigh
    CloseMessage
    ApplyMovement LOCALID_SAILOR_ELDRITCH, CanalaveCity_Movement_SailorEldritchFaceEast
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_SAILOR_ELDRITCH, CanalaveCity_Movement_SetInvisible
    WaitMovement
    Return

CanalaveCity_PlayerEnterShipSouth:
    ApplyMovement LOCALID_PLAYER, CanalaveCity_Movement_PlayerWalkToShipSouth
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, CanalaveCity_Movement_SetInvisible
    WaitMovement
    Return

CanalaveCity_PlayerEnterShipEast:
    ApplyMovement LOCALID_PLAYER, CanalaveCity_Movement_PlayerWalkToShipEast
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, CanalaveCity_Movement_SetInvisible
    WaitMovement
    Return

CanalaveCity_PlayerEnterShipNorth:
    ApplyMovement LOCALID_PLAYER, CanalaveCity_Movement_PlayerWalkToShipNorth
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, CanalaveCity_Movement_SetInvisible
    WaitMovement
    Return

    .balign 4, 0
CanalaveCity_Movement_SailorEldritchFaceEast:
    FaceEast
    Delay15
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_SetInvisible:
    SetInvisible
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_PlayerWalkToShipSouth:
    WalkNormalSouth
    FaceEast
    Delay15
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_PlayerWalkToShipEast:
    WalkNormalEast
    Delay15
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_PlayerWalkToShipNorth:
    WalkNormalNorth
    FaceEast
    Delay15
    EndMovement

CanalaveCity_AskGoingToFullmoonIsland:
    CheckItem ITEM_LUNAR_WING, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, CanalaveCity_TakeLunarWingToSon
    Message CanalaveCity_Text_GoingToFullmoonIsland
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveCity_CountingOnYou
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveCity_IllBeWaiting
    End

CanalaveCity_CountingOnYou:
    Message CanalaveCity_Text_CountingOnYou
    CloseMessage
    GoTo CanalaveCity_TakeShipToFullmoonIsland

CanalaveCity_IllBeWaiting:
    Message CanalaveCity_Text_IllBeWaiting
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveCity_TakeLunarWingToSon:
    Message CanalaveCity_Text_TakeLunarWingToSon
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveCity_OnFrameAfterDarkrai:
    LockAll
    ApplyMovement LOCALID_SAILOR_ELDRITCH, CanalaveCity_Movement_SailorEldritchNoticeWalkToPlayer
    WaitMovement
    Message CanalaveCity_Text_AsleepForLongTime
    CloseMessage
    ApplyMovement LOCALID_SAILOR_ELDRITCH, CanalaveCity_Movement_SailorEldritchLeave
    WaitMovement
    RemoveObject LOCALID_SAILOR_ELDRITCH
    SetObjectEventPos LOCALID_SAILOR_ELDRITCH, 45, 750
    SetObjectEventDir LOCALID_SAILOR_ELDRITCH, DIR_WEST
    SetObjectEventMovementType LOCALID_SAILOR_ELDRITCH, MOVEMENT_TYPE_LOOK_WEST
    AddObject LOCALID_SAILOR_ELDRITCH
    SetVar VAR_DARKRAI_EVENT_STATE, 4
    ReleaseAll
    End

    .balign 4, 0
CanalaveCity_Movement_SailorEldritchNoticeWalkToPlayer:
    EmoteExclamationMark
    WalkNormalEast 3
    WalkNormalNorth
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_SailorEldritchLeave:
    WalkNormalSouth
    WalkNormalWest 3
    WalkNormalSouth 8
    EndMovement

CanalaveCity_RivalLibrary:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_HM04, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, CanalaveCity_EnterLibrary
    FindPartySlotWithMove VAR_RESULT, MOVE_STRENGTH
    GoToIfNe VAR_RESULT, MAX_PARTY_SIZE, CanalaveCity_EnterLibrary
    BufferRivalName 0
    Message CanalaveCity_Text_DidntGetHMStrength
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveCity_EnterLibrary:
    BufferRivalName 0
    Message CanalaveCity_Text_RivalTooSlowMoveIt
    CloseMessage
    ApplyMovement LOCALID_RIVAL_LIBRARY, CanalaveCity_Movement_FaceNorth
    WaitMovement
    LoadDoorAnimation 1, 22, 5, 14, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement LOCALID_RIVAL_LIBRARY, CanalaveCity_Movement_EnterDoor
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    RemoveObject LOCALID_RIVAL_LIBRARY
    ReleaseAll
    End

    .balign 4, 0
CanalaveCity_Movement_FaceNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CanalaveCity_Movement_EnterDoor:
    WalkNormalNorth
    SetInvisible
    EndMovement
