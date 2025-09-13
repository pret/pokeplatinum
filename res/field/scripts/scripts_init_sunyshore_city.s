#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 19
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x407E, 0, 1
    InitScriptFrameTableEnd

    InitScriptEnd
