#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _002D
    ScriptEntry _0044
    ScriptEntry _005B
    ScriptEntry _0070
    ScriptEntry _0085
    .short 0xFD13

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
    ScrCmd_036 3, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0044:
    ScrCmd_036 4, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_005B:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 5, 0x800C
    CallCommonScript 0x7D0
    End

_0070:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 6, 0x800C
    CallCommonScript 0x7D0
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
    ScrCmd_0DE 0x800C
    GoToIfEq 0x800C, 0x183, _014C
    GoToIfEq 0x800C, 0x186, _0158
    GoTo _0140

_0140:
    ScrCmd_0E5 247, 0
    GoTo _0164

_014C:
    ScrCmd_0E5 248, 0
    GoTo _0164

_0158:
    ScrCmd_0E5 249, 0
    GoTo _0164

_0164:
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0207
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
    ScrCmd_065 5
    SetVar 0x4088, 1
    ReleaseAll
    End

_0207:
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_0210:
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_0218:
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_0220:
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_0228:
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_0230:
    MoveAction_012 4
    EndMovement

    .balign 4, 0
_0238:
    MoveAction_012 2
    MoveAction_011
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0248:
    MoveAction_012 2
    MoveAction_011 2
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0258:
    MoveAction_012 2
    MoveAction_011 3
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0268:
    MoveAction_03F
    MoveAction_04B
    MoveAction_03F
    EndMovement
