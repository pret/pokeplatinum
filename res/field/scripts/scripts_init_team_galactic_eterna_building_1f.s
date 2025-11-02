#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 7
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x411D, 0, 5
    InitScriptFrameTableEnd

    InitScriptEnd
