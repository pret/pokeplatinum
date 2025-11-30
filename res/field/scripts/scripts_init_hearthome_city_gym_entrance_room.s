#include "macros/scrcmd.inc"


    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_HAS_ENTERED_HEARTHOME_GYM_BEFORE, FALSE, 3
    InitScriptFrameTableEnd

    InitScriptEnd
