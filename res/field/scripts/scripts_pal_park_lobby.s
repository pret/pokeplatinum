#include "macros/scrcmd.inc"
#include "res/text/bank/menu_entries.h"
#include "res/text/bank/pal_park_lobby.h"
#include "res/field/events/events_pal_park_lobby.h"
#include "generated/versions.h"
#include "constants/pokemon.h"


    ScriptEntry PalParkLobby_OnTransition
    ScriptEntry PalParkLobby_Worker
    ScriptEntry PalParkLobby_OnFrameTallyScore
    ScriptEntry PalParkLobby_RecordUnused
    ScriptEntry PalParkLobby_Daughter
    ScriptEntry PalParkLobby_Dad
    ScriptEntry PalParkLobby_ShowWatcherBoy
    ScriptEntry PalParkLobby_ComplaintsLady
    ScriptEntry PalParkLobby_RecordGuy
    ScriptEntry PalParkLobby_OnFrameProfOak
    ScriptEntry PalParkLobby_PoketchAppLady
    ScriptEntry PalParkLobby_OnFrameExitPalPark
    ScriptEntry PalParkLobby_GBASlotGiftLady
    ScriptEntryEnd

PalParkLobby_OnTransition:
    ClearFlag FLAG_ALT_MUSIC_PAL_PARK
    SetFlag FLAG_FIRST_ARRIVAL_POKE_PARK_FRONT_GATE
    GoToIfNe VAR_PAL_PARK_STATE, 0, PalParkLobby_SetWorkerPosAndDir
    End

PalParkLobby_SetWorkerPosAndDir:
    SetObjectEventPos LOCALID_WORKER, 8, 9
    SetObjectEventDir LOCALID_WORKER, DIR_WEST
    End

PalParkLobby_BufferRecord:
    GoToIfEq VAR_CATCHING_SHOW_RECORD, 2000, PalParkLobby_BufferRivalRecord
    BufferPlayerName 1
    BufferNumber 2, VAR_CATCHING_SHOW_RECORD
    Return

PalParkLobby_BufferRivalRecord:
    BufferRivalName 1
    BufferNumber 2, VAR_CATCHING_SHOW_RECORD
    Return

PalParkLobby_Worker:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, PalParkLobby_Worker_PlayerMale
    GoTo PalParkLobby_Worker_PlayerFemale

PalParkLobby_Worker_PlayerMale:
    GoToIfSet FLAG_PAL_PARK_TALKED_TO_RECEPTIONIST, PalParkLobby_Worker_Greeting_PlayerMale
    SetFlag FLAG_PAL_PARK_TALKED_TO_RECEPTIONIST
    BufferPlayerName 0
    Message PalParkLobby_Text_WelcomeToPalPark_PlayerMale
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PalParkLobby_Manual_FirstTime
    GoToIfEq VAR_RESULT, MENU_NO, PalParkLobby_Worker_DontParticipate
    End

PalParkLobby_Worker_PlayerFemale:
    GoToIfSet FLAG_PAL_PARK_TALKED_TO_RECEPTIONIST, PalParkLobby_Worker_Greeting_PlayerFemale
    SetFlag FLAG_PAL_PARK_TALKED_TO_RECEPTIONIST
    BufferPlayerName 0
    Message PalParkLobby_Text_WelcomeToPalPark_PlayerFemale
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PalParkLobby_Manual_FirstTime
    GoToIfEq VAR_RESULT, MENU_NO, PalParkLobby_Worker_DontParticipate
    End

PalParkLobby_Manual_FirstTime:
    Message PalParkLobby_Text_LetMeExplainPalPark
    GoTo PalParkLobby_OpenManualMenu

PalParkLobby_Manual_BasicRules:
    Message PalParkLobby_Text_Manual_BasicRules
    GoTo PalParkLobby_OpenManualMenu

PalParkLobby_Manual_CatchingShow:
    Message PalParkLobby_Text_Manual_CatchingShow
    GoTo PalParkLobby_OpenManualMenu

PalParkLobby_Manual_StockingPokemon:
    Message PalParkLobby_Text_Manual_StockingPokemon
    GoTo PalParkLobby_OpenManualMenu

PalParkLobby_OpenManualMenu:
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_PalPark_BasicRules, 0
    AddMenuEntryImm MenuEntries_Text_PalPark_CatchingShow, 1
    AddMenuEntryImm MenuEntries_Text_PalPark_StockingPokemon, 2
    AddMenuEntryImm MenuEntries_Text_PalPark_Understood, 4
    ShowMenu
    GoToIfEq VAR_RESULT, 0, PalParkLobby_Manual_BasicRules
    GoToIfEq VAR_RESULT, 1, PalParkLobby_Manual_CatchingShow
    GoToIfEq VAR_RESULT, 2, PalParkLobby_Manual_StockingPokemon
    GoTo PalParkLobby_Worker_AskParticipateFromManual

PalParkLobby_Worker_AskParticipateFromManual:
    Message PalParkLobby_Text_TakePartInCatchingShow
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, PalParkLobby_Worker_DontParticipate
PalParkLobby_Worker_CheckIfCanParticipate:
    SetVar VAR_RESULT, 0
    GetPCBoxesFreeSlotCount VAR_RESULT
    GoToIfLt VAR_RESULT, CATCHING_SHOW_MONS, PalParkLobby_Worker_PCBoxesFilled
    SetVar VAR_RESULT, 0
    GoToIfNotEnoughMonForCatchingShow PalParkLobby_Worker_NotEnoughPokemonMigrated
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, PalParkLobby_Worker_GiveParkBalls_PlayerMale
    GoTo PalParkLobby_Worker_GiveParkBalls_PlayerFemale

PalParkLobby_Worker_DontParticipate:
    Message PalParkLobby_Text_AwwThatsTooBad
    WaitButton
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Worker_Greeting_PlayerMale:
    BufferPlayerName 0
    Message PalParkLobby_Text_Greeting_PlayerMale
    GoTo PalParkLobby_Worker_OpenCatchingShowMenu

PalParkLobby_Worker_Greeting_PlayerFemale:
    BufferPlayerName 0
    Message PalParkLobby_Text_Greeting_PlayerFemale
    GoTo PalParkLobby_Worker_OpenCatchingShowMenu

PalParkLobby_Worker_OpenCatchingShowMenu:
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_PalPark_Enter, 0
    AddMenuEntryImm MenuEntries_Text_PalPark_Info, 1
    AddMenuEntryImm MenuEntries_Text_PalPark_Exit, 2
    ShowMenu
    GoToIfEq VAR_RESULT, 0, PalParkLobby_Worker_CheckIfCanParticipate
    GoToIfEq VAR_RESULT, 1, PalParkLobby_Manual
    GoToIfEq VAR_RESULT, 2, PalParkLobby_Worker_DontParticipate
    GoTo PalParkLobby_Worker_DontParticipate

PalParkLobby_Worker_GiveParkBalls_PlayerMale:
    Call PalParkLobby_BufferRecord
    BufferPlayerName 0
    Message PalParkLobby_Text_HereParkBalls_PlayerMale
    CloseMessage
    GoTo PalParkLobby_WalkInAndWarp

PalParkLobby_Worker_GiveParkBalls_PlayerFemale:
    Call PalParkLobby_BufferRecord
    BufferPlayerName 0
    Message PalParkLobby_Text_HereParkBalls_PlayerFemale
    CloseMessage
    GoTo PalParkLobby_WalkInAndWarp

PalParkLobby_WalkInAndWarp:
    ApplyMovement LOCALID_WORKER, PalParkLobby_Movement_WorkerMoveAside
    WaitMovement
    ApplyMovement LOCALID_PLAYER, PalParkLobby_Movement_PlayerEnterPalPark
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_PAL_PARK, 0, 24, 47, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

PalParkLobby_Worker_NotEnoughPokemonMigrated:
    Message PalParkLobby_Text_NotEnoughPokemonMigrated
    WaitButton
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Manual:
    Message PalParkLobby_Text_IllReadManual
    GoTo PalParkLobby_OpenManualMenu

PalParkLobby_Worker_PCBoxesFilled:
    Message PalParkLobby_Text_PCBoxesFilled
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
PalParkLobby_Movement_WorkerMoveAside:
    WalkOnSpotFastNorth
    WalkNormalNorth 2
    WalkNormalEast
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
PalParkLobby_Movement_PlayerEnterPalPark:
    WalkNormalNorth 5
    SetInvisible
    EndMovement

PalParkLobby_OnFrameExitPalPark:
    LockAll
    SetVar VAR_PAL_PARK_STATE, 0
    ApplyMovement LOCALID_PLAYER, PalParkLobby_Movement_PlayerExitPalPark
    WaitMovement
    ApplyMovement LOCALID_WORKER, PalParkLobby_Movement_WorkerMoveBack
    WaitMovement
    ReleaseAll
    End

PalParkLobby_OnFrameTallyScore:
    LockAll
    SetVar VAR_PAL_PARK_STATE, 0
    ApplyMovement LOCALID_PLAYER, PalParkLobby_Movement_PlayerWalkToWorker
    WaitMovement
    CalcCatchingShowPoints CATCHING_SHOW_CATCHING_POINTS, VAR_RESULT
    BufferNumber 0, VAR_RESULT
    CalcCatchingShowPoints CATCHING_SHOW_TIME_POINTS, VAR_RESULT
    BufferNumber 1, VAR_RESULT
    CalcCatchingShowPoints CATCHING_SHOW_TYPE_POINTS, VAR_RESULT
    BufferNumber 2, VAR_RESULT
    CalcCatchingShowPoints CATCHING_SHOW_TOTAL_POINTS, VAR_RESULT
    BufferNumber 3, VAR_RESULT
    Message PalParkLobby_Text_AllSixPokemonCaught
    CalcCatchingShowPoints CATCHING_SHOW_TOTAL_POINTS, VAR_RESULT
    GoToIfGt VAR_RESULT, VAR_CATCHING_SHOW_RECORD, PalParkLobby_Worker_RecordBroken
    Message PalParkLobby_Text_DecentRecord
    Call PalParkLobby_Worker_SetPrize
    GoTo PalParkLobby_Worker_AskStoreCaughtMon

PalParkLobby_Worker_RecordBroken:
    Message PalParkLobby_Text_OutstandingRecord
    Call PalParkLobby_Worker_SetPrize
    CalcCatchingShowPoints CATCHING_SHOW_TOTAL_POINTS, VAR_CATCHING_SHOW_RECORD
    GoTo PalParkLobby_Worker_AskStoreCaughtMon

PalParkLobby_Worker_AskStoreCaughtMon:
    Message PalParkLobby_Text_AskStoreCaughtMon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PalParkLobby_Worker_StoreCaughtMon
    Message PalParkLobby_Text_AskRedoCatchingShow
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PalParkLobby_Worker_DontStoreCaughtMon
    GoTo PalParkLobby_Worker_AskStoreCaughtMon

PalParkLobby_Worker_DontStoreCaughtMon:
    Message PalParkLobby_Text_GoForBetterScore
    WaitABPress
    CloseMessage
    GoTo PalParkLobby_Worker_End

PalParkLobby_Worker_StoreCaughtMon:
    MoveCatchingShowMonsToPCBoxes
    Message PalParkLobby_Text_PokemonHaveBeenBoxed
    Message PalParkLobby_Text_ComeSeeUsAgain
    WaitABPress
    CloseMessage
    GoTo PalParkLobby_Worker_End

PalParkLobby_Worker_End:
    ApplyMovement LOCALID_PLAYER, PalParkLobby_Movement_PlayerLeaveCounter
    WaitMovement
    ApplyMovement LOCALID_WORKER, PalParkLobby_Movement_WorkerMoveBack
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
PalParkLobby_Movement_WorkerMoveBack:
    WalkNormalWest
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
PalParkLobby_Movement_PlayerExitPalPark:
    WalkNormalSouth 5
    EndMovement

    .balign 4, 0
PalParkLobby_Movement_PlayerWalkToWorker:
    WalkNormalSouth 2
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
PalParkLobby_Movement_PlayerLeaveCounter:
    WalkNormalSouth 4
    EndMovement

PalParkLobby_RecordUnused:
    NPCMessage PalParkLobby_Text_CurrentRecordHolder
    End

PalParkLobby_Daughter:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    GoToIfEq VAR_RESULT, 2, PalParkLobby_Daughter_IHopeYouDoBetter
    GoToIfEq VAR_RESULT, 1, PalParkLobby_Daughter_YourCatchingShowWasFantastic
    GoTo PalParkLobby_Daughter_CameToSeeCatchingShow

PalParkLobby_Daughter_CameToSeeCatchingShow:
    Message PalParkLobby_Text_CameToSeeCatchingShow
    WaitButton
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Daughter_YourCatchingShowWasFantastic:
    Message PalParkLobby_Text_YourCatchingShowWasFantastic
    WaitButton
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Daughter_IHopeYouDoBetter:
    Message PalParkLobby_Text_IHopeYouDoBetter
    WaitButton
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Dad:
    BufferPlayerName 0
    NPCMessage PalParkLobby_Text_DaughterIsBigFan
    End

PalParkLobby_ShowWatcherBoy:
    NPCMessage PalParkLobby_Text_RareAndExoticPokemon
    End

PalParkLobby_ComplaintsLady:
    NPCMessage PalParkLobby_Text_RarePokemonTakeLonger
    End

PalParkLobby_RecordGuy:
    Call PalParkLobby_BufferRecord
    NPCMessage PalParkLobby_Text_CurrentRecordHolder
    End

PalParkLobby_OnFrameProfOak:
    LockAll
    ClearFlag FLAG_ETERNA_CITY_SOUTH_HOUSE_HIDE_PROF_OAK
    SetVar VAR_CATCHING_SHOW_RECORD, 2000
    ApplyMovement LOCALID_PROF_OAK, PalParkLobby_Movement_ProfOakNoticePlayer
    WaitMovement
    GetPlayerGender VAR_MAP_LOCAL_0
    BufferPlayerName 0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, PalParkLobby_ThisIsPalPark_PlayerMale
    GoTo PalParkLobby_ThisIsPalPark_PlayerFemale

PalParkLobby_ThisIsPalPark_PlayerMale:
    Message PalParkLobby_Text_Oak_ThisIsPalPark_PlayerMale
    GoTo PalParkLobby_PokemonFromAroundTheCountry

PalParkLobby_ThisIsPalPark_PlayerFemale:
    Message PalParkLobby_Text_Oak_ThisIsPalPark_PlayerFemale
    GoTo PalParkLobby_PokemonFromAroundTheCountry

PalParkLobby_PokemonFromAroundTheCountry:
    Message PalParkLobby_Text_Oak_PokemonFromAroundTheCountry
    CloseMessage
    ApplyMovement LOCALID_PROF_OAK, PalParkLobby_Movement_ProfOakExclamationMark
    WaitMovement
    Message PalParkLobby_Text_Oak_GiftTrainerCounterApp
    SetVar VAR_0x8004, POKETCH_APPID_TRAINERCOUNTER
    Common_GivePoketchApp
    Message PalParkLobby_Text_Oak_InEternaForSomeTime
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, PalParkLobby_Movement_PlayerMoveAside
    WaitMovement
    ApplyMovement LOCALID_PROF_OAK, PalParkLobby_Movement_ProfOakLeave
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_PROF_OAK
    WaitSE SEQ_SE_DP_KAIDAN2
    SetVar VAR_PAL_PARK_LOBBY_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
PalParkLobby_Movement_ProfOakNoticePlayer:
    EmoteExclamationMark
    Delay8
    WalkNormalSouth 3
    EndMovement

    .balign 4, 0
PalParkLobby_Movement_ProfOakExclamationMark:
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
PalParkLobby_Movement_ProfOakLeave:
    WalkNormalSouth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
PalParkLobby_Movement_PlayerMoveAside:
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

PalParkLobby_PoketchAppLady:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_MAP_LOCAL_A, 1, PalParkLobby_PoketchAppLady_JustReceivedKitchenTimer
    GoToIfEq VAR_MAP_LOCAL_A, 2, PalParkLobby_PoketchAppLady_JustReceivedColorChanger
    CheckPoketchAppRegistered POKETCH_APPID_COLORCHANGER, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, PalParkLobby_PoketchAppLady_ReceivedAllPoketchApps
    Message PalParkLobby_Text_PalParkIsScintillating
    Message PalParkLobby_Text_NeverSeenPokemon
    CheckPoketchAppRegistered POKETCH_APPID_KITCHENTIMER, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, PalParkLobby_PoketchAppLady_CheckKecleon
    Message PalParkLobby_Text_PokemonThatJustEatsAndSleeps
    CheckPartyHasSpecies VAR_RESULT, SPECIES_SNORLAX
    GoToIfEq VAR_RESULT, 0, PalParkLobby_PoketchAppLady_DoesntHaveSpecies
    Message PalParkLobby_Text_ShowSnorlaxForApp
    SetVar VAR_0x8004, POKETCH_APPID_KITCHENTIMER
    Common_GivePoketchApp
    WaitButton
    SetVar VAR_MAP_LOCAL_A, 1
    CloseMessage
    ReleaseAll
    End

PalParkLobby_PoketchAppLady_CheckKecleon:
    Message PalParkLobby_Text_PokemonThatChangesColor
    CheckPartyHasSpecies VAR_RESULT, SPECIES_KECLEON
    GoToIfEq VAR_RESULT, 0, PalParkLobby_PoketchAppLady_DoesntHaveSpecies
    Message PalParkLobby_Text_ShowKecleonForApp
    SetVar VAR_0x8004, POKETCH_APPID_COLORCHANGER
    Common_GivePoketchApp
    WaitButton
    SetVar VAR_MAP_LOCAL_A, 2
    CloseMessage
    ReleaseAll
    End

PalParkLobby_PoketchAppLady_JustReceivedKitchenTimer:
    BufferPoketchAppName 0, POKETCH_APPID_KITCHENTIMER
    Message PalParkLobby_Text_KitchenTimerMakesYouCook
    WaitButton
    CloseMessage
    ReleaseAll
    End

PalParkLobby_PoketchAppLady_JustReceivedColorChanger:
    BufferPoketchAppName 0, POKETCH_APPID_COLORCHANGER
    Message PalParkLobby_Text_ColorsChangeMood
    WaitButton
    CloseMessage
    ReleaseAll
    End

PalParkLobby_PoketchAppLady_DoesntHaveSpecies:
    Message PalParkLobby_Text_WhatWasPokemonsName
    WaitButton
    CloseMessage
    ReleaseAll
    End

PalParkLobby_PoketchAppLady_ReceivedAllPoketchApps:
    Message PalParkLobby_Text_AreYouTakingChallenge
    WaitButton
    CloseMessage
    ReleaseAll
    End

PalParkLobby_GBASlotGiftLady:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_MAP_LOCAL_9, 1, PalParkLobby_GBASlotGiftLady_JustReceivedGift
    GetGBACartridgeVersion VAR_RESULT
    GoToIfEq VAR_RESULT, VERSION_FIRERED, PalParkLobby_GBASlotGiftLady_FireRed
    GoToIfEq VAR_RESULT, VERSION_LEAFGREEN, PalParkLobby_GBASlotGiftLady_LeafGreen
    GoToIfEq VAR_RESULT, VERSION_SAPPHIRE, PalParkLobby_GBASlotGiftLady_Sapphire
    GoToIfEq VAR_RESULT, VERSION_RUBY, PalParkLobby_GBASlotGiftLady_Ruby
    GoToIfEq VAR_RESULT, VERSION_EMERALD, PalParkLobby_GBASlotGiftLady_Emerald
    GoTo PalParkLobby_GBASlotGiftLady_NoGBAGame
    End

PalParkLobby_GBASlotGiftLady_NoGBAGame:
    Message PalParkLobby_Text_ClashTrainerAndPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

PalParkLobby_GBASlotGiftLady_JustReceivedGift:
    Message PalParkLobby_Text_CatchingShowsAndContests
    WaitButton
    CloseMessage
    ReleaseAll
    End

PalParkLobby_GBASlotGiftLady_FireRed:
    SetVar VAR_0x8004, ACCESSORY_CROWN
    SetVar VAR_0x8005, 1
    CanFitAccessory VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PalParkLobby_GBASlotGiftLady_NoGBAGame
    Message PalParkLobby_Text_MustCrownYou
    GoTo PalParkLobby_GBASlotGiftLady_GiveAccessory
    End

PalParkLobby_GBASlotGiftLady_LeafGreen:
    SetVar VAR_0x8004, ACCESSORY_TIARA
    SetVar VAR_0x8005, 1
    CanFitAccessory VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PalParkLobby_GBASlotGiftLady_NoGBAGame
    Message PalParkLobby_Text_CompelledToGiveTiara
    GoTo PalParkLobby_GBASlotGiftLady_GiveAccessory
    End

PalParkLobby_GBASlotGiftLady_Sapphire:
    SetVar VAR_0x8004, BACKDROP_SEAFLOOR
    CheckBackdrop VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PalParkLobby_GBASlotGiftLady_NoGBAGame
    Message PalParkLobby_Text_TakeThisSeafloorBackdrop
    GoTo PalParkLobby_GBASlotGiftLady_GiveBackdrop
    End

PalParkLobby_GBASlotGiftLady_Ruby:
    SetVar VAR_0x8004, BACKDROP_UNDERGROUND
    CheckBackdrop VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PalParkLobby_GBASlotGiftLady_NoGBAGame
    Message PalParkLobby_Text_TakeThisUndergroundBackdrop
    GoTo PalParkLobby_GBASlotGiftLady_GiveBackdrop
    End

PalParkLobby_GBASlotGiftLady_Emerald:
    SetVar VAR_0x8004, BACKDROP_SKY
    CheckBackdrop VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PalParkLobby_GBASlotGiftLady_NoGBAGame
    Message PalParkLobby_Text_TakeThisSkyBackdrop
    GoTo PalParkLobby_GBASlotGiftLady_GiveBackdrop
    End

PalParkLobby_GBASlotGiftLady_GiveAccessory:
    Common_GiveAccessoryWaitForConfirm
    SetVar VAR_MAP_LOCAL_9, 1
    CloseMessage
    ReleaseAll
    End

PalParkLobby_GBASlotGiftLady_GiveBackdrop:
    Common_ObtainContestBackdropWaitForConfirm
    SetVar VAR_MAP_LOCAL_9, 1
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Worker_SetPrize:
    CalcCatchingShowPoints CATCHING_SHOW_TOTAL_POINTS, VAR_RESULT
    CallIfLt VAR_RESULT, 3000, PalParkLobby_Worker_SetPrize_Level1
    CallIfLt VAR_RESULT, 3300, PalParkLobby_Worker_SetPrize_Level2
    CallIfLt VAR_RESULT, 3500, PalParkLobby_Worker_SetPrize_Level3
    CallIfLt VAR_RESULT, 10000, PalParkLobby_Worker_SetPrize_Level4
    Return

PalParkLobby_Worker_SetPrize_Level1:
    GetRandom VAR_0x8006, 8
    CallIfEq VAR_0x8006, 0, PalParkLobby_SetPrize_CheriBerry
    CallIfEq VAR_0x8006, 1, PalParkLobby_SetPrize_ChestoBerry
    CallIfEq VAR_0x8006, 2, PalParkLobby_SetPrize_PechaBerry
    CallIfEq VAR_0x8006, 3, PalParkLobby_SetPrize_RawstBerry
    CallIfEq VAR_0x8006, 4, PalParkLobby_SetPrize_AspearBerry
    CallIfEq VAR_0x8006, 5, PalParkLobby_SetPrize_LeppaBerry
    CallIfEq VAR_0x8006, 6, PalParkLobby_SetPrize_OranBerry
    CallIfEq VAR_0x8006, 7, PalParkLobby_SetPrize_PersimBerry
    Call PalParkLobby_Worker_CheckIfCanGivePrize
    Return

PalParkLobby_Worker_SetPrize_Level2:
    GetRandom VAR_0x8006, 5
    CallIfEq VAR_0x8006, 0, PalParkLobby_SetPrize_FigyBerry
    CallIfEq VAR_0x8006, 1, PalParkLobby_SetPrize_WikiBerry
    CallIfEq VAR_0x8006, 2, PalParkLobby_SetPrize_MagoBerry
    CallIfEq VAR_0x8006, 3, PalParkLobby_SetPrize_AguavBerry
    CallIfEq VAR_0x8006, 4, PalParkLobby_SetPrize_IapapaBerry
    Call PalParkLobby_Worker_CheckIfCanGivePrize
    Return

PalParkLobby_Worker_SetPrize_Level3:
    GetRandom VAR_0x8006, 7
    CallIfEq VAR_0x8006, 0, PalParkLobby_SetPrize_RazzBerry
    CallIfEq VAR_0x8006, 1, PalParkLobby_SetPrize_BlukBerry
    CallIfEq VAR_0x8006, 2, PalParkLobby_SetPrize_NanabBerry
    CallIfEq VAR_0x8006, 3, PalParkLobby_SetPrize_WepearBerry
    CallIfEq VAR_0x8006, 4, PalParkLobby_SetPrize_PinapBerry
    CallIfEq VAR_0x8006, 5, PalParkLobby_SetPrize_LumBerry
    CallIfEq VAR_0x8006, 6, PalParkLobby_SetPrize_SitrusBerry
    Call PalParkLobby_Worker_CheckIfCanGivePrize
    Return

PalParkLobby_Worker_SetPrize_Level4:
    GetRandom VAR_0x8006, 6
    CallIfEq VAR_0x8006, 0, PalParkLobby_SetPrize_PomegBerry
    CallIfEq VAR_0x8006, 1, PalParkLobby_SetPrize_KelpsyBerry
    CallIfEq VAR_0x8006, 2, PalParkLobby_SetPrize_QualotBerry
    CallIfEq VAR_0x8006, 3, PalParkLobby_SetPrize_HondewBerry
    CallIfEq VAR_0x8006, 4, PalParkLobby_SetPrize_GrepaBerry
    CallIfEq VAR_0x8006, 5, PalParkLobby_SetPrize_TamatoBerry
    Call PalParkLobby_Worker_CheckIfCanGivePrize
    Return

PalParkLobby_Worker_CheckIfCanGivePrize:
    CanFitItem VAR_0x8006, 1, VAR_0x8007
    CallIfNe VAR_0x8007, 0, PalParkLobby_Worker_GivePrize
    SetVar VAR_RESULT, 0x2710
    Return

PalParkLobby_Worker_GivePrize:
    Message PalParkLobby_Text_TimeForPrize
    SetVar VAR_0x8004, VAR_0x8006
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    Return

PalParkLobby_SetPrize_CheriBerry:
    SetVar VAR_0x8006, ITEM_CHERI_BERRY
    Return

PalParkLobby_SetPrize_ChestoBerry:
    SetVar VAR_0x8006, ITEM_CHESTO_BERRY
    Return

PalParkLobby_SetPrize_PechaBerry:
    SetVar VAR_0x8006, ITEM_PECHA_BERRY
    Return

PalParkLobby_SetPrize_RawstBerry:
    SetVar VAR_0x8006, ITEM_RAWST_BERRY
    Return

PalParkLobby_SetPrize_AspearBerry:
    SetVar VAR_0x8006, ITEM_ASPEAR_BERRY
    Return

PalParkLobby_SetPrize_LeppaBerry:
    SetVar VAR_0x8006, ITEM_LEPPA_BERRY
    Return

PalParkLobby_SetPrize_OranBerry:
    SetVar VAR_0x8006, ITEM_ORAN_BERRY
    Return

PalParkLobby_SetPrize_PersimBerry:
    SetVar VAR_0x8006, ITEM_PERSIM_BERRY
    Return

PalParkLobby_SetPrize_FigyBerry:
    SetVar VAR_0x8006, ITEM_FIGY_BERRY
    Return

PalParkLobby_SetPrize_WikiBerry:
    SetVar VAR_0x8006, ITEM_WIKI_BERRY
    Return

PalParkLobby_SetPrize_MagoBerry:
    SetVar VAR_0x8006, ITEM_MAGO_BERRY
    Return

PalParkLobby_SetPrize_AguavBerry:
    SetVar VAR_0x8006, ITEM_AGUAV_BERRY
    Return

PalParkLobby_SetPrize_IapapaBerry:
    SetVar VAR_0x8006, ITEM_IAPAPA_BERRY
    Return

PalParkLobby_SetPrize_RazzBerry:
    SetVar VAR_0x8006, ITEM_RAZZ_BERRY
    Return

PalParkLobby_SetPrize_BlukBerry:
    SetVar VAR_0x8006, ITEM_BLUK_BERRY
    Return

PalParkLobby_SetPrize_NanabBerry:
    SetVar VAR_0x8006, ITEM_NANAB_BERRY
    Return

PalParkLobby_SetPrize_WepearBerry:
    SetVar VAR_0x8006, ITEM_WEPEAR_BERRY
    Return

PalParkLobby_SetPrize_PinapBerry:
    SetVar VAR_0x8006, ITEM_PINAP_BERRY
    Return

PalParkLobby_SetPrize_LumBerry:
    SetVar VAR_0x8006, ITEM_LUM_BERRY
    Return

PalParkLobby_SetPrize_SitrusBerry:
    SetVar VAR_0x8006, ITEM_SITRUS_BERRY
    Return

PalParkLobby_SetPrize_PomegBerry:
    SetVar VAR_0x8006, ITEM_POMEG_BERRY
    Return

PalParkLobby_SetPrize_KelpsyBerry:
    SetVar VAR_0x8006, ITEM_KELPSY_BERRY
    Return

PalParkLobby_SetPrize_QualotBerry:
    SetVar VAR_0x8006, ITEM_QUALOT_BERRY
    Return

PalParkLobby_SetPrize_HondewBerry:
    SetVar VAR_0x8006, ITEM_HONDEW_BERRY
    Return

PalParkLobby_SetPrize_GrepaBerry:
    SetVar VAR_0x8006, ITEM_GREPA_BERRY
    Return

PalParkLobby_SetPrize_TamatoBerry:
    SetVar VAR_0x8006, ITEM_TAMATO_BERRY
    Return

    .balign 4, 0
