    .include "macros/scrcmd.inc"

    .data

    .long _0028-.-4
    .long _002A-.-4
    .long _003D-.-4
    .long _003F-.-4
    .long _027E-.-4
    .long _0291-.-4
    .long _02A4-.-4
    .long _0026-.-4
    .long _02A6-.-4
    .short 0xFD13

_0026:
    End

_0028:
    End

_002A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_003D:
    End

_003F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x40F2, 0
    GoToIf 5, _0257
    CheckFlag 0xAB3
    GoToIf 1, _00A0
    CheckFlag 0xAA9
    GoToIf 1, _0084
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00B6
    GoTo _00AB

_0084:
    ScrCmd_02C 18
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00B6
    GoTo _00AB
    End

_00A0:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00AB:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B6:
    SetFlag 0xAA9
    ScrCmd_02C 4
    ScrCmd_24E 0x8000
    ScrCmd_280 0, 0x8000, 2, 5
    ScrCmd_02C 5
    ScrCmd_24F 0x8001, 0x8002, 0x8003, 0x8000
    CompareVarToValue 0x8002, 0
    GoToIf 1, _00F5
    CompareVarToValue 0x8003, 0
    GoToIf 1, _0100
    GoTo _010E

_00F5:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0100:
    ScrCmd_0D6 0, 0x8001
    ScrCmd_02C 6
    GoTo _011C

_010E:
    ScrCmd_251 0, 0x8001
    ScrCmd_02C 7
    GoTo _011C

_011C:
    ScrCmd_029 0x8008, 0x8002
    CompareVarToValue 0x8008, 1
    GoToIf 1, _0165
    CompareVarToValue 0x8008, 2
    GoToIf 1, _0170
    CompareVarToValue 0x8008, 3
    GoToIf 1, _0179
    CompareVarToValue 0x8008, 4
    GoToIf 1, _0182
    CompareVarToValue 0x8008, 5
    GoToIf 1, _018B
    End

_0165:
    ScrCmd_02C 9
    GoTo _0194
    End

_0170:
    ScrCmd_02C 11
    GoTo _0194

_0179:
    ScrCmd_02C 12
    GoTo _0194

_0182:
    ScrCmd_02C 13
    GoTo _0194

_018B:
    ScrCmd_02C 14
    GoTo _0194

_0194:
    ScrCmd_029 0x8008, 0x8002
    CompareVarToValue 0x8008, 1
    GoToIf 1, _01DD
    CompareVarToValue 0x8008, 2
    GoToIf 1, _01EB
    CompareVarToValue 0x8008, 3
    GoToIf 1, _01F7
    CompareVarToValue 0x8008, 4
    GoToIf 1, _0203
    CompareVarToValue 0x8008, 5
    GoToIf 1, _020F
    End

_01DD:
    ScrCmd_028 0x8003, 2
    GoTo _021B
    End

_01EB:
    ScrCmd_028 0x8003, 51
    GoTo _021B

_01F7:
    ScrCmd_028 0x8003, 216
    GoTo _021B

_0203:
    ScrCmd_028 0x8003, 29
    GoTo _021B

_020F:
    ScrCmd_028 0x8003, 1
    GoTo _021B

_021B:
    ScrCmd_029 0x8004, 0x8003
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0246
    ScrCmd_014 0x7FC
    GoTo _0269

_0246:
    ScrCmd_029 0x40F2, 0x8002
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0257:
    ScrCmd_0CD 0
    ScrCmd_02C 16
    ScrCmd_029 0x8002, 0x40F2
    GoTo _0194

_0269:
    ScrCmd_028 0x40F2, 0
    SetFlag 0xAB3
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_027E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0291:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02A4:
    End

_02A6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
