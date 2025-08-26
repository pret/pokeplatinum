#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40A6, 0, 2
    InitScriptGoToIfEqual VAR_UNK_0x40A6, 2, 15
    InitScriptChecksEnd

    InitScriptEnd
