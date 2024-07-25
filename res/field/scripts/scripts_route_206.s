#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _001C
    ScriptEntry _00A4
    ScriptEntry _00B7
    ScriptEntry _00CE
    .short 0xFD13

_0016:
    SetFlag 0x9E6
    End

_001C:
    CallIfSet 0x994, _009F
    ScrCmd_200 0x4000
    GoToIfEq 0x4000, 80, _0047
    GoToIfEq 0x4000, 0x15F, _0047
    End

_0047:
    GoToIfSet 3, _009D
    GetPlayerMapPos 0x4000, 0x4001
    GoToIfLt 0x4000, 0x12B, _009D
    GoToIfGt 0x4000, 0x132, _009D
    GoToIfEq 0x4001, 0x240, _008E
    GoToIfEq 0x4001, 0x2A9, _008E
    End

_008E:
    SetFlag 3
    SetFlag 0x994
    ScrCmd_2BF
    ScrCmd_0C9 1
    End

_009D:
    End

_009F:
    ScrCmd_0C9 1
    Return

_00A4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B7:
    ScrCmd_036 1, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_00CE:
    ScrCmd_036 2, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
    .byte 0
    .byte 0
