#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FixedUnk4 24
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x4078, 2, 4
    InitScriptGoToIfEqual 0x4078, 4, 5
    InitScriptGoToIfEqual 0x40F8, 3, 23
    InitScriptChecksEnd

    InitScriptEnd
