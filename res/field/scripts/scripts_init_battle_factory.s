#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 14
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40B7, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40B7, 2, 2
    InitScriptGoToIfEqual VAR_UNK_0x40B7, 3, 5
    InitScriptGoToIfEqual VAR_UNK_0x40B7, 0xFF, 3
    InitScriptChecksEnd

    InitScriptEnd
