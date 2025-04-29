#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_3f.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _00B8
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0021:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_GALACTIC_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0049
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0049:
    Message 2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _006C
    GoToIfEq VAR_RESULT, MENU_NO, _00A0
    End

_006C:
    BufferPlayerName 0
    Message 3
    WaitABXPadPress
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_DOOR10
    ApplyMovement 5, _00A8
    ApplyMovement 6, _00B0
    WaitMovement
    SetFlag FLAG_UNK_0x0225
    RemoveObject 5
    RemoveObject 6
    CloseMessage
    ReleaseAll
    End

_00A0:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00A8:
    MoveAction_018
    EndMovement

    .balign 4, 0
_00B0:
    MoveAction_019
    EndMovement

_00B8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
