#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 15
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40BF, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40BF, 2, 2
    InitScriptGoToIfEqual VAR_UNK_0x40BF, 3, 5
    InitScriptGoToIfEqual VAR_UNK_0x40BF, 0xFF, 3
    InitScriptFrameTableEnd

    InitScriptEnd
