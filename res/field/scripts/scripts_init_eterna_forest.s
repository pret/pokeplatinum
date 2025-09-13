#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 11
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40CD, 1, 12
    InitScriptFrameTableEnd

    InitScriptEnd
