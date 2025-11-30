#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 12
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x4113, 0, 1
    InitScriptFrameTableEnd

    InitScriptEnd
