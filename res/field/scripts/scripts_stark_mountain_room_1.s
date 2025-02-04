#include "macros/scrcmd.inc"
#include "res/text/bank/stark_mountain_room_1.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0014
    .short 0xFD13

_000A:
    SetFlag 0x9D2
    SetFlag 0x28E
    End

_0014:
    LockAll
    ApplyMovement 0, _0158
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 0, _0160
    WaitMovement
    StartTrainerBattle TRAINER_COMMANDER_MARS_STARK_MOUNTAIN
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, 0, _0150
    Message 1
    CloseMessage
    ApplyMovement 0, _0168
    WaitMovement
    ApplyMovement 4, _01BC
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 4, _01CC
    WaitMovement
    StartTrainerBattle TRAINER_COMMANDER_JUPITER_STARK_MOUNTAIN
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, 0, _0150
    Message 3
    CloseMessage
    WaitTime 15, 0x800C
    ApplyMovement 0, _0174
    ApplyMovement 4, _01F4
    WaitMovement
    Message 4
    ApplyMovement 4, _01D4
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement 0, _017C
    WaitMovement
    Message 6
    CloseMessage
    ApplyMovement 0, _0190
    ApplyMovement 0xFF, _01A4
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 4, _01DC
    WaitMovement
    Message 7
    CloseMessage
    ApplyMovement 4, _01E4
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 14, _0200
    ApplyMovement 0xFF, _01B4
    WaitMovement
    Message 8
    Message 9
    CloseMessage
    ApplyMovement 14, _0208
    ApplyMovement 15, _0210
    ApplyMovement 16, _021C
    WaitMovement
    ScrCmd_065 14
    ScrCmd_065 0
    ScrCmd_065 4
    ScrCmd_065 15
    ScrCmd_065 16
    SetVar 0x40AD, 1
    ReleaseAll
    End

_0150:
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_0158:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_013
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_012
    MoveAction_033
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_075
    EndMovement

    .balign 4, 0
_017C:
    MoveAction_032
    MoveAction_063 2
    MoveAction_033
    MoveAction_063 2
    EndMovement

    .balign 4, 0
_0190:
    MoveAction_013 2
    MoveAction_063
    MoveAction_013
    MoveAction_069
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_063 2
    MoveAction_014
    MoveAction_035
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_032
    EndMovement

    .balign 4, 0
_01BC:
    MoveAction_034
    MoveAction_063 2
    MoveAction_033
    EndMovement

    .balign 4, 0
_01CC:
    MoveAction_013
    EndMovement

    .balign 4, 0
_01D4:
    MoveAction_032
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_035
    EndMovement

    .balign 4, 0
_01E4:
    MoveAction_014
    MoveAction_013 2
    MoveAction_069
    EndMovement

    .balign 4, 0
_01F4:
    MoveAction_063
    MoveAction_032
    EndMovement

    .balign 4, 0
_0200:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0208:
    MoveAction_012 7
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_015
    MoveAction_012 7
    EndMovement

    .balign 4, 0
_021C:
    MoveAction_063
    MoveAction_014
    MoveAction_012 7
    EndMovement
