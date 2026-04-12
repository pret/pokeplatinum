#include "macros/scrcmd.inc"


    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_SPEAR_PILLAR_DISTORTED_STATE, 1, 1
    InitScriptFrameTableEnd

    InitScriptEnd
