#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_northwest_house_3f.h"

    .data

    ScriptEntry _000A
    ScriptEntry _006E
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x007C, _0054
    BufferItemName 0, ITEM_HARD_STONE
    Message 0
    SetVar 0x8004, ITEM_HARD_STONE
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _0064
    SetFlag FLAG_UNK_0x007C
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0054:
    BufferItemName 0, ITEM_HARD_STONE
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0064:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_006E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PSYDUCK
    Message 2
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
