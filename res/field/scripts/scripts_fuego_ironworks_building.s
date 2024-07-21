#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    .short 0xFD13

_000A:
    SetFlag 0x9C5
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 219, _00A9
    GoToIfSet 0x138, _0062
    Message 0
    SetVar 0x8004, 91
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _01F3
    SetFlag 0x138
    CallCommonScript 0x7FC
    GoTo _0062
    End

_0062:
    CheckItem ITEM_STAR_PIECE, 1, 0x800C
    GoToIfEq 0x800C, 1, _0082
    Message 1
    GoTo _00EC
    End

_0082:
    SetFlag 219
    Message 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00FF
    GoToIfEq 0x800C, 1, _00F4
    End

_00A9:
    CheckItem ITEM_STAR_PIECE, 1, 0x800C
    GoToIfEq 0x800C, 0, _00E1
    Message 4
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00FF
    GoToIfEq 0x800C, 1, _00F4
    End

_00E1:
    Message 3
    GoTo _00EC
    End

_00EC:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F4:
    Message 7
    GoTo _00EC
    End

_00FF:
    ScrCmd_2FE 91, 0x8000
    GoToIfGe 0x8000, 10, _014E
    GoTo _011A
    End

_011A:
    ScrCmd_1E5 70
    RemoveItem ITEM_STAR_PIECE, 1, 0x800C
    AddItem ITEM_RED_SHARD, 1, 0x800C
    AddItem ITEM_BLUE_SHARD, 1, 0x800C
    AddItem ITEM_YELLOW_SHARD, 1, 0x800C
    AddItem ITEM_GREEN_SHARD, 1, 0x800C
    GoTo _01E5
    End

_014E:
    Message 5
    ScrCmd_040 31, 11, 0, 1, 0x8001
    ScrCmd_33A 1
    ScrCmd_29D 0x116, 0
    ScrCmd_29D 0x117, 1
    ScrCmd_29D 11, 2
    ScrCmd_043
    SetVar 0x8007, 10
    SetVar 0x8008, 0x8001
    GoToIfEq 0x8008, 0, _011A
    GoToIfEq 0x8008, 1, _019E
    GoTo _00F4
    End

_019E:
    SubVar 0x8007, 1
    ScrCmd_1E5 70
    AddItem ITEM_RED_SHARD, 1, 0x800C
    AddItem ITEM_BLUE_SHARD, 1, 0x800C
    AddItem ITEM_YELLOW_SHARD, 1, 0x800C
    AddItem ITEM_GREEN_SHARD, 1, 0x800C
    RemoveItem ITEM_STAR_PIECE, 1, 0x800C
    GoToIfEq 0x8007, 0, _01E5
    GoTo _019E
    End

_01E5:
    Message 6
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01F3:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
