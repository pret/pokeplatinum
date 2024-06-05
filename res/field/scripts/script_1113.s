    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0034-.-4
    .long _0047-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ApplyMovement 0, _002C
    WaitMovement
    ScrCmd_061
    End

    .balign 4, 0
_002C:
    MoveAction_020
    EndMovement

_0034:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0047:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _006F
    GoToIfEq 0x800C, 1, _007A
    End

_006F:
    ScrCmd_02C 3
    GoTo _0085
    End

_007A:
    ScrCmd_02C 4
    GoTo _0085
    End

_0085:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
