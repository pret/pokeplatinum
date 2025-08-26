#include "macros/scrcmd.inc"


    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_MAP_LOCAL_1, 0, 1
    InitScriptChecksEnd

    InitScriptEnd
