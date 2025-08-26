#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 2
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x4104, 1, 3
    InitScriptChecksEnd

    InitScriptEnd
