#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _000E
    .short 0xFD13

_000A:
    ScrCmd_2F2
    End

_000E:
    LockAll
    ScrCmd_311 128
    ApplyMovement 128, _0060
    WaitMovement
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _003B
    Message 1
    GoTo _003E

_003B:
    Message 2
_003E:
    Message 3
    Message 4
    CloseMessage
    ApplyMovement 128, _0068
    WaitMovement
    ScrCmd_312 128
    SetVar 0x4055, 6
    ReleaseAll
    End

    .balign 4, 0
_0060:
    MoveAction_00C 7
    EndMovement

    .balign 4, 0
_0068:
    MoveAction_00D 7
    EndMovement
