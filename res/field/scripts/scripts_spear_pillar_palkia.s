#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0077
    ScriptEntry _000A
    .short 0xFD13

_000A:
    Call _0012
    End

_0012:
    ScrCmd_166 0x4000
    GoToIfEq 0x4000, 0, _0075
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 0, _0075
    CheckItem ITEM_AZURE_FLUTE, 1, 0x4000
    GoToIfEq 0x4000, 0, _0075
    ScrCmd_28B 2, 0x4000
    GoToIfEq 0x4000, 0, _0075
    GoToIfSet 0x11E, _0075
    SetVar 0x4118, 1
    GoTo _0075
    End

_0075:
    Return

_0077:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfGe 0x40C5, 1, _00F4
    GoToIfSet 209, _00F4
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0101
    ScrCmd_04C 0x1E4, 0
    Message 1
    ScrCmd_04D
    CloseMessage
    ScrCmd_2BD 0x1E4, 70
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _00E8
    SetVar 0x40C5, 1
    ScrCmd_2BC 0x800C
    CallIfEq 0x800C, 0, _00EE
    ReleaseAll
    End

_00E8:
    ScrCmd_0EB
    ReleaseAll
    End

_00EE:
    SetFlag 209
    Return

_00F4:
    Message 2
    WaitABXPadPress
    GoTo _0101
    End

_0101:
    CloseMessage
    ReleaseAll
    End

    .byte 0
