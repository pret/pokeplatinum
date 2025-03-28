#include "macros/scrcmd.inc"
#include "res/text/bank/route_206.h"

    .data

    ScriptEntry _0016
    ScriptEntry _001C
    ScriptEntry _00A4
    ScriptEntry _00B7
    ScriptEntry _00CE
    ScriptEntryEnd

_0016:
    SetFlag FLAG_UNK_0x09E6
    End

_001C:
    CallIfSet FLAG_UNK_0x0994, _009F
    GetPreviousMapID 0x4000
    GoToIfEq 0x4000, MAP_HEADER_ROUTE_206_CYCLING_ROAD_NORTH_GATE, _0047
    GoToIfEq 0x4000, MAP_HEADER_ROUTE_206_CYCLING_ROAD_SOUTH_GATE, _0047
    End

_0047:
    GoToIfSet FLAG_UNK_0x0003, _009D
    GetPlayerMapPos 0x4000, 0x4001
    GoToIfLt 0x4000, 0x12B, _009D
    GoToIfGt 0x4000, 0x132, _009D
    GoToIfEq 0x4001, 0x240, _008E
    GoToIfEq 0x4001, 0x2A9, _008E
    End

_008E:
    SetFlag FLAG_UNK_0x0003,
    SetFlag FLAG_UNK_0x0994
    ScrCmd_2BF
    ScrCmd_0C9 1
    End

_009D:
    End

_009F:
    ScrCmd_0C9 1
    Return

_00A4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B7:
    ShowArrowSign 1
    End

_00CE:
    ShowArrowSign 2
    End

    .byte 0
    .byte 0
    .byte 0
