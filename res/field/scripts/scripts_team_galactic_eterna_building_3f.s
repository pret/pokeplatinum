#include "macros/scrcmd.inc"
#include "res/text/bank/team_galactic_eterna_building_3f.h"

    .data

    ScriptEntry _000A
    ScriptEntry _001D
    TableEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_001D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
