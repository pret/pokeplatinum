#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town.h"

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
    ScriptEntryEnd

_0032:
    SetFlag FLAG_UNLOCKED_VS_SEEKER_LVL_2
    End

_0038:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _006E
    GoToIfEq 0x800C, MENU_NO, _0063
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
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_CELESTIC_TOWN
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _0191
    Message 4
    CloseMessage
    GetPlayerDir 0x800C
    GoToIfEq 0x800C, 0, _00BC
    GoToIfEq 0x800C, 2, _00EC
    GoToIfEq 0x800C, 3, _0114
    End

_00BC:
    ApplyMovement 2, _0198
    ApplyMovement LOCALID_PLAYER, _01E0
    WaitMovement
    Call _013C
    ApplyMovement 3, _01B4
    ApplyMovement LOCALID_PLAYER, _0204
    WaitMovement
    GoTo _0166

_00EC:
    ApplyMovement 2, _0198
    ApplyMovement LOCALID_PLAYER, _01F0
    WaitMovement
    Call _013C
    ApplyMovement 3, _01C0
    WaitMovement
    GoTo _0166

_0114:
    ApplyMovement 2, _01A4
    ApplyMovement LOCALID_PLAYER, _01FC
    WaitMovement
    Call _013C
    ApplyMovement 3, _01D0
    WaitMovement
    GoTo _0166

_013C:
    RemoveObject 2
    RemoveObject 3
    SetObjectEventPos 3, 0x1D2, 0x213
    ScrCmd_189 3, 0
    ScrCmd_188 3, 14
    ClearFlag 0x1AC
    AddObject 3
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
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_0198:
    MoveAction_018 3
    MoveAction_017 9
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_017 2
    MoveAction_018 3
    MoveAction_017 7
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_012 8
    MoveAction_014 2
    EndMovement

    .balign 4, 0
_01C0:
    MoveAction_012 8
    MoveAction_014 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_01D0:
    MoveAction_012 8
    MoveAction_014 4
    MoveAction_032
    EndMovement

    .balign 4, 0
_01E0:
    MoveAction_034
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_063 3
    MoveAction_033
    EndMovement

    .balign 4, 0
_01FC:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_063 8
    MoveAction_062
    MoveAction_035
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
    ApplyMovement LOCALID_PLAYER, _0264
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
    MoveAction_035
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
    ApplyMovement LOCALID_PLAYER, _02E0
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
    MoveAction_035
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_075
    MoveAction_014 2
    EndMovement

    .balign 4, 0
_02F4:
    MoveAction_032
    EndMovement

    .balign 4, 0
_02FC:
    MoveAction_034
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
    DrawSignpostWithMessage 15, SIGNPOST_TYPE_CITY_MAP
    SetSignpostCommand SIGNPOST_CMD_SCROLL_IN
    WaitForSignpostDone
    GetSignpostInput
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
