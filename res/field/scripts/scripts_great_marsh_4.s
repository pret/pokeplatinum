#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_4.h"


    ScriptEntry GreatMarsh4_BugCatcher
    ScriptEntry GreatMarsh4_SignArea4
    ScriptEntryEnd

GreatMarsh4_BugCatcher:
    NPCMessage GreatMarsh4_Text_YouGetSuckedDown
    End

GreatMarsh4_SignArea4:
    ShowLandmarkSign GreatMarsh4_Text_SignArea4
    End
