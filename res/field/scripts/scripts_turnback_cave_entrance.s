#include "macros/scrcmd.inc"
#include "res/text/bank/turnback_cave_entrance.h"


    ScriptEntry _000A
    ScriptEntry _002A
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09D4
    Call _001C
    InitTurnbackCave VAR_TURNBACK_CAVE_PILLARS_SEEN, VAR_TURNBACK_CAVE_ROOMS_VISITED
    End

_001C:
    SetVar VAR_TURNBACK_CAVE_PILLARS_SEEN, 0
    SetVar VAR_TURNBACK_CAVE_ROOMS_VISITED, 0
    Return

_002A:
    GoToIfSet FLAG_UNK_0x0121, _0046
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0046:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
