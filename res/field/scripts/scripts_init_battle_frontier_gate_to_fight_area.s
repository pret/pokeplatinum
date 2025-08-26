#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 12
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x4113, 0, 1
    InitScriptChecksEnd

    InitScriptEnd
