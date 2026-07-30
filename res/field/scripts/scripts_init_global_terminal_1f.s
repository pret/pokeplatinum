#include "macros/scrcmd.inc"


    InitScriptEntry_OnResume 13
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_COMMUNICATION_LOAD_ACTION, 6, 12
    InitScriptFrameTableEnd

    InitScriptEnd
