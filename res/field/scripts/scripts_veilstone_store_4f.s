#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _00EE
    ScriptEntry _0101
    ScriptEntry _0114
    ScriptEntry _0127
    ScriptEntry _013D
    ScriptEntry _0153
    .short 0xFD13

_001E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_27E 0x800C
    GoToIfEq 0x800C, 1, _005F
    Message 0
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 229, 1
    ScrCmd_042 228, 0
    ScrCmd_043
    GoToIfEq 0x800C, 1, _00C2
    GoTo _00B7

_005F:
    BufferPlayerName 0
    Message 1
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 229, 0
    ScrCmd_042 228, 1
    ScrCmd_043
    GoToIfNe 0x800C, 0, _00B7
    ScrCmd_1B7 0x800C, 4
    GoToIfEq 0x800C, 0, _00C2
    GoToIfEq 0x800C, 1, _00CD
    GoToIfEq 0x800C, 2, _00D8
    GoTo _00E3

_00B7:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C2:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CD:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D8:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E3:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0101:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0114:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0127:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_149 0
    ReleaseAll
    End

_013D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_149 1
    ReleaseAll
    End

_0153:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
