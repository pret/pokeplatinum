#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 22
    InitScriptEntry_OnResume 23
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40D8, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40D8, 2, 5
    InitScriptGoToIfEqual VAR_UNK_0x40D8, 3, 8
    InitScriptGoToIfEqual VAR_UNK_0x40D8, 0xFF, 6
    InitScriptFrameTableEnd

    InitScriptEnd
