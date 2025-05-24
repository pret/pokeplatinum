#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_south_house.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0098, _0113
    Call _0119
    GoToIfEq VAR_RESULT, 1, _0106
    GoToIfSet FLAG_UNK_0x0099, _00B3
    GoToIfSet FLAG_UNK_0x0119, _008B
    BufferPlayerName 0
    Message 0
    CloseMessage
    ApplyMovement 0, _0158
    WaitMovement
    Message 1
    SetVar VAR_0x8004, ITEM_UPGRADE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0091
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0119
    Message 2
    GoTo _009B
    End

_008B:
    CallCommonScript 0x26E0
    End

_0091:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_009B:
    ActivateRoamingPokemon ROAMING_SLOT_MOLTRES
    ActivateRoamingPokemon ROAMING_SLOT_ZAPDOS
    ActivateRoamingPokemon ROAMING_SLOT_ARTICUNO
    SetFlag FLAG_UNK_0x0099
    Message 3
    GoTo _0150
    End

_00B3:
    CallIfEq VAR_ROAMING_MOLTRES_STATE, 3, _00E5
    CallIfEq VAR_ROAMING_ZAPDOS_STATE, 3, _00F0
    CallIfEq VAR_ROAMING_ARTICUNO_STATE, 3, _00FB
    Message 4
    GoTo _0150
    End

_00E5:
    SetVar VAR_ROAMING_MOLTRES_STATE, 0
    ActivateRoamingPokemon ROAMING_SLOT_MOLTRES
    Return

_00F0:
    SetVar VAR_ROAMING_ZAPDOS_STATE, 0
    ActivateRoamingPokemon ROAMING_SLOT_ZAPDOS
    Return

_00FB:
    SetVar VAR_ROAMING_ARTICUNO_STATE, 0
    ActivateRoamingPokemon ROAMING_SLOT_ARTICUNO
    Return

_0106:
    Message 5
    SetFlag FLAG_UNK_0x0098
    CallCommonScript 0x26E1
    End

_0113:
    CallCommonScript 0x26E0
    End

_0119:
    GoToIfNe VAR_ROAMING_MOLTRES_STATE, 1, _0148
    GoToIfNe VAR_ROAMING_ZAPDOS_STATE, 1, _0148
    GoToIfNe VAR_ROAMING_ARTICUNO_STATE, 1, _0148
    SetVar VAR_RESULT, 1
    Return

_0148:
    SetVar VAR_RESULT, 0
    Return

_0150:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0158:
    MoveAction_ExclamationPoint
    EndMovement
