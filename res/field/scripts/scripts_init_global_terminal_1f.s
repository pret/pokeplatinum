#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk3 13
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40D5, 6, 12
    InitScriptChecksEnd

    InitScriptEnd
