#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_temple_b5f.h"
#include "res/field/events/events_snowpoint_temple_b5f.h"


    ScriptEntry SnowpointTempleB5F_OnLoad
    ScriptEntry SnowpointTempleB5F_Regigigas
    ScriptEntryEnd

SnowpointTempleB5F_OnLoad:
    GoToIfSet FLAG_MAP_LOCAL, SnowpointTempleB5F_RemoveRegigigas
    End

SnowpointTempleB5F_RemoveRegigigas:
    SetFlag FLAG_HIDE_SNOWPOINT_TEMPLE_B5F_REGIGIGAS
    RemoveObject LOCALID_REGIGIGAS
    ClearFlag FLAG_MAP_LOCAL
    End

SnowpointTempleB5F_Regigigas:
    LockAll
    PlaySE SEQ_SE_CONFIRM
    WaitSE SEQ_SE_CONFIRM
    GoToIfSet FLAG_AWAKENED_REGIGIGAS, SnowpointTempleB5F_EncounterRegigigas
    CheckHasAllLegendaryTitansInParty VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SnowpointTempleB5F_GatherThreePokemon
    SetFlag FLAG_AWAKENED_REGIGIGAS
    BufferPlayerName 0
    Message SnowpointTempleB5F_Text_KingShallAppear
    CloseMessage
    ReleaseObject LOCALID_REGIGIGAS
    ShakeObject LOCALID_REGIGIGAS, 8, 90, 3, 0
    LockObject LOCALID_REGIGIGAS
    GoTo SnowpointTempleB5F_EncounterRegigigas
    End

SnowpointTempleB5F_GatherThreePokemon:
    BufferPlayerName 0
    Message SnowpointTempleB5F_Text_GatherThreePokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointTempleB5F_EncounterRegigigas:
    Message SnowpointTempleB5F_Text_RegigigasCry
    CloseMessage
    PlayCry SPECIES_REGIGIGAS
    WaitCry
    SetFlag FLAG_MAP_LOCAL
    StartLegendaryBattle SPECIES_REGIGIGAS, 1
    ClearFlag FLAG_MAP_LOCAL
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SnowpointTempleB5F_BlackOut
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SnowpointTempleB5F_RegigigasDisappeared
    SetFlag FLAG_CAUGHT_REGIGIGAS
    ReleaseAll
    End

SnowpointTempleB5F_RegigigasDisappeared:
    Message SnowpointTempleB5F_Text_RegigigasDisappeared
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointTempleB5F_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
