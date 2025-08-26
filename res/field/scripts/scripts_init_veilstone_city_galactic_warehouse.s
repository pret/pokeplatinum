#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 4
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x411F, 1, 2
    InitScriptChecksEnd

    InitScriptEnd
