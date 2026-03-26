#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_2.h"


    ScriptEntry GreatMarsh2_ParasolLady
    ScriptEntry GreatMarsh2_SignArea2
    ScriptEntryEnd

GreatMarsh2_ParasolLady:
    NPCMessage GreatMarsh2_Text_PokemonDifferDayToDay
    End

GreatMarsh2_SignArea2:
    ShowLandmarkSign GreatMarsh2_Text_SignArea2
    End
