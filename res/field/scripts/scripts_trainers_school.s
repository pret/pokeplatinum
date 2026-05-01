#include "macros/scrcmd.inc"
#include "res/text/bank/trainers_school.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_trainers_school.h"


    ScriptEntry TrainersSchool_Rival
    ScriptEntry TrainersSchool_AceTrainerF
    ScriptEntry TrainersSchool_Unused3
    ScriptEntry TrainersSchool_Youngster1
    ScriptEntry TrainersSchool_Youngster2
    ScriptEntry TrainersSchool_Lass
    ScriptEntry TrainersSchool_Unused7
    ScriptEntry TrainersSchool_Unused8
    ScriptEntry TrainersSchool_SchoolKidHarrison
    ScriptEntry TrainersSchool_SchoolKidChristine
    ScriptEntry TrainersSchool_Blackboard
    ScriptEntry TrainersSchool_Book
    ScriptEntryEnd

TrainersSchool_Rival:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    BufferRivalName 1
    Message TrainersSchool_Text_GotSomethingForMe
    PlayFanfare SEQ_FANFA4
    BufferPlayerName 0
    Message TrainersSchool_Text_PlayerDeliveredTheParcel
    WaitFanfare
    RemoveItem ITEM_PARCEL, 1, VAR_RESULT
    BufferPlayerName 0
    BufferRivalName 1
    Message TrainersSchool_Text_TakeTownMap
    SetVar VAR_0x8004, ITEM_TOWN_MAP
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    BufferRivalName 1
    Message TrainersSchool_Text_OreburghCityNext
    CloseMessage
    GetPlayerDir VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, DIR_NORTH, TrainersSchool_RivalLeaveNorth
    GoToIfEq VAR_0x8008, DIR_WEST, TrainersSchool_RivalLeaveWest
    GoTo TrainersSchool_RivalLeaveEast
    End

TrainersSchool_RivalLeaveNorth:
    ApplyMovement LOCALID_RIVAL, TrainersSchool_Movement_RivalLeaveNorth
    ApplyMovement LOCALID_PLAYER, TrainersSchool_Movement_PlayerWatchRivalLeaveNorth
    WaitMovement
    GoTo TrainersSchool_RivalEnd
    End

TrainersSchool_RivalLeaveWest:
    ApplyMovement LOCALID_RIVAL, TrainersSchool_Movement_RivalLeaveWestEast
    ApplyMovement LOCALID_PLAYER, TrainersSchool_Movement_PlayerWatchRivalLeaveWestEast
    WaitMovement
    GoTo TrainersSchool_RivalEnd
    End

TrainersSchool_RivalLeaveEast:
    ApplyMovement LOCALID_RIVAL, TrainersSchool_Movement_RivalLeaveWestEast
    ApplyMovement LOCALID_PLAYER, TrainersSchool_Movement_PlayerWatchRivalLeaveWestEast
    WaitMovement
    GoTo TrainersSchool_RivalEnd
    End

TrainersSchool_RivalEnd:
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_RIVAL
    WaitSE SEQ_SE_DP_KAIDAN2
    SetVar VAR_POKETCH_CAMPAIGN_STATE, 1
    SetFlag FLAG_TALKED_TO_TRAINERS_SCHOOL_RIVAL
    ClearFlag FLAG_HIDE_JUBILIFE_CITY_POKETCH_CO_PRESIDENT
    ClearFlag FLAG_HIDE_JUBILIFE_CITY_CLOWNS_1_AND_2
    ReleaseAll
    End

    .balign 4, 0
TrainersSchool_Movement_RivalLeaveNorth:
    WalkFastEast
    WalkFastSouth 8
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
TrainersSchool_Movement_RivalLeaveWestEast:
    WalkFastSouth 4
    WalkFastEast
    WalkFastSouth 4
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
TrainersSchool_Movement_PlayerWatchRivalLeaveNorth:
    Delay8
    WalkOnSpotNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TrainersSchool_Movement_PlayerWatchRivalLeaveWestEast:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

TrainersSchool_AceTrainerF:
    NPCMessage TrainersSchool_Text_DevelopAtOwnPace
    End

TrainersSchool_Unused3:
    End

TrainersSchool_Youngster1:
    NPCMessage TrainersSchool_Text_LearnedAboutPokemonTypes
    End

TrainersSchool_Youngster2:
    NPCMessage TrainersSchool_Text_WroteAnEssay
    End

TrainersSchool_Lass:
    NPCMessage TrainersSchool_Text_PokemonUseItems
    End

TrainersSchool_Unused7:
    End

TrainersSchool_Unused8:
    End

TrainersSchool_SchoolKidHarrison:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_TRAINERS_SCHOOL_POTION, TrainersSchool_PotionRestoresHP
    GoToIfSet FLAG_DEFEATED_TRAINERS_SCHOOL_SCHOOL_KID_HARRISON, TrainersSchool_TryGivePotion
    Message TrainersSchool_Text_CanWeBattleYou
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, TrainersSchool_BattleSchoolKidHarrison
    GoToIfEq VAR_RESULT, MENU_NO, TrainersSchool_ButBattlingIsTheBest
    End

TrainersSchool_BattleSchoolKidHarrison:
    Message TrainersSchool_Text_GoMyPokemonGo
    CloseMessage
    GetPlayerStarterSpecies VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, TrainersSchool_BattleHarrisonTurtwig
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, TrainersSchool_BattleHarrisonChimchar
    GoTo TrainersSchool_BattleHarrisonPiplup
    End

TrainersSchool_BattleHarrisonPiplup:
    StartTrainerBattle TRAINER_SCHOOL_KID_HARRISON
    GoTo TrainersSchool_CheckWonBattleHarrison
    End

TrainersSchool_BattleHarrisonTurtwig:
    StartTrainerBattle TRAINER_SCHOOL_KID_HARRISON
    GoTo TrainersSchool_CheckWonBattleHarrison
    End

TrainersSchool_BattleHarrisonChimchar:
    StartTrainerBattle TRAINER_SCHOOL_KID_HARRISON
    GoTo TrainersSchool_CheckWonBattleHarrison
    End

TrainersSchool_CheckWonBattleHarrison:
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, TrainersSchool_LostBattleHarrison
    SetFlag FLAG_DEFEATED_TRAINERS_SCHOOL_SCHOOL_KID_HARRISON
    GoToIfSet FLAG_DEFEATED_TRAINERS_SCHOOL_SCHOOL_KID_CHRISTINE, TrainersSchool_GivePotion
    GoToIfUnset FLAG_DEFEATED_TRAINERS_SCHOOL_SCHOOL_KID_CHRISTINE, TrainersSchool_HardToWin
    End

TrainersSchool_HardToWin:
    Message TrainersSchool_Text_HardToWin
    WaitButton
    CloseMessage
    ReleaseAll
    End

TrainersSchool_GivePotion:
    Message TrainersSchool_Text_UseThisPotion
    SetVar VAR_0x8004, ITEM_POTION
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, TrainersSchool_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_TRAINERS_SCHOOL_POTION
    GoTo TrainersSchool_PotionRestoresHP
    End

TrainersSchool_PotionRestoresHP:
    Message TrainersSchool_Text_PotionRestoresHP
    WaitButton
    CloseMessage
    ReleaseAll
    End

TrainersSchool_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

TrainersSchool_TryGivePotion:
    GoToIfSet FLAG_DEFEATED_TRAINERS_SCHOOL_SCHOOL_KID_CHRISTINE, TrainersSchool_GivePotion
    Message TrainersSchool_Text_HardToWin
    WaitButton
    CloseMessage
    ReleaseAll
    End

TrainersSchool_ButBattlingIsTheBest:
    Message TrainersSchool_Text_ButBattlingIsTheBest
    WaitButton
    CloseMessage
    ReleaseAll
    End

TrainersSchool_LostBattleHarrison:
    BlackOutFromBattle
    ReleaseAll
    End

TrainersSchool_SchoolKidChristine:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_DEFEATED_TRAINERS_SCHOOL_SCHOOL_KID_CHRISTINE, TrainersSchool_PostBattleChristine
    Message TrainersSchool_Text_MayWeBattle
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, TrainersSchool_BattleSchoolKidChristine
    GoToIfEq VAR_RESULT, MENU_NO, TrainersSchool_DontBeShy
    End

TrainersSchool_BattleSchoolKidChristine:
    Message TrainersSchool_Text_TryThingsILearned
    CloseMessage
    GetPlayerStarterSpecies VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, TrainersSchool_BattleChristineTurtwig
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, TrainersSchool_BattleChristineChimchar
    GoTo TrainersSchool_BattleChristinePiplup
    End

TrainersSchool_BattleChristinePiplup:
    StartTrainerBattle TRAINER_SCHOOL_KID_CHRISTINE
    GoTo TrainersSchool_CheckWonBattleChristine
    End

TrainersSchool_BattleChristineTurtwig:
    StartTrainerBattle TRAINER_SCHOOL_KID_CHRISTINE
    GoTo TrainersSchool_CheckWonBattleChristine
    End

TrainersSchool_BattleChristineChimchar:
    StartTrainerBattle TRAINER_SCHOOL_KID_CHRISTINE
    GoTo TrainersSchool_CheckWonBattleChristine
    End

TrainersSchool_CheckWonBattleChristine:
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, TrainersSchool_LostBattleChristine
    SetFlag FLAG_DEFEATED_TRAINERS_SCHOOL_SCHOOL_KID_CHRISTINE
    GoToIfSet FLAG_DEFEATED_TRAINERS_SCHOOL_SCHOOL_KID_HARRISON, TrainersSchool_DefeatedChristineAndHarrison
    GoToIfUnset FLAG_DEFEATED_TRAINERS_SCHOOL_SCHOOL_KID_HARRISON, TrainersSchool_CouldHaveDoneBetter
    End

TrainersSchool_PostBattleChristine:
    Message TrainersSchool_Text_CouldHaveDoneBetter
    WaitButton
    CloseMessage
    ReleaseAll
    End

TrainersSchool_DontBeShy:
    Message TrainersSchool_Text_DontBeShy
    WaitButton
    CloseMessage
    ReleaseAll
    End

TrainersSchool_CouldHaveDoneBetter:
    Message TrainersSchool_Text_CouldHaveDoneBetter
    WaitButton
    CloseMessage
    ReleaseAll
    End

TrainersSchool_DefeatedChristineAndHarrison:
    GoToIfSet FLAG_RECEIVED_TRAINERS_SCHOOL_POTION, TrainersSchool_CouldHaveDoneBetter
    Message TrainersSchool_Text_TalkToMyFriend
    WaitButton
    CloseMessage
    ReleaseAll
    End

TrainersSchool_LostBattleChristine:
    BlackOutFromBattle
    ReleaseAll
    End

TrainersSchool_Blackboard:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message TrainersSchool_Text_BlackboardListsStatusChanges
    GoTo TrainersSchool_StatusMenu
    End

TrainersSchool_StatusMenu:
    Message TrainersSchool_Text_ReadAboutWhichStatus
    InitGlobalTextMenu 7, 2, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_Status_Poisoned, 0
    AddMenuEntryImm MenuEntries_Text_Status_Paralyzed, 1
    AddMenuEntryImm MenuEntries_Text_Status_Asleep, 2
    AddMenuEntryImm MenuEntries_Text_Status_Burned, 3
    AddMenuEntryImm MenuEntries_Text_Status_Frozen, 4
    AddMenuEntryImm MenuEntries_Text_Exit, 5
    ShowMenuMultiColumn 2
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, TrainersSchool_StatusPoisoned
    GoToIfEq VAR_0x8008, 1, TrainersSchool_StatusParalyzed
    GoToIfEq VAR_0x8008, 2, TrainersSchool_StatusAsleep
    GoToIfEq VAR_0x8008, 3, TrainersSchool_StatusBurned
    GoToIfEq VAR_0x8008, 4, TrainersSchool_StatusFrozen
    GoTo TrainersSchool_BlackboardEnd
    End

TrainersSchool_StatusPoisoned:
    Message TrainersSchool_Text_StatusPoisoned
    GoTo TrainersSchool_StatusMenu
    End

TrainersSchool_StatusParalyzed:
    Message TrainersSchool_Text_StatusParalyzed
    GoTo TrainersSchool_StatusMenu
    End

TrainersSchool_StatusAsleep:
    Message TrainersSchool_Text_StatusAsleep
    GoTo TrainersSchool_StatusMenu
    End

TrainersSchool_StatusBurned:
    Message TrainersSchool_Text_StatusBurned
    GoTo TrainersSchool_StatusMenu
    End

TrainersSchool_StatusFrozen:
    Message TrainersSchool_Text_StatusFrozen
    GoTo TrainersSchool_StatusMenu
    End

TrainersSchool_BlackboardEnd:
    CloseMessage
    ReleaseAll
    End

TrainersSchool_Book:
    EventMessage TrainersSchool_Text_NotebookFilledWithWriting
    End

    .balign 4, 0
