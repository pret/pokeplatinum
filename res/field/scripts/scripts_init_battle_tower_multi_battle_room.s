#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnResume 2
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40DE, 1, 3
    InitScriptGoToIfEqual VAR_UNK_0x40DE, 2, 4
    InitScriptFrameTableEnd

    InitScriptEnd
