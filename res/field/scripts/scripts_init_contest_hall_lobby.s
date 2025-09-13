#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 0x264B
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40D5, 5, 0x2648
    InitScriptGoToIfEqual VAR_UNK_0x40F7, 0, 1
    InitScriptFrameTableEnd

    InitScriptEnd
