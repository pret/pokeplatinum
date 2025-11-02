#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40A0, 2, 4
    InitScriptFrameTableEnd

    InitScriptEnd
