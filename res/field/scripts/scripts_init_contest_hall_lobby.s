#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 0x264B
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual 0x40D5, 5, 0x2648
    InitScriptGoToIfEqual 0x40F7, 0, 1
    InitScriptChecksEnd

    InitScriptEnd
