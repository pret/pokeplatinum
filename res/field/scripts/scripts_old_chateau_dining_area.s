#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _002E
    ScriptEntryEnd

_000A:
    ScrCmd_292 10, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, _0022
    SetFlag FLAG_UNK_0x027B
    End

_0022:
    ClearFlag FLAG_UNK_0x027B
    SetVar VAR_UNK_0x4110, 1
    End

_002E:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0054
    ApplyMovement 0, _0064
    WaitMovement
    SetFlag FLAG_UNK_0x027B
    RemoveObject 0
    SetVar VAR_UNK_0x4110, 0
    ReleaseAll
    End

    .balign 4, 0
_0054:
    MoveAction_WalkNormalNorth
    MoveAction_Delay32
    MoveAction_FaceWest
    EndMovement

    .balign 4, 0
_0064:
    MoveAction_Delay8
    MoveAction_FaceWest
    MoveAction_Delay16
    MoveAction_073
    MoveAction_WalkNormalWest 10
    MoveAction_074
    MoveAction_SetInvisible
    EndMovement
