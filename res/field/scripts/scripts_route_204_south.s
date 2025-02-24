#include "macros/scrcmd.inc"
#include "res/text/bank/route_204_south.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _0038
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
    ShowSignpostMessage 1, SIGNPOST_ROUTE_MAP
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0038:
    ShowSignpostMessage 2, SIGNPOST_BUILDING_INFO
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
