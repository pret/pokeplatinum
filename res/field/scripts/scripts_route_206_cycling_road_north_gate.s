#include "macros/scrcmd.inc"
#include "res/text/bank/route_206_cycling_road_north_gate.h"


    ScriptEntry _003B
    ScriptEntry _004E
    ScriptEntry _0061
    ScriptEntry _00B0
    ScriptEntry _00C0
    ScriptEntry _001A
    ScriptEntryEnd

_001A:
    GetPlayerMapPos VAR_MAP_LOCAL_4, VAR_MAP_LOCAL_5
    CallIfGe VAR_MAP_LOCAL_5, 12, _0035
    SetVar VAR_MAP_LOCAL_3, 1
    End

_0035:
    SetFlag FLAG_FORCE_BIKING_IN_GATE
    Return

_003B:
    CallIfSet FLAG_UNK_0x010B, _0048
    End

_0048:
    SetFlag FLAG_UNK_0x0222
    Return

_004E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0061:
    LockAll
    CheckPlayerOnBike VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, _0091
    ApplyMovement 1, _00A0
    WaitMovement
    Message 1
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _00A8
    WaitMovement
    ReleaseAll
    End

_0091:
    SetFlag FLAG_FORCE_BIKING_IN_GATE
    SetVar VAR_MAP_LOCAL_2, 1
    ReleaseAll
    End

    .balign 4, 0
_00A0:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_00A8:
    WalkNormalNorth
    EndMovement

_00B0:
    LockAll
    ClearFlag FLAG_FORCE_BIKING_IN_GATE
    SetVar VAR_MAP_LOCAL_2, 0
    ReleaseAll
    End

_00C0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x010B, _0154
    BufferPlayerName 0
    BufferCounterpartName 1
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _00F0
    GoTo _00F9

_00F0:
    Message 3
    GoTo _0102

_00F9:
    Message 4
    GoTo _0102

_0102:
    GetNationalDexSeenCount VAR_0x8004
    BufferNumber 1, VAR_0x8004
    GoToIfLt VAR_0x8004, 35, _015F
    Message 5
    SetVar VAR_0x8004, ITEM_EXP_SHARE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _014A
    SetFlag FLAG_UNK_0x010B
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_014A:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0154:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_015F:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
