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
    GoTo _006C
    End

_0027:
    ScrCmd_020 0x9BE
    ScrCmd_01C 0, _003A
    GoTo _006C
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
    Return

_0064:
    ScrCmd_0CD 0
    ScrCmd_02C 29
    Return

_006C:
    ScrCmd_282 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0133
    ScrCmd_1E8 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00B2
    ScrCmd_020 0x145
    ScrCmd_01C 0, _0332
    Call _04A4
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _037C
    GoTo _0357

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
    GoTo _00F3
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
    GoTo _03A1
    End

_0158:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0467
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _046C
    GoTo _03A1
    End

_017D:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _045D
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0462
    GoTo _03A1
    End

_01A2:
    ScrCmd_01E 0x148
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0453
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0458
    GoTo _03A1
    End

_01CB:
    ScrCmd_01E 0x147
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0449
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _044E
    GoTo _03A1
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
    GoTo _02B1
    End

_026B:
    ScrCmd_05E 4, _0474
    ScrCmd_05E 0xFF, _0488
    ScrCmd_05F
    GoTo _02B1
    End

_0285:
    ScrCmd_05E 4, _047C
    ScrCmd_05E 0xFF, _0494
    ScrCmd_05F
    GoTo _02B1
    End

_029F:
    ScrCmd_05E 4, _0474
    ScrCmd_05F
    GoTo _02B1
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
    GoTo _03A1
    End

_02E8:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _042B
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0430
    GoTo _03A1
    End

_030D:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0421
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0426
    GoTo _03A1
    End

_0332:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0417
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _041C
    GoTo _03A1
    End

_0357:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _040D
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0412
    GoTo _03A1
    End

_037C:
    ScrCmd_0CD 0
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0403
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0408
    GoTo _03A1
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
    Return

_03D1:
    ScrCmd_02C 12
    Return

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
    Return

_03FE:
    ScrCmd_02C 26
    Return

_0403:
    ScrCmd_02C 13
    Return

_0408:
    ScrCmd_02C 27
    Return

_040D:
    ScrCmd_02C 0
    Return

_0412:
    ScrCmd_02C 14
    Return

_0417:
    ScrCmd_02C 1
    Return

_041C:
    ScrCmd_02C 15
    Return

_0421:
    ScrCmd_02C 2
    Return

_0426:
    ScrCmd_02C 16
    Return

_042B:
    ScrCmd_02C 3
    Return

_0430:
    ScrCmd_02C 17
    Return

_0435:
    ScrCmd_02C 4
    Return

_043A:
    ScrCmd_02C 18
    Return

_043F:
    ScrCmd_02C 5
    Return

_0444:
    ScrCmd_02C 19
    Return

_0449:
    ScrCmd_02C 6
    Return

_044E:
    ScrCmd_02C 20
    Return

_0453:
    ScrCmd_02C 7
    Return

_0458:
    ScrCmd_02C 21
    Return

_045D:
    ScrCmd_02C 8
    Return

_0462:
    ScrCmd_02C 22
    Return

_0467:
    ScrCmd_02C 9
    Return

_046C:
    ScrCmd_02C 23
    Return

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
    Return

_04C6:
    ScrCmd_028 0x800C, 0
    Return

    .byte 0
    .byte 0
