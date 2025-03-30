#include "macros/scrcmd.inc"
#include "res/text/bank/lake_acuity.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ApplyMovement 241, _0228
    WaitMovement
    WaitTime 15, 0x800C
    ApplyMovement 2, _01C4
    WaitMovement
    BufferRivalName 0
    Message 0
    CloseMessage
    ApplyMovement 1, _01EC
    WaitMovement
    Message 1
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 14, _0136
    CallIfEq 0x8004, 15, _0154
    ScrCmd_067
    Message 2
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 14, _0168
    CallIfEq 0x8004, 15, _0174
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 1
    WaitFanfare SEQ_SE_DP_KAIDAN2
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 14, _0180
    CallIfEq 0x8004, 15, _018C
    ApplyMovement 2, _01CC
    WaitMovement
    BufferRivalName 0
    Message 3
    CloseMessage
    ApplyMovement 2, _01D4
    WaitMovement
    Message 4
    CloseMessage
    WaitTime 30, 0x800C
    ApplyMovement 2, _01CC
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement 2, _01DC
    ApplyMovement LOCALID_PLAYER, _01B8
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 2
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetFlag FLAG_ALT_MUSIC_LAKE_ACUITY
    ClearFlag FLAG_UNK_0x0223
    SetVar 0x40D3, 2
    ClearFlag FLAG_UNK_0x0198
    SetFlag FLAG_UNK_0x0194
    SetFlag FLAG_UNK_0x0175
    SetFlag FLAG_UNK_0x028D
    SetFlag FLAG_UNK_0x028C
    ClearFlag FLAG_UNK_0x00A8
    ReleaseAll
    End

_0136:
    ApplyMovement 1, _01F4
    ApplyMovement 241, _0230
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _01B0
    WaitMovement
    Return

_0154:
    ApplyMovement 1, _0204
    ApplyMovement 241, _0230
    WaitMovement
    Return

_0168:
    ApplyMovement 1, _0210
    WaitMovement
    Return

_0174:
    ApplyMovement 1, _0218
    WaitMovement
    Return

_0180:
    ApplyMovement LOCALID_PLAYER, _0198
    WaitMovement
    Return

_018C:
    ApplyMovement LOCALID_PLAYER, _01A4
    WaitMovement
    Return

    .balign 4, 0
_0198:
    MoveAction_012 5
    MoveAction_015 2
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_012 5
    MoveAction_015
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_035
    EndMovement

    .balign 4, 0
_01B8:
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_01C4:
    MoveAction_032
    EndMovement

    .balign 4, 0
_01CC:
    MoveAction_034
    EndMovement

    .balign 4, 0
_01D4:
    MoveAction_032
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_013 2
    MoveAction_014 2
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_01EC:
    MoveAction_033
    EndMovement

    .balign 4, 0
_01F4:
    MoveAction_014 2
    MoveAction_013 6
    MoveAction_034
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_014 2
    MoveAction_013 5
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0218:
    MoveAction_014
    MoveAction_013
    MoveAction_033
    EndMovement

    .balign 4, 0
_0228:
    MoveAction_012 5
    EndMovement

    .balign 4, 0
_0230:
    MoveAction_013 5
    EndMovement
