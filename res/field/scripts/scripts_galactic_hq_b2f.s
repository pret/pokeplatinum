#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_b2f.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _0034
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
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0034:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_GALACTIC_KEY, 1, 0x800C
    GoToIfEq 0x800C, 1, _005C
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005C:
    Message 3
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _007F
    GoToIfEq 0x800C, MENU_NO, _00B3
    End

_007F:
    BufferPlayerName 0
    Message 4
    WaitABXPadPress
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_DOOR10
    ApplyMovement 6, _00BC
    ApplyMovement 7, _00C4
    WaitMovement
    SetFlag 0x227
    RemoveObject 6
    RemoveObject 7
    CloseMessage
    ReleaseAll
    End

_00B3:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00BC:
    MoveAction_018
    EndMovement

    .balign 4, 0
_00C4:
    MoveAction_019
    EndMovement
