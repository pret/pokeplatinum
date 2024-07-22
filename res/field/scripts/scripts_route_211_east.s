#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0088
    ScriptEntry _009F
    ScriptEntry _00B4
    .short 0xFD13

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 198, _0066
    Message 0
    CloseMessage
    FacePlayer
    ApplyMovement 0x800D, _0080
    WaitMovement
    Message 1
    SetVar 0x8004, 0x194
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0073
    CallCommonScript 0x7FC
    SetFlag 198
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
    MoveAction_04B
    EndMovement

_0088:
    ScrCmd_036 3, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_009F:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 4, 0x800C
    CallCommonScript 0x7D0
    End

_00B4:
    ScrCmd_036 5, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
