#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FixedUnk4 24
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x4078, 2, 4
    InitScriptGoToIfEqual VAR_UNK_0x4078, 4, 5
    InitScriptGoToIfEqual VAR_UNK_0x40F8, 3, 23
    InitScriptChecksEnd

    InitScriptEnd
