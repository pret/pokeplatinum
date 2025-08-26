#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 7
    InitScriptEntry_FixedUnk3 8
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x411B, 1, 11
    InitScriptChecksEnd

    InitScriptEnd
