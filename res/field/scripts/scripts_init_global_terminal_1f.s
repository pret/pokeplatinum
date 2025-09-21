#include "macros/scrcmd.inc"


    InitScriptEntry_OnResume 13
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_UNK_0x40D5, 6, 12
    InitScriptFrameTableEnd

    InitScriptEnd
