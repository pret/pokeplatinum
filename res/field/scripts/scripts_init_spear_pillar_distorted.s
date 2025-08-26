#include "macros/scrcmd.inc"


    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40C3, 1, 1
    InitScriptChecksEnd

    InitScriptEnd
