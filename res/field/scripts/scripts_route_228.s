#include "macros/scrcmd.inc"

    .data

    ScriptEntry _007B
    ScriptEntry _0092
    ScriptEntry _0012
    ScriptEntry _0047
    ScriptEntryEnd

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
    SetWarpEventPos 5, 0x30F, 0x153
    End

_0071:
    SetWarpEventPos 4, 0x30F, 0x153
    End

_007B:
    DrawSignpostWithMessage 0, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

_0092:
    DrawSignpostWithMessage 1, SIGNPOST_TYPE_ROUTE_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
    CallCommonScript 0x7D0
    End

    .byte 0
    .byte 0
    .byte 0
