#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 11
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40CD, 1, 12
    InitScriptChecksEnd

    InitScriptEnd
