#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk4 2
    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FixedUnk3 7
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x411E, 1, 8
    InitScriptChecksEnd

    InitScriptEnd
