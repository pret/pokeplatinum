#include "macros/scrcmd.inc"
#include "res/text/bank/route_203.h"

    .data

    ScriptEntry _001A
    ScriptEntry _002D
    ScriptEntry _0044
    ScriptEntry _005B
    ScriptEntry _0070
    ScriptEntry _0085
    ScriptEntryEnd

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002D:
    ShowArrowSign 3
    End

_0044:
    ShowArrowSign 4
    End

_005B:
    ShowScrollingSign 5
    End

_0070:
    ShowScrollingSign 6
    End

_0085:
    LockAll
    ApplyMovement 5, _0268
    WaitMovement
    CallCommonScript 0x7FA
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x2F5, _00D1
    GoToIfEq 0x8005, 0x2F6, _00E1
    GoToIfEq 0x8005, 0x2F7, _00F1
    GoToIfEq 0x8005, 0x2F8, _0101
    End

_00D1:
    ApplyMovement 5, _0230
    WaitMovement
    GoTo _0111

_00E1:
    ApplyMovement 5, _0238
    WaitMovement
    GoTo _0111

_00F1:
    ApplyMovement 5, _0248
    WaitMovement
    GoTo _0111

_0101:
    ApplyMovement 5, _0258
    WaitMovement
    GoTo _0111

_0111:
    BufferRivalName 0
    BufferPlayerName 1
    Message 0
    CloseMessage
    GetPlayerStarterSpecies 0x800C
    GoToIfEq 0x800C, SPECIES_TURTWIG, _014C
    GoToIfEq 0x800C, SPECIES_CHIMCHAR, _0158
    GoTo _0140

_0140:
    StartTrainerBattle TRAINER_RIVAL_ROUTE_203_PIPLUP
    GoTo _0164

_014C:
    StartTrainerBattle TRAINER_RIVAL_ROUTE_203_TURTWIG
    GoTo _0164

_0158:
    StartTrainerBattle TRAINER_RIVAL_ROUTE_203_CHIMCHAR
    GoTo _0164

_0164:
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _0207
    BufferRivalName 0
    Message 1
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8005, 0x2F5, _01B9
    GoToIfEq 0x8005, 0x2F6, _01C9
    GoToIfEq 0x8005, 0x2F7, _01D9
    GoToIfEq 0x8005, 0x2F8, _01E9
    End

_01B9:
    ApplyMovement 5, _0210
    WaitMovement
    GoTo _01F9

_01C9:
    ApplyMovement 5, _0218
    WaitMovement
    GoTo _01F9

_01D9:
    ApplyMovement 5, _0220
    WaitMovement
    GoTo _01F9

_01E9:
    ApplyMovement 5, _0228
    WaitMovement
    GoTo _01F9

_01F9:
    RemoveObject 5
    SetVar VAR_UNK_0x4088, 1
    ReleaseAll
    End

_0207:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_0210:
    MoveAction_019 10
    EndMovement

    .balign 4, 0
_0218:
    MoveAction_019 10
    EndMovement

    .balign 4, 0
_0220:
    MoveAction_019 10
    EndMovement

    .balign 4, 0
_0228:
    MoveAction_019 10
    EndMovement

    .balign 4, 0
_0230:
    MoveAction_018 4
    EndMovement

    .balign 4, 0
_0238:
    MoveAction_018 2
    MoveAction_017
    MoveAction_018 2
    EndMovement

    .balign 4, 0
_0248:
    MoveAction_018 2
    MoveAction_017 2
    MoveAction_018 2
    EndMovement

    .balign 4, 0
_0258:
    MoveAction_018 2
    MoveAction_017 3
    MoveAction_018 2
    EndMovement

    .balign 4, 0
_0268:
    MoveAction_063
    MoveAction_075
    MoveAction_063
    EndMovement
