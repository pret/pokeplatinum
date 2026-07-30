#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city_east_house.h"
#include "generated/natures.h"


    ScriptEntry SunyshoreCityEastHouse_Scientist
    ScriptEntryEnd

SunyshoreCityEastHouse_Scientist:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_SUNYSHORE_CITY_EAST_HOUSE_SCIENTIST_STATE, 1, SunyshoreCityEastHouse_TryCheckNatures
    SetVar VAR_SUNYSHORE_CITY_EAST_HOUSE_SCIENTIST_STATE, 1
    Message SunyshoreCityEastHouse_Text_MayISeeNatures
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityEastHouse_TryCheckNatures:
    CheckPoketchAppRegistered POKETCH_APPID_ROULETTE, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SunyshoreCityEastHouse_AppsMayOutnumberPokemon
    CheckPoketchAppRegistered POKETCH_APPID_DOTART, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SunyshoreCityEastHouse_CheckQuirkyNature
    CheckPoketchAppRegistered POKETCH_APPID_CALENDAR, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SunyshoreCityEastHouse_CheckNaiveNature
    GoTo SunyshoreCityEastHouse_CheckSeriousNature

SunyshoreCityEastHouse_CheckSeriousNature:
    FindPartySlotWithNature VAR_0x8000, NATURE_SERIOUS
    GoToIfNe VAR_0x8000, PARTY_SLOT_NONE, SunyshoreCityEastHouse_GiveCalendarApp
    Message SunyshoreCityEastHouse_Text_LikeToSeeSeriousNature
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityEastHouse_CheckNaiveNature:
    FindPartySlotWithNature VAR_0x8000, NATURE_NAIVE
    GoToIfNe VAR_0x8000, PARTY_SLOT_NONE, SunyshoreCityEastHouse_GiveDotArtistApp
    Message SunyshoreCityEastHouse_Text_LikeToSeeNaiveNature
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityEastHouse_CheckQuirkyNature:
    FindPartySlotWithNature VAR_0x8000, NATURE_QUIRKY
    GoToIfNe VAR_0x8000, PARTY_SLOT_NONE, SunyshoreCityEastHouse_GiveRouletteApp
    Message SunyshoreCityEastHouse_Text_LikeToSeeQuirkyNature
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityEastHouse_GiveCalendarApp:
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    BufferPartyMonSpecies 0, VAR_0x8000
    Message SunyshoreCityEastHouse_Text_IllGiveCalendarApp
    SetVar VAR_0x8004, POKETCH_APPID_CALENDAR
    Common_GivePoketchApp
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityEastHouse_GiveDotArtistApp:
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    BufferPartyMonSpecies 0, VAR_0x8000
    Message SunyshoreCityEastHouse_Text_IllGiveDotArtistApp
    SetVar VAR_0x8004, POKETCH_APPID_DOTART
    Common_GivePoketchApp
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityEastHouse_GiveRouletteApp:
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    BufferPartyMonSpecies 0, VAR_0x8000
    Message SunyshoreCityEastHouse_Text_IllGiveRouletteApp
    SetVar VAR_0x8004, POKETCH_APPID_ROULETTE
    Common_GivePoketchApp
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityEastHouse_AppsMayOutnumberPokemon:
    Message SunyshoreCityEastHouse_Text_AppsMayOutnumberPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End
