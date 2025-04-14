#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_southeast_house.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0066
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00C9, _0051
    Message 0
    SetVar VAR_0x8004, ITEM_TM48
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_0x800C, _005C
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00C9
    GoTo _0051
    End

_0051:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005C:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0066:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
