#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 15
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x4081, 0, 1
    InitScriptChecksEnd

    InitScriptEnd
