#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_3.h"


    ScriptEntry GreatMarsh3_Collector
    ScriptEntry GreatMarsh3_SignboardArea3
    ScriptEntryEnd

GreatMarsh3_Collector:
    NPCMessage GreatMarsh3_Text_WhatToDo
    End

GreatMarsh3_SignboardArea3:
    ShowLandmarkSign GreatMarsh3_Text_SignArea3
    End
