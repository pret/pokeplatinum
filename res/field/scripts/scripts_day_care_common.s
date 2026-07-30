#include "macros/scrcmd.inc"
#include "res/text/bank/day_care_common.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_pokemon_day_care.h"
#include "constants/daycare.h"


    ScriptEntry DayCareCommon_Man
    ScriptEntry DayCareCommon_Lady
    ScriptEntryEnd

DayCareCommon_Man:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferDaycareMonNicknames
    GetDaycareState VAR_RESULT
    GoToIfEq VAR_RESULT, DAYCARE_EGG_WAITING, DayCareCommon_ManEggWaiting
    GoToIfEq VAR_RESULT, DAYCARE_ONE_MON, DayCareCommon_ManOneMon
    GoToIfEq VAR_RESULT, DAYCARE_TWO_MONS, DayCareCommon_ManTwoMons
    Message DayCareCommon_Text_ImTheDayCareMan
    WaitButton
    CloseMessage
    ReleaseAll
    End

DayCareCommon_ManEggWaiting:
    Message DayCareCommon_Text_PokemonHoldingEggYouWantIt
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, DayCareCommon_TryGiveEgg
    Message DayCareCommon_Text_YouDoWantThisYes
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, DayCareCommon_TryGiveEgg
    Message DayCareCommon_Text_IllHangOnToIt
    WaitButton
    CloseMessage
    ClearFlag FLAG_DUMMY_0x0073
    ResetDaycarePersonalityAndStepCounter
    ReleaseAll
    End

DayCareCommon_TryGiveEgg:
    GetPartyCount VAR_RESULT
    GoToIfNe VAR_RESULT, MAX_PARTY_SIZE, DayCareCommon_GiveEgg
    Message DayCareCommon_Text_YouHaveNoRoom
    WaitButton
    CloseMessage
    ReleaseAll
    End

DayCareCommon_GiveEgg:
    BufferPlayerName 0
    Message DayCareCommon_Text_PlayerReceivedEgg
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    WaitABPress
    Message DayCareCommon_Text_TakeGoodCareOfIt
    WaitButton
    CloseMessage
    GiveEggFromDaycare
    ClearFlag FLAG_DUMMY_0x0073
    ReleaseAll
    End

DayCareCommon_ManOneMon:
    BufferDaycareMonNicknames
    Message DayCareCommon_Text_PokemonIsDoingJustFine
    WaitButton
    CloseMessage
    ReleaseAll
    End

DayCareCommon_ManTwoMons:
    BufferDaycareMonNicknames
    Message DayCareCommon_Text_PokemonAreDoingJustFine
    GetDaycareCompatibilityLevel VAR_RESULT
    CallIfEq VAR_RESULT, 0, DayCareCommon_MaxCompatibility
    CallIfEq VAR_RESULT, 1, DayCareCommon_MedCompatibility
    CallIfEq VAR_RESULT, 2, DayCareCommon_LowCompatibility
    CallIfEq VAR_RESULT, 3, DayCareCommon_Incompatible
    WaitButton
    CloseMessage
    ReleaseAll
    End

DayCareCommon_MaxCompatibility:
    Message DayCareCommon_Text_TheTwoGetAlongVeryWell
    Return

DayCareCommon_MedCompatibility:
    Message DayCareCommon_Text_TheTwoGetAlong
    Return

DayCareCommon_LowCompatibility:
    Message DayCareCommon_Text_TheTwoDontLikeEachOther
    Return

DayCareCommon_Incompatible:
    Message DayCareCommon_Text_TheTwoPlayWithOtherPokemon
    Return

DayCareCommon_Lady:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowMoney 20, 2
    GetDaycareState VAR_RESULT
    GoToIfEq VAR_RESULT, DAYCARE_EGG_WAITING, DayCareCommon_LadyEggWaiting
    GoToIfEq VAR_RESULT, DAYCARE_ONE_MON, DayCareCommon_LadyOneMon
    GoToIfEq VAR_RESULT, DAYCARE_TWO_MONS, DayCareCommon_LadyTwoMons
    Message DayCareCommon_Text_ImTheDayCareLadyRaisePokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, DayCareCommon_TryRaisePokemon
    Message DayCareCommon_Text_OhFineThen
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

DayCareCommon_TryRaisePokemon:
    CountPartyNonEggs VAR_RESULT
    GoToIfEq VAR_RESULT, 1, DayCareCommon_OnlyOnePokemonWithYou
    CountAliveMonsAndBoxMons VAR_RESULT
    GoToIfEq VAR_RESULT, 2, DayCareCommon_YoullBeLeftWithJustOne
    Message DayCareCommon_Text_RaiseWhichPokemon
    CloseMessage
    HideMoney
    FadeScreenOut
    WaitFadeScreen
    SetVar VAR_RESULT, 0
DayCareCommon_ChoosePokemon:
    OpenPartyMenuForDaycare VAR_RESULT
    GetDayCarePartyMenuResult VAR_0x8000, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, DayCareCommon_TryRaiseSelectedSlot
    SetMonSummary VAR_0x8000
    GetMonPartySlot VAR_RESULT
    GoTo DayCareCommon_ChoosePokemon

DayCareCommon_TryRaiseSelectedSlot:
    ReturnToField
    ShowMoney 20, 2
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8000, PARTY_SLOT_NONE, DayCareCommon_VeryGoodComeAgain
    TryRevertPokemonForm VAR_0x8000, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, DayCareCommon_GriseousOrbCouldNotBeRemoved
    GetPartyMonSpecies VAR_0x8000, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, DayCareCommon_CantRaiseEgg
    CountAliveMonsExcept VAR_RESULT, VAR_0x8000
    GoToIfEq VAR_RESULT, 0, DayCareCommon_SelectedOnlyAlivePokemon
    BufferPartyMonNicknameReturnSpecies VAR_0x8000, VAR_0x8001
    StorePartyMonIntoDaycare VAR_0x8000
    SetFlag FLAG_STORED_POKEMON_AT_DAY_CARE
    GetDaycareState VAR_RESULT
    GoToIfEq VAR_RESULT, DAYCARE_ONE_MON, DayCareCommon_RaiseFirstPokemon
    GoTo DayCareCommon_RaiseSecondPokemon

DayCareCommon_RaiseFirstPokemon:
    PlayCry VAR_0x8001
    Message DayCareCommon_Text_WellRaiseYourPokemon_ArrowPrompt
    WaitCry
    GoTo DayCareCommon_AskRaiseAnotherPokemon

DayCareCommon_RaiseSecondPokemon:
    PlayCry VAR_0x8001
    Message DayCareCommon_Text_WellRaiseYourPokemon
    WaitButton
    CloseMessage
    WaitCry
    HideMoney
    ReleaseAll
    End

DayCareCommon_CantRaiseEgg:
    Message DayCareCommon_Text_ThatIsMerelyAnEgg
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

DayCareCommon_VeryGoodComeAgain:
    Message DayCareCommon_Text_VeryGoodComeAgain
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

DayCareCommon_AskRaiseAnotherPokemon:
    Message DayCareCommon_Text_RaiseAnotherPokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, DayCareCommon_TryRaisePokemon
    GoTo DayCareCommon_VeryGoodComeAgain
    End

DayCareCommon_OnlyOnePokemonWithYou:
    Message DayCareCommon_Text_OnlyOnePokemonWithYou
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

DayCareCommon_SelectedOnlyAlivePokemon:
    Message DayCareCommon_Text_WhatWillYouBattleWith
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

DayCareCommon_YoullBeLeftWithJustOne:
    Message DayCareCommon_Text_YoullBeLeftWithJustOne
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

DayCareCommon_LadyEggWaiting:
    Message DayCareCommon_Text_HusbandWasLookingForYou
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

DayCareCommon_PokemonHasGrownXLevels:
    Message DayCareCommon_Text_PokemonHasGrownXLevels
    Return

DayCareCommon_TryPokemonHasGrownMessage:
    BufferDaycareGainedLevelsBySlot VAR_RESULT, VAR_0x8000
    CallIfNe VAR_RESULT, 0, DayCareCommon_PokemonHasGrownXLevels
    Return

DayCareCommon_LadyOneMon:
    Message DayCareCommon_Text_AboutYourPokemon
    SetVar VAR_0x8000, 0
    Call DayCareCommon_TryPokemonHasGrownMessage
    Message DayCareCommon_Text_RaiseAnotherPokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, DayCareCommon_TryRaisePokemon
    Message DayCareCommon_Text_DoYouWantPokemonBack
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, DayCareCommon_TryTakePokemonBack
    GoTo DayCareCommon_VeryGoodComeAgain

DayCareCommon_TryTakePokemonBack:
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, MAX_PARTY_SIZE, DayCareCommon_TeamIsFull
    GetDaycareState VAR_RESULT
    SetVar VAR_0x8001, 0
    GoToIfEq VAR_RESULT, DAYCARE_ONE_MON, DayCareCommon_PokemonBackCostsX
    InitGlobalTextMenu 1, 1, 0, VAR_0x8001
    BufferDaycareNicknameLevelGender 0, 1, 2, 0
    AddMenuEntryImm MenuEntries_Text_DayCare_Pokemon1, 0
    BufferDaycareNicknameLevelGender 0, 1, 2, 1
    AddMenuEntryImm MenuEntries_Text_DayCare_Pokemon2, 1
    AddMenuEntryImm MenuEntries_Text_DayCare_Cancel, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 0, DayCareCommon_PokemonBackCostsX
    GoToIfEq VAR_0x8008, 1, DayCareCommon_PokemonBackCostsX
    GoTo DayCareCommon_VeryGoodComeAgain

DayCareCommon_PokemonBackCostsX:
    BufferDaycarePriceBySlot VAR_0x8004, VAR_0x8001
    Message DayCareCommon_Text_PokemonBackCostsX
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, DayCareCommon_GetPokemonBackCheckMoney
    GoTo DayCareCommon_VeryGoodComeAgain

DayCareCommon_GetPokemonBackCheckMoney:
    CheckMoney2 VAR_RESULT, VAR_0x8004
    GoToIfEq VAR_RESULT, TRUE, DayCareCommon_GetPokemonBack
    Message DayCareCommon_Text_NotEnoughMoney
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

DayCareCommon_GetPokemonBack:
    ApplyMovement LOCALID_DAY_CARE_LADY, DayCareCommon_Movement_LadyGetPokemon
    WaitMovement
    MoveMonToPartyFromDaycareSlot VAR_0x8002, VAR_0x8001
    RemoveMoney2 VAR_0x8004
    UpdateMoneyDisplay
    PlaySE SEQ_SE_DP_REGI
    WaitSE SEQ_SE_DP_REGI
    Message DayCareCommon_Text_HeresYourPokemon
    PlayCry VAR_0x8002
    BufferPlayerName 1
    Message DayCareCommon_Text_PlayerTookPokemonBack
    WaitCry
    GetDaycareState VAR_RESULT
    GoToIfEq VAR_RESULT, DAYCARE_ONE_MON, DayCareCommon_AskTakeOtherBackToo
    GoTo DayCareCommon_VeryGoodComeAgain

DayCareCommon_AskTakeOtherBackToo:
    Message DayCareCommon_Text_DoYouWantOtherBackToo
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, DayCareCommon_TryTakePokemonBack
    GoTo DayCareCommon_VeryGoodComeAgain

DayCareCommon_TeamIsFull:
    Message DayCareCommon_Text_TeamIsFull
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

    .balign 4, 0
DayCareCommon_Movement_LadyGetPokemon:
    Delay4 3
    FaceWest
    Delay4 3
    FaceEast
    Delay4 3
    FaceNorth
    WalkNormalNorth 2
    SetInvisible
    Delay8 3
    FaceSouth
    SetVisible
    WalkNormalSouth 2
    EndMovement

DayCareCommon_LadyTwoMons:
    Message DayCareCommon_Text_AboutYourPokemon
    SetVar VAR_0x8000, 0
    Call DayCareCommon_TryPokemonHasGrownMessage
    SetVar VAR_0x8000, 1
    Call DayCareCommon_TryPokemonHasGrownMessage
    Message DayCareCommon_Text_DoYouWantPokemonBack
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, DayCareCommon_TryTakePokemonBack
    Message DayCareCommon_Text_VeryGoodComeAgain
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

DayCareCommon_Unused:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message DayCareCommon_Text_Huh
    HatchEgg
    CloseMessage
    HideMoney
    ReleaseAll
    End

DayCareCommon_GriseousOrbCouldNotBeRemoved:
    HideMoney
    Common_GriseousOrbCouldNotBeRemoved
    End

    .balign 4, 0
