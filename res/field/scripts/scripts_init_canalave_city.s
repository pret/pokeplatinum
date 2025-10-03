#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnLoad 24
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_CANALAVE_STATE, 2, 4
    InitScriptGoToIfEqual VAR_CANALAVE_STATE, 4, 5
    InitScriptGoToIfEqual VAR_UNK_0x40F8, 3, 23
    InitScriptFrameTableEnd

    InitScriptEnd
