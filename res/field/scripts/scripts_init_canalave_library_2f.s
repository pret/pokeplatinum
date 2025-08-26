#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 5
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_ARCEUS_EVENT_STATE, 2, 6
    InitScriptChecksEnd

    InitScriptEnd
