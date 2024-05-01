    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _018C-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 188
    ScrCmd_01C 1, _00EF
    ScrCmd_02C 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _005F
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _006F
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _007F
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _008F
    End

_005F:
    ScrCmd_05E 0, _0144
    ScrCmd_05F
    ScrCmd_016 _009F

_006F:
    ScrCmd_05E 0, _0168
    ScrCmd_05F
    ScrCmd_016 _009F

_007F:
    ScrCmd_05E 0, _00FC
    ScrCmd_05F
    ScrCmd_016 _009F

_008F:
    ScrCmd_05E 0, _0120
    ScrCmd_05F
    ScrCmd_016 _009F

_009F:
    ScrCmd_02C 2
    ScrCmd_040 1, 1, 0, 0, 0x8000
    ScrCmd_042 174, 0
    ScrCmd_042 175, 1
    ScrCmd_043
    ScrCmd_1B7 0x800C, 2
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00E4
    ScrCmd_02C 4
    ScrCmd_028 0x8004, 0x1BC
    ScrCmd_028 0x8005, 1
    ScrCmd_01E 188
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_00E4:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00EF:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_00FC:
    MoveAction_000
    MoveAction_03D
    MoveAction_003
    MoveAction_03D
    MoveAction_001
    MoveAction_03D
    MoveAction_002
    MoveAction_03D
    EndMovement

    .balign 4, 0
_0120:
    MoveAction_003
    MoveAction_03D
    MoveAction_001
    MoveAction_03D
    MoveAction_002
    MoveAction_03D
    MoveAction_000
    MoveAction_03D
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_001
    MoveAction_03D
    MoveAction_002
    MoveAction_03D
    MoveAction_000
    MoveAction_03D
    MoveAction_003
    MoveAction_03D
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_002
    MoveAction_03D
    MoveAction_000
    MoveAction_03D
    MoveAction_003
    MoveAction_03D
    MoveAction_001
    MoveAction_03D
    EndMovement

_018C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
