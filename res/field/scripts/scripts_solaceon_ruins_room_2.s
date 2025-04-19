#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_ruins_room_2.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00D2, _00C7
    GoToIfSet FLAG_UNK_0x00E8, _004F
    CheckItem ITEM_HM05, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0044
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0044:
    Message 1
    GoTo _004F
    End

_004F:
    ApplyMovement 0, _00D4
    WaitMovement
    Message 2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _007C
    GoToIfEq VAR_RESULT, MENU_NO, _00B8
    End

_007C:
    Message 3
    SetVar VAR_0x8004, ITEM_GREEN_SHARD
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _00AE
    SetFlag FLAG_UNK_0x00D2
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_00AE:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00B8:
    SetFlag FLAG_UNK_0x00E8
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C7:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00D4:
    MoveAction_075
    EndMovement
