#include "macros/scrcmd.inc"
#include "res/text/bank/route_230.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0025
    ScriptEntry _0038
    ScriptEntryEnd

_000E:
    ShowSignpostMessage 0, SIGNPOST_ROUTE_MAP
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0025:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0038:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
