    .include "macros/scrcmd.inc"

    .data

    .long _005D-.-4
    .long _006E-.-4
    .long _0041-.-4
    .long _0082-.-4
    .long _002A-.-4
    .long _0097-.-4
    .long _00A8-.-4
    .long _00B6-.-4
    .long _00C4-.-4
    .long _00D2-.-4
    .short 0xFD13

_002A:
    ScrCmd_011 0x40F9, 0
    ScrCmd_01C 1, _0039
    ScrCmd_002

_0039:
    ScrCmd_283 0x406, 50
    ScrCmd_002

_0041:
    ScrCmd_060
    ScrCmd_028 0x40F9, 1
    ScrCmd_02C 0
    ScrCmd_04E 0x482
    ScrCmd_02C 1
    ScrCmd_04F
    ScrCmd_034
    ScrCmd_052
    ScrCmd_061
    ScrCmd_002

_005D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_006E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0082:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 3, 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0097:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00A8:
    ScrCmd_028 0x4000, 0
    ScrCmd_016 _00E0
    ScrCmd_002

_00B6:
    ScrCmd_028 0x4000, 1
    ScrCmd_016 _00E0
    ScrCmd_002

_00C4:
    ScrCmd_028 0x4000, 2
    ScrCmd_016 _00E0
    ScrCmd_002

_00D2:
    ScrCmd_028 0x4000, 3
    ScrCmd_016 _00E0
    ScrCmd_002

_00E0:
    ScrCmd_060
    ScrCmd_01F 0x173
    ScrCmd_064 0
    ScrCmd_05E 0, _0394
    ScrCmd_05F
    ScrCmd_014 0x7FA
    ScrCmd_0CE 0
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _0249
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _025D
    ScrCmd_011 0x4000, 2
    ScrCmd_01D 1, _0271
    ScrCmd_011 0x4000, 3
    ScrCmd_01D 1, _027D
    ScrCmd_0CD 1
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 0, _03E0
    ScrCmd_05F
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _0291
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _02A5
    ScrCmd_011 0x4000, 2
    ScrCmd_01D 1, _02B9
    ScrCmd_011 0x4000, 3
    ScrCmd_01D 1, _02CD
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _02E1
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _02ED
    ScrCmd_011 0x4000, 2
    ScrCmd_01D 1, _02F9
    ScrCmd_011 0x4000, 3
    ScrCmd_01D 1, _0305
    ScrCmd_0CE 0
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _0311
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _031D
    ScrCmd_011 0x4000, 2
    ScrCmd_01D 1, _0329
    ScrCmd_011 0x4000, 3
    ScrCmd_01D 1, _0335
    ScrCmd_0CD 1
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _0341
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _0355
    ScrCmd_011 0x4000, 2
    ScrCmd_01D 1, _0369
    ScrCmd_011 0x4000, 3
    ScrCmd_01D 1, _037D
    ScrCmd_049 0x603
    ScrCmd_065 0
    ScrCmd_014 0x7FB
    ScrCmd_04B 0x603
    ScrCmd_01E 0x173
    ScrCmd_028 0x40A5, 1
    ScrCmd_061
    ScrCmd_002

_0249:
    ScrCmd_05E 0xFF, _04D4
    ScrCmd_05E 0, _03A4
    ScrCmd_05F
    ScrCmd_01B

_025D:
    ScrCmd_05E 0xFF, _04E4
    ScrCmd_05E 0, _03B4
    ScrCmd_05F
    ScrCmd_01B

_0271:
    ScrCmd_05E 0, _03C4
    ScrCmd_05F
    ScrCmd_01B

_027D:
    ScrCmd_05E 0xFF, _04E4
    ScrCmd_05E 0, _03D0
    ScrCmd_05F
    ScrCmd_01B

_0291:
    ScrCmd_05E 0xFF, _04F0
    ScrCmd_05E 0, _03EC
    ScrCmd_05F
    ScrCmd_01B

_02A5:
    ScrCmd_05E 0xFF, _04FC
    ScrCmd_05E 0, _03FC
    ScrCmd_05F
    ScrCmd_01B

_02B9:
    ScrCmd_05E 0xFF, _0508
    ScrCmd_05E 0, _040C
    ScrCmd_05F
    ScrCmd_01B

_02CD:
    ScrCmd_05E 0xFF, _0514
    ScrCmd_05E 0, _041C
    ScrCmd_05F
    ScrCmd_01B

_02E1:
    ScrCmd_05E 0, _042C
    ScrCmd_05F
    ScrCmd_01B

_02ED:
    ScrCmd_05E 0, _0434
    ScrCmd_05F
    ScrCmd_01B

_02F9:
    ScrCmd_05E 0, _043C
    ScrCmd_05F
    ScrCmd_01B

_0305:
    ScrCmd_05E 0, _0444
    ScrCmd_05F
    ScrCmd_01B

_0311:
    ScrCmd_05E 0, _044C
    ScrCmd_05F
    ScrCmd_01B

_031D:
    ScrCmd_05E 0, _0454
    ScrCmd_05F
    ScrCmd_01B

_0329:
    ScrCmd_05E 0, _0464
    ScrCmd_05F
    ScrCmd_01B

_0335:
    ScrCmd_05E 0, _0474
    ScrCmd_05F
    ScrCmd_01B

_0341:
    ScrCmd_05E 0xFF, _0520
    ScrCmd_05E 0, _0484
    ScrCmd_05F
    ScrCmd_01B

_0355:
    ScrCmd_05E 0xFF, _0520
    ScrCmd_05E 0, _0498
    ScrCmd_05F
    ScrCmd_01B

_0369:
    ScrCmd_05E 0xFF, _0520
    ScrCmd_05E 0, _04AC
    ScrCmd_05F
    ScrCmd_01B

_037D:
    ScrCmd_05E 0xFF, _0520
    ScrCmd_05E 0, _04C0
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0394:
    MoveAction_012 2
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_03A4:
    MoveAction_012
    MoveAction_011
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_03B4:
    MoveAction_012
    MoveAction_011 2
    MoveAction_012 3
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_011 2
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_03D0:
    MoveAction_012
    MoveAction_011 3
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_03E0:
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_011
    MoveAction_012 4
    MoveAction_010
    EndMovement

    .balign 4, 0
_03FC:
    MoveAction_010
    MoveAction_012 3
    MoveAction_024
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_010
    MoveAction_012 5
    MoveAction_024
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_010
    MoveAction_012 4
    MoveAction_010
    EndMovement

    .balign 4, 0
_042C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0434:
    MoveAction_023
    EndMovement

    .balign 4, 0
_043C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0444:
    MoveAction_023
    EndMovement

    .balign 4, 0
_044C:
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0454:
    MoveAction_013
    MoveAction_011
    MoveAction_027
    EndMovement

    .balign 4, 0
_0464:
    MoveAction_013
    MoveAction_011
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0474:
    MoveAction_013
    MoveAction_011 2
    MoveAction_013
    EndMovement

    .balign 4, 0
_0484:
    MoveAction_011
    MoveAction_013 3
    MoveAction_010 2
    MoveAction_013 4
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_010
    MoveAction_013 4
    MoveAction_010
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_04AC:
    MoveAction_010
    MoveAction_013 2
    MoveAction_010
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_04C0:
    MoveAction_010
    MoveAction_013 3
    MoveAction_010 2
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_04D4:
    MoveAction_03F
    MoveAction_03E
    MoveAction_023
    EndMovement

    .balign 4, 0
_04E4:
    MoveAction_03F 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_04F0:
    MoveAction_03F 2
    MoveAction_026
    EndMovement

    .balign 4, 0
_04FC:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0508:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0514:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0520:
    MoveAction_03F 2
    MoveAction_023
    EndMovement
