#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _002D
    ScriptEntry _0040
    ScriptEntry _009C
    ScriptEntry _00AF
    ScriptEntry _00C0
    .short 0xFD13

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0040:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x105, _0087
    Message 2
    SetVar 0x8004, 0x120
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0092
    CallCommonScript 0x7FC
    SetFlag 0x105
    GoTo _0087
    End

_0087:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0092:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_009C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00AF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    ScrCmd_072 20, 2
    GoTo _00D5

_00D5:
    ScrCmd_040 1, 1, 0, 1, 0x8000
    ScrCmd_042 219, 0
    ScrCmd_042 220, 1
    ScrCmd_042 221, 2
    ScrCmd_042 222, 3
    ScrCmd_043
    SetVar 0x8008, 0x8000
    GoToIfEq 0x8008, 0, _0125
    GoToIfEq 0x8008, 1, _0131
    GoToIfEq 0x8008, 2, _013D
    Message 10
    GoTo _028C

_0125:
    SetVar 0x8001, 30
    GoTo _0191

_0131:
    SetVar 0x8001, 31
    GoTo _0191

_013D:
    SetVar 0x8001, 32
    GoTo _0191

_0149:
    ScrCmd_071 0x800C, 200
    Return

_0153:
    ScrCmd_071 0x800C, 0x12C
    Return

_015D:
    ScrCmd_071 0x800C, 0x15E
    Return

_0167:
    ScrCmd_334 35, 200
    ScrCmd_070 200
    Return

_0175:
    ScrCmd_334 35, 0x12C
    ScrCmd_070 0x12C
    Return

_0183:
    ScrCmd_334 35, 0x15E
    ScrCmd_070 0x15E
    Return

_0191:
    CallIfEq 0x8000, 0, _0149
    CallIfEq 0x8000, 1, _0153
    CallIfEq 0x8000, 2, _015D
    GoToIfEq 0x800C, 0, _0277
    ScrCmd_07D 0x8001, 1, 0x800C
    GoToIfEq 0x800C, 0, _0280
    CallIfEq 0x8000, 0, _0167
    CallIfEq 0x8000, 1, _0175
    CallIfEq 0x8000, 2, _0183
    ScrCmd_074
    BufferItemName 0, 0x8001
    PlayFanfare SEQ_SE_DP_JIHANKI
    BufferItemName 0, 0x8001
    Message 7
    SetVar 0x8004, 0x8001
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    ScrCmd_1B7 0x800C, 64
    GoToIfNe 0x800C, 0, _026E
    ScrCmd_07D 0x8001, 1, 0x800C
    GoToIfEq 0x800C, 0, _0280
    PlayFanfare SEQ_SE_DP_JIHANKI
    BufferItemName 0, 0x8001
    Message 8
    SetVar 0x8004, 0x8001
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    GoTo _026E

_026E:
    Message 6
    GoTo _00D5

_0277:
    Message 9
    GoTo _028C

_0280:
    CallCommonScript 0x7E1
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_028C:
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

    .byte 0
    .byte 0
