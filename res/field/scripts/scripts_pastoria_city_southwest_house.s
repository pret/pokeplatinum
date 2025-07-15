#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_southwest_house.h"


    ScriptEntry _000A
    ScriptEntry _006A
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0AA3, _0055
    Message 0
    GetRandom VAR_0x8004, 17
    AddVar VAR_0x8004, ITEM_OCCA_BERRY /* Random type berry */
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0060
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
