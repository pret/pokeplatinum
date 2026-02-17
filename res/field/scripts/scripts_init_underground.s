#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnResume 2
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_HAS_SEEN_UNDERGROUND_ROARK_INTRO, 0, 6
    InitScriptFrameTableEnd

    InitScriptEnd
