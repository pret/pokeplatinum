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
    GoToIfSet 1, _03D8
    ScrCmd_02C 1
    GoToIfUnset 121, _04B6
    GoToIfNe 0x40B4, 0, _03F2
    ScrCmd_1F1 0x8000
    GoToIfEq 0x8000, 0, _04AB
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _03E7
    GoToIfEq 0x8000, 1, _03BC
    SetVar 0x8001, 0
    ScrCmd_07E 103, 1, 0x800C
    AddVar 0x8001, 0x800C
    ScrCmd_07E 101, 1, 0x800C
    AddVar 0x8001, 0x800C
    ScrCmd_07E 102, 1, 0x800C
    AddVar 0x8001, 0x800C
    ScrCmd_07E 99, 1, 0x800C
    AddVar 0x8001, 0x800C
    ScrCmd_07E 100, 1, 0x800C
    AddVar 0x8001, 0x800C
    ScrCmd_07E 104, 1, 0x800C
    AddVar 0x8001, 0x800C
    ScrCmd_07E 105, 1, 0x800C
    AddVar 0x8001, 0x800C
    GoToIfEq 0x8001, 1, _03BC
    SetVar 0x8004, 0
    SetVar 0x8005, 0
    ScrCmd_040 1, 1, 0, 1, 0x8003
_013E:
    CompareVar 0x8005, 0
    CallIf 1, _02DC
    CompareVar 0x8005, 1
    CallIf 1, _02EC
    CompareVar 0x8005, 2
    CallIf 1, _02FC
    CompareVar 0x8005, 3
    CallIf 1, _030C
    CompareVar 0x8005, 4
    CallIf 1, _031C
    CompareVar 0x8005, 5
    CallIf 1, _032C
    CompareVar 0x8005, 6
    CallIf 1, _033C
    GoToIfEq 0x800C, 0, _0219
    CompareVar 0x8004, 0
    CallIf 1, _034C
    CompareVar 0x8004, 1
    CallIf 1, _0354
    CompareVar 0x8004, 2
    CallIf 1, _035C
    CompareVar 0x8004, 3
    CallIf 1, _0364
    CompareVar 0x8004, 4
    CallIf 1, _036C
    CompareVar 0x8004, 5
    CallIf 1, _0374
    CompareVar 0x8004, 6
    CallIf 1, _037C
    SetVar 0x8006, 0x8005
    AddVar 0x8006, 156
    ScrCmd_29D 0x8006, 0x8004
    GoTo _0225

_0219:
    AddVar 0x8005, 1
    GoTo _013E

_0225:
    AddVar 0x8004, 1
    AddVar 0x8005, 1
    GoToIfNe 0x8004, 0x8001, _013E
    ScrCmd_29D 44, 0x8004
    ScrCmd_043
    GoToIfEq 0x8003, 0xFF, _03E7
    GoToIfEq 0x8003, 0x4000, _03E7
    CompareVar 0x8003, 0
    CallIf 1, _0384
    CompareVar 0x8003, 1
    CallIf 1, _038C
    CompareVar 0x8003, 2
    CallIf 1, _0394
    CompareVar 0x8003, 3
    CallIf 1, _039C
    CompareVar 0x8003, 4
    CallIf 1, _03A4
    CompareVar 0x8003, 5
    CallIf 1, _03AC
    CompareVar 0x8003, 6
    CallIf 1, _03B4
    ScrCmd_1F4 0x40B4, 0x8002
    GoToIfEq 0x40B4, 0, _03E7
    ScrCmd_07C 0x8002, 1, 0x800C
    GoTo _03D8

_02DC:
    SetVar 0x4000, 103
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_02EC:
    SetVar 0x4000, 101
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_02FC:
    SetVar 0x4000, 102
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_030C:
    SetVar 0x4000, 99
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_031C:
    SetVar 0x4000, 100
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_032C:
    SetVar 0x4000, 104
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_033C:
    SetVar 0x4000, 105
    ScrCmd_07E 0x4000, 1, 0x800C
    Return

_034C:
    SetVar 0x4001, 0x4000
    Return

_0354:
    SetVar 0x4002, 0x4000
    Return

_035C:
    SetVar 0x4003, 0x4000
    Return

_0364:
    SetVar 0x4004, 0x4000
    Return

_036C:
    SetVar 0x4005, 0x4000
    Return

_0374:
    SetVar 0x4006, 0x4000
    Return

_037C:
    SetVar 0x4007, 0x4000
    Return

_0384:
    SetVar 0x8002, 0x4001
    Return

_038C:
    SetVar 0x8002, 0x4002
    Return

_0394:
    SetVar 0x8002, 0x4003
    Return

_039C:
    SetVar 0x8002, 0x4004
    Return

_03A4:
    SetVar 0x8002, 0x4005
    Return

_03AC:
    SetVar 0x8002, 0x4006
    Return

_03B4:
    SetVar 0x8002, 0x4007
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
    GoToIfEq 0x800C, 6, _04A0
    ScrCmd_0DA 1, 0x40B4, 0, 0
    ScrCmd_0CD 0
    ScrCmd_04E 0x486
    ScrCmd_02C 8
    ScrCmd_04F
    ScrCmd_096 0x40B4, 20, 0, 0x800C
    ScrCmd_1E5 115
    SetVar 0x40B4, 0
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0459
    GoToIfEq 0x800C, 1, _049A
    End

_0459:
    ScrCmd_034
    ScrCmd_177 0x4000
    SubVar 0x4000, 1
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BB 0x4000, 0x800C
    CompareVar 0x800C, 1
    CallIf 5, _0494
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
