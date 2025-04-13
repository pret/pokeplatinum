#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_northwest_house_2f.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0025
    ScriptEntry _0038
    ScriptEntry _0097
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0025:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0038:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00C0, _008C
    BufferItemName 0, ITEM_DUSK_BALL
    Message 2
    SetVar 0x8004, ITEM_DUSK_BALL
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _0082
    SetFlag FLAG_UNK_0x00C0
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0082:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_008C:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0097:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PSYDUCK
    Message 4
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
