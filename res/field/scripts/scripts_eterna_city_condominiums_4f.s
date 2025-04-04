#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_condominiums_4f.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0076, _004B
    Message 0
    SetVar 0x8004, ITEM_TM04
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _0056
    SetFlag FLAG_UNK_0x0076
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

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
