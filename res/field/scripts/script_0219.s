    .include "macros/scrcmd.inc"

    .data

    .long _0047-.-4
    .long _0108-.-4
    .long _0198-.-4
    .long _03EC-.-4
    .long _03F5-.-4
    .long _03FE-.-4
    .long _0411-.-4
    .long _04E0-.-4
    .long _04F7-.-4
    .long _050C-.-4
    .long _0032-.-4
    .long _051D-.-4
    .short 0xFD13

_0032:
    ScrCmd_020 227
    ScrCmd_01C 0, _003F
    End

_003F:
    ScrCmd_028 0x40B1, 0
    End

_0047:
    ScrCmd_060
    ScrCmd_0C8 0
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 28
    ScrCmd_01C 1, _006E
    ScrCmd_011 0x8004, 29
    ScrCmd_01C 1, _007E
    End

_006E:
    ScrCmd_05E 0, _00E8
    ScrCmd_05F
    ScrCmd_016 _008E

_007E:
    ScrCmd_05E 0, _00F4
    ScrCmd_05F
    ScrCmd_016 _008E

_008E:
    ScrCmd_020 139
    ScrCmd_01D 0, _00D8
    ScrCmd_020 139
    ScrCmd_01D 1, _00E0
    ScrCmd_0CD 0
    ScrCmd_04E 0x481
    ScrCmd_02C 1
    ScrCmd_04F
    ScrCmd_01E 139
    ScrCmd_028 0x40B1, 1
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_028 0x403F, 0x260
    ScrCmd_161
    ScrCmd_06D 0, 48
    ScrCmd_06C 0, 1
    ScrCmd_061
    End

_00D8:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_01B

_00E0:
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_01B

    .balign 4, 0
_00E8:
    MoveAction_099
    MoveAction_00D
    EndMovement

    .balign 4, 0
_00F4:
    MoveAction_099
    MoveAction_00D
    MoveAction_00F
    MoveAction_021
    EndMovement

_0108:
    ScrCmd_060
    ScrCmd_162
    ScrCmd_06D 0, 15
    ScrCmd_06C 0, 0
    ScrCmd_05E 0, _0190
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 28
    ScrCmd_01C 1, _0148
    ScrCmd_011 0x8004, 29
    ScrCmd_01C 1, _0158
    End

_0148:
    ScrCmd_05E 0, _0174
    ScrCmd_05F
    ScrCmd_016 _0168

_0158:
    ScrCmd_05E 0, _0180
    ScrCmd_05F
    ScrCmd_016 _0168

_0168:
    ScrCmd_028 0x40B1, 0
    ScrCmd_061
    End

    .balign 4, 0
_0174:
    MoveAction_00C 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_0180:
    MoveAction_00C 2
    MoveAction_00E
    MoveAction_021
    EndMovement

    .balign 4, 0
_0190:
    MoveAction_021
    EndMovement

_0198:
    ScrCmd_060
    ScrCmd_05E 0, _0300
    ScrCmd_05E 0xFF, _0368
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_028 0x8004, 218
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01EA
    ScrCmd_016 _01DB
    End

_01DB:
    ScrCmd_02C 6
    ScrCmd_014 0x7E0
    ScrCmd_016 _01EA
    End

_01EA:
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 34
    ScrCmd_01C 1, _023B
    ScrCmd_011 0x8005, 35
    ScrCmd_01C 1, _0253
    ScrCmd_011 0x8005, 36
    ScrCmd_01C 1, _026B
    ScrCmd_011 0x8005, 37
    ScrCmd_01C 1, _0283
    ScrCmd_011 0x8005, 38
    ScrCmd_01C 1, _029B
    ScrCmd_016 _02B3
    End

_023B:
    ScrCmd_05E 0, _030C
    ScrCmd_05E 0xFF, _0374
    ScrCmd_05F
    ScrCmd_016 _02CB

_0253:
    ScrCmd_05E 0, _0318
    ScrCmd_05E 0xFF, _0388
    ScrCmd_05F
    ScrCmd_016 _02CB

_026B:
    ScrCmd_05E 0, _0324
    ScrCmd_05E 0xFF, _039C
    ScrCmd_05F
    ScrCmd_016 _02CB

_0283:
    ScrCmd_05E 0, _0330
    ScrCmd_05E 0xFF, _03B0
    ScrCmd_05F
    ScrCmd_016 _02CB

_029B:
    ScrCmd_05E 0, _033C
    ScrCmd_05E 0xFF, _03C4
    ScrCmd_05F
    ScrCmd_016 _02CB

_02B3:
    ScrCmd_05E 0, _0348
    ScrCmd_05E 0xFF, _03D8
    ScrCmd_05F
    ScrCmd_016 _02CB

_02CB:
    ScrCmd_05E 0, _0354
    ScrCmd_05F
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 0, _035C
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_162
    ScrCmd_065 0
    ScrCmd_04B 0x603
    ScrCmd_01E 227
    ScrCmd_028 0x40B1, 2
    ScrCmd_061
    End

    .balign 4, 0
_0300:
    MoveAction_023
    MoveAction_099
    EndMovement

    .balign 4, 0
_030C:
    MoveAction_00D 2
    MoveAction_00F 5
    EndMovement

    .balign 4, 0
_0318:
    MoveAction_00D
    MoveAction_00F 5
    EndMovement

    .balign 4, 0
_0324:
    MoveAction_00D
    MoveAction_00F 5
    EndMovement

    .balign 4, 0
_0330:
    MoveAction_00C
    MoveAction_00F 5
    EndMovement

    .balign 4, 0
_033C:
    MoveAction_00C
    MoveAction_00F 5
    EndMovement

    .balign 4, 0
_0348:
    MoveAction_00C 2
    MoveAction_00F 5
    EndMovement

    .balign 4, 0
_0354:
    MoveAction_022
    EndMovement

    .balign 4, 0
_035C:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_0368:
    MoveAction_03F 3
    MoveAction_022
    EndMovement

    .balign 4, 0
_0374:
    MoveAction_03F 2
    MoveAction_021
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_0388:
    MoveAction_03F
    MoveAction_021
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_03F
    MoveAction_021
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_03B0:
    MoveAction_03F
    MoveAction_020
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_03F
    MoveAction_020
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_03D8:
    MoveAction_03F 2
    MoveAction_020
    MoveAction_03F
    MoveAction_023
    EndMovement

_03EC:
    ScrCmd_060
    ScrCmd_0CD 0
    ScrCmd_061
    End

_03F5:
    ScrCmd_060
    ScrCmd_0CD 0
    ScrCmd_061
    End

_03FE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0411:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_05E 24, _04BC
    ScrCmd_05F
    ScrCmd_02C 12
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_034
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _046C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _047E
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0490
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _04A2
    End

_046C:
    ScrCmd_05E 24, _04D0
    ScrCmd_05F
    ScrCmd_016 _04B4
    End

_047E:
    ScrCmd_05E 24, _04C4
    ScrCmd_05F
    ScrCmd_016 _04B4
    End

_0490:
    ScrCmd_05E 24, _04C4
    ScrCmd_05F
    ScrCmd_016 _04B4
    End

_04A2:
    ScrCmd_05E 24, _04C4
    ScrCmd_05F
    ScrCmd_016 _04B4
    End

_04B4:
    ScrCmd_065 24
    ScrCmd_061
    End

    .balign 4, 0
_04BC:
    MoveAction_020
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_00D 2
    MoveAction_00F 9
    EndMovement

    .balign 4, 0
_04D0:
    MoveAction_00E
    MoveAction_00D 2
    MoveAction_00F 10
    EndMovement

_04E0:
    ScrCmd_036 14, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_04F7:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 15, 0x800C
    ScrCmd_014 0x7D0
    End

_050C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_051D:
    ScrCmd_060
    ScrCmd_028 0x40CD, 2
    ScrCmd_05E 0, _053C
    ScrCmd_05F
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_053C:
    MoveAction_020
    EndMovement
