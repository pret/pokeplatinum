#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_5.h"


    ScriptEntry GreatMarsh5_Youngster
    ScriptEntry GreatMarsh5_SignboardArea5
    ScriptEntryEnd

GreatMarsh5_Youngster:
    NPCMessage GreatMarsh5_Text_IRecommendQuickTrams
    End

GreatMarsh5_SignboardArea5:
    ShowLandmarkSign GreatMarsh5_Text_SignArea5
    End
