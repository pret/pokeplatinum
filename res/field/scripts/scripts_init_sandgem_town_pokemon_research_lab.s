#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40A6, 0, 2
    InitScriptGoToIfEqual VAR_UNK_0x40A6, 2, 15
    InitScriptFrameTableEnd

    InitScriptEnd
