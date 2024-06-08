    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _00B5
    ScriptEntry _00C8
    ScriptEntry _00DF
    ScriptEntry _00F6
    ScriptEntry _010B
    ScriptEntry _011E
    ScriptEntry _0131
    ScriptEntry _0144
    ScriptEntry _0157
    ScriptEntry _002A
    .short 0xFD13

_002A:
    ScrCmd_1B6 0x4000
    GoToIfEq 0x4000, 0, _0071
    GoToIfEq 0x4000, 1, _0071
    GoToIfEq 0x4000, 2, _0071
    GoToIfEq 0x4000, 3, _0093
    GoToIfEq 0x4000, 4, _0093
    End

_0071:
    ClearFlag 0x260
    ClearFlag 0x262
    ClearFlag 0x264
    ClearFlag 0x266
    SetFlag 0x261
    SetFlag 0x263
    SetFlag 0x265
    SetFlag 0x267
    End

_0093:
    ClearFlag 0x261
    ClearFlag 0x263
    ClearFlag 0x265
    ClearFlag 0x267
    SetFlag 0x260
    SetFlag 0x262
    SetFlag 0x264
    SetFlag 0x266
    End

_00B5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C8:
    ScrCmd_036 6, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_00DF:
    ScrCmd_036 7, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_00F6:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 8, 0x800C
    ScrCmd_014 0x7D0
    End

_010B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_011E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0131:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0144:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0157:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
