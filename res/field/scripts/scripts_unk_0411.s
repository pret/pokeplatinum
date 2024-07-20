#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _00AB
    ScriptEntry _004C
    ScriptEntry _009D
    .short 0xFD13

_0012:
    BufferPlayerName 0
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0031
    GoTo _003E
    End

_0031:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_003E:
    Call _00E8
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_004C:
    BufferPlayerName 0
    ScrCmd_14D 0x800C
    CallIfEq 0x800C, 0, _0086
    CallIfEq 0x800C, 1, _008B
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0090
    GoTo _009D
    End

_0086:
    Message 18
    Return

_008B:
    Message 19
    Return

_0090:
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_009D:
    Call _0126
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

_00AB:
    Call _00B5
    ReturnCommonScript
    End

_00B5:
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 0, _00D6
    GoToIfEq 0x800C, 1, _00DF
    End

_00D6:
    Message 43
    GoTo _00E8

_00DF:
    Message 44
    GoTo _0126

_00E8:
    GoToIfUnset 0x9BA, _0104
    ScrCmd_1E8 0x800C
    CallIfEq 0x800C, 1, _0120
_0104:
    ScrCmd_11E 0x8004
    BufferNumber 0, 0x8004
    Message 1
    ScrCmd_123 0, 0x800C
    BufferPlayerName 0
    MessageVar 0x800C
    WaitABPress
    Return

_0120:
    SetFlag 0x110
    Return

_0126:
    ScrCmd_121 0x8004
    ScrCmd_14D 0x8005
    BufferNumber 0, 0x8004
    Message 20
    ScrCmd_123 1, 0x800C
    BufferPlayerName 0
    MessageVar 0x800C
    WaitABPress
    Return

    .byte 0
    .byte 0
