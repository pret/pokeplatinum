#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 7
    InitScriptEntry_OnResume 8
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x411B, 1, 11
    InitScriptFrameTableEnd

    InitScriptEnd
