#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 3
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40AA, 1, 1
    InitScriptFrameTableEnd

    InitScriptEnd
