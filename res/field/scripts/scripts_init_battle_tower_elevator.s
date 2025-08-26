#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40DB, 1, 2
    InitScriptGoToIfEqual VAR_UNK_0x40DB, 2, 3
    InitScriptGoToIfEqual VAR_UNK_0x40DB, 3, 4
    InitScriptChecksEnd

    InitScriptEnd
