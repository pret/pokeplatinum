#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_southwest_house.h"

    .data

    ScriptEntry _000A
    ScriptEntry _006A
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0AA3, _0055
    Message 0
    GetRandom 0x8004, 17
    AddVar 0x8004, ITEM_OCCA_BERRY @ Random type berry
    SetVar 0x8005, 1
    CanFitItem 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0060
    SetFlag FLAG_UNK_0x0AA3
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0055:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0060:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_006A:
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
