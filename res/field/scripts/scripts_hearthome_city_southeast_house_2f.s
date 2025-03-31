#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_southeast_house_2f.h"

    .data

    ScriptEntry _000A
    ScriptEntry _006E
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x008C, _0054
    BufferItemName 0, ITEM_SHELL_BELL
    Message 0
    SetVar 0x8004, ITEM_SHELL_BELL
    SetVar 0x8005, 1
    CanFitItem 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0064
    SetFlag FLAG_UNK_0x008C
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0054:
    BufferItemName 0, ITEM_SHELL_BELL
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
    PlayCry SPECIES_CLEFAIRY
    Message 2
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
