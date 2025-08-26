#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 14
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40BC, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40BC, 2, 2
    InitScriptGoToIfEqual VAR_UNK_0x40BC, 3, 5
    InitScriptGoToIfEqual VAR_UNK_0x40BC, 0xFF, 3
    InitScriptChecksEnd

    InitScriptEnd
