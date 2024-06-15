    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _00B8
    .short 0xFD13

_000E:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0021:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    ScrCmd_07E 0x1B8, 1, 0x800C
    GoToIfEq 0x800C, 1, _0049
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0049:
    Message 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _006C
    GoToIfEq 0x800C, 1, _00A0
    End

_006C:
    ScrCmd_0CD 0
    Message 3
    WaitButtonPress
    ScrCmd_04B 0x5DC
    PlayFanfare 0x608
    ApplyMovement 5, _00A8
    ApplyMovement 6, _00B0
    WaitMovement
    SetFlag 0x225
    ScrCmd_065 5
    ScrCmd_065 6
    CloseMessage
    ReleaseAll
    End

_00A0:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00A8:
    MoveAction_012
    EndMovement

    .balign 4, 0
_00B0:
    MoveAction_013
    EndMovement

_00B8:
    PlayFanfare 0x5DC
    LockAll
    Message 4
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
