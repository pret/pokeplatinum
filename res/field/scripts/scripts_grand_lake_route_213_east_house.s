#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_route_213_east_house.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    GetRandom VAR_0x800C, 4
    GoToIfEq VAR_0x800C, 0, _0044
    GoToIfEq VAR_0x800C, 1, _004F
    GoToIfEq VAR_0x800C, 2, _005A
    GoTo _0065

_0044:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_004F:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005A:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0065:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
