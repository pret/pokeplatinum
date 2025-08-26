#include "macros/scrcmd.inc"


    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40D3, 1, 1
    InitScriptChecksEnd

    InitScriptEnd
