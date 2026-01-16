#include "macros/scrcmd.inc"


    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_MAP_LOCAL_3, 0, 1
    InitScriptFrameTableEnd

    InitScriptEnd
