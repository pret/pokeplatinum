#include "macros/scrcmd.inc"

    .data

    ScriptEntry _004E
    ScriptEntry _0012
    ScriptEntry _0083
    ScriptEntry _009A
    .short 0xFD13

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
    ScrCmd_15B 6, 0x4000
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
    ScrCmd_065 2
    ApplyMovement 241, _00F0
    WaitMovement
    ScrCmd_067
    SetVar 0x4084, 1
    ReleaseAll
    End

    .balign 4, 0
_00E8:
    MoveAction_00C 6
    EndMovement

    .balign 4, 0
_00F0:
    MoveAction_00D 6
    EndMovement

    .balign 4, 0
_00F8:
    MoveAction_00C 3
    MoveAction_00E
    MoveAction_00C 4
    EndMovement
