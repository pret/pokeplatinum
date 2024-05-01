    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_14D 0x8004
    ScrCmd_011 0x40A6, 3
    ScrCmd_01C 1, _0027
    ScrCmd_016 _006C
    End

_0027:
    ScrCmd_020 0x9BE
    ScrCmd_01C 0, _003A
    ScrCmd_016 _006C
    End

_003A:
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _005C
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0064
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005C:
    ScrCmd_0CD 0
    ScrCmd_02C 28
    ScrCmd_01B

_0064:
    ScrCmd_0CD 0
    ScrCmd_02C 29
    ScrCmd_01B

_006C:
    ScrCmd_282 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0133
    ScrCmd_1E8 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00B2
    ScrCmd_020 0x145
    ScrCmd_01C 0, _0332
    ScrCmd_01A _04A4
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _037C
    ScrCmd_016 _0357

_00B2:
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _030D
    ScrCmd_020 240
    ScrCmd_01C 0, _02E8
    ScrCmd_020 0x131
    ScrCmd_01C 0, _02C3
    ScrCmd_1E9 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0158
    ScrCmd_016 _00F3
    End

_00F3:
    ScrCmd_020 0x146
    ScrCmd_01C 0, _01F4
    ScrCmd_1B7 0x800C, 3
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _01CB
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _01A2
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _017D
    End

_0133:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _03A9
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _03D6
    ScrCmd_016 _03A1
    End

_0158:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0467
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _046C
    ScrCmd_016 _03A1
    End

_017D:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _045D
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0462
    ScrCmd_016 _03A1
    End

_01A2:
    ScrCmd_01E 0x148
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0453
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0458
    ScrCmd_016 _03A1
    End

_01CB:
    ScrCmd_01E 0x147
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0449
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _044E
    ScrCmd_016 _03A1
    End

_01F4:
    ScrCmd_01E 0x146
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _043F
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0444
    ScrCmd_034
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0251
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _026B
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0285
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _029F
    End

_0251:
    ScrCmd_05E 4, _0474
    ScrCmd_05E 0xFF, _0488
    ScrCmd_05F
    ScrCmd_016 _02B1
    End

_026B:
    ScrCmd_05E 4, _0474
    ScrCmd_05E 0xFF, _0488
    ScrCmd_05F
    ScrCmd_016 _02B1
    End

_0285:
    ScrCmd_05E 4, _047C
    ScrCmd_05E 0xFF, _0494
    ScrCmd_05F
    ScrCmd_016 _02B1
    End

_029F:
    ScrCmd_05E 4, _0474
    ScrCmd_05F
    ScrCmd_016 _02B1
    End

_02B1:
    ScrCmd_065 4
    ScrCmd_01F 0x188
    ScrCmd_028 0x4087, 2
    ScrCmd_061
    End

_02C3:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0435
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _043A
    ScrCmd_016 _03A1
    End

_02E8:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _042B
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0430
    ScrCmd_016 _03A1
    End

_030D:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0421
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0426
    ScrCmd_016 _03A1
    End

_0332:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0417
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _041C
    ScrCmd_016 _03A1
    End

_0357:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _040D
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0412
    ScrCmd_016 _03A1
    End

_037C:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0403
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0408
    ScrCmd_016 _03A1
    End

_03A1:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03A9:
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03CC
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _03D1
    End

_03CC:
    ScrCmd_02C 11
    ScrCmd_01B

_03D1:
    ScrCmd_02C 12
    ScrCmd_01B

_03D6:
    ScrCmd_02C 24
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03F9
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _03FE
    End

_03F9:
    ScrCmd_02C 25
    ScrCmd_01B

_03FE:
    ScrCmd_02C 26
    ScrCmd_01B

_0403:
    ScrCmd_02C 13
    ScrCmd_01B

_0408:
    ScrCmd_02C 27
    ScrCmd_01B

_040D:
    ScrCmd_02C 0
    ScrCmd_01B

_0412:
    ScrCmd_02C 14
    ScrCmd_01B

_0417:
    ScrCmd_02C 1
    ScrCmd_01B

_041C:
    ScrCmd_02C 15
    ScrCmd_01B

_0421:
    ScrCmd_02C 2
    ScrCmd_01B

_0426:
    ScrCmd_02C 16
    ScrCmd_01B

_042B:
    ScrCmd_02C 3
    ScrCmd_01B

_0430:
    ScrCmd_02C 17
    ScrCmd_01B

_0435:
    ScrCmd_02C 4
    ScrCmd_01B

_043A:
    ScrCmd_02C 18
    ScrCmd_01B

_043F:
    ScrCmd_02C 5
    ScrCmd_01B

_0444:
    ScrCmd_02C 19
    ScrCmd_01B

_0449:
    ScrCmd_02C 6
    ScrCmd_01B

_044E:
    ScrCmd_02C 20
    ScrCmd_01B

_0453:
    ScrCmd_02C 7
    ScrCmd_01B

_0458:
    ScrCmd_02C 21
    ScrCmd_01B

_045D:
    ScrCmd_02C 8
    ScrCmd_01B

_0462:
    ScrCmd_02C 22
    ScrCmd_01B

_0467:
    ScrCmd_02C 9
    ScrCmd_01B

_046C:
    ScrCmd_02C 23
    ScrCmd_01B

    .balign 4, 0
_0474:
    MoveAction_00F 10
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_00C
    MoveAction_00F 10
    EndMovement

    .balign 4, 0
_0488:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_0494:
    MoveAction_03F
    MoveAction_020
    MoveAction_023
    EndMovement

_04A4:
    ScrCmd_011 0x40C4, 1
    ScrCmd_01C 1, _04C6
    ScrCmd_011 0x40C5, 1
    ScrCmd_01C 1, _04C6
    ScrCmd_028 0x800C, 1
    ScrCmd_01B

_04C6:
    ScrCmd_028 0x800C, 0
    ScrCmd_01B

    .byte 0
    .byte 0
