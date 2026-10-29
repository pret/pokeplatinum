#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 1
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_DISTORTION_WORLD_PROGRESS, DIST_WORLD_PROGRESS_JUMPED_ON_1F_ELEVATOR, 2
    InitScriptFrameTableEnd

    InitScriptEnd
