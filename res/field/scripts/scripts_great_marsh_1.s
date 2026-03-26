#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_1.h"


    ScriptEntry GreatMarsh1_SignArea1
    ScriptEntry GreatMarsh1_RuinManiac
    ScriptEntryEnd

GreatMarsh1_RuinManiac:
    NPCMessage GreatMarsh1_Text_ThisIsHowYouWin
    End

GreatMarsh1_SignArea1:
    ShowLandmarkSign GreatMarsh1_Text_SignArea1
    End
