#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 7
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40DA, 1, 3
    InitScriptGoToIfEqual VAR_UNK_0x40DA, 2, 4
    InitScriptChecksEnd

    InitScriptEnd
