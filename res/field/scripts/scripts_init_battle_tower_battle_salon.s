#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 7
    InitScriptEntry_OnResume 8
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40DF, 1, 9
    InitScriptGoToIfEqual VAR_UNK_0x40DF, 2, 10
    InitScriptFrameTableEnd

    InitScriptEnd
