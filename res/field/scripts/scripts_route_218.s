#include "macros/scrcmd.inc"
#include "res/text/bank/route_218.h"


    ScriptEntry _001E
    ScriptEntry _0035
    ScriptEntry _004C
    ScriptEntry _005D
    ScriptEntry _006E
    ScriptEntry _008B
    ScriptEntry _00A8
    ScriptEntryEnd

_001E:
    ShowArrowSign 5
    End

_0035:
    ShowArrowSign 6
    End

_004C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_CLEFAIRY
    Message 1
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_008B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_CLEFAIRY
    Message 2
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message 3
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
