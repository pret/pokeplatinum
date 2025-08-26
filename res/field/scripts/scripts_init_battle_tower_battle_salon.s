#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 7
    InitScriptEntry_FixedUnk3 8
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40DF, 1, 9
    InitScriptGoToIfEqual 0x40DF, 2, 10
    InitScriptChecksEnd

    InitScriptEnd
