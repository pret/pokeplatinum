#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 7
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40DA, 1, 3
    InitScriptGoToIfEqual 0x40DA, 2, 4
    InitScriptChecksEnd

    InitScriptEnd
