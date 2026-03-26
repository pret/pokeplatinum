#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_3.h"


    ScriptEntry GreatMarsh3_Collector
    ScriptEntry GreatMarsh3_SignArea3
    ScriptEntryEnd

GreatMarsh3_Collector:
    NPCMessage GreatMarsh3_Text_WhatToDo
    End

GreatMarsh3_SignArea3:
    ShowLandmarkSign GreatMarsh3_Text_SignArea3
    End
