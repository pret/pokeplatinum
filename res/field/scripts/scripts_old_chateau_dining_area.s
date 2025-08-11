#include "macros/scrcmd.inc"


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
    WalkNormalNorth
    Delay32
    FaceWest
    EndMovement

    .balign 4, 0
_0064:
    Delay8
    FaceWest
    Delay16
    PauseAnimation
    WalkNormalWest 10
    ResumeAnimation
    SetInvisible
    EndMovement
