#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_control_room.h"

    .data

    ScriptEntry _003E
    ScriptEntry _0055
    ScriptEntry _0059
    ScriptEntry _014C
    ScriptEntry _0173
    ScriptEntry _019A
    ScriptEntry _01C1
    ScriptEntry _01C3
    ScriptEntry _01C5
    ScriptEntry _01C7
    ScriptEntry _03C4
    ScriptEntry _03D7
    ScriptEntry _03EA
    ScriptEntry _0394
    ScriptEntry _03FD
    ScriptEntryEnd

_003E:
    GoToIfSet FLAG_FREED_GALACTIC_HQ_POKEMON, _004B
    End

_004B:
    SetObjectEventPos 0, 9, 6
    End

_0055:
    ScrCmd_25E
    End

_0059:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_FREED_GALACTIC_HQ_POKEMON, _0109
    GoToIfSet FLAG_UNK_0x00AD, _0114
    Message 0
    CloseMessage
    StartTrainerBattle TRAINER_COMMANDER_SATURN_GALACTIC_HQ
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _011F
    SetFlag FLAG_UNK_0x00AD
    SetVar VAR_UNK_0x410D, 1
    Message 1
    CloseMessage
    GetPlayerDir VAR_0x8004
    SetVar VAR_MAP_LOCAL_2, VAR_0x8004
    GoToIfEq VAR_0x8004, 0, _00D5
    GoToIfEq VAR_0x8004, 2, _00E5
    GoToIfEq VAR_0x8004, 3, _00F5
    End

_00D5:
    ApplyMovement 0, _0128
    WaitMovement
    GoTo _0105

_00E5:
    ApplyMovement 0, _0134
    WaitMovement
    GoTo _0105

_00F5:
    ApplyMovement 0, _0140
    WaitMovement
    GoTo _0105

_0105:
    ReleaseAll
    End

_0109:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0114:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011F:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_0128:
    MoveAction_015
    MoveAction_033
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_013
    MoveAction_032
    EndMovement

    .balign 4, 0
_0140:
    MoveAction_015
    MoveAction_034
    EndMovement

_014C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_FREED_GALACTIC_HQ_POKEMON, _0168
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0168:
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0173:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_FREED_GALACTIC_HQ_POKEMON, _018F
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_018F:
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_019A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_FREED_GALACTIC_HQ_POKEMON, _01B6
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01B6:
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01C1:
    End

_01C3:
    End

_01C5:
    End

_01C7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_FREED_GALACTIC_HQ_POKEMON, _0347
    Message 10
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _01FB
    GoToIfEq VAR_RESULT, MENU_NO, _0341
    End

_01FB:
    SetVar VAR_UNK_0x410D, 0
    PlayFanfare SEQ_SE_DP_BUTTON3
    BufferPlayerName 0
    Message 11
    CloseMessage
    ClearFlag FLAG_UNK_0x0295
    SetFlag FLAG_FREED_GALACTIC_HQ_POKEMON
    ScrCmd_25F
    WaitTime 30, VAR_RESULT
    ApplyMovement 2, _036C
    ApplyMovement 1, _0374
    ApplyMovement 3, _037C
    WaitMovement
    SetObjectEventPos 2, 2, 6
    SetObjectEventPos 1, 14, 6
    SetObjectEventPos 3, 8, 12
    Call _0296
    Call _0296
    Call _0296
    RemoveObject 2
    RemoveObject 1
    RemoveObject 3
    GoToIfEq VAR_MAP_LOCAL_2, 0, _02C0
    GoToIfEq VAR_MAP_LOCAL_2, 2, _02DA
    GoToIfEq VAR_MAP_LOCAL_2, 3, _02F4
    End

_0296:
    RemoveObject 2
    RemoveObject 1
    RemoveObject 3
    WaitTime 2, VAR_RESULT
    ClearFlag FLAG_UNK_0x0236
    AddObject 2
    AddObject 1
    AddObject 3
    WaitTime 2, VAR_RESULT
    Return

_02C0:
    ApplyMovement 0, _0354
    ApplyMovement LOCALID_PLAYER, _0384
    WaitMovement
    GoTo _030E
    End

_02DA:
    ApplyMovement 0, _0360
    ApplyMovement LOCALID_PLAYER, _038C
    WaitMovement
    GoTo _030E
    End

_02F4:
    ApplyMovement 0, _0354
    ApplyMovement LOCALID_PLAYER, _0384
    WaitMovement
    GoTo _030E
    End

_030E:
    Message 3
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetFlag FLAG_UNK_0x0235
    ClearFlag FLAG_UNK_0x0182
    SetVar VAR_UNK_0x40A9, 1
    ReleaseAll
    End

_0341:
    CloseMessage
    ReleaseAll
    End

_0347:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0354:
    MoveAction_063
    MoveAction_034
    EndMovement

    .balign 4, 0
_0360:
    MoveAction_063
    MoveAction_032
    EndMovement

    .balign 4, 0
_036C:
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0374:
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_037C:
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0384:
    MoveAction_035
    EndMovement

    .balign 4, 0
_038C:
    MoveAction_033
    EndMovement

_0394:
    LockAll
    ApplyMovement 0, _03BC
    WaitMovement
    Message 4
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _03B4
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_03B4:
    MoveAction_012
    EndMovement

    .balign 4, 0
_03BC:
    MoveAction_033
    EndMovement

_03C4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03D7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03EA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03FD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_UNK_0x00AD, _0450
    ApplyMovement 4, _0470
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement 0, _0460
    WaitMovement
    WaitTime 20, VAR_RESULT
    Message 6
    Message 7
    CloseMessage
    WaitTime 20, VAR_RESULT
    ApplyMovement 0, _0468
    WaitMovement
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0450:
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0460:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0468:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0470:
    MoveAction_032
    EndMovement
