    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0028
    ScriptEntry _002A
    ScriptEntry _003D
    ScriptEntry _003F
    ScriptEntry _027E
    ScriptEntry _0291
    ScriptEntry _02A4
    ScriptEntry _0026
    ScriptEntry _02A6
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
    GoToIfNe 0x40F2, 0, _0257
    GoToIfSet 0xAB3, _00A0
    GoToIfSet 0xAA9, _0084
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00B6
    GoTo _00AB

_0084:
    ScrCmd_02C 18
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00B6
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
    GoToIfEq 0x8002, 0, _00F5
    GoToIfEq 0x8003, 0, _0100
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
    SetVar 0x8008, 0x8002
    GoToIfEq 0x8008, 1, _0165
    GoToIfEq 0x8008, 2, _0170
    GoToIfEq 0x8008, 3, _0179
    GoToIfEq 0x8008, 4, _0182
    GoToIfEq 0x8008, 5, _018B
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
    SetVar 0x8008, 0x8002
    GoToIfEq 0x8008, 1, _01DD
    GoToIfEq 0x8008, 2, _01EB
    GoToIfEq 0x8008, 3, _01F7
    GoToIfEq 0x8008, 4, _0203
    GoToIfEq 0x8008, 5, _020F
    End

_01DD:
    SetVar 0x8003, 2
    GoTo _021B
    End

_01EB:
    SetVar 0x8003, 51
    GoTo _021B

_01F7:
    SetVar 0x8003, 216
    GoTo _021B

_0203:
    SetVar 0x8003, 29
    GoTo _021B

_020F:
    SetVar 0x8003, 1
    GoTo _021B

_021B:
    SetVar 0x8004, 0x8003
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0246
    ScrCmd_014 0x7FC
    GoTo _0269

_0246:
    SetVar 0x40F2, 0x8002
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0257:
    ScrCmd_0CD 0
    ScrCmd_02C 16
    SetVar 0x8002, 0x40F2
    GoTo _0194

_0269:
    SetVar 0x40F2, 0
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
