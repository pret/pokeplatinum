#include "macros/scrcmd.inc"
#include "generated/hidden_locations.h"
#include "res/text/bank/pokemon_league_hall_of_fame.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0124
    WaitMovement
    ApplyMovement 1, _0134
    WaitMovement
    ScrCmd_28F 0x800C
    CallIfEq 0x800C, 0, _0111
    CallIfNe 0x800C, 0, _0119
    CloseMessage
    ApplyMovement 1, _0144
    ApplyMovement 0, _015C
    WaitMovement
    WaitTime 15, 0x800C
    GetPlayerGender 0x800C
    GoToIfEq 0x800C, GENDER_MALE, _0074
    GoToIfEq 0x800C, GENDER_FEMALE, _0080
    End

_0074:
    BufferPlayerName 0
    Message 4
    GoTo _008C

_0080:
    BufferPlayerName 0
    Message 5
    GoTo _008C

_008C:
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _012C
    ApplyMovement 1, _014C
    ApplyMovement 0, _0164
    WaitMovement
    Message 6
    CloseMessage
    SetFlag FLAG_UNLOCKED_VS_SEEKER_LVL_4
    ScrCmd_22D 2, 0x800C
    CallIfEq 0x800C, 1, _010A
    CallIfEq 0x40F4, 0, _0102
    GetPartyCount 0x800C
    ScrCmd_25A 0x800C
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    ScrCmd_260 24
    Call _0174
    ScrCmd_0B0
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0102:
    SetVar 0x40F4, 1
    Return

_010A:
    EnableHiddenLocation HIDDEN_LOCATION_SPRING_PATH
    Return

_0111:
    Message 0
    Message 2
    Return

_0119:
    Message 1
    Message 3
    Return

    .balign 4, 0
_0124:
    MoveAction_012 8
    EndMovement

    .balign 4, 0
_012C:
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_032
    MoveAction_063 2
    MoveAction_035
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_033
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_063
    MoveAction_035
    MoveAction_032
    EndMovement

    .balign 4, 0
_015C:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0164:
    MoveAction_063
    MoveAction_034
    MoveAction_032
    EndMovement

_0174:
    ClearFlag FLAG_UNK_0x01D1
    ClearFlag FLAG_UNK_0x098B
    CallIfUnset FLAG_UNK_0x00D0, _023C
    CallIfUnset FLAG_UNK_0x00D1, _0244
    CallIfUnset FLAG_UNK_0x0120, _024C
    CallIfUnset FLAG_UNK_0x011B, _0263
    CallIfUnset FLAG_AZELF_CAUGHT, PokemonLeagueHallOfFame_ClearFlagAzelfDisappeared
    CallIfUnset FLAG_UXIE_CAUGHT, PokemonLeagueHallOfFame_ClearFlagUxieDisappeared
    CallIfUnset FLAG_UNK_0x0121, _0287
    CallIfEq VAR_ROAMING_MESPRIT_STATE, 2, PokemonLeagueHallOfFame_ClearFlagMespritDisappeared
    CallIfEq 0x4058, 2, _0299
    CallIfEq 0x405E, 2, _02A5
    CallIfEq 0x405F, 2, _02AD
    CallIfEq 0x4060, 2, _02B5
    CallIfEq 0x410F, 0, _0234
    ClearFlag FLAG_UNK_0x0177
    CallIfUnset FLAG_UNK_0x00B9, _02BD
    ClearFlag FLAG_UNK_0x0186
    ClearFlag FLAG_UNK_0x0124
    SetFlag FLAG_UNK_0x02A0
    Return

_0234:
    SetVar 0x410F, 1
    Return

_023C:
    SetVar 0x40C4, 0
    Return

_0244:
    SetVar 0x40C5, 0
    Return

_024C:
    GoToIfUnset FLAG_MESPRIT_CAUGHT, _0261
    ClearFlag FLAG_UNK_0x01DD
    SetVar 0x409E, 1
_0261:
    Return

_0263:
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 0, _0279
    ClearFlag FLAG_UNK_0x0243
_0279:
    Return

PokemonLeagueHallOfFame_ClearFlagAzelfDisappeared:
    ClearFlag FLAG_AZELF_DISAPPEARED
    Return

PokemonLeagueHallOfFame_ClearFlagUxieDisappeared:
    ClearFlag FLAG_UXIE_DISAPPEARED
    Return

_0287:
    ClearFlag FLAG_UNK_0x0250
    Return

PokemonLeagueHallOfFame_ClearFlagMespritDisappeared:
    ClearFlag FLAG_MESPRIT_DISAPPEARED
    SetVar VAR_ROAMING_MESPRIT_STATE, 3
    Return

_0299:
    ClearFlag FLAG_UNK_0x024F
    SetVar 0x4058, 3
    Return

_02A5:
    SetVar 0x405E, 3
    Return

_02AD:
    SetVar 0x405F, 3
    Return

_02B5:
    SetVar 0x4060, 3
    Return

_02BD:
    ClearFlag FLAG_UNK_0x0185
    Return

    .byte 0
