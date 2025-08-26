#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk4 0x23F3
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40D4, 0, 0x23F0
    InitScriptGoToIfEqual 0x4080, 1, 0x23F5
    InitScriptChecksEnd

    InitScriptEnd
