#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40C6, 0, 10
    InitScriptGoToIfEqual VAR_PAL_PARK_STATE, 1, 3
    InitScriptGoToIfEqual VAR_PAL_PARK_STATE, 2, 12
    InitScriptChecksEnd

    InitScriptEnd
