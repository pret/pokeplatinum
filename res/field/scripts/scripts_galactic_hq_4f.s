#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_4f.h"

    .data

    ScriptEntry _0012
    ScriptEntry _012C
    ScriptEntry _01C4
    ScriptEntry _01D5
    ScriptEntryEnd

_0012:
    LockAll
    ApplyMovement 0, _00E8
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 0, _00F0
    WaitMovement
    Message 1
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 8, _0054
    GoToIfEq VAR_0x8004, 9, _0064
    End

_0054:
    ApplyMovement 0, _00F8
    WaitMovement
    GoTo _0074

_0064:
    ApplyMovement 0, _0100
    WaitMovement
    GoTo _0074

_0074:
    StartTrainerBattle TRAINER_GALACTIC_BOSS_CYRUS_GALACTIC_HQ
    CheckWonBattle VAR_0x800C
    GoToIfEq VAR_0x800C, FALSE, _00E1
    Message 2
    SetVar VAR_0x8004, ITEM_MASTER_BALL
    SetVar VAR_0x8005, 1
    CanFitItem VAR_0x8004, VAR_0x8005, VAR_0x800C
    CallIfEq VAR_0x800C, 1, _00DB
    Message 3
    CloseMessage
    ApplyMovement 0, _0110
    WaitMovement
    Message 4
    CloseMessage
    ApplyMovement 0, _0124
    WaitMovement
    RemoveObject 0
    SetVar VAR_UNK_0x40D6, 1
    ReleaseAll
    End

_00DB:
    CallCommonScript 0x7FC
    Return

_00E1:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_00E8:
    MoveAction_033
    EndMovement

    .balign 4, 0
_00F0:
    MoveAction_013
    EndMovement

    .balign 4, 0
_00F8:
    MoveAction_013
    EndMovement

    .balign 4, 0
_0100:
    MoveAction_013
    MoveAction_015
    MoveAction_033
    EndMovement

    .balign 4, 0
_0110:
    MoveAction_012
    MoveAction_015 4
    MoveAction_012 3
    MoveAction_033
    EndMovement

    .balign 4, 0
_0124:
    MoveAction_015 7
    EndMovement

_012C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_GALACTIC_KEY, 1, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _0154
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0154:
    Message 6
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0177
    GoToIfEq VAR_0x800C, MENU_NO, _01AB
    End

_0177:
    BufferPlayerName 0
    Message 7
    WaitABXPadPress
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_DOOR10
    ApplyMovement 1, _01B4
    ApplyMovement 2, _01BC
    WaitMovement
    SetFlag FLAG_UNK_0x0226
    RemoveObject 1
    RemoveObject 2
    CloseMessage
    ReleaseAll
    End

_01AB:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_01B4:
    MoveAction_018
    EndMovement

    .balign 4, 0
_01BC:
    MoveAction_019
    EndMovement

_01C4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 9
    GoTo _01E6
    End

_01E6:
    Message 10
    InitGlobalTextMenu 1, 1, 0, VAR_0x800C
    AddMenuEntry 0x10C, 0
    AddMenuEntry 0x10D, 1
    AddMenuEntry 0x10E, 2
    AddMenuEntry 0x10F, 3
    ShowMenu
    SetVar VAR_0x8008, VAR_0x800C
    GoToIfEq VAR_0x8008, 0, _0240
    GoToIfEq VAR_0x8008, 1, _024B
    GoToIfEq VAR_0x8008, 2, _0256
    GoTo _0261
    End

_0240:
    Message 11
    GoTo _01E6
    End

_024B:
    Message 12
    GoTo _01E6
    End

_0256:
    Message 13
    GoTo _01E6
    End

_0261:
    CloseMessage
    ReleaseAll
    End

    .byte 0
