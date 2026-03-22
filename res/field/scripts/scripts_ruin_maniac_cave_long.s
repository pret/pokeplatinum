#include "macros/scrcmd.inc"
#include "res/text/bank/ruin_maniac_cave_long.h"


    ScriptEntry _0010
    ScriptEntry _000A
    ScriptEntryEnd

_000A:
    SetFlag FLAG_FIRST_ARRIVAL_RUIN_MANIAC_CAVE
    End

_0010:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetUnownFormsSeenCount VAR_RESULT
    GoToIfGe VAR_RESULT, 26, _0034
    Message 0
    WaitButton
    CloseMessage
    ReleaseAll
    End

_0034:
    Message 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
