#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0032
    ScriptEntry _0154
    ScriptEntry _0167
    ScriptEntry _0169
    ScriptEntry _017C
    ScriptEntry _018F
    ScriptEntry _01A2
    ScriptEntry _01A4
    ScriptEntry _01A6
    ScriptEntry _02E4
    ScriptEntry _03D9
    ScriptEntry _049C
    .short 0xFD13

_0032:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    BufferRivalName 1
    Message 0
    PlaySound SEQ_FANFA4
    BufferPlayerName 0
    Message 1
    WaitSound
    RemoveItem ITEM_PARCEL, 1, 0x800C
    BufferPlayerName 0
    BufferRivalName 1
    Message 2
    SetVar 0x8004, 0x1BA
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    BufferRivalName 1
    Message 3
    CloseMessage
    ScrCmd_1BD 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _00A4
    GoToIfEq 0x8008, 2, _00BE
    GoTo _00D8
    End

_00A4:
    ApplyMovement 1, _0114
    ApplyMovement 0xFF, _0138
    WaitMovement
    GoTo _00F2
    End

_00BE:
    ApplyMovement 1, _0124
    ApplyMovement 0xFF, _0148
    WaitMovement
    GoTo _00F2
    End

_00D8:
    ApplyMovement 1, _0124
    ApplyMovement 0xFF, _0148
    WaitMovement
    GoTo _00F2
    End

_00F2:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 1
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar 0x40E7, 1
    SetFlag 241
    ClearFlag 0x1F6
    ClearFlag 0x1F5
    ReleaseAll
    End

    .balign 4, 0
_0114:
    MoveAction_013
    MoveAction_011 8
    MoveAction_025
    EndMovement

    .balign 4, 0
_0124:
    MoveAction_011 4
    MoveAction_013
    MoveAction_011 4
    MoveAction_025
    EndMovement

    .balign 4, 0
_0138:
    MoveAction_03F
    MoveAction_023
    MoveAction_021
    EndMovement

    .balign 4, 0
_0148:
    MoveAction_03F
    MoveAction_021
    EndMovement

_0154:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0167:
    End

_0169:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_017C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_018F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A2:
    End

_01A4:
    End

_01A6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x112, _02A8
    GoToIfSet 0x10C, _02BD
    Message 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _01E7
    GoToIfEq 0x800C, 1, _02D3
    End

_01E7:
    Message 10
    CloseMessage
    ScrCmd_0DE 0x800C
    GoToIfEq 0x800C, 0x183, _0220
    GoToIfEq 0x800C, 0x186, _022E
    GoTo _0212
    End

_0212:
    ScrCmd_0E5 0x156, 0
    GoTo _023C
    End

_0220:
    ScrCmd_0E5 0x156, 0
    GoTo _023C
    End

_022E:
    ScrCmd_0E5 0x156, 0
    GoTo _023C
    End

_023C:
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _02DE
    SetFlag 0x10C
    GoToIfSet 0x10D, _0274
    GoToIfUnset 0x10D, _0269
    End

_0269:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0274:
    Message 13
    SetVar 0x8004, 17
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _02B3
    CallCommonScript 0x7FC
    SetFlag 0x112
    GoTo _02A8
    End

_02A8:
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02B3:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_02BD:
    GoToIfSet 0x10D, _0274
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02D3:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02DE:
    ScrCmd_0EB
    ReleaseAll
    End

_02E4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x10D, _039C
    Message 15
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _031A
    GoToIfEq 0x800C, 1, _03A7
    End

_031A:
    Message 16
    CloseMessage
    ScrCmd_0DE 0x800C
    GoToIfEq 0x800C, 0x183, _0353
    GoToIfEq 0x800C, 0x186, _0361
    GoTo _0345
    End

_0345:
    ScrCmd_0E5 0x159, 0
    GoTo _036F
    End

_0353:
    ScrCmd_0E5 0x159, 0
    GoTo _036F
    End

_0361:
    ScrCmd_0E5 0x159, 0
    GoTo _036F
    End

_036F:
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _03D3
    SetFlag 0x10D
    GoToIfSet 0x10C, _03BD
    GoToIfUnset 0x10C, _03B2
    End

_039C:
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03A7:
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03B2:
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03BD:
    GoToIfSet 0x112, _03B2
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03D3:
    ScrCmd_0EB
    ReleaseAll
    End

_03D9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 20
    GoTo _03EA
    End

_03EA:
    Message 21
    ScrCmd_040 7, 2, 0, 1, 0x800C
    ScrCmd_042 0, 0
    ScrCmd_042 1, 1
    ScrCmd_042 2, 2
    ScrCmd_042 3, 3
    ScrCmd_042 4, 4
    ScrCmd_042 5, 5
    ScrCmd_048 2
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _045F
    GoToIfEq 0x8008, 1, _046A
    GoToIfEq 0x8008, 2, _0475
    GoToIfEq 0x8008, 3, _0480
    GoToIfEq 0x8008, 4, _048B
    GoTo _0496
    End

_045F:
    Message 22
    GoTo _03EA
    End

_046A:
    Message 23
    GoTo _03EA
    End

_0475:
    Message 24
    GoTo _03EA
    End

_0480:
    Message 25
    GoTo _03EA
    End

_048B:
    Message 26
    GoTo _03EA
    End

_0496:
    CloseMessage
    ReleaseAll
    End

_049C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
