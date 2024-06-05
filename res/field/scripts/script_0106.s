    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _006E-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 140
    GoToIf 1, _0054
    ScrCmd_0D1 0, 253
    ScrCmd_02C 0
    SetVar 0x8004, 253
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0064
    SetFlag 140
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_0054:
    ScrCmd_0D1 0, 253
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0064:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_006E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 35, 0
    ScrCmd_02C 2
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
