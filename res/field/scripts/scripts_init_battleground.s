#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 4
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40C1, 0, 3
    InitScriptChecksEnd

    InitScriptEnd
