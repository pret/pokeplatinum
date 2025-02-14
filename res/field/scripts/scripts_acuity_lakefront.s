#include "macros/scrcmd.inc"
#include "res/text/bank/acuity_lakefront.h"

    .data

    ScriptEntry _004E
    ScriptEntry _0012
    ScriptEntry _0083
    ScriptEntry _009A
    ScriptEntryEnd

_0012:
    GoToIfUnset 186, _002A
    GoToIfSet 186, _003C
    End

_002A:
    ScrCmd_18A 2, 0x131, 229
    ScrCmd_18A 3, 0x132, 229
    End

_003C:
    ScrCmd_18A 0, 0x131, 229
    ScrCmd_18A 1, 0x132, 229
    End

_004E:
    CheckBadgeAcquired BADGE_ID_ICICLE, 0x4000
    CallIfEq 0x4000, 1, _0079
    GoToIfUnset 186, _002A
    GoToIfSet 186, _003C
    End

_0079:
    SetFlag 0x234
    ClearFlag 0x298
    Return

_0083:
    ScrCmd_036 5, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_009A:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ApplyMovement 241, _00E8
    WaitMovement
    WaitTime 15, 0x800C
    BufferRivalName 0
    BufferPlayerName 1
    Message 0
    CloseMessage
    ApplyMovement 2, _00F8
    WaitMovement
    RemoveObject 2
    ApplyMovement 241, _00F0
    WaitMovement
    ScrCmd_067
    SetVar 0x4084, 1
    ReleaseAll
    End

    .balign 4, 0
_00E8:
    MoveAction_012 6
    EndMovement

    .balign 4, 0
_00F0:
    MoveAction_013 6
    EndMovement

    .balign 4, 0
_00F8:
    MoveAction_012 3
    MoveAction_014
    MoveAction_012 4
    EndMovement
