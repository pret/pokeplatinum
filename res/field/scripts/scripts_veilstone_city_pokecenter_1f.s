#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_pokecenter_1f.h"

    .data

    ScriptEntry _000E
    ScriptEntry _001A
    ScriptEntry _0032
    TableEnd

_000E:
    SetVar 0x8007, 0
    CallCommonScript 0x7D2
    End

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferTMHMMoveName 0, ITEM_HM03
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0032:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
