#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town_northwest_house.h"


    ScriptEntry _0012
    ScriptEntry _002B
    ScriptEntry _0041
    ScriptEntry _0057
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    CallCommonScript 0x7E3
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

_002B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

_0041:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_CELESTIC
    ReleaseAll
    End

_0057:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    GetHour VAR_RESULT
    GoToIfLt VAR_RESULT, 4, _0113
    GoToIfLt VAR_RESULT, 10, _0093
    GoToIfLt VAR_RESULT, 20, _00D3
    GoTo _0113

_0093:
    GoToIfSet FLAG_UNK_0x0134, _0153
    Message 2
    SetVar VAR_0x8004, ITEM_CHOICE_SPECS
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0174
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0134
    Message 3
    GoTo _0153

_00D3:
    GoToIfSet FLAG_UNK_0x0135, _015E
    Message 2
    SetVar VAR_0x8004, ITEM_BLACKGLASSES
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0174
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0135
    Message 4
    GoTo _015E

_0113:
    GoToIfSet FLAG_UNK_0x0136, _0169
    Message 2
    SetVar VAR_0x8004, ITEM_WISE_GLASSES
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0174
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0136
    Message 5
    GoTo _0169

_0153:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_015E:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0169:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0174:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
