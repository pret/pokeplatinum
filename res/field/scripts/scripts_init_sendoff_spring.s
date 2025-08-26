#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 3
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40AA, 1, 1
    InitScriptChecksEnd

    InitScriptEnd
