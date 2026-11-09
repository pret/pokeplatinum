#include "macros/scrcmd.inc"


    InitScriptEntry_OnTransition 0x264B
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_COMMUNICATION_LOAD_ACTION, 5, 0x2648
    InitScriptGoToIfEqual VAR_CONTEST_HALL_LOBBY_STATE, 0, 1
    InitScriptFrameTableEnd

    InitScriptEnd
