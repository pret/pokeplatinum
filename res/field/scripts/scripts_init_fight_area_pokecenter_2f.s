#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk3 0x2328
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40D5, 1, 0x2334
    InitScriptGoToIfEqual 0x40D5, 2, 0x2335
    InitScriptGoToIfEqual 0x40D5, 4, 0x2336
    InitScriptGoToIfEqual 0x40D5, 3, 0x2337
    InitScriptChecksEnd

    InitScriptEnd
