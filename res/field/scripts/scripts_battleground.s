#include "macros/scrcmd.inc"
#include "res/text/bank/battleground.h"
#include "res/field/events/events_battleground.h"

#define LOCAL_FLAG_DECLINED_BATTLE_TRAINER_1 FLAG_UNK_0x0001
#define LOCAL_FLAG_DECLINED_BATTLE_TRAINER_2 FLAG_UNK_0x0002
#define LOCAL_FLAG_DECLINED_BATTLE_TRAINER_3 FLAG_UNK_0x0003
#define LOCAL_FLAG_DECLINED_BATTLE_TRAINER_4 FLAG_UNK_0x0004


    ScriptEntry Battleground_ExpertM
    ScriptEntry Battleground_Buck
    ScriptEntry Battleground_OnFrameWelcome
    ScriptEntry Battleground_OnTransition
    ScriptEntry Battleground_Trainer1
    ScriptEntry Battleground_Trainer2
    ScriptEntry Battleground_Trainer3
    ScriptEntry Battleground_Trainer4
    ScriptEntryEnd

Battleground_OnTransition:
    SetFlag FLAG_VISITED_BATTLEGROUND
    GoToIfUnset FLAG_SET_BATTLEGROUND_TRAINERS, Battleground_SetTrainers
    Call Battleground_SetTrainersGraphics
    End

Battleground_SetTrainers:
    SetFlag FLAG_SET_BATTLEGROUND_TRAINERS
    GetRandomBattlegroundTrainers VAR_BATTLEGROUND_TRAINER_1, VAR_BATTLEGROUND_TRAINER_2, VAR_BATTLEGROUND_TRAINER_3, VAR_BATTLEGROUND_TRAINER_4
    Call Battleground_SetTrainersGraphics
    ClearFlag FLAG_HIDE_BATTLEGROUND_TRAINER_1
    ClearFlag FLAG_HIDE_BATTLEGROUND_TRAINER_2
    ClearFlag FLAG_HIDE_BATTLEGROUND_TRAINER_3
    ClearFlag FLAG_HIDE_BATTLEGROUND_TRAINER_4
    CallIfEq VAR_OBJ_GFX_ID_2, BATTLEGROUND_TRAINER_NONE, Battleground_HideTrainer2
    CallIfEq VAR_OBJ_GFX_ID_3, BATTLEGROUND_TRAINER_NONE, Battleground_HideTrainer3
    CallIfEq VAR_OBJ_GFX_ID_4, BATTLEGROUND_TRAINER_NONE, Battleground_HideTrainer4
    CallIfEq VAR_OBJ_GFX_ID_4, OBJ_EVENT_GFX_CHERYL, Battleground_TryHideCheryl
    CallIfEq VAR_OBJ_GFX_ID_4, OBJ_EVENT_GFX_RILEY, Battleground_TryHideRiley
    CallIfEq VAR_OBJ_GFX_ID_4, OBJ_EVENT_GFX_MARLEY, Battleground_TryHideMarley
    CallIfEq VAR_OBJ_GFX_ID_4, OBJ_EVENT_GFX_BUCK, Battleground_TryHideBuck
    CallIfEq VAR_OBJ_GFX_ID_4, OBJ_EVENT_GFX_MIRA, Battleground_TryHideMira
    ClearFlag LOCAL_FLAG_DECLINED_BATTLE_TRAINER_1
    ClearFlag LOCAL_FLAG_DECLINED_BATTLE_TRAINER_2
    ClearFlag LOCAL_FLAG_DECLINED_BATTLE_TRAINER_3
    ClearFlag LOCAL_FLAG_DECLINED_BATTLE_TRAINER_4
    ClearFlag FLAG_DEFEATED_BATTLEGROUND_TRAINER_1
    ClearFlag FLAG_DEFEATED_BATTLEGROUND_TRAINER_2
    ClearFlag FLAG_DEFEATED_BATTLEGROUND_TRAINER_3
    ClearFlag FLAG_DEFEATED_BATTLEGROUND_TRAINER_4
    GetRandom VAR_RANDOM_BATTLEGROUND_MESSAGE, 2
    End

Battleground_HideTrainer2:
    SetFlag FLAG_HIDE_BATTLEGROUND_TRAINER_2
    Return

Battleground_HideTrainer3:
    SetFlag FLAG_HIDE_BATTLEGROUND_TRAINER_3
    Return

Battleground_HideTrainer4:
    SetFlag FLAG_HIDE_BATTLEGROUND_TRAINER_4
    Return

Battleground_TryHideCheryl:
    CallIfUnset FLAG_TRAVELED_WITH_CHERYL, Battleground_HideTrainer4
    Return

Battleground_TryHideRiley:
    CallIfUnset FLAG_RECEIVED_RIOLU_EGG_FROM_RILEY, Battleground_HideTrainer4
    Return

Battleground_TryHideMarley:
    CallIfUnset FLAG_TRAVELED_WITH_MARLEY, Battleground_HideTrainer4
    Return

Battleground_TryHideBuck:
    CallIfUnset FLAG_BUCK_LEFT_BATTLEGROUND, Battleground_HideTrainer4
    Return

Battleground_TryHideMira:
    CallIfUnset FLAG_TRAVELED_WITH_MIRA, Battleground_HideTrainer4
    Return

Battleground_SetTrainersGraphics:
    SetVar VAR_OBJ_GFX_ID_1, VAR_BATTLEGROUND_TRAINER_1
    SetVar VAR_OBJ_GFX_ID_2, VAR_BATTLEGROUND_TRAINER_2
    SetVar VAR_OBJ_GFX_ID_3, VAR_BATTLEGROUND_TRAINER_3
    SetVar VAR_OBJ_GFX_ID_4, VAR_BATTLEGROUND_TRAINER_4
    Return

Battleground_ExpertM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00D7, Battleground_MakeYourselfAtHome
    Message Battleground_Text_TalkAboutStarkMountain
    WaitButton
    CloseMessage
    ReleaseAll
    End

Battleground_MakeYourselfAtHome:
    Message Battleground_Text_MakeYourselfAtHome
    WaitButton
    CloseMessage
    ReleaseAll
    End

Battleground_Buck:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetFlag FLAG_CAUGHT_MESPRIT
    Message Battleground_Text_OpenToToughestTrainers
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 7, Battleground_BuckLeaveZ7
    CallIfEq VAR_0x8005, 8, Battleground_BuckLeaveZ8
    CallIfEq VAR_0x8005, 9, Battleground_BuckLeaveZ9
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_BUCK
    SetFlag FLAG_BUCK_LEFT_BATTLEGROUND
    SetFlag FLAG_HIDE_BATTLEGROUND_BUCK
    ReleaseAll
    End

Battleground_BuckLeaveZ7:
    ApplyMovement LOCALID_PLAYER, Battleground_Movement_PlayerWatchBuckLeaveZ7
    ApplyMovement LOCALID_BUCK, Battleground_Movement_BuckLeaveZ7
    WaitMovement
    Return

Battleground_BuckLeaveZ8:
    ApplyMovement LOCALID_PLAYER, Battleground_Movement_PlayerWatchBuckLeaveZ8
    ApplyMovement LOCALID_BUCK, Battleground_Movement_BuckLeaveZ8
    WaitMovement
    Return

Battleground_BuckLeaveZ9:
    ApplyMovement LOCALID_PLAYER, Battleground_Movement_PlayerWatchBuckLeaveZ9
    ApplyMovement LOCALID_BUCK, Battleground_Movement_BuckLeaveZ9
    WaitMovement
    Return

    .balign 4, 0
Battleground_Movement_PlayerWatchBuckLeaveZ7:
    Delay8 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Battleground_Movement_PlayerWatchBuckLeaveZ8:
    Delay8
    WalkOnSpotNormalSouth
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Battleground_Movement_PlayerWatchBuckLeaveZ9:
    Delay8 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Battleground_Movement_BuckLeaveZ7:
    WalkNormalWest
    WalkNormalSouth
    WalkNormalWest 3
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
Battleground_Movement_BuckLeaveZ8:
    WalkNormalSouth
    WalkNormalWest 4
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
Battleground_Movement_BuckLeaveZ9:
    WalkNormalWest
    WalkNormalSouth
    WalkNormalWest 3
    WalkNormalSouth 2
    EndMovement

Battleground_OnFrameWelcome:
    LockAll
    SetVar VAR_BATTLEGROUND_STATE, 1
    ApplyMovement LOCALID_EXPERT_M, Battleground_Movement_ExpertFExclamationMark
    WaitMovement
    ApplyMovement LOCALID_PLAYER, Battleground_Movement_PlayerWalkToExpertF
    WaitMovement
    Message Battleground_Text_WelcomeToBattleground
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
Battleground_Movement_ExpertFExclamationMark:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
Battleground_Movement_PlayerWalkToExpertF:
    WalkNormalNorth 2
    WalkNormalEast 4
    EndMovement

Battleground_Trainer1:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    SetVar VAR_MAP_LOCAL_1, VAR_OBJ_GFX_ID_1
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_TRAINER_1, Battleground_PostBattle
    Call Battleground_CheckDefeatedTrainer
    GoToIfEq VAR_RESULT, TRUE, Battleground_PostBattle
    CallIfUnset LOCAL_FLAG_DECLINED_BATTLE_TRAINER_1, Battleground_CallAskBattle
    CallIfSet LOCAL_FLAG_DECLINED_BATTLE_TRAINER_1, Battleground_CallAskBattleAgain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Battleground_DeclinedBattleTrainer1
    Call Battleground_DoBattle
    GoToIfEq VAR_0x8000, FALSE, Battleground_LostBattle
    SetFlag FLAG_DEFEATED_BATTLEGROUND_TRAINER_1
    Call Battleground_SetFlagDefeatedTrainer
    GoTo Battleground_PostBattle
    End

Battleground_DoBattle:
    Call Battleground_MessageIntro
    CloseMessage
    IncrementGameRecord RECORD_TIMES_BATTLED_AT_BATTLEGROUND
    Call Battleground_SetTrainer
    StartTrainerBattle VAR_MAP_LOCAL_5
    CheckWonBattle VAR_0x8000
    Return

Battleground_PostBattle:
    Call Battleground_CheckBothRoarkAndByron
    GoToIfEq VAR_0x8001, 2, Battleground_MessageBothRoarkAndByron
    Call Battleground_MessageDefeat
    GoTo Battleground_TrainerEnd
    End

Battleground_CallAskBattle:
    Call Battleground_MessageAskBattle
    Return

Battleground_CallAskBattleAgain:
    Call Battleground_MessageAskBattleAgain
    Return

Battleground_TrainerEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

Battleground_DeclinedBattleTrainer1:
    SetFlag LOCAL_FLAG_DECLINED_BATTLE_TRAINER_1
    Call Battleground_MessageDeclinedBattle
    GoTo Battleground_TrainerEnd
    End

Battleground_LostBattle:
    BlackOutFromBattle
    ReleaseAll
    End

Battleground_MessageBothRoarkAndByron:
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_RoarkDefeatByronPresent
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_ByronDefeatRoarkPresent
    GoTo Battleground_TrainerEnd
    End

Battleground_RoarkDefeatByronPresent:
    Message Battleground_Text_RoarkDefeatByronPresent
    Return

Battleground_ByronDefeatRoarkPresent:
    Message Battleground_Text_ByronDefeatRoarkPresent
    Return

Battleground_Trainer2:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    SetVar VAR_MAP_LOCAL_1, VAR_OBJ_GFX_ID_2
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_TRAINER_2, Battleground_PostBattle
    Call Battleground_CheckDefeatedTrainer
    GoToIfEq VAR_RESULT, TRUE, Battleground_PostBattle
    CallIfUnset LOCAL_FLAG_DECLINED_BATTLE_TRAINER_2, Battleground_CallAskBattle
    CallIfSet LOCAL_FLAG_DECLINED_BATTLE_TRAINER_2, Battleground_CallAskBattleAgain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Battleground_DeclinedBattleTrainer2
    Call Battleground_DoBattle
    GoToIfEq VAR_0x8000, FALSE, Battleground_LostBattle
    SetFlag FLAG_DEFEATED_BATTLEGROUND_TRAINER_2
    Call Battleground_SetFlagDefeatedTrainer
    GoTo Battleground_PostBattle
    End

Battleground_DeclinedBattleTrainer2:
    SetFlag LOCAL_FLAG_DECLINED_BATTLE_TRAINER_2
    Call Battleground_MessageDeclinedBattle
    GoTo Battleground_TrainerEnd
    End

Battleground_Trainer3:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    SetVar VAR_MAP_LOCAL_1, VAR_OBJ_GFX_ID_3
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_TRAINER_3, Battleground_PostBattle
    Call Battleground_CheckDefeatedTrainer
    GoToIfEq VAR_RESULT, TRUE, Battleground_PostBattle
    CallIfUnset LOCAL_FLAG_DECLINED_BATTLE_TRAINER_3, Battleground_CallAskBattle
    CallIfSet LOCAL_FLAG_DECLINED_BATTLE_TRAINER_3, Battleground_CallAskBattleAgain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Battleground_DeclinedBattleTrainer3
    Call Battleground_DoBattle
    GoToIfEq VAR_0x8000, FALSE, Battleground_LostBattle
    SetFlag FLAG_DEFEATED_BATTLEGROUND_TRAINER_3
    Call Battleground_SetFlagDefeatedTrainer
    GoTo Battleground_PostBattle
    End

Battleground_DeclinedBattleTrainer3:
    SetFlag LOCAL_FLAG_DECLINED_BATTLE_TRAINER_3
    Call Battleground_MessageDeclinedBattle
    GoTo Battleground_TrainerEnd
    End

Battleground_Trainer4:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    SetVar VAR_MAP_LOCAL_1, VAR_OBJ_GFX_ID_4
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_TRAINER_4, Battleground_PostBattle
    Call Battleground_CheckDefeatedTrainer
    GoToIfEq VAR_RESULT, TRUE, Battleground_PostBattle
    CallIfUnset LOCAL_FLAG_DECLINED_BATTLE_TRAINER_4, Battleground_CallAskBattle
    CallIfSet LOCAL_FLAG_DECLINED_BATTLE_TRAINER_4, Battleground_CallAskBattleAgain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Battleground_DeclinedBattleTrainer4
    Call Battleground_DoBattle
    GoToIfEq VAR_0x8000, FALSE, Battleground_LostBattle
    SetFlag FLAG_DEFEATED_BATTLEGROUND_TRAINER_4
    Call Battleground_SetFlagDefeatedTrainer
    GoTo Battleground_PostBattle
    End

Battleground_DeclinedBattleTrainer4:
    SetFlag LOCAL_FLAG_DECLINED_BATTLE_TRAINER_4
    Call Battleground_MessageDeclinedBattle
    GoTo Battleground_TrainerEnd
    End

Battleground_CheckBothRoarkAndByron:
    SetVar VAR_0x8001, 0
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_IncreaseVarIfRoarkOrByron
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_IncreaseVarIfRoarkOrByron
    Return

Battleground_IncreaseVarIfRoarkOrByron:
    CallIfEq VAR_OBJ_GFX_ID_1, OBJ_EVENT_GFX_ROARK, Battleground_IncreaseVar
    CallIfEq VAR_OBJ_GFX_ID_2, OBJ_EVENT_GFX_ROARK, Battleground_IncreaseVar
    CallIfEq VAR_OBJ_GFX_ID_3, OBJ_EVENT_GFX_ROARK, Battleground_IncreaseVar
    CallIfEq VAR_OBJ_GFX_ID_4, OBJ_EVENT_GFX_ROARK, Battleground_IncreaseVar
    CallIfEq VAR_OBJ_GFX_ID_1, OBJ_EVENT_GFX_BYRON, Battleground_IncreaseVar
    CallIfEq VAR_OBJ_GFX_ID_2, OBJ_EVENT_GFX_BYRON, Battleground_IncreaseVar
    CallIfEq VAR_OBJ_GFX_ID_3, OBJ_EVENT_GFX_BYRON, Battleground_IncreaseVar
    CallIfEq VAR_OBJ_GFX_ID_4, OBJ_EVENT_GFX_BYRON, Battleground_IncreaseVar
    Return

Battleground_IncreaseVar:
    AddVar VAR_0x8001, 1
    Return

Battleground_SetTrainer:
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_SetTrainerRoark
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_SetTrainerGardenia
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_SetTrainerWake
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_SetTrainerMaylene
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_SetTrainerFantina
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_SetTrainerCandice
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_SetTrainerByron
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_SetTrainerVolkner
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_SetTrainerCheryl
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_SetTrainerRiley
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_SetTrainerMarley
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_SetTrainerBuck
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_SetTrainerMira
    Return

Battleground_SetTrainerRoark:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_ROARK_REMATCH
    Return

Battleground_SetTrainerGardenia:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_GARDENIA_REMATCH
    Return

Battleground_SetTrainerWake:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_WAKE_REMATCH
    Return

Battleground_SetTrainerMaylene:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_MAYLENE_REMATCH
    Return

Battleground_SetTrainerFantina:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_FANTINA_REMATCH
    Return

Battleground_SetTrainerCandice:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_CANDICE_REMATCH
    Return

Battleground_SetTrainerByron:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_BYRON_REMATCH
    Return

Battleground_SetTrainerVolkner:
    SetVar VAR_MAP_LOCAL_5, TRAINER_LEADER_VOLKNER_REMATCH
    Return

Battleground_SetTrainerCheryl:
    SetVar VAR_MAP_LOCAL_5, TRAINER_CHERYL_BATTLEGROUND
    Return

Battleground_SetTrainerRiley:
    SetVar VAR_MAP_LOCAL_5, TRAINER_RILEY_BATTLEGROUND
    Return

Battleground_SetTrainerMarley:
    SetVar VAR_MAP_LOCAL_5, TRAINER_MARLEY_BATTLEGROUND
    Return

Battleground_SetTrainerBuck:
    SetVar VAR_MAP_LOCAL_5, TRAINER_BUCK_BATTLEGROUND
    Return

Battleground_SetTrainerMira:
    SetVar VAR_MAP_LOCAL_5, TRAINER_MIRA_BATTLEGROUND
    Return

Battleground_MessageAskBattle:
    GoToIfEq VAR_RANDOM_BATTLEGROUND_MESSAGE, 1, Battleground_MessageAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_RoarkAskBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_GardeniaAskBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_WakeAskBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_MayleneAskBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_FantinaAskBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_CandiceAskBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_ByronAskBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_VolknerAskBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_CherylAskBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_RileyAskBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_MarleyAskBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_BuckAskBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_MiraAskBattle
    Return

Battleground_RoarkAskBattle:
    Message Battleground_Text_RoarkAskBattle
    Return

Battleground_GardeniaAskBattle:
    Message Battleground_Text_GardeniaAskBattle
    Return

Battleground_WakeAskBattle:
    Message Battleground_Text_WakeAskBattle
    Return

Battleground_MayleneAskBattle:
    Message Battleground_Text_MayleneAskBattle
    Return

Battleground_FantinaAskBattle:
    Message Battleground_Text_FantinaAskBattle
    Return

Battleground_CandiceAskBattle:
    Message Battleground_Text_CandiceAskBattle
    Return

Battleground_ByronAskBattle:
    Message Battleground_Text_ByronAskBattle
    Return

Battleground_VolknerAskBattle:
    Message Battleground_Text_VolknerAskBattle
    Return

Battleground_CherylAskBattle:
    Message Battleground_Text_CherylAskBattle
    Return

Battleground_RileyAskBattle:
    Message Battleground_Text_RileyAskBattle
    Return

Battleground_MarleyAskBattle:
    Message Battleground_Text_MarleyAskBattle
    Return

Battleground_BuckAskBattle:
    Message Battleground_Text_BuckAskBattle
    Return

Battleground_MiraAskBattle:
    Message Battleground_Text_MiraAskBattle
    Return

Battleground_MessageIntro:
    GoToIfEq VAR_RANDOM_BATTLEGROUND_MESSAGE, 1, Battleground_MessageIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_RoarkIntro
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_GardeniaIntro
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_WakeIntro
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_MayleneIntro
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_FantinaIntro
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_CandiceIntro
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_ByronIntro
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_VolknerIntro
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_CherylIntro
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_RileyIntro
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_MarleyIntro
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_BuckIntro
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_MiraIntro
    Return

Battleground_RoarkIntro:
    Message Battleground_Text_RoarkIntro
    Return

Battleground_GardeniaIntro:
    Message Battleground_Text_GardeniaIntro
    Return

Battleground_WakeIntro:
    Message Battleground_Text_WakeIntro
    Return

Battleground_MayleneIntro:
    Message Battleground_Text_MayleneIntro
    Return

Battleground_FantinaIntro:
    Message Battleground_Text_FantinaIntro
    Return

Battleground_CandiceIntro:
    Message Battleground_Text_CandiceIntro
    Return

Battleground_ByronIntro:
    Message Battleground_Text_ByronIntro
    Return

Battleground_VolknerIntro:
    Message Battleground_Text_VolknerIntro
    Return

Battleground_CherylIntro:
    Message Battleground_Text_CherylIntro
    Return

Battleground_RileyIntro:
    Message Battleground_Text_RileyIntro
    Return

Battleground_MarleyIntro:
    Message Battleground_Text_MarleyIntro
    Return

Battleground_BuckIntro:
    Message Battleground_Text_BuckIntro
    Return

Battleground_MiraIntro:
    Message Battleground_Text_MiraIntro
    Return

Battleground_MessageDeclinedBattle:
    GoToIfEq VAR_RANDOM_BATTLEGROUND_MESSAGE, 1, Battleground_MessageDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_RoarkDeclinedBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_GardeniaDeclinedBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_WakeDeclinedBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_MayleneDeclinedBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_FantinaDeclinedBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_CandiceDeclinedBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_ByronDeclinedBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_VolknerDeclinedBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_CherylDeclinedBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_RileyDeclinedBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_MarleyDeclinedBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_BuckDeclinedBattle
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_MiraDeclinedBattle
    Return

Battleground_RoarkDeclinedBattle:
    Message Battleground_Text_RoarkDeclinedBattle
    Return

Battleground_GardeniaDeclinedBattle:
    Message Battleground_Text_GardeniaDeclinedBattle
    Return

Battleground_WakeDeclinedBattle:
    Message Battleground_Text_WakeDeclinedBattle
    Return

Battleground_MayleneDeclinedBattle:
    Message Battleground_Text_MayleneDeclinedBattle
    Return

Battleground_FantinaDeclinedBattle:
    Message Battleground_Text_FantinaDeclinedBattle
    Return

Battleground_CandiceDeclinedBattle:
    Message Battleground_Text_CandiceDeclinedBattle
    Return

Battleground_ByronDeclinedBattle:
    Message Battleground_Text_ByronDeclinedBattle
    Return

Battleground_VolknerDeclinedBattle:
    Message Battleground_Text_VolknerDeclinedBattle
    Return

Battleground_CherylDeclinedBattle:
    Message Battleground_Text_CherylDeclinedBattle
    Return

Battleground_RileyDeclinedBattle:
    Message Battleground_Text_RileyDeclinedBattle
    Return

Battleground_MarleyDeclinedBattle:
    Message Battleground_Text_MarleyDeclinedBattle
    Return

Battleground_BuckDeclinedBattle:
    Message Battleground_Text_BuckDeclinedBattle
    Return

Battleground_MiraDeclinedBattle:
    Message Battleground_Text_MiraDeclinedBattle
    Return

Battleground_MessageAskBattleAgain:
    GoToIfEq VAR_RANDOM_BATTLEGROUND_MESSAGE, 1, Battleground_MessageAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_RoarkAskBattleAgain
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_GardeniaAskBattleAgain
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_WakeAskBattleAgain
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_MayleneAskBattleAgain
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_FantinaAskBattleAgain
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_CandiceAskBattleAgain
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_ByronAskBattleAgain
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_VolknerAskBattleAgain
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_CherylAskBattleAgain
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_RileyAskBattleAgain
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_MarleyAskBattleAgain
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_BuckAskBattleAgain
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_MiraAskBattleAgain
    Return

Battleground_RoarkAskBattleAgain:
    Message Battleground_Text_RoarkAskBattleAgain
    Return

Battleground_GardeniaAskBattleAgain:
    Message Battleground_Text_GardeniaAskBattleAgain
    Return

Battleground_WakeAskBattleAgain:
    Message Battleground_Text_WakeAskBattleAgain
    Return

Battleground_MayleneAskBattleAgain:
    Message Battleground_Text_MayleneAskBattleAgain
    Return

Battleground_FantinaAskBattleAgain:
    Message Battleground_Text_FantinaAskBattleAgain
    Return

Battleground_CandiceAskBattleAgain:
    Message Battleground_Text_CandiceAskBattleAgain
    Return

Battleground_ByronAskBattleAgain:
    Message Battleground_Text_ByronAskBattleAgain
    Return

Battleground_VolknerAskBattleAgain:
    Message Battleground_Text_VolknerAskBattleAgain
    Return

Battleground_CherylAskBattleAgain:
    Message Battleground_Text_CherylAskBattleAgain
    Return

Battleground_RileyAskBattleAgain:
    Message Battleground_Text_RileyAskBattleAgain
    Return

Battleground_MarleyAskBattleAgain:
    Message Battleground_Text_MarleyAskBattleAgain
    Return

Battleground_BuckAskBattleAgain:
    Message Battleground_Text_BuckAskBattleAgain
    Return

Battleground_MiraAskBattleAgain:
    Message Battleground_Text_MiraAskBattleAgain
    Return

Battleground_MessageDefeat:
    GoToIfEq VAR_RANDOM_BATTLEGROUND_MESSAGE, 1, Battleground_MessageDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_RoarkDefeat
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_GardeniaDefeat
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_WakeDefeat
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_MayleneDefeat
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_FantinaDefeat
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_CandiceDefeat
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_ByronDefeat
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_VolknerDefeat
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_CherylDefeat
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_RileyDefeat
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_MarleyDefeat
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_BuckDefeat
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_MiraDefeat
    Return

Battleground_RoarkDefeat:
    Message Battleground_Text_RoarkDefeat
    Return

Battleground_GardeniaDefeat:
    Message Battleground_Text_GardeniaDefeat
    Return

Battleground_WakeDefeat:
    Message Battleground_Text_WakeDefeat
    Return

Battleground_MayleneDefeat:
    Message Battleground_Text_MayleneDefeat
    Return

Battleground_FantinaDefeat:
    Message Battleground_Text_FantinaDefeat
    Return

Battleground_CandiceDefeat:
    Message Battleground_Text_CandiceDefeat
    Return

Battleground_ByronDefeat:
    Message Battleground_Text_ByronDefeat
    Return

Battleground_VolknerDefeat:
    Message Battleground_Text_VolknerDefeat
    Return

Battleground_CherylDefeat:
    Message Battleground_Text_CherylDefeat
    Return

Battleground_RileyDefeat:
    Message Battleground_Text_RileyDefeat
    Return

Battleground_MarleyDefeat:
    Message Battleground_Text_MarleyDefeat
    Return

Battleground_BuckDefeat:
    Message Battleground_Text_BuckDefeat
    Return

Battleground_MiraDefeat:
    Message Battleground_Text_MiraDefeat
    Return

Battleground_MessageAskBattle2:
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_RoarkAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_GardeniaAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_WakeAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_MayleneAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_FantinaAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_CandiceAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_ByronAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_VolknerAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_CherylAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_RileyAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_MarleyAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_BuckAskBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_MiraAskBattle2
    Return

Battleground_RoarkAskBattle2:
    Message Battleground_Text_RoarkAskBattle2
    Return

Battleground_GardeniaAskBattle2:
    Message Battleground_Text_GardeniaAskBattle2
    Return

Battleground_WakeAskBattle2:
    Message Battleground_Text_WakeAskBattle2
    Return

Battleground_MayleneAskBattle2:
    Message Battleground_Text_MayleneAskBattle2
    Return

Battleground_FantinaAskBattle2:
    Message Battleground_Text_FantinaAskBattle2
    Return

Battleground_CandiceAskBattle2:
    Message Battleground_Text_CandiceAskBattle2
    Return

Battleground_ByronAskBattle2:
    Message Battleground_Text_ByronAskBattle2
    Return

Battleground_VolknerAskBattle2:
    Message Battleground_Text_VolknerAskBattle2
    Return

Battleground_CherylAskBattle2:
    Message Battleground_Text_CherylAskBattle2
    Return

Battleground_RileyAskBattle2:
    Message Battleground_Text_RileyAskBattle2
    Return

Battleground_MarleyAskBattle2:
    Message Battleground_Text_MarleyAskBattle2
    Return

Battleground_BuckAskBattle2:
    Message Battleground_Text_BuckAskBattle2
    Return

Battleground_MiraAskBattle2:
    Message Battleground_Text_MiraAskBattle2
    Return

Battleground_MessageIntro2:
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_RoarkIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_GardeniaIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_WakeIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_MayleneIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_FantinaIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_CandiceIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_ByronIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_VolknerIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_CherylIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_RileyIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_MarleyIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_BuckIntro2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_MiraIntro2
    Return

Battleground_RoarkIntro2:
    Message Battleground_Text_RoarkIntro2
    Return

Battleground_GardeniaIntro2:
    Message Battleground_Text_GardeniaIntro2
    Return

Battleground_WakeIntro2:
    Message Battleground_Text_WakeIntro2
    Return

Battleground_MayleneIntro2:
    Message Battleground_Text_MayleneIntro2
    Return

Battleground_FantinaIntro2:
    Message Battleground_Text_FantinaIntro2
    Return

Battleground_CandiceIntro2:
    Message Battleground_Text_CandiceIntro2
    Return

Battleground_ByronIntro2:
    Message Battleground_Text_ByronIntro2
    Return

Battleground_VolknerIntro2:
    Message Battleground_Text_VolknerIntro2
    Return

Battleground_CherylIntro2:
    Message Battleground_Text_CherylIntro2
    Return

Battleground_RileyIntro2:
    Message Battleground_Text_RileyIntro2
    Return

Battleground_MarleyIntro2:
    Message Battleground_Text_MarleyIntro2
    Return

Battleground_BuckIntro2:
    Message Battleground_Text_BuckIntro2
    Return

Battleground_MiraIntro2:
    Message Battleground_Text_MiraIntro2
    Return

Battleground_MessageDeclinedBattle2:
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_RoarkDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_GardeniaDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_WakeDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_MayleneDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_FantinaDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_CandiceDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_ByronDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_VolknerDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_CherylDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_RileyDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_MarleyDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_BuckDeclinedBattle2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_MiraDeclinedBattle2
    Return

Battleground_RoarkDeclinedBattle2:
    Message Battleground_Text_RoarkDeclinedBattle2
    Return

Battleground_GardeniaDeclinedBattle2:
    Message Battleground_Text_GardeniaDeclinedBattle2
    Return

Battleground_WakeDeclinedBattle2:
    Message Battleground_Text_WakeDeclinedBattle2
    Return

Battleground_MayleneDeclinedBattle2:
    Message Battleground_Text_MayleneDeclinedBattle2
    Return

Battleground_FantinaDeclinedBattle2:
    Message Battleground_Text_FantinaDeclinedBattle2
    Return

Battleground_CandiceDeclinedBattle2:
    Message Battleground_Text_CandiceDeclinedBattle2
    Return

Battleground_ByronDeclinedBattle2:
    Message Battleground_Text_ByronDeclinedBattle2
    Return

Battleground_VolknerDeclinedBattle2:
    Message Battleground_Text_VolknerDeclinedBattle2
    Return

Battleground_CherylDeclinedBattle2:
    Message Battleground_Text_CherylDeclinedBattle2
    Return

Battleground_RileyDeclinedBattle2:
    Message Battleground_Text_RileyDeclinedBattle2
    Return

Battleground_MarleyDeclinedBattle2:
    Message Battleground_Text_MarleyDeclinedBattle2
    Return

Battleground_BuckDeclinedBattle2:
    Message Battleground_Text_BuckDeclinedBattle2
    Return

Battleground_MiraDeclinedBattle2:
    Message Battleground_Text_MiraDeclinedBattle2
    Return

Battleground_MessageAskBattleAgain2:
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_RoarkAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_GardeniaAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_WakeAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_MayleneAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_FantinaAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_CandiceAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_ByronAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_VolknerAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_CherylAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_RileyAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_MarleyAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_BuckAskBattleAgain2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_MiraAskBattleAgain2
    Return

Battleground_RoarkAskBattleAgain2:
    Message Battleground_Text_RoarkAskBattleAgain2
    Return

Battleground_GardeniaAskBattleAgain2:
    Message Battleground_Text_GardeniaAskBattleAgain2
    Return

Battleground_WakeAskBattleAgain2:
    Message Battleground_Text_WakeAskBattleAgain2
    Return

Battleground_MayleneAskBattleAgain2:
    Message Battleground_Text_MayleneAskBattleAgain2
    Return

Battleground_FantinaAskBattleAgain2:
    Message Battleground_Text_FantinaAskBattleAgain2
    Return

Battleground_CandiceAskBattleAgain2:
    Message Battleground_Text_CandiceAskBattleAgain2
    Return

Battleground_ByronAskBattleAgain2:
    Message Battleground_Text_ByronAskBattleAgain2
    Return

Battleground_VolknerAskBattleAgain2:
    Message Battleground_Text_VolknerAskBattleAgain2
    Return

Battleground_CherylAskBattleAgain2:
    Message Battleground_Text_CherylAskBattleAgain2
    Return

Battleground_RileyAskBattleAgain2:
    Message Battleground_Text_RileyAskBattleAgain2
    Return

Battleground_MarleyAskBattleAgain2:
    Message Battleground_Text_MarleyAskBattleAgain2
    Return

Battleground_BuckAskBattleAgain2:
    Message Battleground_Text_BuckAskBattleAgain2
    Return

Battleground_MiraAskBattleAgain2:
    Message Battleground_Text_MiraAskBattleAgain2
    Return

Battleground_MessageDefeat2:
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_RoarkDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_GardeniaDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_WakeDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_MayleneDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_FantinaDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_CandiceDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_ByronDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_VolknerDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_CherylDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_RileyDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_MarleyDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_BuckDefeat2
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_MiraDefeat2
    Return

Battleground_RoarkDefeat2:
    Message Battleground_Text_RoarkDefeat2
    Return

Battleground_GardeniaDefeat2:
    Message Battleground_Text_GardeniaDefeat2
    Return

Battleground_WakeDefeat2:
    Message Battleground_Text_WakeDefeat2
    Return

Battleground_MayleneDefeat2:
    Message Battleground_Text_MayleneDefeat2
    Return

Battleground_FantinaDefeat2:
    Message Battleground_Text_FantinaDefeat2
    Return

Battleground_CandiceDefeat2:
    Message Battleground_Text_CandiceDefeat2
    Return

Battleground_ByronDefeat2:
    Message Battleground_Text_ByronDefeat2
    Return

Battleground_VolknerDefeat2:
    Message Battleground_Text_VolknerDefeat2
    Return

Battleground_CherylDefeat2:
    Message Battleground_Text_CherylDefeat2
    Return

Battleground_RileyDefeat2:
    Message Battleground_Text_RileyDefeat2
    Return

Battleground_MarleyDefeat2:
    Message Battleground_Text_MarleyDefeat2
    Return

Battleground_BuckDefeat2:
    Message Battleground_Text_BuckDefeat2
    Return

Battleground_MiraDefeat2:
    Message Battleground_Text_MiraDefeat2
    Return

Battleground_SetFlagDefeatedTrainer:
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_SetFlagDefeatedRoark
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_SetFlagDefeatedGardenia
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_SetFlagDefeatedWake
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_SetFlagDefeatedMaylene
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_SetFlagDefeatedFantina
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_SetFlagDefeatedCandice
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_SetFlagDefeatedByron
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_SetFlagDefeatedVolkner
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_SetFlagDefeatedCheryl
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_SetFlagDefeatedRiley
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_SetFlagDefeatedMarley
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_SetFlagDefeatedBuck
    CallIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_SetFlagDefeatedMira
    Return

Battleground_SetFlagDefeatedRoark:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_ROARK
    Return

Battleground_SetFlagDefeatedGardenia:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_GARDENIA
    Return

Battleground_SetFlagDefeatedWake:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_CRASHER_WAKE
    Return

Battleground_SetFlagDefeatedMaylene:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_MAYLENE
    Return

Battleground_SetFlagDefeatedFantina:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_FANTINA
    Return

Battleground_SetFlagDefeatedCandice:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_CANDICE
    Return

Battleground_SetFlagDefeatedByron:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_BYRON
    Return

Battleground_SetFlagDefeatedVolkner:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_VOLKNER
    Return

Battleground_SetFlagDefeatedCheryl:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_CHERYL
    Return

Battleground_SetFlagDefeatedRiley:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_RILEY
    Return

Battleground_SetFlagDefeatedMarley:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_MARLEY
    Return

Battleground_SetFlagDefeatedBuck:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_BUCK
    Return

Battleground_SetFlagDefeatedMira:
    SetFlag FLAG_DEFEATED_BATTLEGROUND_MIRA
    Return

Battleground_CheckDefeatedTrainer:
    SetVar VAR_RESULT, FALSE
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_ROARK, Battleground_CheckDefeatedRoark
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_GARDENIA, Battleground_CheckDefeatedGardenia
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CRASHER_WAKE, Battleground_CheckDefeatedWake
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MAYLENE, Battleground_CheckDefeatedMaylene
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_FANTINA, Battleground_CheckDefeatedFantina
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CANDICE, Battleground_CheckDefeatedCandice
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BYRON, Battleground_CheckDefeatedByron
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_VOLKNER, Battleground_CheckDefeatedVolkner
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_CHERYL, Battleground_CheckDefeatedCheryl
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_RILEY, Battleground_CheckDefeatedRiley
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MARLEY, Battleground_CheckDefeatedMarley
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_BUCK, Battleground_CheckDefeatedBuck
    GoToIfEq VAR_MAP_LOCAL_1, OBJ_EVENT_GFX_MIRA, Battleground_CheckDefeatedMira
    Return

Battleground_CheckDefeatedRoark:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_ROARK, Battleground_SetResultTrue
    Return

Battleground_CheckDefeatedGardenia:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_GARDENIA, Battleground_SetResultTrue
    Return

Battleground_CheckDefeatedWake:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_CRASHER_WAKE, Battleground_SetResultTrue
    Return

Battleground_CheckDefeatedMaylene:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_MAYLENE, Battleground_SetResultTrue
    Return

Battleground_CheckDefeatedFantina:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_FANTINA, Battleground_SetResultTrue
    Return

Battleground_CheckDefeatedCandice:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_CANDICE, Battleground_SetResultTrue
    Return

Battleground_CheckDefeatedByron:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_BYRON, Battleground_SetResultTrue
    Return

Battleground_CheckDefeatedVolkner:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_VOLKNER, Battleground_SetResultTrue
    Return

Battleground_CheckDefeatedCheryl:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_CHERYL, Battleground_SetResultTrue
    Return

Battleground_CheckDefeatedRiley:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_RILEY, Battleground_SetResultTrue
    Return

Battleground_CheckDefeatedMarley:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_MARLEY, Battleground_SetResultTrue
    Return

Battleground_CheckDefeatedBuck:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_BUCK, Battleground_SetResultTrue
    Return

Battleground_CheckDefeatedMira:
    GoToIfSet FLAG_DEFEATED_BATTLEGROUND_MIRA, Battleground_SetResultTrue
    Return

Battleground_SetResultTrue:
    SetVar VAR_RESULT, TRUE
    Return
