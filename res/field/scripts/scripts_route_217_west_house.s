#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 222, _0039
    CheckItem ITEM_HM08, 1, 0x800C
    GoToIfEq 0x800C, 1, _0044
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0039:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0044:
    Message 1
    SetVar 0x8004, 0x12E
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0076
    CallCommonScript 0x7FC
    SetFlag 222
    GoTo _0039

_0076:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End
