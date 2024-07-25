#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0032
    ScriptEntry _026C
    ScriptEntry _022C
    ScriptEntry _0038
    ScriptEntry _0294
    ScriptEntry _0304
    ScriptEntry _0317
    ScriptEntry _032A
    ScriptEntry _033D
    ScriptEntry _0350
    ScriptEntry _0367
    ScriptEntry _0378
    .short 0xFD13

_0032:
    SetFlag 0x980
    End

_0038:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _006E
    GoToIfEq 0x800C, 1, _0063
    End

_0063:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006E:
    Message 2
    CloseMessage
    ScrCmd_0E5 0x1A0, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0191
    Message 4
    CloseMessage
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 0, _00BC
    GoToIfEq 0x800C, 2, _00EC
    GoToIfEq 0x800C, 3, _0114
    End

_00BC:
    ApplyMovement 2, _0198
    ApplyMovement 0xFF, _01E0
    WaitMovement
    Call _013C
    ApplyMovement 3, _01B4
    ApplyMovement 0xFF, _0204
    WaitMovement
    GoTo _0166

_00EC:
    ApplyMovement 2, _0198
    ApplyMovement 0xFF, _01F0
    WaitMovement
    Call _013C
    ApplyMovement 3, _01C0
    WaitMovement
    GoTo _0166

_0114:
    ApplyMovement 2, _01A4
    ApplyMovement 0xFF, _01FC
    WaitMovement
    Call _013C
    ApplyMovement 3, _01D0
    WaitMovement
    GoTo _0166

_013C:
    ScrCmd_065 2
    ScrCmd_065 3
    ScrCmd_186 3, 0x1D2, 0x213
    ScrCmd_189 3, 0
    ScrCmd_188 3, 14
    ClearFlag 0x1AC
    ScrCmd_064 3
    ScrCmd_062 3
    Return

_0166:
    Message 5
    BufferPlayerName 0
    BufferItemName 1, 0x1B7
    PlaySound SEQ_FANFA4
    Message 6
    WaitSound
    RemoveItem ITEM_OLD_CHARM, 1, 0x800C
    SetFlag 166
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0191:
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_0198:
    MoveAction_012 3
    MoveAction_011 9
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_011 2
    MoveAction_012 3
    MoveAction_011 7
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_00C 8
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_01C0:
    MoveAction_00C 8
    MoveAction_00E 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_01D0:
    MoveAction_00C 8
    MoveAction_00E 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_01E0:
    MoveAction_022
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_03F 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_01FC:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_03F 8
    MoveAction_03E
    MoveAction_023
    EndMovement

    .byte 63
    .byte 0
    .byte 8
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 9
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_022C:
    LockAll
    ApplyMovement 0xFF, _0264
    ApplyMovement 3, _025C
    WaitMovement
    Call _024A
    ReleaseAll
    End

_024A:
    SetVar 0x40F1, 1
    Message 0
    WaitABXPadPress
    CloseMessage
    Return

    .balign 4, 0
_025C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0264:
    MoveAction_002
    EndMovement

_026C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 166, _0289
    Call _024A
    ReleaseAll
    End

_0289:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0294:
    LockAll
    ApplyMovement 0xFF, _02E0
    ApplyMovement 4, _02E8
    WaitMovement
    Message 9
    ApplyMovement 4, _02F4
    WaitMovement
    Message 10
    CloseMessage
    ApplyMovement 4, _02FC
    WaitMovement
    SetVar 0x4074, 2
    SetFlag 0x299
    WaitTime 12, 0x800C
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_02E0:
    MoveAction_023
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_04B
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_02F4:
    MoveAction_020
    EndMovement

    .balign 4, 0
_02FC:
    MoveAction_022
    EndMovement

_0304:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0317:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_032A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_033D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0350:
    ScrCmd_036 15, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0367:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0378:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
