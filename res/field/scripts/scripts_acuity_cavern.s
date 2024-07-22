#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0014
    ScriptEntry _002F
    .short 0xFD13

_000E:
    SetFlag 0x9E3
    End

_0014:
    GoToIfSet 142, _0021
    End

_0021:
    SetFlag 0x1E1
    ScrCmd_065 0
    ClearFlag 142
    End

_002F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_04C 0x1E0, 0
    Message 0
    CloseMessage
    SetFlag 142
    ScrCmd_2BD 0x1E0, 50
    ClearFlag 142
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0085
    ScrCmd_2BC 0x800C
    GoToIfEq 0x800C, 1, _007A
    SetFlag 0x127
    ReleaseAll
    End

_007A:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0085:
    ScrCmd_0EB
    ReleaseAll
    End

    .byte 0
