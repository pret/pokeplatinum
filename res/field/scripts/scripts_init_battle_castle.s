#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 14
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40BC, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40BC, 2, 2
    InitScriptGoToIfEqual VAR_UNK_0x40BC, 3, 5
    InitScriptGoToIfEqual VAR_UNK_0x40BC, 0xFF, 3
    InitScriptFrameTableEnd

    InitScriptEnd
