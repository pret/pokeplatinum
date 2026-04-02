#include "macros/scrcmd.inc"
#include "res/text/bank/fullmoon_island_forest.h"
#include "res/field/events/events_fullmoon_island_forest.h"


    ScriptEntry FullmoonIslandForest_Unused
    ScriptEntry FullmoonIslandForest_Cresselia
    ScriptEntryEnd

FullmoonIslandForest_Unused:
    End

FullmoonIslandForest_Cresselia:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    DrawPokemonPreview SPECIES_CRESSELIA, GENDER_FEMALE
    WaitABPress
    RemovePokemonPreview
    PlayCry SPECIES_CRESSELIA
    GetPlayerDir VAR_RESULT
    CallIfEq VAR_RESULT, DIR_NORTH, FullmoonIslandForest_CresseliaMoveAwayForLunarWing
    ReleaseObject LOCALID_CRESSELIA
    FlickerObject LOCALID_CRESSELIA, 6, 8
    LockObject LOCALID_CRESSELIA
    SetFlag FLAG_HIDE_FULLMOON_ISLAND_FOREST_CRESSELIA
    RemoveObject LOCALID_CRESSELIA
    ActivateRoamingPokemon ROAMING_SLOT_CRESSELIA
    GoToIfEq VAR_ROAMING_CRESSELIA_STATE, ROAMER_STATE_RESET, FullmoonIslandForest_ResetCresseliaRoamingState
    ClearFlag FLAG_OBTAINED_FULLMOON_ISLAND_FOREST_LUNAR_WING
    AddObject LOCALID_ITEM_LUNAR_WING
    SetFlag FLAG_OBTAINED_LUNAR_WING
    Message FullmoonIslandForest_Text_SomethingSparkling
    WaitButton
    CloseMessage
    ReleaseAll
    End

FullmoonIslandForest_ResetCresseliaRoamingState:
    SetVar VAR_ROAMING_CRESSELIA_STATE, ROAMER_STATE_ROAMING
    ReleaseAll
    End

FullmoonIslandForest_CresseliaMoveAwayForLunarWing:
    SetObjectEventPos LOCALID_ITEM_LUNAR_WING, 16, 14
    ApplyMovement LOCALID_CRESSELIA, FullmoonIslandForest_Movement_CresseliaMoveBackNorth
    WaitMovement
    Return

    .balign 4, 0
FullmoonIslandForest_Movement_CresseliaMoveBackNorth:
    LockDir
    WalkNormalNorth
    UnlockDir
    EndMovement
