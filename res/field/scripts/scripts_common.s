#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "generated/player_transitions.h"
#include "generated/time_of_day.h"
#include "generated/tutor_locations.h"
#include "constants/trainer_card_levels.h"
#include "res/text/bank/common_strings.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_twinleaf_town_player_house_1f.h"
#include "res/field/events/events_canalave_city_pokecenter_1f.h"
#include "res/field/events/events_celestic_town_pokecenter_1f.h"
#include "res/field/events/events_eterna_city_pokecenter_1f.h"
#include "res/field/events/events_fight_area_pokecenter_1f.h"
#include "res/field/events/events_floaroma_town_pokecenter_1f.h"
#include "res/field/events/events_hearthome_city_pokecenter_1f.h"
#include "res/field/events/events_jubilife_city_pokecenter_1f.h"
#include "res/field/events/events_oreburgh_city_pokecenter_1f.h"
#include "res/field/events/events_pastoria_city_pokecenter_1f.h"
#include "res/field/events/events_pokemon_league_south_pokecenter_1f.h"
#include "res/field/events/events_pokemon_league_north_pokecenter_1f.h"
#include "res/field/events/events_resort_area_pokecenter_1f.h"
#include "res/field/events/events_sandgem_town_pokecenter_1f.h"
#include "res/field/events/events_snowpoint_city_pokecenter_1f.h"
#include "res/field/events/events_solaceon_town_pokecenter_1f.h"
#include "res/field/events/events_sunyshore_city_pokecenter_1f.h"
#include "res/field/events/events_survival_area_pokecenter_1f.h"
#include "res/field/events/events_veilstone_city_pokecenter_1f.h"

    ScriptEntry CommonScript_HandleSignpostInput @ 0x7D0
    ScriptEntry CommonScript_CheckBagPocketForItem @ 0x7D1
    ScriptEntry CommonScript_PokecenterNurse @ 0x7D2
    ScriptEntry CommonScript_FieldEffectPoisonFainted @ 0x7D3
    ScriptEntry CommonScript_2004 @ 0x7D4
    ScriptEntry CommonScript_SaveAndStoreResult @ 0x7D5
    ScriptEntry CommonScript_SaveGame  @ 0x7D6
    ScriptEntry CommonScript_Dummy2007 @ 0x7D7
    ScriptEntry CommonScript_HoneyTree @ 0x7D8
    ScriptEntry CommonScript_ObtainPoketchApp @ 0x7D9
    ScriptEntry CommonScript_Dummy2010 @ 0x7DA
    ScriptEntry CommonScript_Dummy2011 @ 0x7DB
    ScriptEntry CommonScript_SendToUndergroundPC @ 0x7DC
    ScriptEntry CommonScript_ObtainUndergroundTrap @ 0x7DD
    ScriptEntry CommonScript_ObtainUndergroundSphere @ 0x7DE
    ScriptEntry CommonScript_ObtainAccessoryWaitForConfirm @ 0x7DF
    ScriptEntry CommonScript_AddItemQuantityNoLineFeed @ 0x7E0
    ScriptEntry CommonScript_BagIsFull @ 0x7E1
    ScriptEntry CommonScript_PC @ 0x7E2
    ScriptEntry CommonScript_VendorGreetingGeneric @ 0x7E3
    ScriptEntry CommonScript_PlayerHouseBlackOutRecover @ 0x7E4
    ScriptEntry CommonScript_PokecenterBlackOutRecover @ 0x7E5
    ScriptEntry CommonScript_Dummy2022 @ 0x7E6
    ScriptEntry CommonScript_2023 @ 0x7E7
    ScriptEntry CommonScript_Dummy2024 @ 0x7E8
    ScriptEntry CommonScript_Geonet @ 0x7E9
    ScriptEntry CommonScript_2026 @ 0x7EA
    ScriptEntry CommonScript_Vent @ 0x7EB
    ScriptEntry CommonScript_SweetScentNothingHere @ 0x7EC
    ScriptEntry CommonScript_SweetScentFaded @ 0x7ED
    ScriptEntry CommonScript_BikeParking @ 0x7EE
    ScriptEntry CommonScript_HatchEgg @ 0x7EF
    ScriptEntry CommonScript_RepelsEffectWoreOff @ 0x7F0
    ScriptEntry _139D @ 0x7F1
    ScriptEntry CommonScript_ImpossibleToSave @ 0x7F2
    ScriptEntry CommonScript_BlockPokecenterBasement @ 0x7F3
    ScriptEntry CommonScript_ObtainContestBackdropWaitForConfirm @ 0x7F4
    ScriptEntry CommonScript_Dummy2037 @ 0x7F5
    ScriptEntry CommonScript_PlateObtainedEngraving @ 0x7F6
    ScriptEntry CommonScript_TryUseAzureFlute @ 0x7F7
    ScriptEntry CommonScript_SetCounterpartBGM @ 0x7F8
    ScriptEntry CommonScript_FadeToDefaultMusic @ 0x7F9
    ScriptEntry CommonScript_SetRivalBGM @ 0x7FA
    ScriptEntry CommonScript_FadeToDefaultMusic @ 0x7FB
    ScriptEntry CommonScript_AddItemQuantity @ 0x7FC
    ScriptEntry CommonScript_ObtainContestBackdrop @ 0x7FD
    ScriptEntry CommonScript_SendToUndergroundPCWithLinefeed @ 0x7FE
    ScriptEntry CommonScript_ObtainAccessory @ 0x7FF
    ScriptEntry CommonScript_SetFollowMeBGM @ 0x800
    ScriptEntry CommonScript_FadeToDefaultMusic @ 0x801
    ScriptEntry CommonScript_GlobalTerminalMachine @ 0x802
    ScriptEntry CommonScript_ShardCostWindowRoute212 @ 0x803
    ScriptEntry CommonScript_ShardCostWindowSurvivalArea @ 0x804
    ScriptEntry CommonScript_ShardCostWindowSnowpointCity @ 0x805
    ScriptEntry CommonScript_CheckObtainedAllGoldPrints @ 0x806
    ScriptEntry CommonScript_SetLookerBGM @ 0x807
    ScriptEntry CommonScript_FadeToDefaultMusic @ 0x808
    ScriptEntry CommonScript_GriseousOrbCouldNotBeRemoved @ 0x809
    ScriptEntryEnd

CommonScript_Dummy2010:
    End

CommonScript_Dummy2007:
    End

CommonScript_PokecenterNurse:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetTrainerCardLevel VAR_RESULT
    GoToIfGe VAR_RESULT, TRAINER_CARD_LEVEL_GOLD, CommonScript_NurseGoldCard
    SetVar VAR_0x8004, CommonStrings_Text_PokecenterGreeting_Day
    GetTimeOfDay VAR_RESULT
    Dummy1F9 VAR_RESULT
    SetVar VAR_0x8004, CommonStrings_Text_PokecenterGreeting_Morning
    GoToIfEq VAR_RESULT, TIMEOFDAY_MORNING, CommonScript_NurseGreeting
    SetVar VAR_0x8004, CommonStrings_Text_PokecenterGreeting_Night
    GoToIfEq VAR_RESULT, TIMEOFDAY_DAY, CommonScript_NurseGreeting
    SetVar VAR_0x8004, CommonStrings_Text_PokecenterGreeting_Day
CommonScript_NurseGreeting:
    MessageVar VAR_0x8004
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CommonScript_NurseAcceptHealPokemon
    GoToIfEq VAR_RESULT, MENU_NO, CommonScript_NurseDeclineHealPokemon
    End

CommonScript_NurseDeclineHealPokemon:
    Message CommonStrings_Text_PokecenterHopeToSeeYouAgain1
    WaitButton
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

CommonScript_NurseAcceptHealPokemon:
    SetPlayerState PLAYER_TRANSITION_HEALING
    ChangePlayerState
    ApplyMovement LOCALID_PLAYER, CommonScript_Movement_PlayerGivePokemon
    WaitMovement
    GetTrainerCardLevel VAR_RESULT
    CallIfGe VAR_RESULT, TRAINER_CARD_LEVEL_GOLD, CommonScript_TakePokemonGoldCard
    CallIfLt VAR_RESULT, TRAINER_CARD_LEVEL_GOLD, CommonScript_TakePokemon
    Call CommonScript_NurseHealPokemon
    GoToIfUnset FLAG_POKECENTER_IDENTIFIED_POKERUS, CommonScript_NurseCheckPokerus
    GoTo CommonScript_NurseFarewellAfterHeal

CommonScript_TakePokemon:
    Message CommonStrings_Text_PokecenterTakeYourPokemon
    Return

CommonScript_TakePokemonGoldCard:
    Message CommonStrings_Text_PokecenterTakeYourPokemon_GoldCard
    Return

CommonScript_NurseHealPokemon:
    ApplyMovement VAR_0x8007, CommonScript_Movement_NurseTurnToMachine
    WaitMovement
    CountPartyNonEggs VAR_0x8006
    PlayPokecenterHealingAnimation VAR_0x8006
    ApplyMovement VAR_0x8007, CommonScript_Movement_NurseTurnToPlayer
    WaitMovement
    HealParty
    Return

CommonScript_NurseFarewellAfterHeal:
    GoToIfEq VAR_0x8004, TRUE, CommonScript_NurseFarewellAfterHealGoldCard
    Message CommonStrings_Text_PokecenterRestoredYourPokemon
    ApplyMovement LOCALID_PLAYER, CommonScript_Movement_PlayerRetrievePokemon
    WaitMovement
    SetPlayerState PLAYER_TRANSITION_WALKING
    ChangePlayerState
    ApplyMovement VAR_0x8007, CommonScript_Movement_NurseBow
    WaitMovement
    Message CommonStrings_Text_PokecenterHopeToSeeYouAgain1
    WaitButton
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

CommonScript_NurseFarewellAfterHealGoldCard:
    Message CommonStrings_Text_PokecenterThankYouForWaiting
    ApplyMovement LOCALID_PLAYER, CommonScript_Movement_PlayerRetrievePokemon
    WaitMovement
    SetPlayerState PLAYER_TRANSITION_WALKING
    ChangePlayerState
    ApplyMovement VAR_0x8007, CommonScript_Movement_NurseBow
    WaitMovement
    Message CommonStrings_Text_PokecenterHopeToSeeYouAgain2
    WaitButton
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

CommonScript_NurseCheckPokerus:
    CheckPartyPokerus VAR_0x8006
    GoToIfEq VAR_0x8006, TRUE, CommonScript_NurseIdentifiedPokerus
    GoTo CommonScript_NurseFarewellAfterHeal

CommonScript_NurseIdentifiedPokerus:
    SetFlag FLAG_POKECENTER_IDENTIFIED_POKERUS
    ApplyMovement LOCALID_PLAYER, CommonScript_Movement_PlayerRetrievePokemon
    WaitMovement
    SetPlayerState PLAYER_TRANSITION_WALKING
    ChangePlayerState
    Message CommonStrings_Text_PokecenterYourPokemonMayBeInfected
    WaitButton
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

CommonScript_NurseGoldCard:
    GoToIfSet FLAG_POKECENTER_GOLD_TRAINER_CARD_SEEN, CommonScript_NurseGoldCardPreviouslySeen
    SetFlag FLAG_POKECENTER_GOLD_TRAINER_CARD_SEEN
    Message CommonStrings_Text_PokecenterGreeting_Interrupted
    BufferPlayerName 0
    Message CommonStrings_Text_PokecenterThatTrainerCard
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CommonScript_NurseAcceptHealPokemonGoldCard
    Message CommonStrings_Text_PokecenterHopeToSeeYouAgain2
    WaitButton
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

CommonScript_NurseGoldCardPreviouslySeen:
    BufferPlayerName 0
    Message CommonStrings_Text_PokecenterGreatToSeeYou
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CommonScript_NurseAcceptHealPokemonGoldCard
    Message CommonStrings_Text_PokecenterHopeToSeeYouAgain2
    WaitButton
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

CommonScript_NurseAcceptHealPokemonGoldCard:
    SetVar VAR_0x8004, TRUE
    GoTo CommonScript_NurseAcceptHealPokemon

    .balign 4, 0
CommonScript_Movement_NurseBow:
    PokecenterNurseBow
    Delay4
    EndMovement

    .balign 4, 0
CommonScript_Movement_PlayerGivePokemon:
    PlayerGive
    EndMovement

    .balign 4, 0
CommonScript_Movement_PlayerRetrievePokemon:
    PlayerReceive
    EndMovement

CommonScript_HandleSignpostInput:
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, CommonScript_ScrollOutSignpost
    GoToIfEq VAR_0x8008, 1, CommonScript_RemoveSignpostOpenStartMenu
    GetSignpostInput
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, CommonScript_RemoveSignpostOpenStartMenu
    SetSignpostCommand SIGNPOST_CMD_SCROLL_OUT
    ReturnCommonScript
    End

CommonScript_ScrollOutSignpost:
    SetSignpostCommand SIGNPOST_CMD_SCROLL_OUT
    ReturnCommonScript
    End

CommonScript_RemoveSignpostOpenStartMenu:
    SetSignpostCommand SIGNPOST_CMD_REMOVE
    WaitForSignpostDone
    ShowStartMenu
    ReturnCommonScript
    End

CommonScript_CheckBagPocketForItem:
    Call CommonScript_GetBagPocketForItem
    ReturnCommonScript
    End

CommonScript_GetBagPocketForItem:
    GetItemPocket VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, POCKET_KEY_ITEMS, CommonScript_PlayFanfare_SEQ_FANFA3
    GoToIfEq VAR_0x8008, POCKET_ITEMS, CommonScript_PlayFanfare_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_BERRIES, CommonScript_PlayFanfare_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_MEDICINE, CommonScript_PlayFanfare_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_BALLS, CommonScript_PlayFanfare_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_BATTLE_ITEMS, CommonScript_PlayFanfare_SEQ_FANFA4
    GoToIfEq VAR_0x8008, POCKET_MAIL, CommonScript_PlayFanfare_SEQ_FANFA2
    GoToIfEq VAR_0x8008, POCKET_TMHMS, CommonScript_PlayFanfare_SEQ_WAZA
    End

CommonScript_PlayFanfare_SEQ_FANFA4:
    PlayFanfare SEQ_FANFA4
    Return

CommonScript_PlayFanfare_SEQ_WAZA:
    PlayFanfare SEQ_WAZA
    Return

CommonScript_PlayFanfare_SEQ_FANFA3:
    PlayFanfare SEQ_FANFA3
    Return

CommonScript_PlayFanfare_SEQ_FANFA2:
    PlayFanfare SEQ_FANFA2
    Return

CommonScript_Unused:
    ReturnCommonScript
    End

CommonScript_FieldEffectPoisonFainted:
    LockAll
    GetPartyCount VAR_0x8004
    SetVar VAR_0x8005, 0
CommonScript_TrySurvivePoison:
    SurvivePoison VAR_RESULT, VAR_0x8005
    GoToIfEq VAR_RESULT, FALSE, CommonScript_FaintedFromPoison
    BufferPartyMonNickname 0, VAR_0x8005
    Message CommonStrings_Text_PokemonSurvivedThePoisoning
CommonScript_FaintedFromPoison:
    AddVar VAR_0x8005, 1
    GoToIfNe VAR_0x8004, VAR_0x8005, CommonScript_TrySurvivePoison
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 0, CommonScript_PoisonWhiteout
    CloseMessage
    ReleaseAll
    End

CommonScript_2004:
    FadeScreenIn
    WaitFadeScreen
    WaitABPress
    FadeScreenOut
    WaitFadeScreen
    End

CommonScript_PoisonWhiteout:
    BufferPlayerName 0
    Message CommonStrings_Text_OutOfPokemonVisionDimmed
    WaitABPress
    CloseMessage
    FadeOutBGM 0, 10
    FadeScreenOut
    WaitFadeScreen
    WaitForTransition
    BlackOutFromBattle2
    End

CommonScript_SaveAndStoreResult:
    ClearFlag FLAG_SAVE_EXTRA_BLOCK
    Call CommonScript_TrySaveGame
    StoreSaveResult VAR_RESULT
    CloseMessage
    End

CommonScript_ImpossibleToSave:
    Message CommonStrings_Text_ImpossibleToSave
    WaitABPress
    CloseMessage
    End

CommonScript_SaveGame:
    SetFlag FLAG_SAVE_EXTRA_BLOCK
    Call CommonScript_TrySaveGame
    SetVar VAR_MAP_LOCAL_0, VAR_RESULT
    ReturnCommonScript
    End

CommonScript_TrySaveGame:
    CheckSaveType VAR_RESULT
    GoToIfEq VAR_RESULT, SAVE_TYPE_OVERWRITE, CommonScript_SaveTypeOverwrite
    OpenSaveInfo
    Message CommonStrings_Text_WouldYouLikeToSave
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CommonScript_CancelSave
    CheckSaveType VAR_RESULT
    GoToIfEq VAR_RESULT, SAVE_TYPE_NO_DATA_EXISTS, CommonScript_SavingALotOfData
    GoToIfEq VAR_RESULT, SAVE_TYPE_FULL_SAVE, CommonScript_FullSaveAskOverwrite
    GoToIfEq VAR_RESULT, SAVE_TYPE_QUICK_SAVE, CommonScript_QuickSaveAskOverwrite
    End

CommonScript_SaveTypeOverwrite:
    Message CommonStrings_Text_ImpossibleToSave
    WaitABPress
    SetVar VAR_RESULT, 0
    Return

CommonScript_FullSaveAskOverwrite:
    Message CommonStrings_Text_OKToOverwriteSavedFile
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CommonScript_CancelSave
CommonScript_SavingALotOfData:
    Message CommonStrings_Text_SavingALotOfData
    GoTo CommonScript_StartSave

CommonScript_QuickSaveAskOverwrite:
    Message CommonStrings_Text_OKToOverwriteSavedFile
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CommonScript_CancelSave
    GoToIfUnset FLAG_SAVE_EXTRA_BLOCK, CommonScript_StartQuickSave
    GoToIfSet FLAG_SAVE_EXTRA_BLOCK, CommonScript_QuickSaveCheckMiscFlag
    End

CommonScript_StartSave:
    ScrCmd_258
    WaitTime 2, VAR_RESULT
    Call CommonScript_DoSave
    ScrCmd_259
    GoTo CommonScript_SaveComplete

CommonScript_DoSave:
    ShowSavingIcon
    CallIfSet FLAG_SAVE_EXTRA_BLOCK, CommonScript_SaveExtraBlock
    TrySaveGame VAR_RESULT
    HideSavingIcon
    Return

CommonScript_SaveComplete:
    GoToIfEq VAR_RESULT, 0, CommonScript_SaveError
    BufferPlayerName 0
    Message CommonStrings_Text_PlayerSavedTheGame
    PlaySE SEQ_SE_DP_SAVE
    WaitSE SEQ_SE_DP_SAVE
    WaitABPressTime 30
    CloseSaveInfo
    Return

CommonScript_CancelSave:
    CloseSaveInfo
    SetVar VAR_RESULT, 0
    Return

CommonScript_SaveError:
    Message CommonStrings_Text_SaveError
    WaitABPress
    CloseSaveInfo
    Return

CommonScript_QuickSaveStartFullStave:
    Message CommonStrings_Text_SavingALotOfData
    GoTo CommonScript_StartSave
    End

CommonScript_SaveExtraBlock:
    SaveExtraData
    ClearFlag FLAG_SAVE_EXTRA_BLOCK
    Return

CommonScript_StartQuickSave:
    Message CommonStrings_Text_SavingDontTurnOffThePower
    GoTo CommonScript_StartSave
    End

CommonScript_QuickSaveCheckMiscFlag:
    CheckIsMiscSaveInit VAR_RESULT
    GoToIfEq VAR_RESULT, 0, CommonScript_QuickSaveStartFullStave
    GoTo CommonScript_StartQuickSave
    End

CommonScript_HoneyTree:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckItem ITEM_HONEY, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, FALSE, CommonScript_HoneyTreeWithHoney
    GetHoneyTreeStatus VAR_RESULT
    GoToIfEq VAR_RESULT, TREE_STATUS_BARE, CommonScript_HoneyTreeBareNoHoney
    GoToIfEq VAR_RESULT, TREE_STATUS_SLATHERED, CommonScript_HoneyTreeSlatheredNoHoney
    GoToIfEq VAR_RESULT, TREE_STATUS_ENCOUNTER, CommonScript_HoneyTreeEncounter
    End

CommonScript_HoneyTreeWithHoney:
    GetHoneyTreeStatus VAR_RESULT
    GoToIfEq VAR_RESULT, TREE_STATUS_BARE, CommonScript_HoneyTreeBareWithHoney
    GoToIfEq VAR_RESULT, TREE_STATUS_SLATHERED, CommonScript_HoneyTreeSlatheredWithHoney
    GoToIfEq VAR_RESULT, TREE_STATUS_ENCOUNTER, CommonScript_HoneyTreeEncounter
    End

CommonScript_HoneyTreeBareNoHoney:
    Message CommonStrings_Text_HoneyTreeSweetScentNoHoney
    WaitButton
    CloseMessage
    ReleaseAll
    End

CommonScript_HoneyTreeSlatheredNoHoney:
    Message CommonStrings_Text_HoneyTreeSlatheredNoHoney
    WaitButton
    CloseMessage
    ReleaseAll
    End

CommonScript_HoneyTreeBareWithHoney:
    Message CommonStrings_Text_HoneyTreeSweetScent
    GoTo CommonScript_AskSlatherHoneyTree

CommonScript_HoneyTreeSlatheredWithHoney:
    Message CommonStrings_Text_HoneyTreeSlathered
    GoTo CommonScript_AskSlatherHoneyTree

CommonScript_Unused2:
    CheckItem ITEM_HONEY, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, FALSE, CommonScript_AskSlatherHoneyTree
    CloseMessage
    ReleaseAll
    End

CommonScript_HoneyTreePostBattle:
    CheckItem ITEM_HONEY, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, FALSE, CommonScript_AskSlatherHoneyTree
    ReleaseAll
    End

CommonScript_AskSlatherHoneyTree:
    Message CommonStrings_Text_SlatherBarkWithHoney
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, CommonScript_SlatherHoneyTree
    ReleaseAll
    End

CommonScript_SlatherHoneyTree:
    RemoveItem ITEM_HONEY, 1, VAR_RESULT
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_HONEY_USED
    SlatherHoneyTree
    WaitTime 10, VAR_RESULT
    Message CommonStrings_Text_BarkWasSlathered
    WaitButton
    CloseMessage
    ReleaseAll
    End

CommonScript_HoneyTreeEncounter:
    IncrementGameRecord RECORD_HONEY_TREE_POKEMON_ENCOUNTERED
    StartHoneyTreeBattle
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, CommonScript_LostHoneyTreeBattle
    StopHoneyTreeShaking
    GoTo CommonScript_HoneyTreePostBattle

CommonScript_LostHoneyTreeBattle:
    BlackOutFromBattle
    ReleaseAll
    End

CommonScript_ObtainPoketchApp:
    Call CommonScript_InternalObtainPoketchApp
    ReturnCommonScript
    End

CommonScript_InternalObtainPoketchApp:
    BufferPlayerName 0
    BufferPoketchAppName 1, VAR_0x8004
    PlayFanfare SEQ_POCKETCH
    Message CommonStrings_Text_ObtainedPoketchApp
    WaitFanfare
    Message CommonStrings_Text_InstalledPoketchApp
    RegisterPoketchApp VAR_0x8004
    CallIfEq VAR_0x8004, POKETCH_APPID_DIGITALWATCH, CommonScript_ObtainedPoketchDigitalWatch
    CallIfEq VAR_0x8004, POKETCH_APPID_CALCULATOR, CommonScript_ObtainedPoketchCalculator
    CallIfEq VAR_0x8004, POKETCH_APPID_MEMOPAD, CommonScript_ObtainedPoketchMemopad
    CallIfEq VAR_0x8004, POKETCH_APPID_PEDOMETER, CommonScript_ObtainedPoketchPedometer
    CallIfEq VAR_0x8004, POKETCH_APPID_PARTYSTATUS, CommonScript_ObtainedPoketchPartyStatus
    CallIfEq VAR_0x8004, POKETCH_APPID_FRIENDSHIPCHECKER, CommonScript_ObtainedPoketchFriendshipChecker
    CallIfEq VAR_0x8004, POKETCH_APPID_DOWSINGMACHINE, CommonScript_ObtainedPoketchDowsingMachine
    CallIfEq VAR_0x8004, POKETCH_APPID_BERRYSEARCHER, CommonScript_ObtainedPoketchBerrySearcher
    CallIfEq VAR_0x8004, POKETCH_APPID_DAYCARECHECKER, CommonScript_ObtainedPoketchDayCareChecker
    CallIfEq VAR_0x8004, POKETCH_APPID_POKEMONHISTORY, CommonScript_ObtainedPoketchPokemonHistory
    CallIfEq VAR_0x8004, POKETCH_APPID_COUNTER, CommonScript_ObtainedPoketchCounter
    CallIfEq VAR_0x8004, POKETCH_APPID_ANALOGWATCH, CommonScript_ObtainedPoketchAnalogWatch
    CallIfEq VAR_0x8004, POKETCH_APPID_MARKINGMAP, CommonScript_ObtainedPoketchMarkingMap
    CallIfEq VAR_0x8004, POKETCH_APPID_LINKSEARCHER, CommonScript_ObtainedPoketchLinkSearcher
    CallIfEq VAR_0x8004, POKETCH_APPID_COINTOSS, CommonScript_ObtainedPoketchCoinToss
    CallIfEq VAR_0x8004, POKETCH_APPID_MOVETESTER, CommonScript_ObtainedPoketchMoveTester
    CallIfEq VAR_0x8004, POKETCH_APPID_CALENDAR, CommonScript_ObtainedPoketchCalendar
    CallIfEq VAR_0x8004, POKETCH_APPID_DOTART, CommonScript_ObtainedPoketchDotArt
    CallIfEq VAR_0x8004, POKETCH_APPID_ROULETTE, CommonScript_ObtainedPoketchRoulette
    CallIfEq VAR_0x8004, POKETCH_APPID_TRAINERCOUNTER, CommonScript_ObtainedPoketchRadarChainCounter
    CallIfEq VAR_0x8004, POKETCH_APPID_KITCHENTIMER, CommonScript_ObtainedPoketchKitchenTimer
    CallIfEq VAR_0x8004, POKETCH_APPID_COLORCHANGER, CommonScript_ObtainedPoketchColorChanger
    CallIfEq VAR_0x8004, POKETCH_APPID_MATCHUPCHECKER, CommonScript_ObtainedPoketchMatchupChecker
    CallIfEq VAR_0x8004, POKETCH_APPID_STOPWATCH, CommonScript_ObtainedPoketchStopwatch
    CallIfEq VAR_0x8004, POKETCH_APPID_ALARMCLOCK, CommonScript_ObtainedPoketchAlarmClock
    Return

CommonScript_ObtainedPoketchDigitalWatch:
    Message CommonStrings_Text_ObtainedPoketchDigitalWatch
    Return

CommonScript_ObtainedPoketchCalculator:
    Message CommonStrings_Text_ObtainedPoketchCalculator
    Return

CommonScript_ObtainedPoketchMemopad:
    Message CommonStrings_Text_ObtainedPoketchMemoPad
    Return

CommonScript_ObtainedPoketchPedometer:
    Message CommonStrings_Text_ObtainedPoketchPedometer
    Return

CommonScript_ObtainedPoketchPartyStatus:
    Message CommonStrings_Text_ObtainedPoketchPokemonList
    Return

CommonScript_ObtainedPoketchFriendshipChecker:
    Message CommonStrings_Text_ObtainedPoketchFriendshipChecker
    Return

CommonScript_ObtainedPoketchDowsingMachine:
    Message CommonStrings_Text_ObtainedPoketchDowsingMachine
    Return

CommonScript_ObtainedPoketchBerrySearcher:
    Message CommonStrings_Text_ObtainedPoketchBerrySearcher
    Return

CommonScript_ObtainedPoketchDayCareChecker:
    Message CommonStrings_Text_ObtainedPoketchDayCareChecker
    Return

CommonScript_ObtainedPoketchPokemonHistory:
    Message CommonStrings_Text_ObtainedPoketchPokemonHistory
    Return

CommonScript_ObtainedPoketchCounter:
    Message CommonStrings_Text_ObtainedPoketchCounter
    Return

CommonScript_ObtainedPoketchAnalogWatch:
    Message CommonStrings_Text_ObtainedPoketchAnalogWatch
    Return

CommonScript_ObtainedPoketchMarkingMap:
    Message CommonStrings_Text_ObtainedPoketchMarkingMap
    Return

CommonScript_ObtainedPoketchLinkSearcher:
    Message CommonStrings_Text_ObtainedPoketchLinkSearcher
    Return

CommonScript_ObtainedPoketchCoinToss:
    Message CommonStrings_Text_ObtainedPoketchCoinToss
    Return

CommonScript_ObtainedPoketchMoveTester:
    Message CommonStrings_Text_ObtainedPoketchMoveTester
    Return

CommonScript_ObtainedPoketchCalendar:
    Message CommonStrings_Text_ObtainedPoketchCalendar
    Return

CommonScript_ObtainedPoketchDotArt:
    Message CommonStrings_Text_ObtainedPoketchDotArtist
    Return

CommonScript_ObtainedPoketchRoulette:
    Message CommonStrings_Text_ObtainedPoketchRoulette
    Return

CommonScript_ObtainedPoketchRadarChainCounter:
    Message CommonStrings_Text_ObtainedPoketchTrainerCounter
    Return

CommonScript_ObtainedPoketchKitchenTimer:
    Message CommonStrings_Text_ObtainedPoketchKitchenTimer
    Return

CommonScript_ObtainedPoketchColorChanger:
    Message CommonStrings_Text_ObtainedPoketchColorChanger
    Return

CommonScript_ObtainedPoketchMatchupChecker:
    Message CommonStrings_Text_ObtainedPoketchMatchupChecker
    Return

CommonScript_ObtainedPoketchStopwatch:
    Message CommonStrings_Text_ObtainedPoketchStopwatch
    Return

CommonScript_ObtainedPoketchAlarmClock:
    Message CommonStrings_Text_ObtainedPoketchAlarmClock
    Return

CommonScript_Dummy2011:
    End

CommonScript_SendToUndergroundPC:
    Call CommonScript_ObtainUndergroundItem
    Message CommonStrings_Text_ItemWasSentToUndergroundPC
    WaitButton
    ReturnCommonScript
    End

CommonScript_SendToUndergroundPCWithLinefeed:
    Call CommonScript_ObtainUndergroundItem
    Message CommonStrings_Text_ItemWasSentToUndergroundPC_ArrowPrompt
    ReturnCommonScript
    End

CommonScript_ObtainUndergroundItem:
    PlayFanfare SEQ_FANFA4
    SendGoodToPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    BufferUndergroundGoodsNameWithArticle 0, VAR_0x8004
    Message CommonStrings_Text_ObtainedUndergroundItem
    BufferUndergroundGoodsName 0, VAR_0x8004
    WaitFanfare
    Return

CommonScript_ObtainUndergroundTrap:
    Call CommonScript_InternalObtainUndergroundTrap
    ReturnCommonScript
    End

CommonScript_InternalObtainUndergroundTrap:
    PlayFanfare SEQ_FANFA4
    GiveTrap VAR_0x8004, VAR_0x8005, VAR_RESULT
    BufferUndergroundTrapName 0, VAR_0x8004
    Message CommonStrings_Text_ObtainedTheUndergroundTrap
    WaitFanfare
    Return

CommonScript_ObtainUndergroundSphere:
    Call CommonScript_InternalObtainUndergroundSphere
    ReturnCommonScript
    End

CommonScript_InternalObtainUndergroundSphere:
    PlayFanfare SEQ_FANFA4
    GiveSphere VAR_0x8004, VAR_0x8005, VAR_RESULT
    BufferUndergroundItemName 0, VAR_0x8004
    BufferNumber 1, VAR_0x8005
    Message CommonStrings_Text_ObtainedTheUndergroundSphere
    WaitFanfare
    Return

CommonScript_ObtainAccessoryWaitForConfirm:
    Call CommonScript_InternalObtainAccessory
    Message CommonStrings_Text_PutAwayItemInTheFashionCaseNoLineFeed
    WaitButton
    ReturnCommonScript
    End

CommonScript_ObtainAccessory:
    Call CommonScript_InternalObtainAccessory
    Message CommonStrings_Text_PutAwayItemInTheFashionCase
    ReturnCommonScript
    End

CommonScript_InternalObtainAccessory:
    PlayFanfare SEQ_ACCE
    AddAccessory VAR_0x8004, VAR_0x8005
    BufferAccessoryName 0, VAR_0x8004
    Message CommonStrings_Text_ObtainedItem
    WaitFanfare
    BufferPlayerName 0
    BufferAccessoryName 1, VAR_0x8004
    Return

CommonScript_ObtainContestBackdropWaitForConfirm:
    Call CommonScript_InternalObtainContestBackdrop
    Message CommonStrings_Text_PutAwayItemInTheFashionCaseNoLineFeed
    WaitButton
    ReturnCommonScript
    End

CommonScript_ObtainContestBackdrop:
    Call CommonScript_InternalObtainContestBackdrop
    Message CommonStrings_Text_PutAwayItemInTheFashionCase
    ReturnCommonScript
    End

CommonScript_InternalObtainContestBackdrop:
    PlayFanfare SEQ_FANFA4
    AddContestBackdrop VAR_0x8004
    BufferContestBackdropName 0, VAR_0x8004
    Message CommonStrings_Text_ObtainedItem
    WaitFanfare
    BufferPlayerName 0
    BufferContestBackdropName 1, VAR_0x8004
    Return

CommonScript_AddItemQuantityNoLineFeed:
    Call CommonScript_InternalAddItemQuantityNoLineFeed
    ReturnCommonScript
    End

CommonScript_InternalAddItemQuantityNoLineFeed:
    Call CommonScript_GetBagPocketForItem
    AddItem VAR_0x8004, VAR_0x8005, VAR_RESULT
    GetItemPocket VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, POCKET_KEY_ITEMS, CommonScript_ObtainedKeyItem
    CallIfNe VAR_RESULT, POCKET_KEY_ITEMS, CommonScript_PrepareMessageObtainedItem
    Message CommonStrings_Text_PutItemInThePocketNoLineFeed
    WaitButton
    Return

CommonScript_AddItemQuantity:
    Call CommonScript_InternalAddItemQuantity
    ReturnCommonScript
    End

CommonScript_InternalAddItemQuantity:
    Call CommonScript_GetBagPocketForItem
    AddItem VAR_0x8004, VAR_0x8005, VAR_RESULT
    GetItemPocket VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, POCKET_KEY_ITEMS, CommonScript_ObtainedKeyItem
    CallIfNe VAR_RESULT, POCKET_KEY_ITEMS, CommonScript_PrepareMessageObtainedItem
    Message CommonStrings_Text_PutItemInThePocket
    Return

CommonScript_ObtainedKeyItem:
    BufferPlayerName 0
    BufferItemName 1, VAR_0x8004
    Message CommonStrings_Text_ObtainedKeyItem
    GoTo CommonScript_AfterObtainedItem

CommonScript_PrepareMessageObtainedItem:
    GoToIfGt VAR_0x8005, 1, CommonScript_ObtainedItemsPlural
    BufferItemName 0, VAR_0x8004
    GoTo CommonScript_ObtainedItem

CommonScript_ObtainedItemsPlural:
    BufferItemNamePlural 0, VAR_0x8004
CommonScript_ObtainedItem:
    Message CommonStrings_Text_ObtainedItem
    GoTo CommonScript_AfterObtainedItem

CommonScript_AfterObtainedItem:
    WaitFanfare
    CheckItemIsPlate VAR_0x8004, VAR_RESULT
    CallIfEq VAR_RESULT, TRUE, CommonScript_DeterminePlateEngraving
    BufferPlayerName 0
    GoToIfGt VAR_0x8005, 1, CommonScript_BufferPocketNameItemsPlural
    BufferItemName 1, VAR_0x8004
    GoTo CommonScript_BufferPocketName

CommonScript_BufferPocketNameItemsPlural:
    BufferItemNamePlural 1, VAR_0x8004
CommonScript_BufferPocketName:
    GetItemPocket VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, POCKET_KEY_ITEMS, CommonScript_BufferPocketNameKeyItems
    GoToIfEq VAR_0x8008, POCKET_ITEMS, CommonScript_BufferPocketNameItems
    GoToIfEq VAR_0x8008, POCKET_BERRIES, CommonScript_BufferPocketNameBerries
    GoToIfEq VAR_0x8008, POCKET_MEDICINE, CommonScript_BufferPocketNameMedicine
    GoToIfEq VAR_0x8008, POCKET_BALLS, CommonScript_BufferPocketNameBalls
    GoToIfEq VAR_0x8008, POCKET_BATTLE_ITEMS, CommonScript_BufferPocketNameBattleItems
    GoToIfEq VAR_0x8008, POCKET_MAIL, CommonScript_BufferPocketNameMail
    GoToIfEq VAR_0x8008, POCKET_TMHMS, CommonScript_BufferPocketNameTMHMs
    End

CommonScript_BufferPocketNameItems:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameKeyItems:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameBattleItems:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameMail:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameMedicine:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameBerries:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameBalls:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameTMHMs:
    GetItemPocket VAR_0x8004, VAR_RESULT
    BufferPocketName 2, VAR_RESULT
    GoTo CommonScript_BufferPocketNameReturn

CommonScript_BufferPocketNameReturn:
    Return

CommonScript_BagIsFull:
    Call CommonScript_InternalBagIsFull
    ReturnCommonScript
    End

CommonScript_InternalBagIsFull:
    Message CommonStrings_Text_BagIsFull
    WaitButton
    Return

CommonScript_PC:
    LockAll
    PlaySE SEQ_SE_DP_PC_ON
    Call CommonScript_PCBootUpAnimation
    BufferPlayerName 0
    Message CommonStrings_Text_BootedUpThePC
    GoTo CommonScript_AccessWhichPC

CommonScript_PCBootUpAnimation:
    LoadPCAnimation ANIMATION_TAG_PC
    PlayPCBootUpAnimation ANIMATION_TAG_PC
    WaitForAnimation ANIMATION_TAG_PC
    Return

CommonScript_PCShutDownAnimation:
    PlayPCShutDownAnimation ANIMATION_TAG_PC
    WaitForAnimation ANIMATION_TAG_PC
    UnloadAnimation ANIMATION_TAG_PC
    Return

CommonScript_AccessWhichPC:
    BufferPlayerName 0
    Message CommonStrings_Text_AccessWhichPC
    InitGlobalTextMenu 1, 1, 0, VAR_0x8006
    CallIfUnset FLAG_MET_BEBE, CommonScript_AddMenuEntrySomeonesPC
    CallIfSet FLAG_MET_BEBE, CommonScript_AddMenuEntryBebesPC
    AddMenuEntryImm MenuEntries_Text_PC_PlayersPC, 1
    GetNationalDexEnabled VAR_RESULT
    CallIfEq VAR_RESULT, FALSE, CommonScript_AddMenuEntryRowansPC
    CallIfEq VAR_RESULT, TRUE, CommonScript_AddMenuEntryOaksPC
    GoToIfSet FLAG_GAME_COMPLETED, CommonScript_PCMenuHallOfFame
    GoToIfUnset FLAG_GAME_COMPLETED, CommonScript_PCMenu
    End

CommonScript_AddMenuEntrySomeonesPC:
    AddMenuEntryImm MenuEntries_Text_PC_SomeonesPC, 0
    Return

CommonScript_AddMenuEntryBebesPC:
    AddMenuEntryImm MenuEntries_Text_PC_BebesPC, 0
    Return

CommonScript_AddMenuEntryRowansPC:
    AddMenuEntryImm MenuEntries_Text_PC_RowansPC, 2
    Return

CommonScript_AddMenuEntryOaksPC:
    AddMenuEntryImm MenuEntries_Text_PC_OaksPC, 2
    Return

CommonScript_PCMenuHallOfFame:
    AddMenuEntryImm MenuEntries_Text_PC_HallOfFame, 3
    AddMenuEntryImm MenuEntries_Text_PC_SwitchOff, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_0x8006
    GoToIfEq VAR_0x8008, 0, CommonScript_StorageSystem
    GoToIfEq VAR_0x8008, 1, CommonScript_PlayersPC
    GoToIfEq VAR_0x8008, 2, CommonScript_ProfsPC
    GoToIfEq VAR_0x8008, 3, CommonScript_PCHallOfFame
    GoTo CommonScript_PCSwitchOff

CommonScript_PCMenu:
    AddMenuEntryImm MenuEntries_Text_PC_SwitchOff, 3
    ShowMenu
    SetVar VAR_0x8008, VAR_0x8006
    GoToIfEq VAR_0x8008, 0, CommonScript_StorageSystem
    GoToIfEq VAR_0x8008, 1, CommonScript_PlayersPC
    GoToIfEq VAR_0x8008, 2, CommonScript_ProfsPC
    GoTo CommonScript_PCSwitchOff

CommonScript_StorageSystem:
    PlaySE SEQ_SE_DP_PC_LOGIN
    BufferPlayerName 0
    Message CommonStrings_Text_AccessedPokemonStorage
    Call CommonScript_InitStorageSystemMenu
    GoTo CommonScript_HandleStorageSystemMenuInput

CommonScript_InitStorageSystemMenu:
    InitGlobalTextListMenu 1, 1, 0, VAR_RESULT
    AddListMenuEntry MenuEntries_Text_PC_DepositPokemon, 0, MenuEntries_Text_PC_DescriptionDepositPokemon
    AddListMenuEntry MenuEntries_Text_PC_WithdrawPokemon, 1, MenuEntries_Text_PC_DescriptionWithdrawPokemon
    AddListMenuEntry MenuEntries_Text_PC_MovePokemon, 2, MenuEntries_Text_PC_DescriptionMovePokemon
    AddListMenuEntry MenuEntries_Text_PC_MoveItems, 3, MenuEntries_Text_PC_DescriptionMoveItems
    CallIfSet FLAG_CONTEST_HALL_VISITED, CommonScript_AddMenuEntryComparePokemon
    AddListMenuEntry MenuEntries_Text_PC_SeeYa, 5, MenuEntries_Text_PC_DescriptionSeeYa
    Return

CommonScript_AddMenuEntryComparePokemon:
    AddListMenuEntry MenuEntries_Text_PC_ComparePokemon, 4, MenuEntries_Text_PC_DescriptionComparePokemon
    Return

CommonScript_HandleStorageSystemMenuInput:
    ShowListMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, CommonScript_DepositPokemon
    GoToIfEq VAR_0x8008, 1, CommonScript_WithdrawPokemon
    GoToIfEq VAR_0x8008, 2, CommonScript_MovePokemon
    GoToIfEq VAR_0x8008, 3, CommonScript_MoveItems
    GoToIfEq VAR_0x8008, 4, CommonScript_ComparePokemon
    GoTo CommonScript_AccessWhichPC

CommonScript_DepositPokemon:
    CloseMessage
    Call CommonScript_PCFadeOut
    OpenPokemonStorage 0
    ReturnToField
    GoTo CommonScript_PCFadeInAccessWhichPC

CommonScript_WithdrawPokemon:
    CloseMessage
    Call CommonScript_PCFadeOut
    OpenPokemonStorage 1
    ReturnToField
    GoTo CommonScript_PCFadeInAccessWhichPC

CommonScript_MovePokemon:
    CloseMessage
    Call CommonScript_PCFadeOut
    OpenPokemonStorage 2
    ReturnToField
    GoTo CommonScript_PCFadeInAccessWhichPC

CommonScript_MoveItems:
    CloseMessage
    Call CommonScript_PCFadeOut
    OpenPokemonStorage 3
    ReturnToField
    GoTo CommonScript_PCFadeInAccessWhichPC

CommonScript_ComparePokemon:
    CloseMessage
    Call CommonScript_PCFadeOut
    OpenPokemonStorage 4
    ReturnToField
    GoTo CommonScript_PCFadeInAccessWhichPC

CommonScript_PCFadeInAccessWhichPC:
    SaveTVSegmentPokemonStorageBulletin
    BufferPlayerName 0
    MessageInstant CommonStrings_Text_AccessWhichPC
    Call CommonScript_InitStorageSystemMenu
    Call CommonScript_PCBootUpAnimation
    FadeScreenIn
    GoTo CommonScript_HandleStorageSystemMenuInput

CommonScript_PlayersPC:
    PlaySE SEQ_SE_DP_PC_LOGIN
    BufferPlayerName 0
    Message CommonStrings_Text_AccessedPlayersPC
    GoTo CommonScript_PlayersPCMenu

CommonScript_PlayersPCMenu:
    Call CommonScript_InitPlayersPCMenu
    GoTo CommonScript_HandlePlayersPCMenuInput

CommonScript_InitPlayersPCMenu:
    InitGlobalTextListMenu 1, 1, 0, VAR_RESULT
    AddListMenuEntry MenuEntries_Text_PC_Mailbox, 0, MenuEntries_Text_PC_DescriptionMailBox
    AddListMenuEntry MenuEntries_Text_PC_BallCapsules, 1, MenuEntries_Text_PC_DescriptionBallCapsules
    AddListMenuEntry MenuEntries_Text_PC_LogOut, 3, MenuEntries_Text_PC_DescriptionLogOut
    Return

CommonScript_HandlePlayersPCMenuInput:
    ShowListMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, CommonScript_Mailbox
    GoToIfEq VAR_0x8008, 1, CommonScript_BallCapsules
    GoTo CommonScript_AccessWhichPC

CommonScript_Mailbox:
    CloseMessage
    CountMailInMailbox VAR_RESULT
    GoToIfEq VAR_RESULT, 0, CommonScript_NoMailInMailbox
    ScrCmd_1B3
    GoTo CommonScript_MailboxClose

CommonScript_NoMailInMailbox:
    Message CommonStrings_Text_NoMailInMailbox
    GoTo CommonScript_PlayersPCMenu

CommonScript_MailboxClose:
    BufferPlayerName 0
    OpenMessage
    Call CommonScript_InitPlayersPCMenu
    GoTo CommonScript_HandlePlayersPCMenuInput

CommonScript_BallCapsules:
    CountUniqueSealsInSealCase VAR_RESULT
    GoToIfEq VAR_RESULT, 0, CommonScript_NoSeals
    CloseMessage
    Call CommonScript_PCFadeOut
    OpenSealCapsuleEditor
    GoTo CommonScript_BallCapsulesEnd

CommonScript_NoSeals:
    Message CommonStrings_Text_NoSeals
    GoTo CommonScript_PlayersPCMenu

CommonScript_BallCapsulesEnd:
    BufferPlayerName 0
    MessageInstant CommonStrings_Text_AccessWhichPC
    Call CommonScript_InitPlayersPCMenu
    Call CommonScript_PCBootUpAnimation
    FadeScreenIn
    GoTo CommonScript_HandlePlayersPCMenuInput

CommonScript_PCHallOfFame:
    PlaySE SEQ_SE_DP_PC_LOGIN
    CloseMessage
    CheckIsHallOfFameCorrupted VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, CommonScript_HallOfFameDataCorrupted
    Call CommonScript_PCFadeOut
    OpenPCHallOfFameScreen
    ReturnToField
    Call CommonScript_PCFadeIn
    GoTo CommonScript_AccessWhichPC

CommonScript_HallOfFameDataCorrupted:
    Message CommonStrings_Text_HallOfFameDataCorrupted
    GoTo CommonScript_AccessWhichPC

CommonScript_ProfsPC:
    PlaySE SEQ_SE_DP_PC_LOGIN
    CallCommonScript 0x26DF
    GoTo CommonScript_AccessWhichPC

CommonScript_PCSwitchOff:
    CloseMessage
    PlaySE SEQ_SE_DP_PC_LOGOFF
    Call CommonScript_PCShutDownAnimation
    ReleaseAll
    End

CommonScript_PCFadeIn:
    Call CommonScript_PCBootUpAnimation
    FadeScreenIn
    WaitFadeScreen
    Return

CommonScript_PCFadeOut:
    FadeScreenOut
    WaitFadeScreen
    UnloadAnimation ANIMATION_TAG_PC
    Return

CommonScript_Dummy2022:
    End

CommonScript_2023:
    FadeScreenOut
    WaitFadeScreen
    OpenSealCapsuleEditor
    FadeScreenIn
    WaitFadeScreen
    End

CommonScript_VendorGreetingGeneric:
    Message CommonStrings_Text_VendorGreetingGeneric
    ReturnCommonScript
    End

CommonScript_PlayerHouseBlackOutRecover:
    LockAll
    ApplyMovement LOCALID_PLAYER, CommonScript_Movement_PlayerTurnToMom
    ApplyMovement LOCALID_PLAYER_HOUSE_MOM, CommonScript_Movement_MomTurnToPlayer
    WaitMovement
    FadeScreenIn
    WaitFadeScreen
    BufferPlayerName 0
    Message CommonStrings_Text_YouHadQuiteTheExperienceOutThere
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    FadeScreenIn
    WaitFadeScreen
    CallIfSet FLAG_HAS_POKEDEX, CommonScript_PlayerHouseBlackOutBeforePokedexMessage
    CallIfUnset FLAG_HAS_POKEDEX, CommonScript_PlayerHouseBlackOutAfterPokedexMessage
    WaitButton
    CloseMessage
    ReleaseAll
    End

CommonScript_PlayerHouseBlackOutBeforePokedexMessage:
    Message CommonStrings_Text_PokemonLookingGreatBeforePokedex
    Return

CommonScript_PlayerHouseBlackOutAfterPokedexMessage:
    Message CommonStrings_Text_PokemonLookingGreatAfterPokedex
    Return

CommonScript_PokecenterBlackOutRecover:
    LockAll
    FadeScreenIn
    WaitFadeScreen
    SetPlayerState PLAYER_TRANSITION_HEALING
    ChangePlayerState
    ApplyMovement LOCALID_PLAYER, CommonScript_Movement_PlayerGivePokemon
    WaitMovement
    Message CommonStrings_Text_PokecenterFirstLetsRestoreYourPokemon
    Call CommonScript_GetNurseID
    Call CommonScript_NurseHealPokemon
    GoToIfBadgeAcquired BADGE_ID_COAL, CommonScript_PokecenterBlackOutRecoverHasCoalBadge
    Message CommonStrings_Text_PokecenterHealedToPerfectHealth
    ApplyMovement LOCALID_PLAYER, CommonScript_Movement_PlayerRetrievePokemon
    WaitMovement
    SetPlayerState PLAYER_TRANSITION_WALKING
    ChangePlayerState
    ApplyMovement VAR_0x8007, CommonScript_Movement_NurseBow
    WaitMovement
    Message CommonStrings_Text_PokecenterGoodLuckTrainer
    WaitButton
    CloseMessage
    ReleaseAll
    End

CommonScript_PokecenterBlackOutRecoverHasCoalBadge:
    ApplyMovement LOCALID_PLAYER, CommonScript_Movement_PlayerRetrievePokemon
    WaitMovement
    SetPlayerState PLAYER_TRANSITION_WALKING
    ChangePlayerState
    ApplyMovement VAR_0x8007, CommonScript_Movement_NurseBow
    WaitMovement
    Message CommonStrings_Text_PokecenterAllHappyAndHealthy
    WaitButton
    CloseMessage
    ReleaseAll
    End

CommonScript_GetNurseID:
    GetCurrentMapID VAR_0x8004
    GoToIfEq VAR_0x8004, MAP_HEADER_JUBILIFE_CITY_POKECENTER_1F, CommonScript_SetNurseIDJubilife
    GoToIfEq VAR_0x8004, MAP_HEADER_CANALAVE_CITY_POKECENTER_1F, CommonScript_SetNurseIDCanalave
    GoToIfEq VAR_0x8004, MAP_HEADER_OREBURGH_CITY_POKECENTER_1F, CommonScript_SetNurseIDOreburgh
    GoToIfEq VAR_0x8004, MAP_HEADER_ETERNA_CITY_POKECENTER_1F, CommonScript_SetNurseIDEterna
    GoToIfEq VAR_0x8004, MAP_HEADER_HEARTHOME_CITY_POKECENTER_1F, CommonScript_SetNurseIDHearthome
    GoToIfEq VAR_0x8004, MAP_HEADER_PASTORIA_CITY_POKECENTER_1F, CommonScript_SetNurseIDPastoria
    GoToIfEq VAR_0x8004, MAP_HEADER_VEILSTONE_CITY_POKECENTER_1F, CommonScript_SetNurseIDVeilstone
    GoToIfEq VAR_0x8004, MAP_HEADER_SUNYSHORE_CITY_POKECENTER_1F, CommonScript_SetNurseIDSunyshore
    GoToIfEq VAR_0x8004, MAP_HEADER_SNOWPOINT_CITY_POKECENTER_1F, CommonScript_SetNurseIDSnowpoint
    GoToIfEq VAR_0x8004, MAP_HEADER_POKEMON_LEAGUE_SOUTH_POKECENTER_1F, CommonScript_SetNurseIDPokemonLeagueSouth
    GoToIfEq VAR_0x8004, MAP_HEADER_FIGHT_AREA_POKECENTER_1F, CommonScript_SetNurseIDFightArea
    GoToIfEq VAR_0x8004, MAP_HEADER_SANDGEM_TOWN_POKECENTER_1F, CommonScript_SetNurseIDSandgem
    GoToIfEq VAR_0x8004, MAP_HEADER_FLOAROMA_TOWN_POKECENTER_1F, CommonScript_SetNurseIDFloaroma
    GoToIfEq VAR_0x8004, MAP_HEADER_SOLACEON_TOWN_POKECENTER_1F, CommonScript_SetNurseIDSolaceon
    GoToIfEq VAR_0x8004, MAP_HEADER_CELESTIC_TOWN_POKECENTER_1F, CommonScript_SetNurseIDCelestic
    GoToIfEq VAR_0x8004, MAP_HEADER_SURVIVAL_AREA_POKECENTER_1F, CommonScript_SetNurseIDSurvivalArea
    GoToIfEq VAR_0x8004, MAP_HEADER_RESORT_AREA_POKECENTER_1F, CommonScript_SetNurseIDResortArea
    GoToIfEq VAR_0x8004, MAP_HEADER_POKEMON_LEAGUE_NORTH_POKECENTER_1F, CommonScript_SetNurseIDPokemonLeagueNorth
    SetVar VAR_0x8007, 0
    Return

CommonScript_SetNurseIDJubilife:
    SetVar VAR_0x8007, LOCALID_JUBILIFE_NURSE
    Return

CommonScript_SetNurseIDCanalave:
    SetVar VAR_0x8007, LOCALID_CANALAVE_NURSE
    Return

CommonScript_SetNurseIDOreburgh:
    SetVar VAR_0x8007, LOCALID_OREBURGH_NURSE
    Return

CommonScript_SetNurseIDEterna:
    SetVar VAR_0x8007, LOCALID_ETERNA_NURSE
    Return

CommonScript_SetNurseIDHearthome:
    SetVar VAR_0x8007, LOCALID_HEARTHOME_NURSE
    Return

CommonScript_SetNurseIDPastoria:
    SetVar VAR_0x8007, LOCALID_PASTORIA_NURSE
    Return

CommonScript_SetNurseIDVeilstone:
    SetVar VAR_0x8007, LOCALID_VEILSTONE_NURSE
    Return

CommonScript_SetNurseIDSunyshore:
    SetVar VAR_0x8007, LOCALID_SUNYSHORE_NURSE
    Return

CommonScript_SetNurseIDSnowpoint:
    SetVar VAR_0x8007, LOCALID_SNOWPOINT_NURSE
    Return

CommonScript_SetNurseIDPokemonLeagueSouth:
    SetVar VAR_0x8007, LOCALID_LEAGUE_SOUTH_NURSE
    Return

CommonScript_SetNurseIDFightArea:
    SetVar VAR_0x8007, LOCALID_FIGHT_AREA_NURSE
    Return

CommonScript_SetNurseIDSandgem:
    SetVar VAR_0x8007, LOCALID_SANDGEM_NURSE
    Return

CommonScript_SetNurseIDFloaroma:
    SetVar VAR_0x8007, LOCALID_FLOAROMA_NURSE
    Return

CommonScript_SetNurseIDSolaceon:
    SetVar VAR_0x8007, LOCALID_SOLACEON_NURSE
    Return

CommonScript_SetNurseIDCelestic:
    SetVar VAR_0x8007, LOCALID_CELESTIC_NURSE
    Return

CommonScript_SetNurseIDSurvivalArea:
    SetVar VAR_0x8007, LOCALID_SURVIVAL_AREA_NURSE
    Return

CommonScript_SetNurseIDResortArea:
    SetVar VAR_0x8007, LOCALID_RESORT_AREA_NURSE
    Return

CommonScript_SetNurseIDPokemonLeagueNorth:
    SetVar VAR_0x8007, LOCALID_LEAGUE_NORTH_NURSE
    Return

    .balign 4, 0
CommonScript_Movement_PlayerTurnToMom:
    FaceWest
    EndMovement

    .balign 4, 0
CommonScript_Movement_MomTurnToPlayer:
    FaceEast
    EndMovement

    .balign 4, 0
CommonScript_Movement_NurseTurnToMachine:
    FaceWest
    EndMovement

CommonScript_Movement_Unused:
    FaceNorth
    EndMovement

CommonScript_Movement_Unused2:
    FaceEast
    EndMovement

    .balign 4, 0
CommonScript_Movement_NurseTurnToPlayer:
    FaceSouth
    EndMovement

CommonScript_Dummy2024:
    End

CommonScript_Geonet:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_205
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

CommonScript_2026:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    MessageFromTrainerType
    WaitButton
    CloseMessage
    ReleaseAll
    End

CommonScript_Vent:
    NPCMessage CommonStrings_Text_VentThatExchangesAir
    End

CommonScript_SweetScentNothingHere:
    NPCMessage CommonStrings_Text_SweetScentNothingHere
    End

CommonScript_SweetScentFaded:
    NPCMessage CommonStrings_Text_SweetScentFaded
    End

CommonScript_BikeParking:
    CheckItem ITEM_BICYCLE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, CommonScript_BikeParkingEnd
    LockAll
    PlaySE SEQ_SE_CONFIRM
    CheckPlayerOnBike VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, CommonScript_AskGetOffYourBike
    Message CommonStrings_Text_RideYourBike
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CommonScript_BikeParkingCloseMessage
    SetPlayerBike TRUE
    CloseMessage
    ReleaseAll
    End

CommonScript_AskGetOffYourBike:
    Message CommonStrings_Text_GetOffYourBike
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CommonScript_BikeParkingCloseMessage
    SetPlayerBike FALSE
    CloseMessage
    ReleaseAll
    End

CommonScript_BikeParkingCloseMessage:
    CloseMessage
    ReleaseAll
    End

CommonScript_BikeParkingEnd:
    End

CommonScript_HatchEgg:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message CommonStrings_Text_Oh
    WaitABPress
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    HatchEgg
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

CommonScript_RepelsEffectWoreOff:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message CommonStrings_Text_RepelsEffectWoreOff
    WaitABPress
    CloseMessage
    ReleaseAll
    End

_139D:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_0A5
    ReleaseAll
    End

CommonScript_BlockPokecenterBasement:
    NPCMessage CommonStrings_Text_UndergroundOffLimits
    End

CommonScript_PlateObtainedEngraving:
    Call CommonScript_DeterminePlateEngraving
    ReturnCommonScript
    End

CommonScript_DeterminePlateEngraving:
    AddVar VAR_NUM_PLATES_OBTAINED, 1
    CallIfGe VAR_NUM_PLATES_OBTAINED, 9, CommonScript_ResetPlateCount
    CallIfEq VAR_NUM_PLATES_OBTAINED, 1, CommonScript_Engraving1PlateObtained
    CallIfEq VAR_NUM_PLATES_OBTAINED, 2, CommonScript_Engraving2PlatesObtained
    CallIfEq VAR_NUM_PLATES_OBTAINED, 3, CommonScript_Engraving3PlatesObtained
    CallIfEq VAR_NUM_PLATES_OBTAINED, 4, CommonScript_Engraving4PlatesObtained
    CallIfEq VAR_NUM_PLATES_OBTAINED, 5, CommonScript_Engraving5PlatesObtained
    CallIfEq VAR_NUM_PLATES_OBTAINED, 6, CommonScript_Engraving6PlatesObtained
    CallIfEq VAR_NUM_PLATES_OBTAINED, 7, CommonScript_Engraving7PlatesObtained
    CallIfEq VAR_NUM_PLATES_OBTAINED, 8, CommonScript_Engraving8PlatesObtained
    Return

CommonScript_ResetPlateCount:
    SetVar VAR_NUM_PLATES_OBTAINED, 1
    Return

CommonScript_Engraving1PlateObtained:
    Message CommonStrings_Text_Engraving1PlateObtained
    Return

CommonScript_Engraving2PlatesObtained:
    Message CommonStrings_Text_Engraving2PlatesObtained
    Return

CommonScript_Engraving3PlatesObtained:
    Message CommonStrings_Text_Engraving3PlatesObtained
    Return

CommonScript_Engraving4PlatesObtained:
    Message CommonStrings_Text_Engraving4PlatesObtained
    Return

CommonScript_Engraving5PlatesObtained:
    Message CommonStrings_Text_Engraving5PlatesObtained
    Return

CommonScript_Engraving6PlatesObtained:
    Message CommonStrings_Text_Engraving6PlatesObtained
    Return

CommonScript_Engraving7PlatesObtained:
    Message CommonStrings_Text_Engraving7PlatesObtained
    Return

CommonScript_Engraving8PlatesObtained:
    Message CommonStrings_Text_Engraving8PlatesObtained
    Return

CommonScript_Dummy2037:
    End

CommonScript_TryUseAzureFlute:
    LockAll
    GetCurrentMapID VAR_0x8004
    GoToIfEq VAR_0x8004, 220, CommonScript_AskUseAzureFlute
    GoToIfEq VAR_0x8004, 584, CommonScript_AskUseAzureFlute
    GoToIfEq VAR_0x8004, 585, CommonScript_AskUseAzureFlute
    GoTo CommonScript_CantUseAzureFlute
    End

CommonScript_AskUseAzureFlute:
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfNe VAR_0x8004, 31, CommonScript_CantUseAzureFlute
    GoToIfNe VAR_0x8005, 52, CommonScript_CantUseAzureFlute
    CheckGameCompleted VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, CommonScript_CantUseAzureFlute
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, CommonScript_CantUseAzureFlute
    CheckDistributionEvent DISTRIBUTION_EVENT_ARCEUS, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, CommonScript_CantUseAzureFlute
    GoToIfSet FLAG_CAUGHT_ARCEUS, CommonScript_CantUseAzureFlute
    BufferPlayerName 0
    Message CommonStrings_Text_AskBlowIntoAzureFlute
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CommonScript_DontUseAzureFlute
    BufferPlayerName 0
    Message CommonStrings_Text_PlayerBlewAzureFlute
    CloseMessage
    WaitTime 30, VAR_RESULT
    PlayMusic SEQ_FUE
    WaitTime 540, VAR_RESULT
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    FadeScreenOut FADE_SCREEN_SPEED_SLOW, COLOR_WHITE
    WaitFadeScreen
    Warp MAP_HEADER_HALL_OF_ORIGIN, 0, VAR_0x8004, VAR_0x8005, DIR_NORTH
    FadeScreenIn FADE_SCREEN_SPEED_SLOW, COLOR_WHITE
    WaitFadeScreen
    Message CommonStrings_Text_GlowingStairwayAppeared
    WaitButton
    CloseMessage
    ReleaseAll
    End

CommonScript_CantUseAzureFlute:
    Message CommonStrings_Text_MeaninglessUsingAzureFlute
    WaitButton
    CloseMessage
    ReleaseAll
    End

CommonScript_DontUseAzureFlute:
    CloseMessage
    ReleaseAll
    End

CommonScript_SetCounterpartBGM:
    StopMusic 0
    GetPlayerGender VAR_RESULT
    CallIfEq VAR_RESULT, GENDER_MALE, CommonScript_SetTheGirlBGM
    CallIfEq VAR_RESULT, GENDER_FEMALE, CommonScript_SetTheBoyBGM
    ReturnCommonScript
    End

CommonScript_SetTheGirlBGM:
    SetBGM SEQ_THE_GIRL
    Return

CommonScript_SetTheBoyBGM:
    SetBGM SEQ_THE_BOY
    Return

CommonScript_SetRivalBGM:
    StopMusic 0
    SetBGM SEQ_THE_RIV
    ReturnCommonScript
    End

CommonScript_SetFollowMeBGM:
    StopMusic 0
    SetBGM SEQ_TSURETEKE
    ReturnCommonScript
    End

CommonScript_SetLookerBGM:
    StopMusic 0
    SetBGM SEQ_PL_HANDSOME
    ReturnCommonScript
    End

CommonScript_FadeToDefaultMusic:
    FadeOutBGM 0, 30
    StopMusic 0
    PlayDefaultMusic
    ReturnCommonScript
    End

CommonScript_GlobalTerminalMachine:
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0B3 VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    ScrCmd_2F6 VAR_0x8005, VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, CommonScript_GlobalTerminalMachineNoValidLogin
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReturnCommonScript
    End

CommonScript_GlobalTerminalMachineNoValidLogin:
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReturnCommonScript
    End

CommonScript_ShardCostWindowRoute212:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, TUTOR_LOCATION_ROUTE_212
    GoTo CommonScript_ShardCostWindow
    End

CommonScript_ShardCostWindowSurvivalArea:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, TUTOR_LOCATION_SURVIVAL_AREA
    GoTo CommonScript_ShardCostWindow
    End

CommonScript_ShardCostWindowSnowpointCity:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, TUTOR_LOCATION_SNOWPOINT_CITY
    GoTo CommonScript_ShardCostWindow
    End

CommonScript_ShardCostWindow:
    Message CommonStrings_Text_CheckShardsNeededForMove
    ShowMoveTutorMoveSelectionMenu PARTY_SLOT_NONE, VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8003, VAR_RESULT
    GoToIfEq VAR_0x8003, -2, CommonScript_NoMoveSelected
    ShowShardCost 21, 1, VAR_0x8003, VAR_RESULT
    WaitABPress
    CloseShardCostWindow
    GoTo CommonScript_NoMoveSelected
    End

CommonScript_NoMoveSelected:
    CloseMessage
    ReleaseAll
    End

CommonScript_CheckObtainedAllGoldPrints:
    GoToIfSet FLAG_OBTAINED_ALL_BATTLE_FRONTIER_GOLD_PRINTS, CommonScript_CheckObtainedAllGoldPrintsEnd
    GoToIfNe VAR_BATTLE_FACTORY_PRINT_STATE, 4, CommonScript_CheckObtainedAllGoldPrintsEnd
    GoToIfNe VAR_BATTLE_HALL_PRINT_STATE, 4, CommonScript_CheckObtainedAllGoldPrintsEnd
    GoToIfNe VAR_BATTLE_CASTLE_PRINT_STATE, 4, CommonScript_CheckObtainedAllGoldPrintsEnd
    GoToIfNe VAR_BATTLE_ARCADE_PRINT_STATE, 4, CommonScript_CheckObtainedAllGoldPrintsEnd
    GoToIfNe VAR_BATTLE_TOWER_PRINT_STATE, 4, CommonScript_CheckObtainedAllGoldPrintsEnd
    SetFlag FLAG_OBTAINED_ALL_BATTLE_FRONTIER_GOLD_PRINTS
    IncrementTrainerScore TRAINER_SCORE_EVENT_ALL_BATTLE_FRONTIER_GOLD_PRINTS
    GoTo CommonScript_CheckObtainedAllGoldPrintsEnd
    End

CommonScript_CheckObtainedAllGoldPrintsEnd:
    ReturnCommonScript
    End

CommonScript_GriseousOrbCouldNotBeRemoved:
    Message CommonStrings_Text_GriseousOrbCouldNotBeRemoved
    WaitButton
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

    .balign 4, 0
