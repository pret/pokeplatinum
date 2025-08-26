#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FixedUnk3 5
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40D9, 1, 2
    InitScriptGoToIfEqual VAR_UNK_0x40D9, 2, 3
    InitScriptChecksEnd

    InitScriptEnd
