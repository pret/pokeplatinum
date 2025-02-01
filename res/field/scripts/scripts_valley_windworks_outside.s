#include "macros/scrcmd.inc"
#include "res/text/bank/valley_windworks_outside.h"

    .data

    ScriptEntry _0024
    ScriptEntry _008A
    ScriptEntry _00CF
    ScriptEntry _0150
    ScriptEntry _01A8
    ScriptEntry _01BF
    ScriptEntry _0022
    ScriptEntry _0201
    .short 0xFD13

_0022:
    End

_0024:
    CallIfEq 0x40CF, 2, _0082
    CallIfSet 0x10F, _00BB
    CallIfUnset 0x10F, _00C5
    GoToIfLt 0x4089, 2, _007C
    GoToIfSet 0xAA8, _007C
    ScrCmd_234 0x4000
    GoToIfNe 0x4000, 5, _007C
    GoTo _0076

_0076:
    ClearFlag 0x20B
    End

_007C:
    SetFlag 0x20B
    End

_0082:
    SetVar 0x40CF, 3
    Return

_008A:
    CallIfSet 0x10F, _00BB
    CallIfUnset 0x10F, _00C5
    GoToIfSet 142, _00AD
    End

_00AD:
    SetFlag 0x20B
    ScrCmd_065 4
    ClearFlag 142
    End

_00BB:
    ScrCmd_18B 1, 243, 0x28A
    Return

_00C5:
    ScrCmd_18A 0, 243, 0x28A
    Return

_00CF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    CloseMessage
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_VALLEY_WINDWORKS_1
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, 0, _0133
    Message 1
    CloseMessage
    ApplyMovement 0, _013C
    WaitMovement
    ScrCmd_168 7, 20, 19, 14, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 0, _0144
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Message 4
    ScrCmd_065 0
    CloseMessage
    ReleaseAll
    End

_0133:
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_013C:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_012
    MoveAction_069
    EndMovement

_0150:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 159, _016C
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_016C:
    BufferItemName 0, 0x1B6
    Message 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _01A2
    SetFlag 0x10F
    Call _00BB
    ScrCmd_18A 0, 243, 0x28E
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A2:
    CloseMessage
    ReleaseAll
    End

_01A8:
    ScrCmd_036 9, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_01BF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_04C 0x1A9, 0
    Message 8
    CloseMessage
    ScrCmd_04D
    SetFlag 142
    StartLegendaryBattle SPECIES_DRIFLOON, 15
    ClearFlag 142
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, 0, _01FB
    SetFlag 0xAA8
    ReleaseAll
    End

_01FB:
    ScrCmd_0EB
    ReleaseAll
    End

_0201:
    LockAll
    ApplyMovement 6, _02D8
    ApplyMovement 0xFF, _02AC
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 0xFF, _02BC
    ApplyMovement 6, _02EC
    WaitMovement
    ScrCmd_168 7, 20, 19, 14, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 6, _0300
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    WaitTime 120, 0x800C
    ScrCmd_168 7, 20, 19, 14, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 6, _0310
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ApplyMovement 6, _031C
    WaitMovement
    Message 3
    CloseMessage
    ApplyMovement 0xFF, _02C8
    ApplyMovement 6, _0324
    WaitMovement
    ScrCmd_065 6
    SetVar 0x411E, 2
    ReleaseAll
    End

    .balign 4, 0
_02AC:
    MoveAction_063 5
    MoveAction_062
    MoveAction_034
    EndMovement

    .balign 4, 0
_02BC:
    MoveAction_013
    MoveAction_032
    EndMovement

    .balign 4, 0
_02C8:
    MoveAction_063
    MoveAction_034
    MoveAction_033
    EndMovement

    .balign 4, 0
_02D8:
    MoveAction_075
    MoveAction_063
    MoveAction_016 4
    MoveAction_039
    EndMovement

    .balign 4, 0
_02EC:
    MoveAction_063
    MoveAction_062
    MoveAction_015
    MoveAction_032
    EndMovement

    .balign 4, 0
_0300:
    MoveAction_012
    MoveAction_069
    MoveAction_001
    EndMovement

    .balign 4, 0
_0310:
    MoveAction_070
    MoveAction_017
    EndMovement

    .balign 4, 0
_031C:
    MoveAction_037
    EndMovement

    .balign 4, 0
_0324:
    MoveAction_018
    MoveAction_017
    MoveAction_017 6
    MoveAction_018 9
    EndMovement
