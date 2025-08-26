#include "macros/scrcmd.inc"


    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40A3, 0, 1
    InitScriptChecksEnd

    InitScriptEnd
