#include "macros/scrcmd.inc"
#include "res/text/bank/survival_area.h"
#include "res/field/events/events_survival_area.h"


    ScriptEntry SurvivalArea_Youngster
    ScriptEntry SurvivalArea_BattleGirl
    ScriptEntry SurvivalArea_RuinManiac
    ScriptEntry SurvivalArea_Cameraman
    ScriptEntry SurvivalArea_MapSign
    ScriptEntry SurvivalArea_Buck
    ScriptEntry SurvivalArea_Door
    ScriptEntry SurvivalArea_OnTransition
    ScriptEntry SurvivalArea_OnLoad
    ScriptEntry SurvivalArea_Rival
    ScriptEntryEnd

SurvivalArea_OnTransition:
    GoTo SurvivalArea_SetRivalMessageTryRemoveWarp
    End

SurvivalArea_SetRivalMessageTryRemoveWarp:
    GetRandom VAR_RANDOM_SURVIVAL_AREA_RIVAL_MESSAGE, 3
    GoToIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, SurvivalArea_RemoveWarpBattleground
    End

SurvivalArea_OnLoad:
    GoToIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, SurvivalArea_RemoveWarpBattleground
    End

SurvivalArea_RemoveWarpBattleground:
    SetWarpEventPos 0, 652, 336
    End

SurvivalArea_Youngster:
    NPCMessage SurvivalArea_Text_BagFullOfItems
    End

SurvivalArea_BattleGirl:
    NPCMessage SurvivalArea_Text_ComeHereToTrain
    End

SurvivalArea_RuinManiac:
    NPCMessage SurvivalArea_Text_ScoreCommemorativePrints
    End

SurvivalArea_Cameraman:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_BATTLED_STARK_MOUNTAIN_ROOM_3_HEATRAN, SurvivalArea_AllSetToProduce
    Message SurvivalArea_Text_IFilmedRedGyarados
    WaitButton
    CloseMessage
    ReleaseAll
    End

SurvivalArea_AllSetToProduce:
    Message SurvivalArea_Text_AllSetToProduce
    WaitButton
    CloseMessage
    ReleaseAll
    End

SurvivalArea_MapSign:
    ShowMapSign SurvivalArea_Text_MapSign
    End

SurvivalArea_Buck:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    Message SurvivalArea_Text_ThisIsMyPlace
    CloseMessage
    ApplyMovement LOCALID_BUCK, SurvivalArea_Movement_BuckWalkOnSpotNorth
    WaitMovement
    LoadDoorAnimation 20, 10, 12, 18, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement LOCALID_BUCK, SurvivalArea_Movement_BuckEnterBattleground
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    RemoveObject LOCALID_BUCK
    ReleaseAll
    End

    .balign 4, 0
SurvivalArea_Movement_BuckWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SurvivalArea_Movement_BuckEnterBattleground:
    WalkNormalNorth
    SetInvisible
    EndMovement

SurvivalArea_Door:
    EventMessage SurvivalArea_Text_DoorMembersOnly
    End

SurvivalArea_Rival:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetDayOfWeek VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_SUNDAY, SurvivalArea_RivalBattle
    GoToIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_SATURDAY, SurvivalArea_RivalBattle
    BufferRivalName 0
    BufferPlayerName 1
    SetVar VAR_0x8008, VAR_RANDOM_SURVIVAL_AREA_RIVAL_MESSAGE
    GoToIfEq VAR_0x8008, 0, SurvivalArea_PilingUpWins
    GoToIfEq VAR_0x8008, 1, SurvivalArea_DidYouBattleEveryone
    GoTo SurvivalArea_BestTrainersLovePokemon
    End

SurvivalArea_PilingUpWins:
    Message SurvivalArea_Text_PilingUpWins
    GoTo SurvivalArea_RivalEnd
    End

SurvivalArea_DidYouBattleEveryone:
    Message SurvivalArea_Text_DidYouBattleEveryone
    GoTo SurvivalArea_RivalEnd
    End

SurvivalArea_BestTrainersLovePokemon:
    Message SurvivalArea_Text_BestTrainersLovePokemon
    GoTo SurvivalArea_RivalEnd
    End

SurvivalArea_RivalEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

SurvivalArea_RivalBattle:
    GoToIfSet FLAG_DEFEATED_SURVIVAL_AREA_RIVAL, SurvivalArea_PostRivalBattle
    BufferRivalName 0
    BufferPlayerName 1
    Message SurvivalArea_Text_IllProveImTougher
    CloseMessage
    GetPlayerStarterSpecies VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, SurvivalArea_SetRivalTeamTurtwig
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, SurvivalArea_SetRivalTeamChimchar
    GoTo SurvivalArea_SetRivalTeamPiplup
    End

SurvivalArea_SetRivalTeamPiplup:
    GetLeagueVictories VAR_RESULT
    GoToIfLt VAR_RESULT, 20, SurvivalArea_SetRivalTeamPiplup1
    GoToIfGe VAR_RESULT, 20, SurvivalArea_SetRivalTeamPiplup2
    End

SurvivalArea_SetRivalTeamPiplup1:
    StartTrainerBattle TRAINER_RIVAL_SURVIVAL_AREA_1_PIPLUP
    GoTo SurvivalArea_CheckWonRivalBattle
    End

SurvivalArea_SetRivalTeamPiplup2:
    StartTrainerBattle TRAINER_RIVAL_SURVIVAL_AREA_2_PIPLUP
    GoTo SurvivalArea_CheckWonRivalBattle
    End

SurvivalArea_SetRivalTeamTurtwig:
    GetLeagueVictories VAR_RESULT
    GoToIfLt VAR_RESULT, 20, SurvivalArea_SetRivalTeamTurtwig1
    GoToIfGe VAR_RESULT, 20, SurvivalArea_SetRivalTeamTurtwig2
    End

SurvivalArea_SetRivalTeamTurtwig1:
    StartTrainerBattle TRAINER_RIVAL_SURVIVAL_AREA_1_TURTWIG
    GoTo SurvivalArea_CheckWonRivalBattle
    End

SurvivalArea_SetRivalTeamTurtwig2:
    StartTrainerBattle TRAINER_RIVAL_SURVIVAL_AREA_2_TURTWIG
    GoTo SurvivalArea_CheckWonRivalBattle
    End

SurvivalArea_SetRivalTeamChimchar:
    GetLeagueVictories VAR_RESULT
    GoToIfLt VAR_RESULT, 20, SurvivalArea_SetRivalTeamChimchar1
    GoToIfGe VAR_RESULT, 20, SurvivalArea_SetRivalTeamChimchar2
    End

SurvivalArea_SetRivalTeamChimchar1:
    StartTrainerBattle TRAINER_RIVAL_SURVIVAL_AREA_1_CHIMCHAR
    GoTo SurvivalArea_CheckWonRivalBattle
    End

SurvivalArea_SetRivalTeamChimchar2:
    StartTrainerBattle TRAINER_RIVAL_SURVIVAL_AREA_2_CHIMCHAR
    GoTo SurvivalArea_CheckWonRivalBattle
    End

SurvivalArea_CheckWonRivalBattle:
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SurvivalArea_LostRivalBattle
    SetFlag FLAG_DEFEATED_SURVIVAL_AREA_RIVAL
    GoTo SurvivalArea_PostRivalBattle
    End

SurvivalArea_PostRivalBattle:
    BufferRivalName 0
    BufferPlayerName 1
    Message SurvivalArea_Text_KeepGettingTougher
    WaitButton
    CloseMessage
    ReleaseAll
    End

SurvivalArea_LostRivalBattle:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
