#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _001C
    ScriptEntry _007C
    ScriptEntry _0108
    ScriptEntry _02D5
    .short 0xFD13

_0016:
    SetFlag 0x9E7
    End

_001C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0xAA0, _0067
    Message 0
    ScrCmd_1B7 0x8004, 26
    AddVar 0x8004, 149
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0072
    SetFlag 0xAA0
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0067:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0072:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_007C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq 0x4000, 1, _00ED
    ScrCmd_134 7, 0x800C
    GoToIfEq 0x800C, 1, _00FD
    Message 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00C7
    GoToIfEq 0x800C, 1, _00E2
    End

_00C7:
    Message 3
    SetVar 0x4000, 1
    SetVar 0x8004, 7
    CallCommonScript 0x7D9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E2:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00ED:
    BufferPoketchAppName 0, POKETCH_APPID_BERRYSEARCHER
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FD:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0108:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    ScrCmd_072 20, 2
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 223, 0
    ScrCmd_042 224, 1
    ScrCmd_042 225, 2
    ScrCmd_042 226, 3
    ScrCmd_042 227, 4
    ScrCmd_043
    SetVar 0x8000, 0x800C
    SetVar 0x8008, 0x8000
    GoToIfEq 0x8008, 0, _0245
    GoToIfEq 0x8008, 1, _0251
    GoToIfEq 0x8008, 2, _025D
    GoToIfEq 0x8008, 3, _0269
    Message 9
    GoTo _0229

_0180:
    CallIfEq 0x8000, 0, _0275
    CallIfEq 0x8000, 1, _027F
    CallIfEq 0x8000, 2, _0289
    CallIfEq 0x8000, 3, _0293
    GoToIfEq 0x800C, 0, _023C
    ScrCmd_07D 0x8001, 1, 0x800C
    GoToIfEq 0x800C, 0, _0233
    CallIfEq 0x8000, 0, _029D
    CallIfEq 0x8000, 1, _02AB
    CallIfEq 0x8000, 2, _02B9
    CallIfEq 0x8000, 3, _02C7
    ScrCmd_074
    PlayFanfare SEQ_SE_DP_REGI
    AddItem 0x8001, 1, 0x800C
    BufferItemName 0, 0x8001
    Message 10
    Message 8
    GoTo _0229

_0229:
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_0233:
    Message 11
    GoTo _0229

_023C:
    Message 12
    GoTo _0229

_0245:
    SetVar 0x8001, 95
    GoTo _0180

_0251:
    SetVar 0x8001, 96
    GoTo _0180

_025D:
    SetVar 0x8001, 97
    GoTo _0180

_0269:
    SetVar 0x8001, 98
    GoTo _0180

_0275:
    ScrCmd_071 0x800C, 200
    Return

_027F:
    ScrCmd_071 0x800C, 200
    Return

_0289:
    ScrCmd_071 0x800C, 200
    Return

_0293:
    ScrCmd_071 0x800C, 200
    Return

_029D:
    ScrCmd_334 35, 200
    ScrCmd_070 200
    Return

_02AB:
    ScrCmd_334 35, 200
    ScrCmd_070 200
    Return

_02B9:
    ScrCmd_334 35, 200
    ScrCmd_070 200
    Return

_02C7:
    ScrCmd_334 35, 200
    ScrCmd_070 200
    Return

_02D5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    GoTo _02E8
    End

_02E8:
    Message 14
    ScrCmd_041 30, 7, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 19, 0
    ScrCmd_042 20, 1
    ScrCmd_042 21, 2
    ScrCmd_042 22, 3
    ScrCmd_042 23, 4
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _035B
    GoToIfEq 0x8008, 1, _0366
    GoToIfEq 0x8008, 2, _0371
    GoToIfEq 0x8008, 3, _037C
    GoToIfEq 0x8008, 4, _0387
    GoTo _0387
    End

_035B:
    Message 15
    GoTo _02E8
    End

_0366:
    Message 16
    GoTo _02E8
    End

_0371:
    Message 17
    GoTo _02E8
    End

_037C:
    Message 18
    GoTo _02E8
    End

_0387:
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
