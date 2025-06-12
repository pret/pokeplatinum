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
    ScrCmd_28F VAR_RESULT
    CallIfEq VAR_RESULT, 0, _0111
    CallIfNe VAR_RESULT, 0, _0119
    CloseMessage
    ApplyMovement 1, _0144
    ApplyMovement 0, _015C
    WaitMovement
    WaitTime 15, VAR_RESULT
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0074
    GoToIfEq VAR_RESULT, GENDER_FEMALE, _0080
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
    GetNationalDexEnabled VAR_RESULT
    CallIfEq VAR_RESULT, 1, _010A
    CallIfEq VAR_UNK_0x40F4, 0, _0102
    GetPartyCount VAR_RESULT
    ScrCmd_25A VAR_RESULT
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
    SetVar VAR_UNK_0x40F4, 1
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
    WalkNormalNorth 8
    EndMovement

    .balign 4, 0
_012C:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_0134:
    WalkOnSpotNormalNorth
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0144:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_014C:
    Delay8
    WalkOnSpotNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_015C:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0164:
    Delay8
    WalkOnSpotNormalWest
    WalkOnSpotNormalNorth
    EndMovement

_0174:
    ClearFlag FLAG_UNK_0x01D1
    ClearFlag FLAG_ALT_MUSIC_CHAMPION_ROOM
    CallIfUnset FLAG_UNK_0x00D0, _023C
    CallIfUnset FLAG_UNK_0x00D1, _0244
    CallIfUnset FLAG_UNK_0x0120, _024C
    CallIfUnset FLAG_UNK_0x011B, _0263
    CallIfUnset FLAG_AZELF_CAUGHT, PokemonLeagueHallOfFame_ClearFlagAzelfDisappeared
    CallIfUnset FLAG_UXIE_CAUGHT, PokemonLeagueHallOfFame_ClearFlagUxieDisappeared
    CallIfUnset FLAG_UNK_0x0121, _0287
    CallIfEq VAR_ROAMING_MESPRIT_STATE, 2, PokemonLeagueHallOfFame_ClearFlagMespritDisappeared
    CallIfEq VAR_ROAMING_CRESSELIA_STATE, 2, _0299
    CallIfEq VAR_ROAMING_MOLTRES_STATE, 2, _02A5
    CallIfEq VAR_ROAMING_ZAPDOS_STATE, 2, _02AD
    CallIfEq VAR_ROAMING_ARTICUNO_STATE, 2, _02B5
    CallIfEq VAR_UNK_0x410F, 0, _0234
    ClearFlag FLAG_UNK_0x0177
    CallIfUnset FLAG_UNK_0x00B9, _02BD
    ClearFlag FLAG_UNK_0x0186
    ClearFlag FLAG_UNK_0x0124
    SetFlag FLAG_UNK_0x02A0
    Return

_0234:
    SetVar VAR_UNK_0x410F, 1
    Return

_023C:
    SetVar VAR_UNK_0x40C4, 0
    Return

_0244:
    SetVar VAR_UNK_0x40C5, 0
    Return

_024C:
    GoToIfUnset FLAG_MESPRIT_CAUGHT, _0261
    ClearFlag FLAG_UNK_0x01DD
    SetVar VAR_UNK_0x409E, 1
_0261:
    Return

_0263:
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0279
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
    SetVar VAR_ROAMING_CRESSELIA_STATE, 3
    Return

_02A5:
    SetVar VAR_ROAMING_MOLTRES_STATE, 3
    Return

_02AD:
    SetVar VAR_ROAMING_ZAPDOS_STATE, 3
    Return

_02B5:
    SetVar VAR_ROAMING_ARTICUNO_STATE, 3
    Return

_02BD:
    ClearFlag FLAG_UNK_0x0185
    Return

    .byte 0
