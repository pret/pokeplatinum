#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 5
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40F9, 0, 3
    InitScriptChecksEnd

    InitScriptEnd
