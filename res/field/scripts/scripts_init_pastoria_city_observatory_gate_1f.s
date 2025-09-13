#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 7
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40DA, 1, 3
    InitScriptGoToIfEqual VAR_UNK_0x40DA, 2, 4
    InitScriptFrameTableEnd

    InitScriptEnd
