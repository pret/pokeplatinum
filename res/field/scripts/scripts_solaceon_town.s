#include "macros/scrcmd.inc"

    .data

    ScriptEntry _004F
    ScriptEntry _0062
    ScriptEntry _0093
    ScriptEntry _00A6
    ScriptEntry _00B9
    ScriptEntry _00CC
    ScriptEntry _0123
    ScriptEntry _013A
    ScriptEntry _0151
    ScriptEntry _0034
    ScriptEntry _0032
    ScriptEntry _0168
    .short 0xFD13

_0032:
    End

_0034:
    ScrCmd_1BF 0x4000
    GoToIfNe 0x4000, 0, _0047
    End

_0047:
    ScrCmd_189 3, 3
    End

_004F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0062:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 4, 0x800C
    GoToIfEq 0x800C, 1, _0088
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0088:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0093:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_134 9, 0x800C
    GoToIfEq 0x800C, 1, _0118
    ScrCmd_11E 0x800C
    GoToIfLt 0x800C, 50, _010D
    Message 10
    SetVar 0x8004, 9
    CallCommonScript 0x7D9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010D:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0118:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0123:
    ScrCmd_036 12, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_013A:
    ScrCmd_036 13, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0151:
    ScrCmd_036 14, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0168:
    LockAll
    ApplyMovement 0xFF, _0218
    WaitMovement
    CallCommonScript 0x7FA
    GetPlayerMapPos 0x8004, 0x8005
    ScrCmd_186 18, 0x8004, 0x295
    ClearFlag 0x21E
    ScrCmd_064 18
    ScrCmd_062 18
    ApplyMovement 0xFF, _0228
    ApplyMovement 18, _01E8
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 18, _01F0
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 1
    ApplyMovement 18, _0208
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 18, _0210
    WaitMovement
    ScrCmd_065 18
    CallCommonScript 0x7FB
    SetVar 0x4073, 1
    ReleaseAll
    End

    .balign 4, 0
_01E8:
    MoveAction_011 7
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_026
    MoveAction_03F
    MoveAction_027
    MoveAction_03F
    MoveAction_025
    EndMovement

    .balign 4, 0
_0208:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_010 7
    EndMovement

    .balign 4, 0
_0218:
    MoveAction_03F
    MoveAction_04B
    MoveAction_03F 3
    EndMovement

    .balign 4, 0
_0228:
    MoveAction_000
    EndMovement
