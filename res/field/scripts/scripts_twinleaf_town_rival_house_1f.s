#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 144, _00B0
    GoToIfGe 0x4095, 1, _0082
    GoToIfSet 110, _0090
    GoToIfSet 234, _009E
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _005C
    GoToIfEq 0x800C, 1, _006B
    End

_005C:
    BufferPlayerName 0
    BufferRivalName 1
    Message 0
    GoTo _007A

_006B:
    BufferPlayerName 0
    BufferRivalName 1
    Message 1
    GoTo _007A

_007A:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0082:
    BufferRivalName 1
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0090:
    BufferRivalName 1
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009E:
    SetFlag 110
    BufferRivalName 1
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B0:
    BufferRivalName 1
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
