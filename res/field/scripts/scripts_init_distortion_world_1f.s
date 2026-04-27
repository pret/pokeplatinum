#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_DISTORTION_WORLD_PROGRESS, DIST_WORLD_PROGRESS_NONE, 3
    InitScriptFrameTableEnd

    InitScriptEnd
