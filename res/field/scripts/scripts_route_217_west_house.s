#include "macros/scrcmd.inc"
#include "res/text/bank/route_217_west_house.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00DE, _0039
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
    SetVar 0x8004, ITEM_ICICLE_PLATE
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _0076
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00DE
    GoTo _0039

_0076:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End
