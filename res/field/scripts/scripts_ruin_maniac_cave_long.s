#include "macros/scrcmd.inc"
#include "res/text/bank/ruin_maniac_cave_long.h"


    ScriptEntry RuinManiacCaveLong_RuinManiac
    ScriptEntry RuinManiacCaveLong_OnTransition
    ScriptEntryEnd

RuinManiacCaveLong_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_RUIN_MANIAC_CAVE
    End

RuinManiacCaveLong_RuinManiac:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetUnownFormsSeenCount VAR_RESULT
    GoToIfGe VAR_RESULT, 26, RuinManiacCaveLong_ImCloseToUnown
    Message RuinManiacCaveLong_Text_ImFascinatedByUnown
    WaitButton
    CloseMessage
    ReleaseAll
    End

RuinManiacCaveLong_ImCloseToUnown:
    Message RuinManiacCaveLong_Text_ImCloseToUnown
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
