#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 15
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x4081, 0, 1
    InitScriptChecksEnd

    InitScriptEnd
