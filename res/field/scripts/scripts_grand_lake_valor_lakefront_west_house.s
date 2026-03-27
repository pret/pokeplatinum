#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_valor_lakefront_west_house.h"


    ScriptEntry GrandLakeValorLakefrontWestHouse_GameDirector
    ScriptEntryEnd

GrandLakeValorLakefrontWestHouse_GameDirector:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0001, GrandLakeValorLakefrontWestHouse_StoriesAreUnique
    CheckLocalDexCompleted VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GrandLakeValorLakefrontWestHouse_ImTheGameDirector
    GoToIfUnset FLAG_LOCAL_DEX_DIPLOMA_RECEIVED, GrandLakeValorLakefrontWestHouse_ShowLocalDexDiploma
    CheckNationalDexCompleted VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GrandLakeValorLakefrontWestHouse_ShowLocalDexDiploma
    GoTo GrandLakeValorLakefrontWestHouse_ShowNationalDexDiploma

GrandLakeValorLakefrontWestHouse_ImTheGameDirector:
    Message GrandLakeValorLakefrontWestHouse_Text_ImTheGameDirector
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeValorLakefrontWestHouse_ShowLocalDexDiploma:
    CallIfUnset FLAG_LOCAL_DEX_DIPLOMA_RECEIVED, GrandLakeValorLakefrontWestHouse_IncrementScoreLocalDexDiplomaReceived
    SetFlag FLAG_LOCAL_DEX_DIPLOMA_RECEIVED
    SetFlag FLAG_UNK_0x0001
    Message GrandLakeValorLakefrontWestHouse_Text_SeenEverySinnohPokemon
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ShowDiplomaSinnoh
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

GrandLakeValorLakefrontWestHouse_ShowNationalDexDiploma:
    CallIfUnset FLAG_NATIONAL_DEX_DIPLOMA_RECEIVED, GrandLakeValorLakefrontWestHouse_IncrementScoreNationalDexDiplomaReceived
    SetFlag FLAG_NATIONAL_DEX_DIPLOMA_RECEIVED
    SetFlag FLAG_UNK_0x0001
    Message GrandLakeValorLakefrontWestHouse_Text_ObtainedEveryPokemon
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ShowDiplomaNationalDex
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

GrandLakeValorLakefrontWestHouse_StoriesAreUnique:
    Message GrandLakeValorLakefrontWestHouse_Text_StoriesAreUnique
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeValorLakefrontWestHouse_IncrementScoreLocalDexDiplomaReceived:
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_LOCAL_DEX_DIPLOMA_RECEIVED
    Return

GrandLakeValorLakefrontWestHouse_IncrementScoreNationalDexDiplomaReceived:
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_NATIONAL_DEX_DIPLOMA_RECEIVED
    Return

    .balign 4, 0
