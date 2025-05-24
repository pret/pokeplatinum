#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_gate_1f.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0014
    ScriptEntry _007B
    ScriptEntryEnd

_000E:
    SetFlag FLAG_UNK_0x09CF
    End

_0014:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_COAL, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _003A
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_003A:
    GoToIfSet FLAG_UNK_0x0093, _0064
    Message 0
    SetVar VAR_0x8004, 0x1A9
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    Call _006F
    GoTo _0064

_0064:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006F:
    SetFlag FLAG_UNK_0x0093
    SetVar VAR_UNK_0x4093, 2
    Return

_007B:
    LockAll
    ApplyMovement 10, _00C0
    ApplyMovement LOCALID_PLAYER, _00B4
    WaitMovement
    Message 0
    SetVar VAR_0x8004, 0x1A9
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    Call _006F
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00B4:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_00C0:
    MoveAction_WalkOnSpotNormalSouth
    MoveAction_ExclamationPoint
    MoveAction_WalkNormalSouth
    EndMovement
