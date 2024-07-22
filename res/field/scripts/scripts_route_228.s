#include "macros/scrcmd.inc"

    .data

    ScriptEntry _007B
    ScriptEntry _0092
    ScriptEntry _0012
    ScriptEntry _0047
    .short 0xFD13

_0012:
    CallIfNe 0x406B, 0x122, _003F
    ScrCmd_32B 0x4001
    GoToIfEq 0x4001, 0, _0067
    GoToIfEq 0x4001, 1, _0071
    End

_003F:
    SetVar 0x406B, 0
    Return

_0047:
    ScrCmd_32B 0x4001
    GoToIfEq 0x4001, 0, _0067
    GoToIfEq 0x4001, 1, _0071
    End

_0067:
    ScrCmd_18A 5, 0x30F, 0x153
    End

_0071:
    ScrCmd_18A 4, 0x30F, 0x153
    End

_007B:
    ScrCmd_036 0, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0092:
    ScrCmd_036 1, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
    .byte 0
    .byte 0
