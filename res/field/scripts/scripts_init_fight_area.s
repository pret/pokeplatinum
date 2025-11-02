#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 15
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x4081, 0, 1
    InitScriptFrameTableEnd

    InitScriptEnd
