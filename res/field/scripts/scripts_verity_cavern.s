#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    .short 0xFD13

_000A:
    SetFlag 0x9DF
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_208 0x1E1, 0
    WaitABPress
    ScrCmd_209
    ScrCmd_04C 0x1E1, 0
    Message 0
    CloseMessage
    SetFlag 0x1DF
    ScrCmd_065 0
    WaitTime 8, 0x800C
    ClearFlag 0x1DF
    ScrCmd_064 0
    WaitTime 8, 0x800C
    SetFlag 0x1DF
    ScrCmd_065 0
    WaitTime 8, 0x800C
    ClearFlag 0x1DF
    ScrCmd_064 0
    WaitTime 8, 0x800C
    SetFlag 0x1DF
    ScrCmd_065 0
    WaitTime 8, 0x800C
    ClearFlag 0x1DF
    ScrCmd_064 0
    WaitTime 8, 0x800C
    SetFlag 0x1DF
    ScrCmd_065 0
    ScrCmd_21C 0
    Message 1
    CloseMessage
    GoToIfEq 0x4059, 3, _0184
    WaitTime 30, 0x800C
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 0, _00DE
    GoToIfEq 0x800C, 1, _00EE
    GoToIfEq 0x800C, 2, _00FE
    GoToIfEq 0x800C, 3, _010E
    End

_00DE:
    ScrCmd_186 1, 12, 22
    GoTo _011E
    End

_00EE:
    ScrCmd_186 1, 12, 20
    GoTo _011E
    End

_00FE:
    ScrCmd_186 1, 13, 21
    GoTo _011E
    End

_010E:
    ScrCmd_186 1, 11, 21
    GoTo _011E
    End

_011E:
    ClearFlag 0x296
    ScrCmd_064 1
    ApplyMovement 1, _0190
    WaitMovement
    ApplyMovement 0xFF, _01B0
    WaitMovement
    BufferPlayerName 0
    Message 2
    CloseMessage
    ApplyMovement 1, _0198
    WaitMovement
    BufferPlayerName 0
    Message 3
    ScrCmd_134 12, 0x800C
    CallIfEq 0x800C, 0, _017F
    BufferPlayerName 0
    Message 5
    CloseMessage
    ApplyMovement 1, _01A8
    WaitMovement
    ScrCmd_065 1
    ReleaseAll
    End

_017F:
    Message 4
    Return

_0184:
    SetVar 0x4059, 0
    ReleaseAll
    End

    .balign 4, 0
_0190:
    MoveAction_00C 7
    EndMovement

    .balign 4, 0
_0198:
    MoveAction_021
    MoveAction_03F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_01A8:
    MoveAction_00D 9
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_001
    EndMovement
