#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 22
    InitScriptEntry_FixedUnk3 23
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40D8, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40D8, 2, 5
    InitScriptGoToIfEqual VAR_UNK_0x40D8, 3, 8
    InitScriptGoToIfEqual VAR_UNK_0x40D8, 0xFF, 6
    InitScriptChecksEnd

    InitScriptEnd
