#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_valor_lakefront_east_house.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x013A, _0055
    Message 0
    SetVar 0x8004, ITEM_WHITE_FLUTE
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _004B
    SetFlag FLAG_UNK_0x013A
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_004B:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0055:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
