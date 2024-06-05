    .include "macros/scrcmd.inc"

    .data

    .long _005A-.-4
    .long _0066-.-4
    .long _0072-.-4
    .long _007E-.-4
    .long _008A-.-4
    .long _0096-.-4
    .long _00A2-.-4
    .long _00AE-.-4
    .long _00BA-.-4
    .long _00C6-.-4
    .long _00D2-.-4
    .long _00DE-.-4
    .long _013E-.-4
    .long _0333-.-4
    .long _0346-.-4
    .long _03B7-.-4
    .long _0428-.-4
    .long _043B-.-4
    .long _044E-.-4
    .long _0461-.-4
    .long _0474-.-4
    .long _04AD-.-4
    .short 0xFD13

_005A:
    SetVar 0x8004, 0
    GoTo _00EA

_0066:
    SetVar 0x8004, 1
    GoTo _00EA

_0072:
    SetVar 0x8004, 2
    GoTo _00EA

_007E:
    SetVar 0x8004, 3
    GoTo _00EA

_008A:
    SetVar 0x8004, 4
    GoTo _00EA

_0096:
    SetVar 0x8004, 5
    GoTo _00EA

_00A2:
    SetVar 0x8004, 6
    GoTo _00EA

_00AE:
    SetVar 0x8004, 7
    GoTo _00EA

_00BA:
    SetVar 0x8004, 8
    GoTo _00EA

_00C6:
    SetVar 0x8004, 9
    GoTo _00EA

_00D2:
    SetVar 0x8004, 10
    GoTo _00EA

_00DE:
    SetVar 0x8004, 11
    GoTo _00EA

_00EA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_07E 0x1BC, 1, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0133
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_1CD 16, 0, 0, 0, 0
    ScrCmd_267 0x8004
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0133:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_013E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_07E 0x1BC, 1, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _018D
    CheckFlag 0x130
    GoToIf 1, _0198
    CheckFlag 0x165
    GoToIf 1, _02CA
    ScrCmd_275 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0198
    GoTo _02CA
    End

_018D:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0198:
    ScrCmd_075 20, 2
    ScrCmd_072 20, 7
_01A4:
    ScrCmd_02C 2
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 125, 0
    ScrCmd_042 126, 1
    ScrCmd_042 127, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    CompareVar 0x8008, 0
    GoToIf 1, _01E3
    CompareVar 0x8008, 1
    GoToIf 1, _0240
    GoTo _02BB

_01E3:
    ScrCmd_071 0x800C, 0x3E8
    CompareVar 0x800C, 0
    GoToIf 1, _029D
    ScrCmd_276 0x800C, 50
    Noop
    CompareVar 0x800C, 0
    GoToIf 1, _02AC
    ScrCmd_049 0x644
    ScrCmd_334 35, 0x3E8
    ScrCmd_070 0x3E8
    ScrCmd_074
    ScrCmd_04B 0x644
    ScrCmd_049 0x5D5
    ScrCmd_079 50
    ScrCmd_077
    ScrCmd_04B 0x5D5
    ScrCmd_02C 3
    ScrCmd_003 30, 0x800C
    GoTo _01A4

_0240:
    ScrCmd_071 0x800C, 0x2710
    CompareVar 0x800C, 0
    GoToIf 1, _029D
    ScrCmd_276 0x800C, 0x1F4
    Noop
    CompareVar 0x800C, 0
    GoToIf 1, _02AC
    ScrCmd_049 0x644
    ScrCmd_334 35, 0x2710
    ScrCmd_070 0x2710
    ScrCmd_074
    ScrCmd_04B 0x644
    ScrCmd_049 0x5D5
    ScrCmd_079 0x1F4
    ScrCmd_077
    ScrCmd_04B 0x5D5
    ScrCmd_02C 3
    ScrCmd_003 30, 0x800C
    GoTo _01A4

_029D:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_076
    ScrCmd_073
    ScrCmd_061
    End

_02AC:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_076
    ScrCmd_073
    ScrCmd_061
    End

_02BB:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_076
    ScrCmd_073
    ScrCmd_061
    End

_02CA:
    SetVar 0x8004, 0x187
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0327
    GoTo _02F3
    End

_02F3:
    CheckFlag 0x165
    GoToIf 1, _0309
    ScrCmd_02C 7
    GoTo _0314
    End

_0309:
    ScrCmd_02C 10
    GoTo _0314
    End

_0314:
    ScrCmd_014 0x7FC
    SetFlag 0x130
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0327:
    SetFlag 0x165
    GoTo _0198
    End

_0333:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0346:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1BC, 1, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _03A1
    CheckFlag 0x12E
    GoToIf 1, _03AC
    ScrCmd_276 0x800C, 20
    Noop
    CompareVar 0x800C, 0
    GoToIf 1, _03AC
    SetFlag 0x12E
    ScrCmd_0CD 0
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_049 0x5D5
    ScrCmd_079 20
    ScrCmd_04B 0x5D5
    ScrCmd_034
    ScrCmd_061
    End

_03A1:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03AC:
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03B7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1BC, 1, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0412
    CheckFlag 0x12F
    GoToIf 1, _041D
    ScrCmd_276 0x800C, 50
    Noop
    CompareVar 0x800C, 0
    GoToIf 1, _041D
    SetFlag 0x12F
    ScrCmd_0CD 0
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_049 0x5D5
    ScrCmd_079 50
    ScrCmd_04B 0x5D5
    ScrCmd_034
    ScrCmd_061
    End

_0412:
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_041D:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0428:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_043B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_044E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0461:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 22
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0474:
    CompareVar 0x4040, 0x3E7
    GoToIf 2, _0497
    ScrCmd_0D5 0, 0x4040
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 25
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0497:
    ScrCmd_0D5 0, 0x3E7
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 25
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04AD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 214
    GoToIf 1, _04CB
    ScrCmd_02C 23
    GoTo _04D6
    End

_04CB:
    ScrCmd_02C 24
    GoTo _04D6
    End

_04D6:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
