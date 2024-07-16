#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _000C
    .short 0xFD13

_000A:
    End

_000C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_208 0x1E8, 1
    WaitABPress
    ScrCmd_209
    ScrCmd_04C 0x1E8, 0
    ScrCmd_1BD 0x800C
    CallIfEq 0x800C, 0, _007E
    ScrCmd_063 0
    ScrCmd_26A 0, 6, 8
    ScrCmd_062 0
    SetFlag 0x24F
    ScrCmd_065 0
    ScrCmd_21C 1
    GoToIfEq 0x4058, 3, _0074
    ClearFlag 0x452
    ScrCmd_064 1
    SetFlag 0x11F
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0074:
    SetVar 0x4058, 0
    ReleaseAll
    End

_007E:
    ScrCmd_186 1, 16, 14
    ApplyMovement 0, _0094
    WaitMovement
    Return

    .balign 4, 0
_0094:
    MoveAction_047
    MoveAction_00C
    MoveAction_048
    EndMovement
