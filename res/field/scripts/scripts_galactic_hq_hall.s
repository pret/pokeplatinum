#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_hall.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    ApplyMovement 3, _0234
    WaitMovement
    Message 0
    CloseMessage
    CallIfEq 0x8005, 12, _01AD
    CallIfEq 0x8005, 13, _01C1
    ScrCmd_066 0x8004, 0x8005
    FadeScreen 6, 3, 0, 0
    ApplyMovement 241, _01F8
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    WaitTime 15, 0x800C
    ClearFlag FLAG_UNK_0x0253
    AddObject 2
    ApplyMovement 2, _01D8
    WaitMovement
    PlayFanfare SEQ_SE_DP_DENDOU
    WaitTime 30, 0x800C
    Message 1
    CloseMessage
    PlayFanfare SEQ_SE_DP_DENDOU
    WaitTime 30, 0x800C
    Message 2
    CloseMessage
    WaitTime 30, 0x800C
    Message 3
    CloseMessage
    PlayFanfare SEQ_SE_DP_DENDOU
    WaitTime 15, 0x800C
    Message 4
    Message 5
    CloseMessage
    WaitTime 15, 0x800C
    ApplyMovement 2, _01E8
    WaitMovement
    RemoveObject 2
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    ApplyMovement 241, _0204
    WaitMovement
    ScrCmd_067
    RemoveObject 0
    RemoveObject 1
    RemoveObject 4
    RemoveObject 5
    RemoveObject 6
    RemoveObject 7
    RemoveObject 8
    RemoveObject 9
    RemoveObject 10
    RemoveObject 11
    RemoveObject 12
    RemoveObject 13
    RemoveObject 14
    RemoveObject 15
    RemoveObject 16
    RemoveObject 17
    RemoveObject 18
    RemoveObject 19
    RemoveObject 20
    RemoveObject 21
    RemoveObject 22
    RemoveObject 23
    RemoveObject 24
    RemoveObject 25
    RemoveObject 26
    RemoveObject 27
    RemoveObject 28
    RemoveObject 29
    RemoveObject 30
    RemoveObject 31
    RemoveObject 32
    RemoveObject 33
    RemoveObject 34
    RemoveObject 35
    ApplyMovement 3, _0248
    ApplyMovement LOCALID_PLAYER, _0224
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    WaitTime 15, 0x800C
    Message 6
    CloseMessage
    ApplyMovement 3, _0250
    ApplyMovement LOCALID_PLAYER, _022C
    WaitMovement
    RemoveObject 3
    SetVar VAR_UNK_0x408E, 1
    ReleaseAll
    End

_01AD:
    ApplyMovement 3, _0240
    ApplyMovement LOCALID_PLAYER, _0210
    WaitMovement
    Return

_01C1:
    ApplyMovement 3, _0240
    ApplyMovement LOCALID_PLAYER, _021C
    WaitMovement
    Return

    .balign 4, 0
_01D8:
    MoveAction_013 3
    MoveAction_014 4
    MoveAction_013
    EndMovement

    .balign 4, 0
_01E8:
    MoveAction_012
    MoveAction_015 4
    MoveAction_012 3
    EndMovement

    .balign 4, 0
_01F8:
    MoveAction_014 6
    MoveAction_012 6
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_013 6
    MoveAction_015 6
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_013
    MoveAction_014
    EndMovement

    .balign 4, 0
_021C:
    MoveAction_014
    EndMovement

    .balign 4, 0
_0224:
    MoveAction_032
    EndMovement

    .balign 4, 0
_022C:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0234:
    MoveAction_039
    MoveAction_075
    EndMovement

    .balign 4, 0
_0240:
    MoveAction_038
    EndMovement

    .balign 4, 0
_0248:
    MoveAction_037
    EndMovement

    .balign 4, 0
_0250:
    MoveAction_018
    MoveAction_036
    MoveAction_063
    MoveAction_037
    MoveAction_062
    MoveAction_038
    MoveAction_063
    MoveAction_018 9
    EndMovement
