#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 8
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40A7, 0, 7
    InitScriptChecksEnd

    InitScriptEnd
