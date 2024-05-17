    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0058-.-4
    .long _006F-.-4
    .long _0018-.-4
    .short 0xFD13

_0012:
    SetFlag 0x9C4
    End

_0018:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x12A
    GoToIf 1, _004D
    SetVar 0x8004, 95
    ScrCmd_261 0, 0x8004
    ScrCmd_02C 0
    SetVar 0x8005, 1
    ScrCmd_014 0x7DF
    SetFlag 0x12A
    ScrCmd_034
    ScrCmd_061
    End

_004D:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0058:
    ScrCmd_036 2, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_006F:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 3, 0x800C
    ScrCmd_014 0x7D0
    End
