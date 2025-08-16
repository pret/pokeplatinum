#include "macros/scrcmd.inc"
#include "res/text/bank/menu_entries.h"
#include "res/text/bank/pal_park_lobby.h"
#include "generated/versions.h"
#include "constants/pokemon.h"

#define LOCALID_OAK 1
#define LOCALID_RECEPCIONIST 7


    ScriptEntry PalParkLobby_OnLoad
    ScriptEntry PalParkLobby_Receptionist
    ScriptEntry PalParkLobby_Trigger_TallyScore
    ScriptEntry PalParkLobby_RecordUnused
    ScriptEntry PalParkLobby_Daughter
    ScriptEntry PalParkLobby_Dad
    ScriptEntry PalParkLobby_ShowWatcherBoy
    ScriptEntry PalParkLobby_ComplaintsLady
    ScriptEntry PalParkLobby_RecordGuy
    ScriptEntry PalParkLobby_Oak
    ScriptEntry PalParkLobby_PoketchAppLady
    ScriptEntry _02D8
    ScriptEntry PalParkLobby_GBASlotGiftLady
    ScriptEntryEnd

PalParkLobby_OnLoad:
    ClearFlag FLAG_ALT_MUSIC_PAL_PARK
    SetFlag FLAG_FIRST_ARRIVAL_POKE_PARK_FRONT_GATE
    GoToIfNe VAR_PAL_PARK_STATE, 0, PalParkLobby_SetRecepcionistPosAndDir
    End

PalParkLobby_SetRecepcionistPosAndDir:
    SetObjectEventPos LOCALID_RECEPCIONIST, 8, 9
    SetObjectEventDir LOCALID_RECEPCIONIST, DIR_WEST
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

PalParkLobby_Receptionist:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, PalParkLobby_Receptionist_PlayerMale
    GoTo PalParkLobby_Receptionist_PlayerFemale

PalParkLobby_Receptionist_PlayerMale:
    GoToIfSet FLAG_PAL_PARK_TALKED_TO_RECEPTIONIST, PalParkLobby_Receptionist_DidYouComeToParticipate_PlayerMale
    SetFlag FLAG_PAL_PARK_TALKED_TO_RECEPTIONIST
    BufferPlayerName 0
    Message PalParkLobby_Text_WelcomeToPalPark_PlayerMale
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PalParkLobby_Manual_FirstTime
    GoToIfEq VAR_RESULT, MENU_NO, PalParkLobby_Receptionist_DontParticipate
    End

PalParkLobby_Receptionist_PlayerFemale:
    GoToIfSet FLAG_PAL_PARK_TALKED_TO_RECEPTIONIST, PalParkLobby_Receptionist_DidYouComeToParticipate_PlayerFemale
    SetFlag FLAG_PAL_PARK_TALKED_TO_RECEPTIONIST
    BufferPlayerName 0
    Message PalParkLobby_Text_WelcomeToPalPark_PlayerFemale
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PalParkLobby_Manual_FirstTime
    GoToIfEq VAR_RESULT, MENU_NO, PalParkLobby_Receptionist_DontParticipate
    End

PalParkLobby_Manual_FirstTime:
    Message PalParkLobby_Text_YesYouAgreedToParticipateItsAHappyDayForMe
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
    GoTo PalParkLobby_Receptionist_AskParticipateFromManual

PalParkLobby_Receptionist_AskParticipateFromManual:
    Message PalParkLobby_Text_WouldYouLikeToTakePartInACatchingShowNow
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, PalParkLobby_Receptionist_DontParticipate
PalParkLobby_Receptionist_CheckIfCanParticipate:
    SetVar VAR_RESULT, 0
    GetPCBoxesFreeSlotCount VAR_RESULT
    GoToIfLt VAR_RESULT, CATCHING_SHOW_MONS, PalParkLobby_Receptionist_NotEnoughSpaceInPCBoxes
    SetVar VAR_RESULT, 0
    GoToIfNotEnoughMonForCatchingShow PalParkLobby_Receptionist_NotEnoughMonForCatchingShow
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, PalParkLobby_Receptionist_GiveParkBalls_PlayerMale
    GoTo PalParkLobby_Receptionist_GiveParkBalls_PlayerFemale

PalParkLobby_Receptionist_DontParticipate:
    Message PalParkLobby_Text_AwwThatsTooBad
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Receptionist_DidYouComeToParticipate_PlayerMale:
    BufferPlayerName 0
    Message PalParkLobby_Text_Greeting_PlayerMale
    GoTo PalParkLobby_Receptionist_OpenCatchingShowMenu

PalParkLobby_Receptionist_DidYouComeToParticipate_PlayerFemale:
    BufferPlayerName 0
    Message PalParkLobby_Text_Greeting_PlayerFemale
    GoTo PalParkLobby_Receptionist_OpenCatchingShowMenu

PalParkLobby_Receptionist_OpenCatchingShowMenu:
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_PalPark_Enter, 0
    AddMenuEntryImm MenuEntries_Text_PalPark_Info, 1
    AddMenuEntryImm MenuEntries_Text_PalPark_Exit, 2
    ShowMenu
    GoToIfEq VAR_RESULT, 0, PalParkLobby_Receptionist_CheckIfCanParticipate
    GoToIfEq VAR_RESULT, 1, PalParkLobby_Manual
    GoToIfEq VAR_RESULT, 2, PalParkLobby_Receptionist_DontParticipate
    GoTo PalParkLobby_Receptionist_DontParticipate

PalParkLobby_Receptionist_GiveParkBalls_PlayerMale:
    Call PalParkLobby_BufferRecord
    BufferPlayerName 0
    Message PalParkLobby_Text_OkHereAreYourParkBalls_PlayerMale
    CloseMessage
    GoTo PalParkLobby_WalkInAndWarp

PalParkLobby_Receptionist_GiveParkBalls_PlayerFemale:
    Call PalParkLobby_BufferRecord
    BufferPlayerName 0
    Message PalParkLobby_Text_OkHereAreYourParkBalls_PlayerFemale
    CloseMessage
    GoTo PalParkLobby_WalkInAndWarp

PalParkLobby_WalkInAndWarp:
    ApplyMovement LOCALID_RECEPCIONIST, _02B8
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _02CC
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_PAL_PARK, 0, 24, 47, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

PalParkLobby_Receptionist_NotEnoughMonForCatchingShow:
    Message PalParkLobby_Text_YouDontHaveEnoughPokemonForACatchingShow
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Manual:
    Message PalParkLobby_Text_VeryWellLetMeExplainHowThingsWorkAroundHere
    GoTo PalParkLobby_OpenManualMenu

PalParkLobby_Receptionist_NotEnoughSpaceInPCBoxes:
    Message PalParkLobby_Text_YouHaveNoRoomForSixMorePokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_02B8:
    WalkOnSpotFastNorth
    WalkNormalNorth 2
    WalkNormalEast
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_02CC:
    WalkNormalNorth 5
    SetInvisible
    EndMovement

_02D8:
    LockAll
    SetVar VAR_PAL_PARK_STATE, 0
    ApplyMovement LOCALID_PLAYER, _03E4
    WaitMovement
    ApplyMovement LOCALID_RECEPCIONIST, _03D8
    WaitMovement
    ReleaseAll
    End

PalParkLobby_Trigger_TallyScore:
    LockAll
    SetVar VAR_PAL_PARK_STATE, 0
    ApplyMovement LOCALID_PLAYER, _03EC
    WaitMovement
    CalcCatchingShowPoints CATCHING_SHOW_CATCHING_POINTS, VAR_RESULT
    BufferNumber 0, VAR_RESULT
    CalcCatchingShowPoints CATCHING_SHOW_TIME_POINTS, VAR_RESULT
    BufferNumber 1, VAR_RESULT
    CalcCatchingShowPoints CATCHING_SHOW_TYPE_POINTS, VAR_RESULT
    BufferNumber 2, VAR_RESULT
    CalcCatchingShowPoints CATCHING_SHOW_TOTAL_POINTS, VAR_RESULT
    BufferNumber 3, VAR_RESULT
    Message PalParkLobby_Text_CongratulationsThatsAllSixPokemonCaught
    CalcCatchingShowPoints CATCHING_SHOW_TOTAL_POINTS, VAR_RESULT
    GoToIfGt VAR_RESULT, VAR_CATCHING_SHOW_RECORD, PalParkLobby_Receptionist_RecordBroken
    Message PalParkLobby_Text_GoodThatsADecentRecord
    Call PalParkLobby_Receptionist_SetPrize
    GoTo PalParkLobby_Receptionist_AskToStoreCaughtMon

PalParkLobby_Receptionist_RecordBroken:
    Message PalParkLobby_Text_WowThatsAnOutstandingRecord
    Call PalParkLobby_Receptionist_SetPrize
    CalcCatchingShowPoints CATCHING_SHOW_TOTAL_POINTS, VAR_CATCHING_SHOW_RECORD
    GoTo PalParkLobby_Receptionist_AskToStoreCaughtMon

PalParkLobby_Receptionist_AskToStoreCaughtMon:
    Message PalParkLobby_Text_AskToStoreCaughtMon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PalParkLobby_Receptionist_StoreCaughtMon
    Message PalParkLobby_Text_AskToRedoCatchingShow
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PalParkLobby_Receptionist_DontStoreCaughtMon
    GoTo PalParkLobby_Receptionist_AskToStoreCaughtMon

PalParkLobby_Receptionist_DontStoreCaughtMon:
    Message PalParkLobby_Text_OhThenItMightBeFunForYouToGoForAnEvenBetterScore
    WaitABPress
    CloseMessage
    GoTo PalParkLobby_Receptionist_End

PalParkLobby_Receptionist_StoreCaughtMon:
    MoveCatchingShowMonsToPCBoxes
    Message PalParkLobby_Text_DoneYourPokemonHaveBeenBoxedAway
    Message PalParkLobby_Text_IfYouWantToDoAnotherCatchingShowComeSeeUsAgain
    WaitABPress
    CloseMessage
    GoTo PalParkLobby_Receptionist_End

PalParkLobby_Receptionist_End:
    ApplyMovement LOCALID_PLAYER, _03F8
    WaitMovement
    ApplyMovement LOCALID_RECEPCIONIST, _03D8
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_03D8:
    WalkNormalWest
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_03E4:
    WalkNormalSouth 5
    EndMovement

    .balign 4, 0
_03EC:
    WalkNormalSouth 2
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
_03F8:
    WalkNormalSouth 4
    EndMovement

PalParkLobby_RecordUnused:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PalParkLobby_Text_TheCurrentRecordHolderIsXWithYPoints
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Daughter:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    /* These seem to go functionally unused? Even after doing a Catching Show, they don't trigger */
    GoToIfEq VAR_RESULT, 2, PalParkLobby_Daughter_IHopeYouDoBetterNextTime
    GoToIfEq VAR_RESULT, 1, PalParkLobby_Daughter_YourCatchingShowWasFantastic
    GoTo PalParkLobby_Daughter_ICameToSeePlayersCatchingShow

PalParkLobby_Daughter_ICameToSeePlayersCatchingShow:
    Message PalParkLobby_Text_ICameToSeePlayersCatchingShowWithDaddy
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Daughter_YourCatchingShowWasFantastic:
    Message PalParkLobby_Text_EekPlayerYourCatchingShowWasFantastic
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Daughter_IHopeYouDoBetterNextTime:
    Message PalParkLobby_Text_OhPlayerIHopeYouDoBetterNextTime
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Dad:
    BufferPlayerName 0
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PalParkLobby_Text_PlayerMyDaughterIsABigFanOfYours
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_ShowWatcherBoy:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PalParkLobby_Text_WeGetToSeeRareAndExoticPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_ComplaintsLady:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PalParkLobby_Text_RarePokemonTakeLongerToAppear
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_RecordGuy:
    Call PalParkLobby_BufferRecord
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PalParkLobby_Text_TheCurrentRecordHolderIsXWithYPoints
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Oak:
    LockAll
    ClearFlag FLAG_ETERNA_CITY_SOUTH_HOUSE_HIDE_PROF_OAK
    SetVar VAR_CATCHING_SHOW_RECORD, 2000
    ApplyMovement LOCALID_OAK, _0548
    WaitMovement
    GetPlayerGender VAR_MAP_LOCAL_0
    BufferPlayerName 0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, PalParkLobby_Oak_ThisIsPalPark_PlayerMale
    GoTo PalParkLobby_Oak_ThisIsPalPark_PlayerFemale

PalParkLobby_Oak_ThisIsPalPark_PlayerMale:
    Message PalParkLobby_Text_Oak_AhPlayerThisIsItThisIsPalPark_PlayerMale
    GoTo PalParkLobby_Oak_PokemonFromAroundTheCountryCanBeBroughtHere

PalParkLobby_Oak_ThisIsPalPark_PlayerFemale:
    Message PalParkLobby_Text_Oak_AhPlayerThisIsItThisIsPalPark_PlayerFemale
    GoTo PalParkLobby_Oak_PokemonFromAroundTheCountryCanBeBroughtHere

PalParkLobby_Oak_PokemonFromAroundTheCountryCanBeBroughtHere:
    Message PalParkLobby_Text_Oak_PokemonFromAroundTheCountryCanBeBroughtHere
    CloseMessage
    ApplyMovement LOCALID_OAK, _0558
    WaitMovement
    Message PalParkLobby_Text_Oak_LetMeMakeAGiftOfThisTrainerCounterApp
    SetVar VAR_0x8004, 19
    CallCommonScript CommonScript_Unk09
    Message PalParkLobby_Text_Oak_IPlanToBeInEternaCityForSomeTime
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, _0570
    WaitMovement
    ApplyMovement LOCALID_OAK, _0564
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 1
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar VAR_UNK_0x40C6, 1
    ReleaseAll
    End

    .balign 4, 0
_0548:
    EmoteExclamationMark
    Delay8
    WalkNormalSouth 3
    EndMovement

    .balign 4, 0
_0558:
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
_0564:
    WalkNormalSouth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0570:
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

PalParkLobby_PoketchAppLady:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_MAP_LOCAL_A, 1, PalParkLobby_PoketchAppLady_JustReceivedKitchenTimer
    GoToIfEq VAR_MAP_LOCAL_A, 2, PalParkLobby_PoketchAppLady_JustReceivedColorChanger
    CheckPoketchAppRegistered POKETCH_APPID_COLORCHANGER, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, PalParkLobby_PoketchAppLady_ReceivedAllPoketchApps
    Message PalParkLobby_Text_PalParkIsSoScintillating
    Message PalParkLobby_Text_IveNeverSeenSomePokemon
    CheckPoketchAppRegistered POKETCH_APPID_KITCHENTIMER, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, PalParkLobby_PoketchAppLady_CheckKecleon
    Message PalParkLobby_Text_APokemonThatDoesNothingButEatAndSleep
    CheckPartyHasSpecies VAR_RESULT, SPECIES_SNORLAX
    GoToIfEq VAR_RESULT, 0, PalParkLobby_PoketchAppLady_DoesntHaveSpecies
    Message PalParkLobby_Text_OhASnorlaxItSureLooksLikeItCanEat
    SetVar VAR_0x8004, 20
    CallCommonScript CommonScript_Unk09
    WaitABXPadPress
    SetVar VAR_MAP_LOCAL_A, 1
    CloseMessage
    ReleaseAll
    End

PalParkLobby_PoketchAppLady_CheckKecleon:
    Message PalParkLobby_Text_APokemonThatChangesColorWheneverSomethingHappens
    CheckPartyHasSpecies VAR_RESULT, SPECIES_KECLEON
    GoToIfEq VAR_RESULT, 0, PalParkLobby_PoketchAppLady_DoesntHaveSpecies
    Message PalParkLobby_Text_OhAKecleonHowColorful
    SetVar VAR_0x8004, 21
    CallCommonScript CommonScript_Unk09
    WaitABXPadPress
    SetVar VAR_MAP_LOCAL_A, 2
    CloseMessage
    ReleaseAll
    End

PalParkLobby_PoketchAppLady_JustReceivedKitchenTimer:
    BufferPoketchAppName 0, POKETCH_APPID_KITCHENTIMER
    Message PalParkLobby_Text_DoesntThatKitchenTimerMakeYouWantToCookSomething
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_PoketchAppLady_JustReceivedColorChanger:
    BufferPoketchAppName 0, POKETCH_APPID_COLORCHANGER
    Message PalParkLobby_Text_ChangingColorsCanChangeYourMoodToo
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_PoketchAppLady_DoesntHaveSpecies:
    Message PalParkLobby_Text_WhatWasThatPokemonNameNow
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_PoketchAppLady_ReceivedAllPoketchApps:
    Message PalParkLobby_Text_PalParkIsSoScintillatingAreYouTakingTheChallengeToo
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_GBASlotGiftLady:
    PlayFanfare SEQ_SE_CONFIRM
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
    Message PalParkLobby_Text_IEspeciallyLookForwardToSeeingPokemonFromKantoAndHoenn
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_GBASlotGiftLady_JustReceivedGift:
    Message PalParkLobby_Text_NotOnlyAreThereCatchingShowsThereAreAlsoPokemonContests
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalParkLobby_GBASlotGiftLady_FireRed:
    SetVar VAR_0x8004, ACCESSORY_CROWN
    SetVar VAR_0x8005, 1
    CanFitAccessory VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PalParkLobby_GBASlotGiftLady_NoGBAGame
    Message PalParkLobby_Text_YourPerformanceLeftMyHeartFlutterToday_Crown
    GoTo PalParkLobby_GBASlotGiftLady_GiveAccessory
    End

PalParkLobby_GBASlotGiftLady_LeafGreen:
    SetVar VAR_0x8004, ACCESSORY_TIARA
    SetVar VAR_0x8005, 1
    CanFitAccessory VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PalParkLobby_GBASlotGiftLady_NoGBAGame
    Message PalParkLobby_Text_YourPerformanceLeftMyHeartFlutterToday_Tiara
    GoTo PalParkLobby_GBASlotGiftLady_GiveAccessory
    End

PalParkLobby_GBASlotGiftLady_Sapphire:
    SetVar VAR_0x8004, BACKDROP_SEAFLOOR
    CheckBackdrop VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PalParkLobby_GBASlotGiftLady_NoGBAGame
    Message PalParkLobby_Text_YourPerformanceLeftMyHeartFlutterToday_Seafloor
    GoTo PalParkLobby_GBASlotGiftLady_GiveBackdrop
    End

PalParkLobby_GBASlotGiftLady_Ruby:
    SetVar VAR_0x8004, BACKDROP_UNDERGROUND
    CheckBackdrop VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PalParkLobby_GBASlotGiftLady_NoGBAGame
    Message PalParkLobby_Text_YourPerformanceLeftMyHeartFlutterToday_Underground
    GoTo PalParkLobby_GBASlotGiftLady_GiveBackdrop
    End

PalParkLobby_GBASlotGiftLady_Emerald:
    SetVar VAR_0x8004, BACKDROP_SKY
    CheckBackdrop VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PalParkLobby_GBASlotGiftLady_NoGBAGame
    Message PalParkLobby_Text_YourPerformanceLeftMyHeartFlutterToday_Sky
    GoTo PalParkLobby_GBASlotGiftLady_GiveBackdrop
    End

PalParkLobby_GBASlotGiftLady_GiveAccessory:
    CallCommonScript CommonScript_Unk0F
    SetVar VAR_MAP_LOCAL_9, 1
    CloseMessage
    ReleaseAll
    End

PalParkLobby_GBASlotGiftLady_GiveBackdrop:
    CallCommonScript CommonScript_Unk24
    SetVar VAR_MAP_LOCAL_9, 1
    CloseMessage
    ReleaseAll
    End

PalParkLobby_Receptionist_SetPrize:
    CalcCatchingShowPoints CATCHING_SHOW_TOTAL_POINTS, VAR_RESULT
    CallIfLt VAR_RESULT, 3000, PalParkLobby_Receptionist_SetPrize_Level1
    CallIfLt VAR_RESULT, 3300, PalParkLobby_Receptionist_SetPrize_Level2
    CallIfLt VAR_RESULT, 3500, PalParkLobby_Receptionist_SetPrize_Level3
    CallIfLt VAR_RESULT, 10000, PalParkLobby_Receptionist_SetPrize_Level4
    Return

PalParkLobby_Receptionist_SetPrize_Level1:
    GetRandom VAR_0x8006, 8
    CallIfEq VAR_0x8006, 0, PalParkLobby_SetPrize_CheriBerry
    CallIfEq VAR_0x8006, 1, PalParkLobby_SetPrize_ChestoBerry
    CallIfEq VAR_0x8006, 2, PalParkLobby_SetPrize_PechaBerry
    CallIfEq VAR_0x8006, 3, PalParkLobby_SetPrize_RawstBerry
    CallIfEq VAR_0x8006, 4, PalParkLobby_SetPrize_AspearBerry
    CallIfEq VAR_0x8006, 5, PalParkLobby_SetPrize_LeppaBerry
    CallIfEq VAR_0x8006, 6, PalParkLobby_SetPrize_OranBerry
    CallIfEq VAR_0x8006, 7, PalParkLobby_SetPrize_PersimBerry
    Call PalParkLobby_Receptionist_CheckIfCanGivePrize
    Return

PalParkLobby_Receptionist_SetPrize_Level2:
    GetRandom VAR_0x8006, 5
    CallIfEq VAR_0x8006, 0, PalParkLobby_SetPrize_FigyBerry
    CallIfEq VAR_0x8006, 1, PalParkLobby_SetPrize_WikiBerry
    CallIfEq VAR_0x8006, 2, PalParkLobby_SetPrize_MagoBerry
    CallIfEq VAR_0x8006, 3, PalParkLobby_SetPrize_AguavBerry
    CallIfEq VAR_0x8006, 4, PalParkLobby_SetPrize_IapapaBerry
    Call PalParkLobby_Receptionist_CheckIfCanGivePrize
    Return

PalParkLobby_Receptionist_SetPrize_Level3:
    GetRandom VAR_0x8006, 7
    CallIfEq VAR_0x8006, 0, PalParkLobby_SetPrize_RazzBerry
    CallIfEq VAR_0x8006, 1, PalParkLobby_SetPrize_BlukBerry
    CallIfEq VAR_0x8006, 2, PalParkLobby_SetPrize_NanabBerry
    CallIfEq VAR_0x8006, 3, PalParkLobby_SetPrize_WepearBerry
    CallIfEq VAR_0x8006, 4, PalParkLobby_SetPrize_PinapBerry
    CallIfEq VAR_0x8006, 5, PalParkLobby_SetPrize_LumBerry
    CallIfEq VAR_0x8006, 6, PalParkLobby_SetPrize_SitrusBerry
    Call PalParkLobby_Receptionist_CheckIfCanGivePrize
    Return

PalParkLobby_Receptionist_SetPrize_Level4:
    GetRandom VAR_0x8006, 6
    CallIfEq VAR_0x8006, 0, PalParkLobby_SetPrize_PomegBerry
    CallIfEq VAR_0x8006, 1, PalParkLobby_SetPrize_KelpsyBerry
    CallIfEq VAR_0x8006, 2, PalParkLobby_SetPrize_QualotBerry
    CallIfEq VAR_0x8006, 3, PalParkLobby_SetPrize_HondewBerry
    CallIfEq VAR_0x8006, 4, PalParkLobby_SetPrize_GrepaBerry
    CallIfEq VAR_0x8006, 5, PalParkLobby_SetPrize_TamatoBerry
    Call PalParkLobby_Receptionist_CheckIfCanGivePrize
    Return

PalParkLobby_Receptionist_CheckIfCanGivePrize:
    CanFitItem VAR_0x8006, 1, VAR_0x8007
    CallIfNe VAR_0x8007, 0, PalParkLobby_Receptionist_GivePrize
    SetVar VAR_RESULT, 0x2710
    Return

PalParkLobby_Receptionist_GivePrize:
    Message PalParkLobby_Text_ItsTimeForYourPrize
    SetVar VAR_0x8004, VAR_0x8006
    SetVar VAR_0x8005, 1
    CallCommonScript CommonScript_Unk2C
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
