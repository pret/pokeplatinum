#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk4 21
    InitScriptEntry_FixedUnk2 16
    InitScriptEntry_FixedUnk3 22
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_UNK_0x40BA, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40BA, 2, 2
    InitScriptGoToIfEqual VAR_UNK_0x40BA, 3, 5
    InitScriptGoToIfEqual VAR_UNK_0x40BA, 0xFF, 3
    InitScriptChecksEnd

    InitScriptEnd
