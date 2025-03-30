#include "macros/scrcmd.inc"
#include "res/text/bank/vista_lighthouse.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0025
    ScriptEntry _0038
    ScriptEntry _004C
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0025:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0038:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message 3
    CloseMessage
    ScrCmd_27A
    ReleaseAll
    End

_004C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    Message 1
    Message 2
    CloseMessage
    WaitTime 15, 0x800C
    GetPlayerDir 0x800C
    GoToIfEq 0x800C, 0, _0092
    GoToIfEq 0x800C, 2, _00AA
    GoToIfEq 0x800C, 3, _00C2
    End

_0092:
    ApplyMovement 2, _0104
    ApplyMovement LOCALID_PLAYER, _013C
    WaitMovement
    GoTo _00D2

_00AA:
    ApplyMovement 2, _0118
    ApplyMovement LOCALID_PLAYER, _0148
    WaitMovement
    GoTo _00D2

_00C2:
    ApplyMovement 2, _0118
    WaitMovement
    GoTo _00D2

_00D2:
    ScrCmd_168 0, 0, 6, 9, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 2, _0130
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    RemoveObject 2
    SetFlag FLAG_UNK_0x0162
    ReleaseAll
    End

    .balign 4, 0
_0104:
    MoveAction_015 3
    MoveAction_013 6
    MoveAction_014 3
    MoveAction_032
    EndMovement

    .balign 4, 0
_0118:
    MoveAction_013
    MoveAction_015 3
    MoveAction_013 5
    MoveAction_014 3
    MoveAction_032
    EndMovement

    .balign 4, 0
_0130:
    MoveAction_012
    MoveAction_069
    EndMovement

    .balign 4, 0
_013C:
    MoveAction_063
    MoveAction_035
    EndMovement

    .balign 4, 0
_0148:
    MoveAction_063
    MoveAction_033
    MoveAction_063
    MoveAction_035
    EndMovement
