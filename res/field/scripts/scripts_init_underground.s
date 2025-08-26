#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FixedUnk3 2
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40D0, 0, 6
    InitScriptChecksEnd

    InitScriptEnd
