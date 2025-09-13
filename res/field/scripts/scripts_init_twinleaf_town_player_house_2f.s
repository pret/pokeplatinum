#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 5
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40F9, 0, 3
    InitScriptFrameTableEnd

    InitScriptEnd
