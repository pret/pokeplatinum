    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _0035
    ScriptEntry _004C
    ScriptEntry _005D
    ScriptEntry _006E
    ScriptEntry _008B
    ScriptEntry _00A8
    .short 0xFD13

_001E:
    ScrCmd_036 5, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0035:
    ScrCmd_036 6, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_004C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_006E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_04B 0x5DC
    ScrCmd_04C 35, 0
    ScrCmd_02C 1
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_008B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_04B 0x5DC
    ScrCmd_04C 35, 0
    ScrCmd_02C 2
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_04B 0x5DC
    ScrCmd_04C 25, 0
    ScrCmd_02C 3
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
