#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _004E
    ScriptEntry _01B0
    ScriptEntry _01C3
    ScriptEntry _01EC
    ScriptEntry _0203
    ScriptEntry _021A
    .short 0xFD13

_001E:
    ScrCmd_14D 0x4000
    GoToIfEq 0x4000, 0, _003E
    GoToIfEq 0x4000, 1, _0046
    End

_003E:
    SetVar 0x4020, 97
    End

_0046:
    SetVar 0x4020, 0
    End

_004E:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    ScrCmd_186 18, 0x14B, 0x8005
    Call _008E
    ApplyMovement 18, _0194
    WaitMovement
    CallCommonScript 0x7F8
    ApplyMovement 18, _01A0
    WaitMovement
    ApplyMovement 0xFF, _0174
    WaitMovement
    GoTo _009C
    End

_008E:
    ClearFlag 0x1CC
    ScrCmd_064 18
    ScrCmd_062 18
    Return

_009C:
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _00B3
    GoTo _00F1

_00B3:
    BufferPlayerName 0
    Message 0
    ScrCmd_044 30, 13, 0, 0, 0x800C
    ScrCmd_33A 1
    ScrCmd_046 137, 0xFF, 0
    ScrCmd_046 138, 0xFF, 1
    ScrCmd_047
    Message 1
    Call _012F
    Message 2
    Call _0145
    Message 3
    GoTo _0156

_00F1:
    BufferPlayerName 0
    Message 4
    ScrCmd_044 30, 13, 0, 0, 0x800C
    ScrCmd_33A 1
    ScrCmd_046 137, 0xFF, 0
    ScrCmd_046 138, 0xFF, 1
    ScrCmd_047
    Message 5
    Call _012F
    Message 6
    Call _0145
    Message 7
    GoTo _0156

_012F:
    SetFlag 0x97F
    SetVar 0x8004, 0x1BB
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    Return

_0145:
    SetVar 0x8004, 6
    CallCommonScript 0x7D9
    BufferPoketchAppName 1, POKETCH_APPID_DOWSINGMACHINE
    Return

_0156:
    CloseMessage
    ApplyMovement 18, _01A8
    WaitMovement
    ScrCmd_065 18
    CallCommonScript 0x7F9
    SetVar 0x408C, 1
    ReleaseAll
    End

    .balign 4, 0
_0174:
    MoveAction_022
    EndMovement

    .byte 63
    .byte 0
    .byte 8
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0194:
    MoveAction_00F 3
    MoveAction_04B
    EndMovement

    .balign 4, 0
_01A0:
    MoveAction_00F 5
    EndMovement

    .balign 4, 0
_01A8:
    MoveAction_00E 8
    EndMovement

_01B0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01C3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 130, _01E1
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E1:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01EC:
    ScrCmd_036 11, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0203:
    ScrCmd_036 12, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_021A:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 13, 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
