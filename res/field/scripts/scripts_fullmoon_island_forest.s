#include "macros/scrcmd.inc"
#include "res/text/bank/fullmoon_island_forest.h"


    ScriptEntry _000A
    ScriptEntry _000C
    ScriptEntryEnd

_000A:
    End

_000C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    DrawPokemonPreview SPECIES_CRESSELIA, GENDER_FEMALE
    WaitABPress
    ScrCmd_209
    PlayCry SPECIES_CRESSELIA
    GetPlayerDir VAR_RESULT
    CallIfEq VAR_RESULT, 0, _007E
    ScrCmd_063 0
    ScrCmd_26A 0, 6, 8
    ScrCmd_062 0
    SetFlag FLAG_UNK_0x024F
    RemoveObject 0
    ActivateRoamingPokemon ROAMING_SLOT_CRESSELIA
    GoToIfEq VAR_ROAMING_CRESSELIA_STATE, 3, _0074
    ClearFlag FLAG_UNK_0x0452
    AddObject 1
    SetFlag FLAG_UNK_0x011F
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0074:
    SetVar VAR_ROAMING_CRESSELIA_STATE, 0
    ReleaseAll
    End

_007E:
    SetObjectEventPos 1, 16, 14
    ApplyMovement 0, _0094
    WaitMovement
    Return

    .balign 4, 0
_0094:
    LockDir
    WalkNormalNorth
    UnlockDir
    EndMovement
