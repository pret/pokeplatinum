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
    DrawSignpostWithMessage 0, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_00B9:
    DrawSignpostWithMessage 1, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End
