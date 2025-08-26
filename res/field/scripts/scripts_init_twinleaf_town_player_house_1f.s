#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40A4, 0, 2
    InitScriptGoToIfEqual VAR_UNK_0x410F, 1, 11
    InitScriptGoToIfEqual VAR_UNK_0x40A4, 3, 3
    InitScriptChecksEnd

    InitScriptEnd
