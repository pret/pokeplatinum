#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FixedUnk4 2
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x4095, 0, 3
    InitScriptChecksEnd

    InitScriptEnd
