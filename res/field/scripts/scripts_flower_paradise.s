#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/flower_paradise.h"
#include "res/field/events/events_flower_paradise.h"


    ScriptEntry FlowerParadise_OnTransition
    ScriptEntry FlowerParadise_OnLoad
    ScriptEntry FlowerParadise_Shaymin
    ScriptEntryEnd

FlowerParadise_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_FLOWER_PARADISE
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, FlowerParadise_HideShaymin
    CheckItem ITEM_OAKS_LETTER, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, FlowerParadise_HideShaymin
    CheckDistributionEvent DISTRIBUTION_EVENT_SHAYMIN, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, FlowerParadise_HideShaymin
    GoToIfSet FLAG_CAUGHT_SHAYMIN, FlowerParadise_HideShaymin
    ClearFlag FLAG_HIDE_FLOWER_PARADISE_SHAYMIN
    End

FlowerParadise_HideShaymin:
    SetFlag FLAG_HIDE_FLOWER_PARADISE_SHAYMIN
    End

FlowerParadise_OnLoad:
    GoToIfSet FLAG_MAP_LOCAL, FlowerParadise_RemoveShaymin
    End

FlowerParadise_RemoveShaymin:
    SetFlag FLAG_HIDE_FLOWER_PARADISE_SHAYMIN
    RemoveObject LOCALID_SHAYMIN
    ClearFlag FLAG_MAP_LOCAL
    End

FlowerParadise_Shaymin:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    PlayCry SPECIES_SHAYMIN
    Message FlowerParadise_Text_KyuuUuhn
    CloseMessage
    SetFlag FLAG_MAP_LOCAL
    StartFatefulEncounter SPECIES_SHAYMIN, 30
    ClearFlag FLAG_MAP_LOCAL
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, FlowerParadise_BlackOut
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, FlowerParadise_ShayminDisappearedAmongTheFlowers
    SetFlag FLAG_CAUGHT_SHAYMIN
    ReleaseAll
    End

FlowerParadise_ShayminDisappearedAmongTheFlowers:
    Message FlowerParadise_Text_ShayminDisappearedAmongTheFlowers
    WaitButton
    CloseMessage
    ClearFlag FLAG_HIDE_FLOWER_PARADISE_SHAYMIN
    ReleaseAll
    End

FlowerParadise_BlackOut:
    BlackOutFromBattle
    ClearFlag FLAG_HIDE_FLOWER_PARADISE_SHAYMIN
    ReleaseAll
    End

    .balign 4, 0
