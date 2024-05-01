    .include "macros/scrcmd.inc"

    .data

    .long _0042-.-4
    .long _0055-.-4
    .long _04C1-.-4
    .long _04D4-.-4
    .long _04E7-.-4
    .long _04FA-.-4
    .long _050B-.-4
    .long _051C-.-4
    .long _052D-.-4
    .long _053E-.-4
    .long _054F-.-4
    .long _0560-.-4
    .long _0571-.-4
    .long _0582-.-4
    .long _0595-.-4
    .long _05A8-.-4
    .short 0xFD13

_0042:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0055:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 1
    ScrCmd_01C 1, _03D8
    ScrCmd_02C 1
    CheckFlag 121
    ScrCmd_01C 0, _04B6
    ScrCmd_011 0x40B4, 0
    ScrCmd_01C 5, _03F2
    ScrCmd_1F1 0x8000
    ScrCmd_011 0x8000, 0
    ScrCmd_01C 1, _04AB
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _03E7
    ScrCmd_011 0x8000, 1
    ScrCmd_01C 1, _03BC
    ScrCmd_028 0x8001, 0
    ScrCmd_07E 103, 1, 0x800C
    ScrCmd_026 0x8001, 0x800C
    ScrCmd_07E 101, 1, 0x800C
    ScrCmd_026 0x8001, 0x800C
    ScrCmd_07E 102, 1, 0x800C
    ScrCmd_026 0x8001, 0x800C
    ScrCmd_07E 99, 1, 0x800C
    ScrCmd_026 0x8001, 0x800C
    ScrCmd_07E 100, 1, 0x800C
    ScrCmd_026 0x8001, 0x800C
    ScrCmd_07E 104, 1, 0x800C
    ScrCmd_026 0x8001, 0x800C
    ScrCmd_07E 105, 1, 0x800C
    ScrCmd_026 0x8001, 0x800C
    ScrCmd_011 0x8001, 1
    ScrCmd_01C 1, _03BC
    ScrCmd_028 0x8004, 0
    ScrCmd_028 0x8005, 0
    ScrCmd_040 1, 1, 0, 1, 0x8003
_013E:
    ScrCmd_011 0x8005, 0
    ScrCmd_01D 1, _02DC
    ScrCmd_011 0x8005, 1
    ScrCmd_01D 1, _02EC
    ScrCmd_011 0x8005, 2
    ScrCmd_01D 1, _02FC
    ScrCmd_011 0x8005, 3
    ScrCmd_01D 1, _030C
    ScrCmd_011 0x8005, 4
    ScrCmd_01D 1, _031C
    ScrCmd_011 0x8005, 5
    ScrCmd_01D 1, _032C
    ScrCmd_011 0x8005, 6
    ScrCmd_01D 1, _033C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0219
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _034C
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0354
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _035C
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _0364
    ScrCmd_011 0x8004, 4
    ScrCmd_01D 1, _036C
    ScrCmd_011 0x8004, 5
    ScrCmd_01D 1, _0374
    ScrCmd_011 0x8004, 6
    ScrCmd_01D 1, _037C
    ScrCmd_029 0x8006, 0x8005
    ScrCmd_026 0x8006, 156
    ScrCmd_29D 0x8006, 0x8004
    GoTo _0225

_0219:
    ScrCmd_026 0x8005, 1
    GoTo _013E

_0225:
    ScrCmd_026 0x8004, 1
    ScrCmd_026 0x8005, 1
    ScrCmd_012 0x8004, 0x8001
    ScrCmd_01C 5, _013E
    ScrCmd_29D 44, 0x8004
    ScrCmd_043
    ScrCmd_011 0x8003, 0xFF
    ScrCmd_01C 1, _03E7
    ScrCmd_012 0x8003, 0x4000
    ScrCmd_01C 1, _03E7
    ScrCmd_011 0x8003, 0
    ScrCmd_01D 1, _0384
    ScrCmd_011 0x8003, 1
    ScrCmd_01D 1, _038C
    ScrCmd_011 0x8003, 2
    ScrCmd_01D 1, _0394
    ScrCmd_011 0x8003, 3
    ScrCmd_01D 1, _039C
    ScrCmd_011 0x8003, 4
    ScrCmd_01D 1, _03A4
    ScrCmd_011 0x8003, 5
    ScrCmd_01D 1, _03AC
    ScrCmd_011 0x8003, 6
    ScrCmd_01D 1, _03B4
    ScrCmd_1F4 0x40B4, 0x8002
    ScrCmd_011 0x40B4, 0
    ScrCmd_01C 1, _03E7
    ScrCmd_07C 0x8002, 1, 0x800C
    GoTo _03D8

_02DC:
    ScrCmd_028 0x4000, 103
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_02EC:
    ScrCmd_028 0x4000, 101
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_02FC:
    ScrCmd_028 0x4000, 102
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_030C:
    ScrCmd_028 0x4000, 99
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_031C:
    ScrCmd_028 0x4000, 100
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_032C:
    ScrCmd_028 0x4000, 104
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_033C:
    ScrCmd_028 0x4000, 105
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_034C:
    ScrCmd_029 0x4001, 0x4000
    Return

_0354:
    ScrCmd_029 0x4002, 0x4000
    Return

_035C:
    ScrCmd_029 0x4003, 0x4000
    Return

_0364:
    ScrCmd_029 0x4004, 0x4000
    Return

_036C:
    ScrCmd_029 0x4005, 0x4000
    Return

_0374:
    ScrCmd_029 0x4006, 0x4000
    Return

_037C:
    ScrCmd_029 0x4007, 0x4000
    Return

_0384:
    ScrCmd_029 0x8002, 0x4001
    Return

_038C:
    ScrCmd_029 0x8002, 0x4002
    Return

_0394:
    ScrCmd_029 0x8002, 0x4003
    Return

_039C:
    ScrCmd_029 0x8002, 0x4004
    Return

_03A4:
    ScrCmd_029 0x8002, 0x4005
    Return

_03AC:
    ScrCmd_029 0x8002, 0x4006
    Return

_03B4:
    ScrCmd_029 0x8002, 0x4007
    Return

_03BC:
    ScrCmd_1F5 0x8002, 0x8004, 1
    ScrCmd_1F4 0x40B4, 0x8002
    ScrCmd_07C 0x8002, 1, 0x800C
    GoTo _03D8

_03D8:
    SetFlag 1
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03E7:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03F2:
    ScrCmd_0DA 0, 0x40B4, 0, 0
    ScrCmd_02C 7
    ScrCmd_177 0x800C
    ScrCmd_011 0x800C, 6
    ScrCmd_01C 1, _04A0
    ScrCmd_0DA 1, 0x40B4, 0, 0
    ScrCmd_0CD 0
    ScrCmd_04E 0x486
    ScrCmd_02C 8
    ScrCmd_04F
    ScrCmd_096 0x40B4, 20, 0, 0x800C
    ScrCmd_1E5 115
    ScrCmd_028 0x40B4, 0
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0459
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _049A
    End

_0459:
    ScrCmd_034
    ScrCmd_177 0x4000
    ScrCmd_027 0x4000, 1
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BB 0x4000, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 5, _0494
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0494:
    ScrCmd_1E5 49
    Return

_049A:
    ScrCmd_034
    ScrCmd_061
    End

_04A0:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04AB:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04B6:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04C1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04D4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04E7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04FA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_050B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_051C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_052D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 22
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_053E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_054F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 24
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0560:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 25
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0571:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 26
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0582:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0595:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05A8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
