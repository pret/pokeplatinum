#include "macros/scrcmd.inc"
#include "res/text/bank/route_208.h"

    .data

    ScriptEntry _0016
    ScriptEntry _002D
    ScriptEntry _0044
    ScriptEntry _0070
    ScriptEntry _005B
    ScriptEntryEnd

_0016:
    ShowSignpostMessage 2, SIGNPOST_ROUTE_MAP
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_002D:
    ShowSignpostMessage 3, SIGNPOST_ROUTE_MAP
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0044:
    ShowSignpostMessage 4, SIGNPOST_BUILDING_INFO
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_005B:
    ScrCmd_037
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 5, 0x800C
    CallCommonScript 0x7D0
    End

_0070:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x13F, _00B5
    Message 0
    SetVar 0x8004, 111
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00C0
    SetFlag 0x13F
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_00B5:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C0:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
