#include "macros/scrcmd.inc"
#include "res/text/bank/ruin_maniac_cave_short.h"


    ScriptEntry _000A
    ScriptEntry _0010
    ScriptEntryEnd

_000A:
    SetFlag FLAG_FIRST_ARRIVAL_RUIN_MANIAC_CAVE
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetUnownFormsSeenCount VAR_RESULT
    GoToIfGe VAR_RESULT, 10, _0034
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0034:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
