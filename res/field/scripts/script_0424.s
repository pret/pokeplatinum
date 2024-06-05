    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ScrCmd_003 1, 0x800C
    SetVar 0x8005, 0x8000
    ScrCmd_28C 0x8000
    ScrCmd_059 0x800C
    GoToIfEq 0x800C, 1, _0031
    GoTo _0054
    End

_0031:
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0054
    GoToIfEq 0x800C, 1, _00B2
    End

_0054:
    ScrCmd_054 42, 10
    ScrCmd_02C 1
    ScrCmd_05A 0x800C
    SetVar 0x8004, 0x800C
    ScrCmd_003 30, 0x800C
    ScrCmd_055 10
    ScrCmd_003 10, 0x800C
    GoToIfEq 0x8004, 0, _00BA
    ScrCmd_05B
    ScrCmd_003 1, 0x800C
    ScrCmd_05C
    ScrCmd_003 1, 0x800C
    ScrCmd_28D
    ScrCmd_0D6 0, 0x8005
    ScrCmd_02C 2
    ScrCmd_28E 0x800C
    ScrCmd_04C 0x1B9, 0
    ScrCmd_04D
    GoTo _00B2
    End

_00B2:
    ScrCmd_209
    ScrCmd_034
    ScrCmd_061
    End

_00BA:
    ScrCmd_0D6 0, 0x8005
    ScrCmd_02C 3
    ScrCmd_02C 4
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0054
    GoToIfEq 0x800C, 1, _00B2
    End

    .byte 0
    .byte 0
    .byte 0
