#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0025
    .short 0xFD13

_000A:
    GoToIfSet 142, _0017
    End

_0017:
    SetFlag 0x243
    ScrCmd_065 0
    ClearFlag 142
    End

_0025:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    WaitFanfare SEQ_SE_CONFIRM
    GoToIfSet 0x11A, _0081
    ScrCmd_26B 0x800C
    GoToIfEq 0x800C, 0, _0073
    SetFlag 0x11A
    BufferPlayerName 0
    Message 1
    CloseMessage
    ScrCmd_063 0
    ScrCmd_269 0, 8, 90, 3, 0
    ScrCmd_062 0
    GoTo _0081
    End

_0073:
    BufferPlayerName 0
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0081:
    Message 2
    CloseMessage
    ScrCmd_04C 0x1E6, 0
    ScrCmd_04D
    SetFlag 142
    ScrCmd_2BD 0x1E6, 1
    ClearFlag 142
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _00D1
    ScrCmd_2BC 0x800C
    GoToIfEq 0x800C, 1, _00C6
    SetFlag 0x11B
    ReleaseAll
    End

_00C6:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D1:
    ScrCmd_0EB
    ReleaseAll
    End

    .byte 0
