#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_21D 0, 1, 0x800C
    GoToIfEq 0x800C, 0, _0070
    Call _0102
    GoToIfEq 0x800C, 1, _003C
    GoTo _0055

_003C:
    ScrCmd_21D 3, 1, 0
    ScrCmd_21D 2, 1, 1
    Message 0
    GoTo _00A8

_0055:
    ScrCmd_21D 3, 1, 0
    ScrCmd_21D 2, 1, 1
    Message 1
    GoTo _008C
    End

_0070:
    Message 2
_0073:
    Call _0102
    GoToIfEq 0x800C, 1, _00A8
    GoTo _008C

_008C:
    ScrCmd_041 1, 1, 0, 1, 0x8004
    ScrCmd_042 11, 1
    ScrCmd_042 13, 3
    ScrCmd_042 14, 4
    ScrCmd_043
    GoTo _00C2

_00A8:
    ScrCmd_041 1, 1, 0, 1, 0x8004
    ScrCmd_042 11, 1
    ScrCmd_042 12, 2
    ScrCmd_042 13, 3
    ScrCmd_042 14, 4
    ScrCmd_043
_00C2:
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 1, _01CF
    GoToIfEq 0x8008, 2, _0261
    GoToIfEq 0x8008, 3, _03DA
    GoToIfEq 0x8008, 4, _03E5
    GoTo _03E5

_0102:
    ScrCmd_21D 0, 0, 0x800C
    GoToIfEq 0x800C, 0, _012C
    ScrCmd_21D 1, 0, 0x800C
    GoToIfEq 0x800C, 0, _01BF
_012C:
    ScrCmd_21D 0, 2, 0x800C
    GoToIfEq 0x800C, 0, _0156
    ScrCmd_21D 1, 2, 0x800C
    GoToIfEq 0x800C, 0, _01BF
_0156:
    ScrCmd_21D 0, 3, 0x800C
    GoToIfEq 0x800C, 0, _0180
    ScrCmd_21D 1, 3, 0x800C
    GoToIfEq 0x800C, 0, _01BF
_0180:
    ScrCmd_21D 0, 4, 0x800C
    GoToIfEq 0x800C, 0, _01AA
    ScrCmd_21D 1, 4, 0x800C
    GoToIfEq 0x800C, 0, _01BF
_01AA:
    ScrCmd_21D 0, 5, 0x800C
    GoToIfEq 0x800C, 0, _01C7
_01BF:
    SetVar 0x800C, 1
    Return

_01C7:
    SetVar 0x800C, 0
    Return

_01CF:
    ScrCmd_21D 0, 0, 0x800C
    GoToIfEq 0x800C, 0, _01F8
    Message 5
    ScrCmd_03E 0x800C
    GoToIfNe 0x800C, 0, _03E5
_01F8:
    Message 6
    WaitABPress
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_21D 4, 0x800C
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 1, _03E5
    GoToIfEq 0x800C, 2, _0256
    ScrCmd_21D 6
    ScrCmd_21D 2, 0, 0
    ScrCmd_21D 3, 0, 1
    Message 7
    WaitABXPadPress
    GoTo _03EA

_0256:
    Message 22
    WaitABXPadPress
    GoTo _03EA

_0261:
    Message 3
    ScrCmd_041 1, 1, 0, 1, 0x8004
    ScrCmd_21D 0, 0, 0x800C
    GoToIfEq 0x800C, 0, _02A2
    ScrCmd_21D 1, 0, 0x800C
    GoToIfEq 0x800C, 1, _02A2
    ScrCmd_21D 2, 0, 0
    ScrCmd_042 15, 0
_02A2:
    ScrCmd_21D 0, 2, 0x800C
    GoToIfEq 0x800C, 0, _02D8
    ScrCmd_21D 1, 2, 0x800C
    GoToIfEq 0x800C, 1, _02D8
    ScrCmd_21D 2, 2, 1
    ScrCmd_042 16, 2
_02D8:
    ScrCmd_21D 0, 3, 0x800C
    GoToIfEq 0x800C, 0, _030E
    ScrCmd_21D 1, 3, 0x800C
    GoToIfEq 0x800C, 1, _030E
    ScrCmd_21D 2, 3, 2
    ScrCmd_042 17, 3
_030E:
    ScrCmd_21D 0, 4, 0x800C
    GoToIfEq 0x800C, 0, _0344
    ScrCmd_21D 1, 4, 0x800C
    GoToIfEq 0x800C, 1, _0344
    ScrCmd_21D 2, 4, 3
    ScrCmd_042 18, 4
_0344:
    ScrCmd_21D 0, 5, 0x800C
    GoToIfEq 0x800C, 0, _037A
    ScrCmd_21D 1, 5, 0x800C
    GoToIfEq 0x800C, 1, _037A
    ScrCmd_21D 2, 5, 4
    ScrCmd_042 19, 5
_037A:
    ScrCmd_042 20, 6
    ScrCmd_043
    GoToIfEq 0x8004, 6, _03E5
    GoToIfEq 0x8004, -2, _03E5
    ScrCmd_21D 2, 0x8004, 0
    ScrCmd_21D 3, 0x8004, 1
    Message 8
    ScrCmd_03E 0x800C
    GoToIfNe 0x800C, 0, _0261
    ScrCmd_21D 5, 0x8004
    BufferPlayerName 0
    ScrCmd_21D 2, 0x8004, 1
    Message 9
    WaitABXPadPress
    GoTo _03EA

_03DA:
    Message 10
    WaitABPress
    GoTo _0073

_03E5:
    Message 4
    WaitABXPadPress
_03EA:
    CloseMessage
    ReleaseAll
    End
