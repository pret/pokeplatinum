#include "macros/scrcmd.inc"


    InitScriptEntry_OnLoad 21
    InitScriptEntry_OnTransition 16
    InitScriptEntry_OnResume 22
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40BA, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40BA, 2, 2
    InitScriptGoToIfEqual VAR_UNK_0x40BA, 3, 5
    InitScriptGoToIfEqual VAR_UNK_0x40BA, 0xFF, 3
    InitScriptFrameTableEnd

    InitScriptEnd
