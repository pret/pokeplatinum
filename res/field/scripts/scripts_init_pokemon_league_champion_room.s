#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_MAP_LOCAL_3, 0, 2
    InitScriptChecksEnd

    InitScriptEnd
