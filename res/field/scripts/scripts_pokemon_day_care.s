#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_day_care.h"


    ScriptEntry PokemonDayCare_OnTransition
    ScriptEntry PokemonDayCare_GymGuide
    ScriptEntry PokemonDayCare_Sign
    ScriptEntryEnd

PokemonDayCare_OnTransition:
    CallIfSet FLAG_UNK_0x00FE, PokemonDayCare_ShowGymGuide
    End

PokemonDayCare_ShowGymGuide:
    ClearFlag FLAG_HIDE_DAY_CARE_GYM_GUIDE
    Return

PokemonDayCare_GymGuide:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_DAYCARECHECKER, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PokemonDayCare_CheckOnDayCarePokemon
    Message PokemonDayCare_Text_SharePoketchApp
    SetVar VAR_0x8004, POKETCH_APPID_DAYCARECHECKER
    Common_GivePoketchApp
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonDayCare_CheckOnDayCarePokemon:
    Message PokemonDayCare_Text_CheckOnDayCarePokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonDayCare_Sign:
    EventMessage PokemonDayCare_Text_PokemonGrowsWithYou
    End

    .balign 4, 0
