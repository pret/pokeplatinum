    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ApplyMovement 16, _0024
    WaitMovement
    ScrCmd_061
    End

    .balign 4, 0
_0024:
    MoveAction_000
    EndMovement
