#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 7
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x411D, 0, 5
    InitScriptChecksEnd

    InitScriptEnd
