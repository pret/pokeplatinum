    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0107
    ScriptEntry _003A
    ScriptEntry _004D
    ScriptEntry _0060
    ScriptEntry _0073
    ScriptEntry _0086
    ScriptEntry _0099
    ScriptEntry _00AC
    ScriptEntry _00BF
    ScriptEntry _00D2
    ScriptEntry _00E5
    ScriptEntry _00F6
    ScriptEntry _0109
    ScriptEntry _0193
    .short 0xFD13

_003A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_004D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0060:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0073:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0086:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0099:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00AC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00BF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0107:
    End

_0109:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8005, 6
    GoTo _011D
    End

_011D:
    ScrCmd_02C 13
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 15, 0
    ScrCmd_042 16, 1
    ScrCmd_042 17, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0167
    GoToIfEq 0x8008, 1, _0188
    GoTo _0161
    End

_0161:
    ScrCmd_034
    ScrCmd_061
    End

_0167:
    ScrCmd_014 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 0, _0161
    ScrCmd_034
    ScrCmd_014 0x802
    ScrCmd_061
    End

_0188:
    ScrCmd_02C 14
    GoTo _011D
    End

_0193:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8005, 5
    GoTo _01A7
    End

_01A7:
    ScrCmd_02C 11
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 15, 0
    ScrCmd_042 16, 1
    ScrCmd_042 17, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01F1
    GoToIfEq 0x8008, 1, _0212
    GoTo _01EB
    End

_01EB:
    ScrCmd_034
    ScrCmd_061
    End

_01F1:
    ScrCmd_014 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 0, _01EB
    ScrCmd_034
    ScrCmd_014 0x802
    ScrCmd_061
    End

_0212:
    ScrCmd_02C 12
    GoTo _01A7

    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 0
