#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town_southwest_house.h"


    ScriptEntry _000A
    ScriptEntry _0045
    ScriptEntryEnd

_000A:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_ANALOGWATCH, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _003A
    Message 0
    SetVar VAR_0x8004, POKETCH_APPID_ANALOGWATCH
    Common_GivePoketchApp
    WaitButton
    CloseMessage
    ReleaseAll
    End

_003A:
    Message 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

_0045:
    PokemonCryAndMessage SPECIES_HAPPINY, 2
    End
