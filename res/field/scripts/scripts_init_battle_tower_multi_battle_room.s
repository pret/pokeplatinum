#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FixedUnk3 2
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40DE, 1, 3
    InitScriptGoToIfEqual 0x40DE, 2, 4
    InitScriptChecksEnd

    InitScriptEnd
