#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _0068
    ScriptEntry _00B6
    ScriptEntry _0104
    ScriptEntry _01FD
    ScriptEntry _024B
    .short 0xFD13

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8000, 1
    GoTo _002E
    End

_002E:
    Call _0299
    Call _029E
    SetVar 0x8008, 0x8001
    GoToIfEq 0x8008, 3, _031D
    GoToIfEq 0x8008, -2, _031D
    Call _032B
    GoTo _002E
    End

_0068:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8000, 1
    GoTo _007C
    End

_007C:
    Call _0299
    Call _029E
    SetVar 0x8008, 0x8001
    GoToIfEq 0x8008, 3, _031D
    GoToIfEq 0x8008, -2, _031D
    Call _032B
    GoTo _007C
    End

_00B6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8000, 2
    GoTo _00CA
    End

_00CA:
    Call _0299
    Call _029E
    SetVar 0x8008, 0x8001
    GoToIfEq 0x8008, 3, _031D
    GoToIfEq 0x8008, -2, _031D
    Call _032B
    GoTo _00CA
    End

_0104:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8000, 5
    GoTo _0118
    End

_0118:
    Call _0299
    Call _029E
    SetVar 0x8008, 0x8001
    GoToIfEq 0x8008, 3, _031D
    GoToIfEq 0x8008, -2, _031D
    ScrCmd_2CC 1, 0x8001, 0x800C
    GoToIfEq 0x800C, 0, _0174
    ScrCmd_2CC 2, 0x8001, 0x800C
    ScrCmd_0DA 0, 0x800C, 0, 0
    Message 7
    GoTo _017F
    End

_0174:
    Message 6
    GoTo _017F
    End

_017F:
    SetVar 0x8002, 0
    SetVar 0x8004, 0
    SetVar 0x8005, 0
    GoTo _0199
    End

_0199:
    Call _02BD
    GoToIfEq 0x8002, 9, _0118
    GoToIfEq 0x8002, -2, _0118
    SetVar 0x8003, 0
    SetVar 0x8006, 0
    SetVar 0x8007, 0
    GoTo _01D3
    End

_01D3:
    ScrCmd_2DE 0x8001, 0x8002, 0x8003, 0x8006, 0x8007
    GoToIfEq 0x8003, -2, _0199
    Call _032B
    Message 6
    GoTo _01D3
    End

_01FD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8000, 4
    GoTo _0211
    End

_0211:
    Call _0299
    Call _029E
    SetVar 0x8008, 0x8001
    GoToIfEq 0x8008, 3, _031D
    GoToIfEq 0x8008, -2, _031D
    Call _032B
    GoTo _0211
    End

_024B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8000, 6
    GoTo _025F
    End

_025F:
    Call _0299
    Call _029E
    SetVar 0x8008, 0x8001
    GoToIfEq 0x8008, 3, _031D
    GoToIfEq 0x8008, -2, _031D
    Call _032B
    GoTo _025F
    End

_0299:
    Message 0
    Return

_029E:
    ScrCmd_041 31, 9, 0, 1, 0x8001
    ScrCmd_33A 1
    ScrCmd_042 1, 0
    ScrCmd_042 2, 1
    ScrCmd_042 3, 2
    ScrCmd_042 4, 3
    ScrCmd_043
    Return

_02BD:
    ScrCmd_045 25, 1, 0, 1, 0x8002
    ScrCmd_046 8, 0xFF, 0
    ScrCmd_046 9, 0xFF, 1
    ScrCmd_046 10, 0xFF, 2
    ScrCmd_046 11, 0xFF, 3
    ScrCmd_046 12, 0xFF, 4
    ScrCmd_046 13, 0xFF, 5
    ScrCmd_046 14, 0xFF, 6
    ScrCmd_046 15, 0xFF, 7
    ScrCmd_046 16, 0xFF, 8
    ScrCmd_046 5, 0xFF, 9
    ScrCmd_306 0x8004, 0x8005
    Return

_031D:
    CloseMessage
    GoTo _0327
    End

_0327:
    ReleaseAll
    End

_032B:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    Call _0341
    Return

_0341:
    ScrCmd_2C8 0x8001, 0x8000, 0x8003
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Return

    .byte 0
    .byte 0
    .byte 0
