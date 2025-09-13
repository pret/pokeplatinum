#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 2
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x4104, 1, 3
    InitScriptFrameTableEnd

    InitScriptEnd
