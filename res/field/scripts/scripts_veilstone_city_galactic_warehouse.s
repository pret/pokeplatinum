#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_galactic_warehouse.h"

    .data

    ScriptEntry _003B
    ScriptEntry _00D8
    ScriptEntry _0184
    ScriptEntry _0016
    ScriptEntry _0197
    ScriptEntryEnd

_0016:
    CallIfLt VAR_UNK_0x411F, 2, _0025
    End

_0025:
    SetObjectEventPos 4, 8, 10
    ScrCmd_188 4, 14
    ScrCmd_189 4, 0
    Return

_003B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_STORAGE_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0063
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0063:
    Message 8
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0086
    GoToIfEq VAR_RESULT, MENU_NO, _00C2
    End

_0086:
    SetFlag FLAG_UNK_0x010E
    RemoveItem ITEM_STORAGE_KEY, 1, VAR_RESULT
    BufferPlayerName 0
    Message 9
    WaitABXPadPress
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_DOOR10
    ApplyMovement 2, _00C8
    ApplyMovement 3, _00D0
    WaitMovement
    RemoveObject 2
    RemoveObject 3
    CloseMessage
    ReleaseAll
    End

_00C2:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00C8:
    MoveAction_018
    EndMovement

    .balign 4, 0
_00D0:
    MoveAction_019
    EndMovement

_00D8:
    LockAll
    ApplyMovement 4, _012C
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0168
    ApplyMovement 4, _0134
    WaitMovement
    BufferPlayerName 0
    Message 1
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0174
    ApplyMovement 4, _015C
    WaitMovement
    SetVar VAR_UNK_0x407C, 1
    SetVar VAR_UNK_0x411F, 2
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_012C:
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_013 2
    MoveAction_034
    MoveAction_063 2
    MoveAction_035
    MoveAction_063 2
    MoveAction_015 5
    MoveAction_032
    MoveAction_075
    MoveAction_034
    EndMovement

    .balign 4, 0
_015C:
    MoveAction_014 5
    MoveAction_033
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_063 9
    MoveAction_035
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_063 4
    MoveAction_061
    MoveAction_032
    EndMovement

_0184:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0197:
    LockAll
    SetObjectEventPos 4, 8, 11
    ScrCmd_188 4, 14
    ScrCmd_189 4, 0
    ClearFlag FLAG_UNK_0x020D
    AddObject 4
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 8, _025A
    CallIfEq VAR_0x8004, 9, _026E
    Message 4
    CloseMessage
    ApplyMovement 4, _0308
    WaitMovement
    Message 5
    CloseMessage
    SetFlag FLAG_UNK_0x010E
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_DOOR10
    ApplyMovement 2, _00C8
    ApplyMovement 3, _00D0
    WaitMovement
    RemoveObject 2
    RemoveObject 3
    CallIfEq VAR_0x8004, 8, _0282
    CallIfEq VAR_0x8004, 9, _028E
    Message 6
    CloseMessage
    CallIfEq VAR_0x8004, 8, _029A
    CallIfEq VAR_0x8004, 9, _02AE
    RemoveObject 4
    SetFlag FLAG_UNK_0x028A
    SetVar VAR_UNK_0x411F, 4
    ReleaseAll
    End

_025A:
    ApplyMovement 4, _02E8
    ApplyMovement LOCALID_PLAYER, _02C4
    WaitMovement
    Return

_026E:
    ApplyMovement 4, _02FC
    ApplyMovement LOCALID_PLAYER, _02D0
    WaitMovement
    Return

_0282:
    ApplyMovement 4, _0318
    WaitMovement
    Return

_028E:
    ApplyMovement 4, _0310
    WaitMovement
    Return

_029A:
    ApplyMovement 4, _0320
    ApplyMovement LOCALID_PLAYER, _02DC
    WaitMovement
    Return

_02AE:
    ApplyMovement 4, _0338
    ApplyMovement LOCALID_PLAYER, _02DC
    WaitMovement
    Return

    .balign 4, 0
_02C4:
    MoveAction_063 4
    MoveAction_035
    EndMovement

    .balign 4, 0
_02D0:
    MoveAction_063 3
    MoveAction_034
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_063
    MoveAction_032
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_012 2
    MoveAction_015
    MoveAction_012
    MoveAction_034
    EndMovement

    .balign 4, 0
_02FC:
    MoveAction_012 3
    MoveAction_035
    EndMovement

    .balign 4, 0
_0308:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0310:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0318:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0320:
    MoveAction_012 5
    MoveAction_038
    MoveAction_039
    MoveAction_063 2
    MoveAction_019 6
    EndMovement

    .balign 4, 0
_0338:
    MoveAction_012 5
    MoveAction_038
    MoveAction_039
    MoveAction_063 2
    MoveAction_019 7
    EndMovement
