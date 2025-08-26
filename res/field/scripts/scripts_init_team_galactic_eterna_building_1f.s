#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 7
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x411D, 0, 5
    InitScriptChecksEnd

    InitScriptEnd
