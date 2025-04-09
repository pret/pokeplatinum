#include "macros/scrcmd.inc"
#include "res/text/bank/route_217_northeast_house.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x013B, _0059
    Message 0
    SetVar 0x8004, ITEM_SPELL_TAG
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _004F
    SetFlag FLAG_UNK_0x013B
    SetFlag FLAG_UNK_0x025F
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_004F:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0059:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
