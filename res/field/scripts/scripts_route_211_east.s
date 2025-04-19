#include "macros/scrcmd.inc"
#include "res/text/bank/route_211_east.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0088
    ScriptEntry _009F
    ScriptEntry _00B4
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_UNK_0x00C6, _0066
    Message 0
    CloseMessage
    FacePlayer
    ApplyMovement VAR_0x800D, _0080
    WaitMovement
    Message 1
    SetVar VAR_0x8004, ITEM_TM77
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0073
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00C6
    GoTo _0066

_0066:
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0073:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0080:
    MoveAction_075
    EndMovement

_0088:
    ShowArrowSign 3
    End

_009F:
    ShowScrollingSign 4
    End

_00B4:
    ShowArrowSign 5
    End

    .byte 0
