#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _0022
    ScriptEntry _0035
    ScriptEntry _005E
    ScriptEntry _007D
    .short 0xFD13

_0016:
    SetVar 0x8007, 3
    CallCommonScript 0x7D2
    End

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0035:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 129, _0053
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0053:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 0x1AB, 0
    Message 3
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq 0x4002, 1, _00F4
    ScrCmd_134 5, 0x800C
    GoToIfEq 0x800C, 0, _00D9
    ScrCmd_247 0x8000
    BufferPartyMonSpecies 0, 0x8000
    Message 6
    ScrCmd_1B9 0x800C, 0x8000
    GoToIfGe 0x800C, 120, _00FF
    GoToIfGe 0x800C, 70, _010A
    GoTo _0115
    End

_00D9:
    Message 4
    SetVar 0x4002, 1
    SetVar 0x8004, 5
    CallCommonScript 0x7D9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F4:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FF:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010A:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0115:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
