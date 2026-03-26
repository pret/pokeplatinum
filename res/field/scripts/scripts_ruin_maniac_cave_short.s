#include "macros/scrcmd.inc"
#include "res/text/bank/ruin_maniac_cave_short.h"


    ScriptEntry RuinManiacCaveShort_OnTransition
    ScriptEntry RuinManiacCaveShort_RuinManiac
    ScriptEntryEnd

RuinManiacCaveShort_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_RUIN_MANIAC_CAVE
    End

RuinManiacCaveShort_RuinManiac:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetUnownFormsSeenCount VAR_RESULT
    GoToIfGe VAR_RESULT, 10, RuinManiacCaveShort_IWantRareUnown
    Message RuinManiacCaveShort_Text_GoCatchUnown
    WaitButton
    CloseMessage
    ReleaseAll
    End

RuinManiacCaveShort_IWantRareUnown:
    Message RuinManiacCaveShort_Text_IWantRareUnown
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
