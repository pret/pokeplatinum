#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 15
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40BF, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40BF, 2, 2
    InitScriptGoToIfEqual VAR_UNK_0x40BF, 3, 5
    InitScriptGoToIfEqual VAR_UNK_0x40BF, 0xFF, 3
    InitScriptChecksEnd

    InitScriptEnd
