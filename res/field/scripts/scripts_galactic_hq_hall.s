#include "macros/scrcmd.inc"
#include "res/text/gmm/message_bank_galactic_hq_hall.h"

    .data

    ScriptEntry _0006
    .short 0xFD13

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
    ClearFlag 0x253
    ScrCmd_064 2
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
    ScrCmd_065 2
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    ApplyMovement 241, _0204
    WaitMovement
    ScrCmd_067
    ScrCmd_065 0
    ScrCmd_065 1
    ScrCmd_065 4
    ScrCmd_065 5
    ScrCmd_065 6
    ScrCmd_065 7
    ScrCmd_065 8
    ScrCmd_065 9
    ScrCmd_065 10
    ScrCmd_065 11
    ScrCmd_065 12
    ScrCmd_065 13
    ScrCmd_065 14
    ScrCmd_065 15
    ScrCmd_065 16
    ScrCmd_065 17
    ScrCmd_065 18
    ScrCmd_065 19
    ScrCmd_065 20
    ScrCmd_065 21
    ScrCmd_065 22
    ScrCmd_065 23
    ScrCmd_065 24
    ScrCmd_065 25
    ScrCmd_065 26
    ScrCmd_065 27
    ScrCmd_065 28
    ScrCmd_065 29
    ScrCmd_065 30
    ScrCmd_065 31
    ScrCmd_065 32
    ScrCmd_065 33
    ScrCmd_065 34
    ScrCmd_065 35
    ApplyMovement 3, _0248
    ApplyMovement 0xFF, _0224
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    WaitTime 15, 0x800C
    Message 6
    CloseMessage
    ApplyMovement 3, _0250
    ApplyMovement 0xFF, _022C
    WaitMovement
    ScrCmd_065 3
    SetVar 0x408E, 1
    ReleaseAll
    End

_01AD:
    ApplyMovement 3, _0240
    ApplyMovement 0xFF, _0210
    WaitMovement
    Return

_01C1:
    ApplyMovement 3, _0240
    ApplyMovement 0xFF, _021C
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
