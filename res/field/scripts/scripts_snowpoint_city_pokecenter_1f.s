#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_city_pokecenter_1f.h"


    ScriptEntry _0016
    ScriptEntry _0022
    ScriptEntry _0035
    ScriptEntry _0048
    ScriptEntry _0067
    ScriptEntryEnd

_0016:
    Common_CallPokecenterNurse 0
    End

_0022:
    NPCMessage 2
    End

_0035:
    NPCMessage 3
    End

_0048:
    PokemonCryAndMessage SPECIES_PSYDUCK, 4
    End

_0067:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_ICICLE, _00EC
    GetPlayerDir VAR_0x8000
    CallIfEq VAR_0x8000, 0, _00C8
    CallIfEq VAR_0x8000, 1, _00C8
    CallIfEq VAR_0x8000, 2, _00D4
    CallIfEq VAR_0x8000, 3, _00E0
    BufferPlayerName 0
    Message 0
    WaitButton
    CloseMessage
    ReleaseAll
    End

_00C8:
    ApplyMovement 4, _00FC
    WaitMovement
    Return

_00D4:
    ApplyMovement 4, _0104
    WaitMovement
    Return

_00E0:
    ApplyMovement 4, _010C
    WaitMovement
    Return

_00EC:
    BufferPlayerName 0
    Message 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00FC:
    WalkOnSpotFasterSouth 2
    EndMovement

    .balign 4, 0
_0104:
    WalkOnSpotFasterEast 2
    EndMovement

    .balign 4, 0
_010C:
    WalkOnSpotFasterWest 2
    EndMovement
