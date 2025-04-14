#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _002E
    ScriptEntryEnd

_000A:
    ScrCmd_292 25, VAR_0x4000
    GoToIfEq VAR_0x4000, 1, _0022
    SetFlag FLAG_UNK_0x027C
    End

_0022:
    ClearFlag FLAG_UNK_0x027C
    SetVar VAR_UNK_0x4111, 1
    End

_002E:
    LockAll
    ApplyMovement 1, _004C
    WaitMovement
    SetFlag FLAG_UNK_0x027C
    RemoveObject 1
    SetVar VAR_UNK_0x4111, 0
    ReleaseAll
    End

    .balign 4, 0
_004C:
    MoveAction_065
    MoveAction_001
    MoveAction_065
    MoveAction_073
    MoveAction_013 2
    MoveAction_074
    MoveAction_069
    EndMovement
