#include "macros/scrcmd.inc"


    ScriptEntry _00A2
    ScriptEntry _00B9
    ScriptEntry _0075
    ScriptEntry _0012
    ScriptEntryEnd

_0012:
    GetUnownFormsSeenCount VAR_MAP_LOCAL_0
    GoToIfGe VAR_MAP_LOCAL_0, 26, _003F
    GoToIfGe VAR_MAP_LOCAL_0, 10, _0051
    GoToIfLt VAR_MAP_LOCAL_0, 10, _0063
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
    GetUnownFormsSeenCount VAR_MAP_LOCAL_0
    GoToIfGe VAR_MAP_LOCAL_0, 26, _003F
    GoToIfGe VAR_MAP_LOCAL_0, 10, _0051
    GoToIfLt VAR_MAP_LOCAL_0, 10, _0063
    End

_00A2:
    ShowArrowSign 0
    End

_00B9:
    ShowArrowSign 1
    End
