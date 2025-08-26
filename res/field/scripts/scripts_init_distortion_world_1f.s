#include "macros/scrcmd.inc"


    InitScriptEntry_FixedUnk2 1
    InitScriptEntry_FirstMatch InitScriptChecks
    InitScriptEntryEnd

InitScriptChecks:
    InitScriptGoToIfEqual VAR_DISTORTION_WORLD_PROGRESS, 0, 3
    InitScriptChecksEnd

    InitScriptEnd
