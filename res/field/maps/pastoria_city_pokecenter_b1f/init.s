#include "macros/scrcmd.inc"


    InitScriptEntry_OnLoad 0x23F3
    InitScriptEntry_OnFrameTable InitScriptFrameTable
    InitScriptEntryEnd

InitScriptFrameTable:
    InitScriptGoToIfEqual VAR_VISITED_POKEMON_CENTER_B1F, 0, 0x23F0
    InitScriptGoToIfEqual VAR_ENTERED_WIFI_PLAZA, 1, 0x23F5
    InitScriptFrameTableEnd

    InitScriptEnd
