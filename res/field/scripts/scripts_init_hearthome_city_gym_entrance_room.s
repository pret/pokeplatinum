#include "macros/scrcmd.inc"


    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40D1, 0, 3
    InitScriptChecksEnd

    InitScriptEnd
