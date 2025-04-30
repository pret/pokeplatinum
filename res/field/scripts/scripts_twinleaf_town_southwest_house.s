#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_southwest_house.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0033
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0090, _0028
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0028:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0033:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    GoToIfSet FLAG_UNK_0x0090, _0054
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0054:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
