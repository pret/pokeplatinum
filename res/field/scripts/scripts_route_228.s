#include "macros/scrcmd.inc"


    ScriptEntry _007B
    ScriptEntry _0092
    ScriptEntry _0012
    ScriptEntry _0047
    ScriptEntryEnd

_0012:
    CallIfNe VAR_UNK_0x406B, 0x122, _003F
    CheckPartyHasFatefulEncounterRegigigas VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, _0067
    GoToIfEq VAR_MAP_LOCAL_1, 1, _0071
    End

_003F:
    SetVar VAR_UNK_0x406B, 0
    Return

_0047:
    CheckPartyHasFatefulEncounterRegigigas VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, _0067
    GoToIfEq VAR_MAP_LOCAL_1, 1, _0071
    End

_0067:
    SetWarpEventPos 5, 0x30F, 0x153
    End

_0071:
    SetWarpEventPos 4, 0x30F, 0x153
    End

_007B:
    ShowArrowSign 0
    End

_0092:
    ShowArrowSign 1
    End

    .balign 4, 0
