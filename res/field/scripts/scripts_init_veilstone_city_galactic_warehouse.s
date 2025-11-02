#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 4
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x411F, 1, 2
    InitScriptFrameTableEnd

    InitScriptEnd
