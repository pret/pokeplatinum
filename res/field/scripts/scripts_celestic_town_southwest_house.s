#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town_southwest_house.h"


    ScriptEntry CelesticTownPokecenter1F_BlackBelt
    ScriptEntry CelesticTownPokecenter1F_Happiny
    ScriptEntryEnd

CelesticTownPokecenter1F_BlackBelt:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_ANALOGWATCH, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, CelesticTownSoutheastHouse_AnalogOrDigital
    Message CelesticTownSoutheastHouse_Text_TakeThisFromMe
    SetVar VAR_0x8004, POKETCH_APPID_ANALOGWATCH
    Common_GivePoketchApp
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTownSoutheastHouse_AnalogOrDigital:
    Message CelesticTownSoutheastHouse_Text_AnalogOrDigital
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTownPokecenter1F_Happiny:
    PokemonCryAndMessage SPECIES_HAPPINY, CelesticTownSoutheastHouse_Text_HappinyCry
    End
