#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0022
    ScriptEntryEnd

_000A:
    GoToIfSet FLAG_UNK_0x0132, _0040
    GoToIfUnset FLAG_UNK_0x0132, _004A
    End

_0022:
    Call _0118
    GoToIfSet FLAG_UNK_0x0132, _0040
    GoToIfUnset FLAG_UNK_0x0132, _004A
    End

_0040:
    SetWarpEventPos 2, 7, 5
    End

_004A:
    GoToIfGe 0x40AA, 2, _0069
    GoTo _005F
    End

_005F:
    SetWarpEventPos 1, 7, 5
    End

_0069:
    GoToIfUnset FLAG_UNK_0x0145, _005F
    GoToIfSet FLAG_UNK_0x00D0, _00BC
    GoToIfGe 0x40C4, 1, _00BC
    CheckItem ITEM_ADAMANT_ORB, 1, VAR_0x4001
    GoToIfEq VAR_0x4001, 1, _0104
    CheckPartyHasHeldItem ITEM_ADAMANT_ORB, VAR_0x4001
    GoToIfEq VAR_0x4001, 1, _0104
    GoTo _00BC
    End

_00BC:
    GoToIfSet FLAG_UNK_0x00D1, _005F
    GoToIfGe 0x40C5, 1, _005F
    CheckItem ITEM_LUSTROUS_ORB, 1, VAR_0x4001
    GoToIfEq VAR_0x4001, 1, _010E
    CheckPartyHasHeldItem ITEM_LUSTROUS_ORB, VAR_0x4001
    GoToIfEq VAR_0x4001, 1, _010E
    GoTo _005F
    End

_0104:
    SetWarpEventPos 3, 7, 5
    End

_010E:
    SetWarpEventPos 4, 7, 5
    End

_0118:
    SetWarpEventPos 1, 1, 5
    SetWarpEventPos 2, 1, 5
    SetWarpEventPos 3, 1, 5
    SetWarpEventPos 4, 1, 5
    Return

    .byte 0
    .byte 0
