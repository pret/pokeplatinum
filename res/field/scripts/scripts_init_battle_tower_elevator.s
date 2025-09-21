#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40DB, 1, 2
    InitScriptGoToIfEqual VAR_UNK_0x40DB, 2, 3
    InitScriptGoToIfEqual VAR_UNK_0x40DB, 3, 4
    InitScriptFrameTableEnd

    InitScriptEnd
