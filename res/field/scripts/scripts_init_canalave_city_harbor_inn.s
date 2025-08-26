#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40F8, 1, 2
    InitScriptGoToIfEqual 0x40F8, 2, 3
    InitScriptChecksEnd

    InitScriptEnd
