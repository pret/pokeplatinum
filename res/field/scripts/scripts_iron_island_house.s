#include "macros/scrcmd.inc"
#include "res/text/bank/iron_island_house.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0035
    ScriptEntryEnd

_000A:
    GoToIfSet FLAG_UNK_0x011D, _0029
    ScrCmd_22D 2, 0x4000
    CallIfEq 0x4000, 1, _002F
    End

_0029:
    SetFlag FLAG_UNK_0x024D
    End

_002F:
    ClearFlag FLAG_UNK_0x024D
    Return

_0035:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    SetVar 0x8004, ITEM_METAL_COAT
    SetVar 0x8005, 1
    CanFitItem 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00A8
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x011D
    Message 1
    CloseMessage
    GetPlayerDir 0x8004
    GoToIfEq 0x8004, 2, _00B2
    GoToIfEq 0x8004, 3, _00D0
    GoToIfEq 0x8004, 0, _00B2
    GoToIfEq 0x8004, 1, _00D0
    End

_00A8:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00B2:
    ApplyMovement 0, _00F0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 0
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_04A 0x603
    ReleaseAll
    End

_00D0:
    ApplyMovement 0, _00FC
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 0
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_04A 0x603
    ReleaseAll
    End

    .balign 4, 0
_00F0:
    MoveAction_014
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_00FC:
    MoveAction_013 2
    MoveAction_014
    MoveAction_013
    EndMovement
