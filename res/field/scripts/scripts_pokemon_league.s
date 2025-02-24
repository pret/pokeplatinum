#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0025
    ScriptEntry _003C
    ScriptEntryEnd

_000E:
    ShowSignpostMessage 1, SIGNPOST_ROUTE_MAP
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0025:
    ShowSignpostMessage 2, SIGNPOST_BUILDING_INFO
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_003C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
