#include "macros/scrcmd.inc"

    .data

    ScriptEntry _002E
    ScriptEntry _0030
    ScriptEntry _006C
    ScriptEntry _00B0
    ScriptEntry _00C3
    ScriptEntry _00D6
    ScriptEntry _00E9
    ScriptEntry _00FC
    ScriptEntry _0113
    ScriptEntry _012A
    ScriptEntry _0141
    .short 0xFD13

_002E:
    End

_0030:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ApplyMovement 7, _005C
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 8, _0064
    WaitMovement
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_005C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0064:
    MoveAction_022
    EndMovement

_006C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40CF, 2, _0099
    Message 2
    ApplyMovement 2, _00A4
    WaitMovement
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0099:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00A4:
    MoveAction_000
    MoveAction_03F 3
    EndMovement

_00B0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FC:
    ScrCmd_036 12, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0113:
    ScrCmd_036 13, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_012A:
    ScrCmd_036 14, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0141:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_31C 0x800C, 0x1EC
    GoToIfEq 0x800C, 0xFF, _019D
    ScrCmd_1C0 0x800C, 0x1EC
    GoToIfEq 0x800C, 0, _019D
    CheckItem ITEM_GRACIDEA, 1, 0x800C
    GoToIfNe 0x800C, 0, _01A8
    Message 9
    SetVar 0x8004, 0x1D2
    SetVar 0x8005, 1
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_019D:
    Message 11
    GoTo _01B3
    End

_01A8:
    Message 10
    GoTo _01B3
    End

_01B3:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
