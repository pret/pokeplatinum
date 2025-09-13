#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 14
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40B7, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40B7, 2, 2
    InitScriptGoToIfEqual VAR_UNK_0x40B7, 3, 5
    InitScriptGoToIfEqual VAR_UNK_0x40B7, 0xFF, 3
    InitScriptFrameTableEnd

    InitScriptEnd
