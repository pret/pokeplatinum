#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FixedUnk3 2
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40DE, 1, 3
    InitScriptGoToIfEqual VAR_UNK_0x40DE, 2, 4
    InitScriptChecksEnd

    InitScriptEnd
