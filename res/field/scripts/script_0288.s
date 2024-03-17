    .include "macros/scrcmd.inc"

    .data

    .long _0021-.-4
    .long _00C0-.-4
    .long _000E-.-4
    .short 0xFD13

_000E:
    ScrCmd_020 0x121
    ScrCmd_01D 1, _001B
    ScrCmd_002

_001B:
    ScrCmd_01F 0x278
    ScrCmd_01B

_0021:
    ScrCmd_060
    ScrCmd_328 0
    ScrCmd_2B5 0x10A, 0x2FA, 0x2CA
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0, _00A0
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0098
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0, _00B8
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_028 0x40AA, 2
    ScrCmd_028 0x40A6, 2
    ScrCmd_01E 0x1C7
    ScrCmd_01F 0x132
    ScrCmd_01E 0x28F
    ScrCmd_01E 0x295
    ScrCmd_01E 0x29F
    ScrCmd_01E 0x986
    ScrCmd_01F 0x292
    ScrCmd_01E 0x15E
    ScrCmd_01E 0x295
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0098:
    MoveAction_022
    EndMovement

    .balign 4, 0
_00A0:
    MoveAction_026
    MoveAction_03F
    MoveAction_027
    MoveAction_03F 2
    MoveAction_024
    EndMovement

    .balign 4, 0
_00B8:
    MoveAction_023
    EndMovement

_00C0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40AA, 3
    ScrCmd_01C 4, _00E0
    ScrCmd_02C 3
    ScrCmd_016 _00EB
    ScrCmd_002

_00E0:
    ScrCmd_02C 4
    ScrCmd_016 _00EB
    ScrCmd_002

_00EB:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
