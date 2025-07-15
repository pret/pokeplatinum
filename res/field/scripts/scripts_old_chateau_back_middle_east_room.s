#include "macros/scrcmd.inc"


    ScriptEntry _000A
    ScriptEntry _002E
    ScriptEntryEnd

_000A:
    ScrCmd_292 25, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, _0022
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
    Delay16
    FaceSouth
    Delay16
    PauseAnimation
    WalkNormalSouth 2
    ResumeAnimation
    SetInvisible
    EndMovement
