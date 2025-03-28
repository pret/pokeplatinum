#include "macros/scrcmd.inc"
#include "res/text/bank/route_210_south.h"

    .data

    ScriptEntry _0079
    ScriptEntry _030C
    ScriptEntry _031F
    ScriptEntry _0379
    ScriptEntry _0390
    ScriptEntry _03A7
    ScriptEntry _001E
    ScriptEntryEnd

_001E:
    GetTimeOfDay 0x4000
    GoToIfEq 0x4000, 0, _0065
    GoToIfEq 0x4000, 1, _006F
    GoToIfEq 0x4000, 2, _006F
    GoToIfEq 0x4000, 3, _006F
    GoToIfEq 0x4000, 4, _006F
    End

_0065:
    ClearFlag FLAG_UNK_0x0271
    SetFlag FLAG_UNK_0x0270
    End

_006F:
    ClearFlag FLAG_UNK_0x0270
    SetFlag FLAG_UNK_0x0271
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
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _00CA
    GoToIfEq 0x800C, MENU_NO, _00C4
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
    PlayCry SPECIES_PSYDUCK
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
    RemoveObject 27
    RemoveObject 28
    RemoveObject 26
    RemoveObject 19
    WaitTime 45, 0x800C
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 0x230, _015B
    GoToIfEq 0x8004, 0x231, _016F
    End

_015B:
    SetObjectEventPos 20, 0x230, 0x254
    ScrCmd_188 20, 14
    GoTo _0183

_016F:
    SetObjectEventPos 20, 0x231, 0x254
    ScrCmd_188 20, 14
    GoTo _0183

_0183:
    ClearFlag FLAG_UNK_0x01B1
    AddObject 20
    ScrCmd_062 20
    ApplyMovement 20, _02C4
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _02DC
    WaitMovement
    Message 3
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _01E9
    GoToIfEq 0x800C, MENU_NO, _01C6
    End

_01C6:
    Message 5
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _01E9
    GoToIfEq 0x800C, MENU_NO, _01C6
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
    RemoveObject 20
    SetFlag FLAG_UNK_0x0107
    ReleaseAll
    End

    .balign 4, 0
_024C:
    MoveAction_075
    MoveAction_063 4
    EndMovement

    .balign 4, 0
_0258:
    MoveAction_012
    MoveAction_033
    MoveAction_063 8
    MoveAction_012 8
    EndMovement

    .balign 4, 0
_026C:
    MoveAction_012 2
    MoveAction_033 2
    MoveAction_063 6
    MoveAction_012 8
    EndMovement

    .balign 4, 0
_0280:
    MoveAction_035
    MoveAction_034
    MoveAction_035
    MoveAction_063 2
    MoveAction_032
    MoveAction_016 2
    MoveAction_063 2
    MoveAction_014 3
    MoveAction_035
    MoveAction_075
    MoveAction_019 3
    MoveAction_016 8
    EndMovement

    .balign 4, 0
_02B4:
    MoveAction_012 2
    MoveAction_063 8
    MoveAction_012 8
    EndMovement

    .balign 4, 0
_02C4:
    MoveAction_012 7
    EndMovement

    .balign 4, 0
_02CC:
    MoveAction_013 9
    EndMovement

    .balign 4, 0
_02D4:
    MoveAction_013 9
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_033
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
    GoToIfSet FLAG_UNK_0x00C7, _0364
    Message 7
    SetVar 0x8004, 0x17A
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _036F
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00C7
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
    ShowLandmarkSign 10
    End

_0390:
    ShowArrowSign 11
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
