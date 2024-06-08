    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    SetVar 0x800C, 0
    ScrCmd_20A 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0043
    GoToIfEq 0x8008, 1, _0047
    GoToIfEq 0x8008, 2, _0050
    GoTo _0059

_0043:
    ScrCmd_061
    End

_0047:
    ScrCmd_02C 0
    GoTo _0068

_0050:
    ScrCmd_02C 1
    GoTo _0068

_0059:
    ScrCmd_003 30, 0x800C
    ScrCmd_02C 2
    GoTo _0068

_0068:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
