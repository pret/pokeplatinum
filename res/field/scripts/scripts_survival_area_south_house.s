#include "macros/scrcmd.inc"
#include "res/text/bank/survival_area_south_house.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00CB, _004B
    Message 0
    SetVar VAR_0x8004, ITEM_TM42
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_0x800C, _0056
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00CB
    GoTo _004B

_004B:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0056:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End
