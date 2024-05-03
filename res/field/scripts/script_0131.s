    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _006A-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0xAA3
    GoToIf 1, _0055
    ScrCmd_02C 0
    ScrCmd_1B7 0x8004, 17
    AddVar 0x8004, 184
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0060
    SetFlag 0xAA3
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_0055:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0060:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_006A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
