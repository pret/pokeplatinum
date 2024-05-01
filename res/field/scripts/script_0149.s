    .include "macros/scrcmd.inc"

    .data

    .long _003B-.-4
    .long _00D8-.-4
    .long _0184-.-4
    .long _0016-.-4
    .long _0197-.-4
    .short 0xFD13

_0016:
    ScrCmd_011 0x411F, 2
    ScrCmd_01D 0, _0025
    End

_0025:
    ScrCmd_186 4, 8, 10
    ScrCmd_188 4, 14
    ScrCmd_189 4, 0
    Return

_003B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1CF, 1, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0063
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0063:
    ScrCmd_02C 8
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0086
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00C2
    End

_0086:
    ScrCmd_01E 0x10E
    ScrCmd_07C 0x1CF, 1, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x608
    ScrCmd_05E 2, _00C8
    ScrCmd_05E 3, _00D0
    ScrCmd_05F
    ScrCmd_065 2
    ScrCmd_065 3
    ScrCmd_034
    ScrCmd_061
    End

_00C2:
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_00C8:
    MoveAction_012
    EndMovement

    .balign 4, 0
_00D0:
    MoveAction_013
    EndMovement

_00D8:
    ScrCmd_060
    ScrCmd_05E 4, _012C
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0xFF, _0168
    ScrCmd_05E 4, _0134
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0xFF, _0174
    ScrCmd_05E 4, _015C
    ScrCmd_05F
    ScrCmd_028 0x407C, 1
    ScrCmd_028 0x411F, 2
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_012C:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_00D 2
    MoveAction_022
    MoveAction_03F 2
    MoveAction_023
    MoveAction_03F 2
    MoveAction_00F 5
    MoveAction_020
    MoveAction_04B
    MoveAction_022
    EndMovement

    .balign 4, 0
_015C:
    MoveAction_00E 5
    MoveAction_021
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_03F 9
    MoveAction_023
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_03F 4
    MoveAction_03D
    MoveAction_020
    EndMovement

_0184:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0197:
    ScrCmd_060
    ScrCmd_186 4, 8, 11
    ScrCmd_188 4, 14
    ScrCmd_189 4, 0
    ScrCmd_01F 0x20D
    ScrCmd_064 4
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 8
    ScrCmd_01D 1, _025A
    ScrCmd_011 0x8004, 9
    ScrCmd_01D 1, _026E
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 4, _0308
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_01E 0x10E
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x608
    ScrCmd_05E 2, _00C8
    ScrCmd_05E 3, _00D0
    ScrCmd_05F
    ScrCmd_065 2
    ScrCmd_065 3
    ScrCmd_011 0x8004, 8
    ScrCmd_01D 1, _0282
    ScrCmd_011 0x8004, 9
    ScrCmd_01D 1, _028E
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_011 0x8004, 8
    ScrCmd_01D 1, _029A
    ScrCmd_011 0x8004, 9
    ScrCmd_01D 1, _02AE
    ScrCmd_065 4
    ScrCmd_01E 0x28A
    ScrCmd_028 0x411F, 4
    ScrCmd_061
    End

_025A:
    ScrCmd_05E 4, _02E8
    ScrCmd_05E 0xFF, _02C4
    ScrCmd_05F
    Return

_026E:
    ScrCmd_05E 4, _02FC
    ScrCmd_05E 0xFF, _02D0
    ScrCmd_05F
    Return

_0282:
    ScrCmd_05E 4, _0318
    ScrCmd_05F
    Return

_028E:
    ScrCmd_05E 4, _0310
    ScrCmd_05F
    Return

_029A:
    ScrCmd_05E 4, _0320
    ScrCmd_05E 0xFF, _02DC
    ScrCmd_05F
    Return

_02AE:
    ScrCmd_05E 4, _0338
    ScrCmd_05E 0xFF, _02DC
    ScrCmd_05F
    Return

    .balign 4, 0
_02C4:
    MoveAction_03F 4
    MoveAction_023
    EndMovement

    .balign 4, 0
_02D0:
    MoveAction_03F 3
    MoveAction_022
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_02FC:
    MoveAction_00C 3
    MoveAction_023
    EndMovement

    .balign 4, 0
_0308:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0310:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0318:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0320:
    MoveAction_00C 5
    MoveAction_026
    MoveAction_027
    MoveAction_03F 2
    MoveAction_013 6
    EndMovement

    .balign 4, 0
_0338:
    MoveAction_00C 5
    MoveAction_026
    MoveAction_027
    MoveAction_03F 2
    MoveAction_013 7
    EndMovement
