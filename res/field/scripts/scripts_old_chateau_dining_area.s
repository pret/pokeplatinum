#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _002E
    ScriptEntryEnd

_000A:
    ScrCmd_292 10, 0x4000
    GoToIfEq VAR_0x4000, 1, _0022
    SetFlag FLAG_UNK_0x027B
    End

_0022:
    ClearFlag FLAG_UNK_0x027B
    SetVar 0x4110, 1
    End

_002E:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0054
    ApplyMovement 0, _0064
    WaitMovement
    SetFlag FLAG_UNK_0x027B
    RemoveObject 0
    SetVar 0x4110, 0
    ReleaseAll
    End

    .balign 4, 0
_0054:
    MoveAction_012
    MoveAction_066
    MoveAction_002
    EndMovement

    .balign 4, 0
_0064:
    MoveAction_063
    MoveAction_002
    MoveAction_065
    MoveAction_073
    MoveAction_014 10
    MoveAction_074
    MoveAction_069
    EndMovement
