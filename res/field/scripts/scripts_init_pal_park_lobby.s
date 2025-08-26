#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40C6, 0, 10
    InitScriptGoToIfEqual 0x40F3, 1, 3
    InitScriptGoToIfEqual 0x40F3, 2, 12
    InitScriptChecksEnd

    InitScriptEnd
