#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 19
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x407E, 0, 1
    InitScriptChecksEnd

    InitScriptEnd
