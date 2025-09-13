#include "macros/scrcmd.inc"


    InitScriptEntry_OnLoad 0x23F3
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40D4, 0, 0x23F0
    InitScriptGoToIfEqual VAR_UNK_0x4080, 1, 0x23F5
    InitScriptFrameTableEnd

    InitScriptEnd
