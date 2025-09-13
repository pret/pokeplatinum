#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 4
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40C1, 0, 3
    InitScriptFrameTableEnd

    InitScriptEnd
