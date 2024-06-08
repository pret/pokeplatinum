    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0068
    ScriptEntry _007B
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 194, _005D
    ScrCmd_02C 0
    SetVar 0x8004, 0x18A
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0053
    SetFlag 194
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_0053:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_005D:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0068:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
