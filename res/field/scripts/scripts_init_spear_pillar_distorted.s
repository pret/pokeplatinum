#include "macros/scrcmd.inc"


    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40C3, 1, 1
    InitScriptFrameTableEnd

    InitScriptEnd
