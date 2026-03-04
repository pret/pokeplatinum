#include "macros/scrcmd.inc"
#include "res/text/bank/route_212_north.h"


    ScriptEntry _00B5
    ScriptEntry _00C8
    ScriptEntry _00DF
    ScriptEntry _00F6
    ScriptEntry _010B
    ScriptEntry _011E
    ScriptEntry _0131
    ScriptEntry _0144
    ScriptEntry _0157
    ScriptEntry _002A
    ScriptEntryEnd

_002A:
    GetTimeOfDay VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0071
    GoToIfEq VAR_MAP_LOCAL_0, 1, _0071
    GoToIfEq VAR_MAP_LOCAL_0, 2, _0071
    GoToIfEq VAR_MAP_LOCAL_0, 3, _0093
    GoToIfEq VAR_MAP_LOCAL_0, 4, _0093
    End

_0071:
    ClearFlag FLAG_UNK_0x0260
    ClearFlag FLAG_UNK_0x0262
    ClearFlag FLAG_UNK_0x0264
    ClearFlag FLAG_UNK_0x0266
    SetFlag FLAG_UNK_0x0261
    SetFlag FLAG_UNK_0x0263
    SetFlag FLAG_UNK_0x0265
    SetFlag FLAG_UNK_0x0267
    End

_0093:
    ClearFlag FLAG_UNK_0x0261
    ClearFlag FLAG_UNK_0x0263
    ClearFlag FLAG_UNK_0x0265
    ClearFlag FLAG_UNK_0x0267
    SetFlag FLAG_UNK_0x0260
    SetFlag FLAG_UNK_0x0262
    SetFlag FLAG_UNK_0x0264
    SetFlag FLAG_UNK_0x0266
    End

_00B5:
    NPCMessage 0
    End

_00C8:
    ShowArrowSign 6
    End

_00DF:
    ShowLandmarkSign 7
    End

_00F6:
    ShowScrollingSign 8
    End

_010B:
    NPCMessage 1
    End

_011E:
    NPCMessage 2
    End

_0131:
    NPCMessage 3
    End

_0144:
    NPCMessage 4
    End

_0157:
    NPCMessage 5
    End

    .balign 4, 0
