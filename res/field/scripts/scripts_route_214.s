#include "macros/scrcmd.inc"

    .data

    ScriptEntry _00A2
    ScriptEntry _00B9
    ScriptEntry _0075
    ScriptEntry _0012
    ScriptEntryEnd

_0012:
    ScrCmd_284 0x4000
    GoToIfGe 0x4000, 26, _003F
    GoToIfGe 0x4000, 10, _0051
    GoToIfLt 0x4000, 10, _0063
    End

_003F:
    SetWarpEventPos 2, 0x2C6, 0x29E
    SetWarpEventPos 3, 0x2C6, 0x29E
    End

_0051:
    SetWarpEventPos 2, 0x2C6, 0x29E
    SetWarpEventPos 4, 0x2C6, 0x29E
    End

_0063:
    SetWarpEventPos 3, 0x2C6, 0x29E
    SetWarpEventPos 4, 0x2C6, 0x29E
    End

_0075:
    ScrCmd_284 0x4000
    GoToIfGe 0x4000, 26, _003F
    GoToIfGe 0x4000, 10, _0051
    GoToIfLt 0x4000, 10, _0063
    End

_00A2:
    ScrCmd_036 0, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_00B9:
    ScrCmd_036 1, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End
