    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _001D-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_001D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ApplyMovement 16, _0058
    WaitMovement
    ScrCmd_02C 1
    ApplyMovement 17, _0060
    WaitMovement
    ScrCmd_02C 2
    ScrCmd_034
    ApplyMovement 16, _0068
    ApplyMovement 17, _0068
    WaitMovement
    ScrCmd_061
    End

    .balign 4, 0
_0058:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0060:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0068:
    MoveAction_022
    EndMovement
