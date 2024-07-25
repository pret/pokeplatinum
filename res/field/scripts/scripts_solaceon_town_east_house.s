#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000C
    ScriptEntry _0109
    .short 0xFD13
    End

_000C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset 0x117, _00FE
    CallIfUnset 1, _00F6
    ScrCmd_1C0 0x800C, 201
    GoToIfEq 0x800C, 1, _0048
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0048:
    ScrCmd_2DD 0x8004, 201
    ScrCmd_095 0x8004, 0x8006
    GoToIfEq 0x4000, 0x8006, _00EB
    GoTo _0067

_0067:
    SetVar 0x8007, 50
    AddVar 0x8007, 0x8006
    ScrCmd_093 0x8007, 0x800C
    GoToIfEq 0x800C, 99, _00EB
    BufferPartyMonSpecies 0, 0x8004
    Message 1
    SetVar 0x8000, 10
    ScrCmd_093 0x8007, 0x800C
    GoToIfLe 0x800C, 89, _00B3
    SubVar 0x800C, 89
    SubVar 0x8000, 0x800C
_00B3:
    ScrCmd_094 0x8007, 0x8000
    SetVar 0x4000, 0x8006
    SetFlag 1
    GoToIfEq 0x8000, 1, _00DB
    ScrCmd_345 0, 0x8007
    GoTo _00E0

_00DB:
    ScrCmd_2B3 0, 0x8007
_00E0:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EB:
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F6:
    SetVar 0x4000, -1
    Return

_00FE:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0109:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x117, _0144
    Message 5
    SetVar 0x8004, 0x1B2
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    SetFlag 0x117
    Call _014F
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0144:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014F:
    Message 6
    ScrCmd_1B7 0x8007, 6
    AddVar 0x8007, 1
    ScrCmd_094 0x8007, 1
    ScrCmd_1B7 0x8007, 6
    AddVar 0x8007, 7
    ScrCmd_094 0x8007, 1
    ScrCmd_1B7 0x8007, 6
    AddVar 0x8007, 7
    ScrCmd_094 0x8007, 1
    ScrCmd_1B7 0x8007, 4
    AddVar 0x8007, 25
    ScrCmd_094 0x8007, 1
    ScrCmd_1B7 0x8007, 7
    AddVar 0x8007, 43
    ScrCmd_094 0x8007, 1
    Return

    .byte 0
    .byte 0
