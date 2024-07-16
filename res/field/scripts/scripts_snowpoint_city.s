#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0032
    ScriptEntry _00B4
    ScriptEntry _0047
    ScriptEntry _0174
    ScriptEntry _0187
    ScriptEntry _019A
    ScriptEntry _01AD
    ScriptEntry _01C0
    ScriptEntry _01EB
    ScriptEntry _01FE
    ScriptEntry _0215
    ScriptEntry _022A
    .short 0xFD13

_0032:
    GoToIfGe 0x407F, 1, _0041
    End

_0041:
    SetFlag 0x1F3
    End

_0047:
    LockAll
    ApplyMovement 6, _009C
    WaitMovement
    Message 0
    CloseMessage
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _0088
    GoTo _0072
    End

_0072:
    ApplyMovement 6, _00A4
    ApplyMovement 0xFF, _00AC
    WaitMovement
    ReleaseAll
    End

_0088:
    GoToIfUnset 0x964, _0072
    GoTo _0111

    .balign 4, 0
_009C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_00A4:
    MoveAction_021
    EndMovement

    .balign 4, 0
_00AC:
    MoveAction_00D
    EndMovement

_00B4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _00DF
    GoTo _00D4

_00D4:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DF:
    GoToIfUnset 0x964, _00D4
    GoToIfEq 0x407F, 0, _0102
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0102:
    Message 0
    CloseMessage
    Call _011B
    ReleaseAll
    End

_0111:
    Call _011B
    ReleaseAll
    End

_011B:
    WaitTime 30, 0x800C
    ClearFlag 0x1F3
    ScrCmd_064 7
    ApplyMovement 7, _016C
    WaitMovement
    Message 3
    CloseMessage
    ApplyMovement 0xFF, _0164
    ApplyMovement 6, _015C
    WaitMovement
    SetVar 0x407F, 1
    Message 4
    WaitABXPadPress
    CloseMessage
    Return

    .balign 4, 0
_015C:
    MoveAction_001
    EndMovement

    .balign 4, 0
_0164:
    MoveAction_021
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_00C 7
    EndMovement

_0174:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0187:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_019A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01AD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01C0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x407F, 1, _01E0
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E0:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01EB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01FE:
    ScrCmd_036 18, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0215:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 19, 0x800C
    CallCommonScript 0x7D0
    End

_022A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset 0x964, _0260
    Message 10
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0276
    GoToIfEq 0x800C, 1, _026B
    End

_0260:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_026B:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0276:
    CallIfUnset 0x157, _02A0
    Message 11
    CloseMessage
    Call _035C
    Call _0376
    ScrCmd_23D 2, 3, 188, 0x26F, 0x1B2
    ReleaseAll
    End

_02A0:
    ClearFlag 0x256
    ScrCmd_064 10
    ScrCmd_062 10
    CloseMessage
    ApplyMovement 10, _0320
    WaitMovement
    Message 15
    ApplyMovement 0xFF, _030C
    WaitMovement
    CloseMessage
    ApplyMovement 10, _0334
    WaitMovement
    WaitTime 15, 0x800C
    Message 16
    CloseMessage
    ApplyMovement 10, _033C
    WaitMovement
    Message 17
    CloseMessage
    ApplyMovement 10, _0348
    WaitMovement
    ScrCmd_065 10
    ApplyMovement 0xFF, _0318
    WaitMovement
    SetFlag 0x157
    Return

    .balign 4, 0
_030C:
    MoveAction_04B
    MoveAction_020
    EndMovement

    .balign 4, 0
_0318:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0320:
    MoveAction_00E 4
    MoveAction_00D 2
    MoveAction_00E 6
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0334:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_033C:
    MoveAction_00E
    MoveAction_021
    EndMovement

    .balign 4, 0
_0348:
    MoveAction_00C 2
    MoveAction_00F 3
    MoveAction_00C 2
    MoveAction_00F 7
    EndMovement

_035C:
    ApplyMovement 8, _0390
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 8, _039C
    WaitMovement
    Return

_0376:
    ApplyMovement 0xFF, _03A4
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 0xFF, _039C
    WaitMovement
    Return

    .balign 4, 0
_0390:
    MoveAction_001
    MoveAction_040
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_045
    EndMovement

    .balign 4, 0
_03A4:
    MoveAction_00D
    MoveAction_040
    EndMovement
