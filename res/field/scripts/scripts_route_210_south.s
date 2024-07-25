#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0079
    ScriptEntry _030C
    ScriptEntry _031F
    ScriptEntry _0379
    ScriptEntry _0390
    ScriptEntry _03A7
    ScriptEntry _001E
    .short 0xFD13

_001E:
    GetTimeOfDay 0x4000
    GoToIfEq 0x4000, 0, _0065
    GoToIfEq 0x4000, 1, _006F
    GoToIfEq 0x4000, 2, _006F
    GoToIfEq 0x4000, 3, _006F
    GoToIfEq 0x4000, 4, _006F
    End

_0065:
    ClearFlag 0x271
    SetFlag 0x270
    End

_006F:
    ClearFlag 0x270
    SetFlag 0x271
    End

_0079:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_SECRETPOTION, 1, 0x800C
    GoToIfEq 0x800C, 1, _00A1
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A1:
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00CA
    GoToIfEq 0x800C, 1, _00C4
    End

_00C4:
    CloseMessage
    ReleaseAll
    End

_00CA:
    BufferPlayerName 0
    BufferItemName 1, 0x1D0
    Message 2
    CloseMessage
    ScrCmd_04C 54, 0
    ScrCmd_04D
    ApplyMovement 27, _024C
    ApplyMovement 28, _024C
    ApplyMovement 26, _024C
    ApplyMovement 19, _024C
    WaitMovement
    ApplyMovement 27, _0258
    ApplyMovement 28, _026C
    ApplyMovement 26, _0280
    ApplyMovement 19, _02B4
    WaitMovement
    ScrCmd_065 27
    ScrCmd_065 28
    ScrCmd_065 26
    ScrCmd_065 19
    WaitTime 45, 0x800C
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 0x230, _015B
    GoToIfEq 0x8004, 0x231, _016F
    End

_015B:
    ScrCmd_186 20, 0x230, 0x254
    ScrCmd_188 20, 14
    GoTo _0183

_016F:
    ScrCmd_186 20, 0x231, 0x254
    ScrCmd_188 20, 14
    GoTo _0183

_0183:
    ClearFlag 0x1B1
    ScrCmd_064 20
    ScrCmd_062 20
    ApplyMovement 20, _02C4
    WaitMovement
    ApplyMovement 0xFF, _02DC
    WaitMovement
    Message 3
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _01E9
    GoToIfEq 0x800C, 1, _01C6
    End

_01C6:
    Message 5
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _01E9
    GoToIfEq 0x800C, 1, _01C6
    End

_01E9:
    SetVar 0x8004, 0x1B7
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    Message 4
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 0x230, _0220
    GoToIfEq 0x8004, 0x231, _0230
    End

_0220:
    ApplyMovement 20, _02CC
    WaitMovement
    GoTo _0240

_0230:
    ApplyMovement 20, _02D4
    WaitMovement
    GoTo _0240

_0240:
    ScrCmd_065 20
    SetFlag 0x107
    ReleaseAll
    End

    .balign 4, 0
_024C:
    MoveAction_04B
    MoveAction_03F 4
    EndMovement

    .balign 4, 0
_0258:
    MoveAction_00C
    MoveAction_021
    MoveAction_03F 8
    MoveAction_00C 8
    EndMovement

    .balign 4, 0
_026C:
    MoveAction_00C 2
    MoveAction_021 2
    MoveAction_03F 6
    MoveAction_00C 8
    EndMovement

    .balign 4, 0
_0280:
    MoveAction_023
    MoveAction_022
    MoveAction_023
    MoveAction_03F 2
    MoveAction_020
    MoveAction_010 2
    MoveAction_03F 2
    MoveAction_00E 3
    MoveAction_023
    MoveAction_04B
    MoveAction_013 3
    MoveAction_010 8
    EndMovement

    .balign 4, 0
_02B4:
    MoveAction_00C 2
    MoveAction_03F 8
    MoveAction_00C 8
    EndMovement

    .balign 4, 0
_02C4:
    MoveAction_00C 7
    EndMovement

    .balign 4, 0
_02CC:
    MoveAction_00D 9
    EndMovement

    .balign 4, 0
_02D4:
    MoveAction_00D 9
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_021
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_030C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_031F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 199, _0364
    Message 7
    SetVar 0x8004, 0x17A
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _036F
    CallCommonScript 0x7FC
    SetFlag 199
    GoTo _0364

_0364:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_036F:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0379:
    ScrCmd_036 10, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0390:
    ScrCmd_036 11, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_03A7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
