#include "macros/scrcmd.inc"
#include "res/text/bank/survival_area_mart.h"


    ScriptEntry SurvivalAreaMart_CommonVendor
    ScriptEntry SurvivalAreaMart_Unused
    ScriptEntry SurvivalAreaMart_Hiker
    ScriptEntry SurvivalAreaMart_AceTrainerF
    ScriptEntryEnd

SurvivalAreaMart_CommonVendor:
    PokeMartCommonWithGreeting
    End

SurvivalAreaMart_Unused:
    End

SurvivalAreaMart_Hiker:
    NPCMessage SurvivalAreaMart_Text_WordOfAdvice
    End

SurvivalAreaMart_AceTrainerF:
    NPCMessage SurvivalAreaMart_Text_WasOn54WinStreak
    End
