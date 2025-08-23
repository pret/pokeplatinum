#include "macros/scrcmd.inc"
#include "res/text/bank/turnback_cave_pillar_room.h"


    ScriptEntry _000A
    ScriptEntry _0026
    ScriptEntryEnd

_000A:
    Call _0018
    InitTurnbackCave VAR_TURNBACK_CAVE_PILLARS_SEEN, VAR_TURNBACK_CAVE_ROOMS_VISITED
    End

_0018:
    AddVar VAR_TURNBACK_CAVE_PILLARS_SEEN, 1
    AddVar VAR_TURNBACK_CAVE_ROOMS_VISITED, 1
    Return

_0026:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8004, VAR_TURNBACK_CAVE_PILLARS_SEEN
    SetVar VAR_0x8005, VAR_TURNBACK_CAVE_ROOMS_VISITED
    BufferNumber 0, VAR_0x8004
    BufferNumber 1, VAR_0x8005
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
