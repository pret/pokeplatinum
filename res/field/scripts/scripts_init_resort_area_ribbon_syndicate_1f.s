#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 8
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40A7, 0, 7
    InitScriptFrameTableEnd

    InitScriptEnd
