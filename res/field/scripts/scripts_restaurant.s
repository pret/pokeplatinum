#include "macros/scrcmd.inc"
#include "res/text/bank/restaurant.h"
#include "res/field/events/events_restaurant.h"


    ScriptEntry Restaurant_Waiter
    ScriptEntry Restaurant_OnTransition
    ScriptEntry Restaurant_OnFrame_Closed
    ScriptEntry Restaurant_ArtistIsmael
    ScriptEntry Restaurant_BeautyHarley
    ScriptEntry Restaurant_RichBoyRoman
    ScriptEntry Restaurant_LadyKylie
    ScriptEntry Restaurant_GentlemanLeonardo
    ScriptEntry Restaurant_SocialiteRebecca
    ScriptEntry Restaurant_CollectorEugene
    ScriptEntry Restaurant_AromaLadyAlison
    ScriptEntry Restaurant_SchoolKidEsteban
    ScriptEntry Restaurant_PokefanMeredith
    ScriptEntry Restaurant_VeteranEmanuel
    ScriptEntry Restaurant_LassBlythe
    ScriptEntry Restaurant_CameramanDarryl
    ScriptEntry Restaurant_ReporterValerie
    ScriptEntry Restaurant_PIKendrick
    ScriptEntry Restaurant_BeautyGabriella
    ScriptEntry Restaurant_ScientistEmilio
    ScriptEntry Restaurant_BreederKaylee
    ScriptEntryEnd
    End

Restaurant_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_VALOR_LAKEFRONT_RESTAURANT
    GetHour VAR_MAP_LOCAL_0
    GoToIfLt VAR_MAP_LOCAL_0, 9, Restaurant_SetClosed
    GoToIfGe VAR_MAP_LOCAL_0, 23, Restaurant_SetClosed
    GoToIfUnset FLAG_SET_RESTAURANT_TRAINERS, Restaurant_ResetTrainers
    End

Restaurant_SetClosed:
    SetFlag FLAG_HIDE_RESTAURANT_ISMAEL_HARLEY
    SetFlag FLAG_HIDE_RESTAURANT_ROMAN_KYLIE
    SetFlag FLAG_HIDE_RESTAURANT_LEONARDO_REBECCA
    SetFlag FLAG_HIDE_RESTAURANT_EUGENE_ALISON
    SetFlag FLAG_HIDE_RESTAURANT_ESTEBAN_MEREDITH
    SetFlag FLAG_HIDE_RESTAURANT_EMANUEL_BLYTHE
    SetFlag FLAG_HIDE_RESTAURANT_DARRYL_VALERIE
    SetFlag FLAG_HIDE_RESTAURANT_KENDRICK_GABRIELLA
    SetFlag FLAG_HIDE_RESTAURANT_EMILIO_KAYLEE
    SetVar VAR_RESTAURANT_STATE, 1
    End

Restaurant_ResetTrainers:
    SetFlag FLAG_HIDE_RESTAURANT_ISMAEL_HARLEY
    SetFlag FLAG_HIDE_RESTAURANT_ROMAN_KYLIE
    SetFlag FLAG_HIDE_RESTAURANT_LEONARDO_REBECCA
    SetFlag FLAG_HIDE_RESTAURANT_EUGENE_ALISON
    SetFlag FLAG_HIDE_RESTAURANT_ESTEBAN_MEREDITH
    SetFlag FLAG_HIDE_RESTAURANT_EMANUEL_BLYTHE
    SetFlag FLAG_HIDE_RESTAURANT_DARRYL_VALERIE
    SetFlag FLAG_HIDE_RESTAURANT_KENDRICK_GABRIELLA
    SetFlag FLAG_HIDE_RESTAURANT_EMILIO_KAYLEE
    ClearTrainerFlag TRAINER_ARTIST_ISMAEL
    ClearTrainerFlag TRAINER_BEAUTY_HARLEY
    ClearTrainerFlag TRAINER_RICH_BOY_ROMAN
    ClearTrainerFlag TRAINER_LADY_KYLIE
    ClearTrainerFlag TRAINER_GENTLEMAN_LEONARDO
    ClearTrainerFlag TRAINER_SOCIALITE_REBECCA
    ClearTrainerFlag TRAINER_COLLECTOR_EUGENE
    ClearTrainerFlag TRAINER_AROMA_LADY_ALISON
    ClearTrainerFlag TRAINER_SCHOOL_KID_ESTEBAN
    ClearTrainerFlag TRAINER_POKEFAN_MEREDITH
    ClearTrainerFlag TRAINER_VETERAN_EMANUEL
    ClearTrainerFlag TRAINER_LASS_BLYTHE
    ClearTrainerFlag TRAINER_CAMERAMAN_DARRYL
    ClearTrainerFlag TRAINER_REPORTER_VALERIE
    ClearTrainerFlag TRAINER_PI_KENDRICK
    ClearTrainerFlag TRAINER_BEAUTY_GABRIELLA
    ClearTrainerFlag TRAINER_SCIENTIST_EMILIO
    ClearTrainerFlag TRAINER_BREEDER_KAYLEE
    SetVar VAR_RESTAURANT_STATE, 0
    GetRandom VAR_MAP_LOCAL_1, 1
    SetVar VAR_MAP_LOCAL_0, 5
    SetVar VAR_MAP_LOCAL_A, 10000
Restaurant_InitTrainers:
    GetRandom2 VAR_MAP_LOCAL_1, 9
    CallIfEq VAR_MAP_LOCAL_1, 0, Restaurant_InitTrainersIsmaelHarley
    CallIfEq VAR_MAP_LOCAL_1, 1, Restaurant_InitTrainersRomanKylie
    CallIfEq VAR_MAP_LOCAL_1, 2, Restaurant_InitTrainersLeonardoRebecca
    CallIfEq VAR_MAP_LOCAL_1, 3, Restaurant_InitTrainersEugeneAlison
    CallIfEq VAR_MAP_LOCAL_1, 4, Restaurant_InitTrainersEstebanMeredith
    CallIfEq VAR_MAP_LOCAL_1, 5, Restaurant_InitTrainersEmanuelBlythe
    CallIfEq VAR_MAP_LOCAL_1, 6, Restaurant_InitTrainersDarrylValerie
    CallIfEq VAR_MAP_LOCAL_1, 7, Restaurant_InitTrainersKendrickGabriella
    CallIfEq VAR_MAP_LOCAL_1, 8, Restaurant_InitTrainersEmilioKaylee
    SubVar VAR_MAP_LOCAL_A, 1
    GoToIfEq VAR_MAP_LOCAL_A, 0, Restaurant_FinishedInitTrainers
    GoToIfNe VAR_MAP_LOCAL_0, 0, Restaurant_InitTrainers
Restaurant_FinishedInitTrainers:
    SetFlag FLAG_SET_RESTAURANT_TRAINERS
    End

Restaurant_InitTrainersIsmaelHarley:
    GoToIfUnset FLAG_HIDE_RESTAURANT_ISMAEL_HARLEY, Restaurant_InitTrainersReturn
    ClearFlag FLAG_HIDE_RESTAURANT_ISMAEL_HARLEY
    GetRandom2 VAR_RESTAURANT_RANDOM_MESSAGE_ISMAEL_HARLEY, 3
    SubVar VAR_MAP_LOCAL_0, 1
    Return

Restaurant_InitTrainersRomanKylie:
    GoToIfUnset FLAG_HIDE_RESTAURANT_ROMAN_KYLIE, Restaurant_InitTrainersReturn
    ClearFlag FLAG_HIDE_RESTAURANT_ROMAN_KYLIE
    GetRandom2 VAR_RESTAURANT_RANDOM_MESSAGE_ROMAN_KYLIE, 3
    SubVar VAR_MAP_LOCAL_0, 1
    Return

Restaurant_InitTrainersLeonardoRebecca:
    GoToIfUnset FLAG_HIDE_RESTAURANT_LEONARDO_REBECCA, Restaurant_InitTrainersReturn
    ClearFlag FLAG_HIDE_RESTAURANT_LEONARDO_REBECCA
    GetRandom2 VAR_RESTAURANT_RANDOM_MESSAGE_LEONARDO_REBECCA, 3
    SubVar VAR_MAP_LOCAL_0, 1
    Return

Restaurant_InitTrainersEugeneAlison:
    GoToIfUnset FLAG_HIDE_RESTAURANT_EUGENE_ALISON, Restaurant_InitTrainersReturn
    ClearFlag FLAG_HIDE_RESTAURANT_EUGENE_ALISON
    GetRandom2 VAR_RESTAURANT_RANDOM_MESSAGE_EUGENE_ALISON, 3
    SubVar VAR_MAP_LOCAL_0, 1
    Return

Restaurant_InitTrainersEstebanMeredith:
    GoToIfUnset FLAG_HIDE_RESTAURANT_ESTEBAN_MEREDITH, Restaurant_InitTrainersReturn
    ClearFlag FLAG_HIDE_RESTAURANT_ESTEBAN_MEREDITH
    GetRandom2 VAR_RESTAURANT_RANDOM_MESSAGE_ESTEBAN_MEREDITH, 3
    SubVar VAR_MAP_LOCAL_0, 1
    Return

Restaurant_InitTrainersEmanuelBlythe:
    GoToIfUnset FLAG_HIDE_RESTAURANT_EMANUEL_BLYTHE, Restaurant_InitTrainersReturn
    ClearFlag FLAG_HIDE_RESTAURANT_EMANUEL_BLYTHE
    GetRandom2 VAR_RESTAURANT_RANDOM_MESSAGE_EMANUEL_BLYTHE, 3
    SubVar VAR_MAP_LOCAL_0, 1
    Return

Restaurant_InitTrainersDarrylValerie:
    GoToIfUnset FLAG_HIDE_RESTAURANT_DARRYL_VALERIE, Restaurant_InitTrainersReturn
    ClearFlag FLAG_HIDE_RESTAURANT_DARRYL_VALERIE
    GetRandom2 VAR_RESTAURANT_RANDOM_MESSAGE_DARRYL_VALERIE, 3
    SubVar VAR_MAP_LOCAL_0, 1
    Return

Restaurant_InitTrainersKendrickGabriella:
    GoToIfUnset FLAG_HIDE_RESTAURANT_KENDRICK_GABRIELLA, Restaurant_InitTrainersReturn
    ClearFlag FLAG_HIDE_RESTAURANT_KENDRICK_GABRIELLA
    GetRandom2 VAR_RESTAURANT_RANDOM_MESSAGE_KENDRICK_GABRIELLA, 3
    SubVar VAR_MAP_LOCAL_0, 1
    Return

Restaurant_InitTrainersEmilioKaylee:
    GoToIfUnset FLAG_HIDE_RESTAURANT_EMILIO_KAYLEE, Restaurant_InitTrainersReturn
    ClearFlag FLAG_HIDE_RESTAURANT_EMILIO_KAYLEE
    GetRandom2 VAR_RESTAURANT_RANDOM_MESSAGE_EMILIO_KAYLEE, 3
    SubVar VAR_MAP_LOCAL_0, 1
    Return

Restaurant_InitTrainersReturn:
    Return

Restaurant_OnFrame_Closed:
    LockAll
    ApplyMovement LOCALID_PLAYER, Restaurant_Movement_FaceEast
    WaitMovement
    WaitTime 20, VAR_RESULT
    Message Restaurant_Text_WeAreNowClosed
    CloseMessage
    ReleaseAll
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_VALOR_LAKEFRONT, 0, 706, 791, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    End

Restaurant_Waiter:
    NPCMessage Restaurant_Text_PartakeInBattles
    End

Restaurant_ArtistIsmael:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_ARTIST_ISMAEL
    GoToIfDefeated TRAINER_ARTIST_ISMAEL, Restaurant_IsmaelDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_IsmaelNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ISMAEL_HARLEY
    GoToIfEq VAR_0x8008, 0, Restaurant_IsmaelAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_IsmaelAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_IsmaelAskBattle2
    ReleaseAll
    End

Restaurant_IsmaelAskBattle0:
    Message Restaurant_Text_IsmaelIntro0
    FacePlayer
    Message Restaurant_Text_IsmaelAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_IsmaelBattle
    GoTo Restaurant_IsmaelDeclineBattle

Restaurant_IsmaelAskBattle1:
    Message Restaurant_Text_IsmaelIntro1
    FacePlayer
    Message Restaurant_Text_IsmaelAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_IsmaelBattle
    GoTo Restaurant_IsmaelDeclineBattle

Restaurant_IsmaelAskBattle2:
    Message Restaurant_Text_IsmaelIntro2
    FacePlayer
    Message Restaurant_Text_IsmaelAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_IsmaelBattle
    GoTo Restaurant_IsmaelDeclineBattle

Restaurant_IsmaelBattle:
    CloseMessage
    StartTrainerBattle TRAINER_ARTIST_ISMAEL, TRAINER_BEAUTY_HARLEY
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_ARTIST_ISMAEL
    SetTrainerFlag TRAINER_BEAUTY_HARLEY
    Call Restaurant_IsmaelFaceEast
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ISMAEL_HARLEY
    GoToIfEq VAR_0x8008, 0, Restaurant_IsmaelPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_IsmaelPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_IsmaelPostBattle2
    ReleaseAll
    End

Restaurant_IsmaelPostBattle0:
    Message Restaurant_Text_IsmaelDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_IsmaelPostBattle1:
    Message Restaurant_Text_IsmaelDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_IsmaelPostBattle2:
    Message Restaurant_Text_IsmaelDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_IsmaelDeclineBattle:
    CloseMessage
    Call Restaurant_IsmaelFaceEast
    ReleaseAll
    End

Restaurant_IsmaelDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ISMAEL_HARLEY
    GoToIfEq VAR_0x8008, 0, Restaurant_IsmaelDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_IsmaelDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_IsmaelDefeated2
    End

Restaurant_IsmaelDefeated0:
    Message Restaurant_Text_IsmaelDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_IsmaelDefeated1:
    Message Restaurant_Text_IsmaelDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_IsmaelDefeated2:
    Message Restaurant_Text_IsmaelDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_IsmaelNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_IsmaelNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_IsmaelFaceEast
    ReleaseAll
    End

Restaurant_IsmaelFaceEast:
    ApplyMovement LOCALID_ARTIST_ISMAEL, Restaurant_Movement_FaceEast
    WaitMovement
    Return

Restaurant_BeautyHarley:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_BEAUTY_HARLEY
    GoToIfDefeated TRAINER_BEAUTY_HARLEY, Restaurant_HarleyDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_HarleyNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ISMAEL_HARLEY
    GoToIfEq VAR_0x8008, 0, Restaurant_HarleyAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_HarleyAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_HarleyAskBattle2
    ReleaseAll
    End

Restaurant_HarleyAskBattle0:
    Message Restaurant_Text_HarleyIntro0
    FacePlayer
    Message Restaurant_Text_HarleyAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_HarleyBattle
    GoTo Restaurant_HarleyDeclineBattle

Restaurant_HarleyAskBattle1:
    Message Restaurant_Text_HarleyIntro1
    FacePlayer
    Message Restaurant_Text_HarleyAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_HarleyBattle
    GoTo Restaurant_HarleyDeclineBattle

Restaurant_HarleyAskBattle2:
    Message Restaurant_Text_HarleyIntro2
    FacePlayer
    Message Restaurant_Text_HarleyAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_HarleyBattle
    GoTo Restaurant_HarleyDeclineBattle

Restaurant_HarleyBattle:
    CloseMessage
    StartTrainerBattle TRAINER_ARTIST_ISMAEL, TRAINER_BEAUTY_HARLEY
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_ARTIST_ISMAEL
    SetTrainerFlag TRAINER_BEAUTY_HARLEY
    Call Restaurant_HarleyFaceWest
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ISMAEL_HARLEY
    GoToIfEq VAR_0x8008, 0, Restaurant_HarleyPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_HarleyPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_HarleyPostBattle2
    ReleaseAll
    End

Restaurant_HarleyPostBattle0:
    Message Restaurant_Text_HarleyDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_HarleyPostBattle1:
    Message Restaurant_Text_HarleyDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_HarleyPostBattle2:
    Message Restaurant_Text_HarleyDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_HarleyDeclineBattle:
    CloseMessage
    Call Restaurant_HarleyFaceWest
    ReleaseAll
    End

Restaurant_HarleyDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ISMAEL_HARLEY
    GoToIfEq VAR_0x8008, 0, Restaurant_HarleyDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_HarleyDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_HarleyDefeated2
    End

Restaurant_HarleyDefeated0:
    Message Restaurant_Text_HarleyDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_HarleyDefeated1:
    Message Restaurant_Text_HarleyDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_HarleyDefeated2:
    Message Restaurant_Text_HarleyDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_HarleyNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_HarleyNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_HarleyFaceWest
    ReleaseAll
    End

Restaurant_HarleyFaceWest:
    ApplyMovement LOCALID_BEAUTY_HARLEY, Restaurant_Movement_FaceWest
    WaitMovement
    Return

Restaurant_RichBoyRoman:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_RICH_BOY_ROMAN
    GoToIfDefeated TRAINER_RICH_BOY_ROMAN, Restaurant_RomanDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_RomanNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ROMAN_KYLIE
    GoToIfEq VAR_0x8008, 0, Restaurant_RomanAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_RomanAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_RomanAskBattle2
    ReleaseAll
    End

Restaurant_RomanAskBattle0:
    Message Restaurant_Text_RomanIntro0
    FacePlayer
    Message Restaurant_Text_RomanAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_RomanBattle
    GoTo Restaurant_RomanDeclineBattle

Restaurant_RomanAskBattle1:
    Message Restaurant_Text_RomanIntro1
    FacePlayer
    Message Restaurant_Text_RomanAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_RomanBattle
    GoTo Restaurant_RomanDeclineBattle

Restaurant_RomanAskBattle2:
    Message Restaurant_Text_RomanIntro2
    FacePlayer
    Message Restaurant_Text_RomanAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_RomanBattle
    GoTo Restaurant_RomanDeclineBattle

Restaurant_RomanBattle:
    CloseMessage
    StartTrainerBattle TRAINER_RICH_BOY_ROMAN, TRAINER_LADY_KYLIE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_RICH_BOY_ROMAN
    SetTrainerFlag TRAINER_LADY_KYLIE
    Call Restaurant_RomanFaceEast
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ROMAN_KYLIE
    GoToIfEq VAR_0x8008, 0, Restaurant_RomanPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_RomanPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_RomanPostBattle2
    ReleaseAll
    End

Restaurant_RomanPostBattle0:
    Message Restaurant_Text_RomanDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_RomanPostBattle1:
    Message Restaurant_Text_RomanDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_RomanPostBattle2:
    Message Restaurant_Text_RomanDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_RomanDeclineBattle:
    CloseMessage
    Call Restaurant_RomanFaceEast
    ReleaseAll
    End

Restaurant_RomanDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ROMAN_KYLIE
    GoToIfEq VAR_0x8008, 0, Restaurant_RomanDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_RomanDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_RomanDefeated2
    End

Restaurant_RomanDefeated0:
    Message Restaurant_Text_RomanDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_RomanDefeated1:
    Message Restaurant_Text_RomanDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_RomanDefeated2:
    Message Restaurant_Text_RomanDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_RomanNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_RomanNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_RomanFaceEast
    ReleaseAll
    End

Restaurant_RomanFaceEast:
    ApplyMovement LOCALID_RICH_BOY_ROMAN, Restaurant_Movement_FaceEast
    WaitMovement
    Return

Restaurant_LadyKylie:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_LADY_KYLIE
    GoToIfDefeated TRAINER_LADY_KYLIE, Restaurant_KylieDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_KylieNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ROMAN_KYLIE
    GoToIfEq VAR_0x8008, 0, Restaurant_KylieAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_KylieAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_KylieAskBattle2
    ReleaseAll
    End

Restaurant_KylieAskBattle0:
    Message Restaurant_Text_KylieIntro0
    FacePlayer
    Message Restaurant_Text_KylieAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_KylieBattle
    GoTo Restaurant_KylieDeclineBattle

Restaurant_KylieAskBattle1:
    Message Restaurant_Text_KylieIntro1
    FacePlayer
    Message Restaurant_Text_KylieAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_KylieBattle
    GoTo Restaurant_KylieDeclineBattle

Restaurant_KylieAskBattle2:
    Message Restaurant_Text_KylieIntro2
    FacePlayer
    Message Restaurant_Text_KylieAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_KylieBattle
    GoTo Restaurant_KylieDeclineBattle

Restaurant_KylieBattle:
    CloseMessage
    StartTrainerBattle TRAINER_RICH_BOY_ROMAN, TRAINER_LADY_KYLIE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_RICH_BOY_ROMAN
    SetTrainerFlag TRAINER_LADY_KYLIE
    Call Restaurant_KylieFaceWest
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ROMAN_KYLIE
    GoToIfEq VAR_0x8008, 0, Restaurant_KyliePostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_KyliePostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_KyliePostBattle2
    ReleaseAll
    End

Restaurant_KyliePostBattle0:
    Message Restaurant_Text_KylieDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KyliePostBattle1:
    Message Restaurant_Text_KylieDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KyliePostBattle2:
    Message Restaurant_Text_KylieDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KylieDeclineBattle:
    CloseMessage
    Call Restaurant_KylieFaceWest
    ReleaseAll
    End

Restaurant_KylieDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ROMAN_KYLIE
    GoToIfEq VAR_0x8008, 0, Restaurant_KylieDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_KylieDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_KylieDefeated2
    End

Restaurant_KylieDefeated0:
    Message Restaurant_Text_KylieDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KylieDefeated1:
    Message Restaurant_Text_KylieDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KylieDefeated2:
    Message Restaurant_Text_KylieDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KylieNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_KylieNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_KylieFaceWest
    ReleaseAll
    End

Restaurant_KylieFaceWest:
    ApplyMovement LOCALID_LADY_KYLIE, Restaurant_Movement_FaceWest
    WaitMovement
    Return

Restaurant_GentlemanLeonardo:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_GENTLEMAN_LEONARDO
    GoToIfDefeated TRAINER_GENTLEMAN_LEONARDO, Restaurant_LeonardoDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_LeonardoNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_LEONARDO_REBECCA
    GoToIfEq VAR_0x8008, 0, Restaurant_LeonardoAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_LeonardoAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_LeonardoAskBattle2
    ReleaseAll
    End

Restaurant_LeonardoAskBattle0:
    Message Restaurant_Text_LeonardoIntro0
    FacePlayer
    Message Restaurant_Text_LeonardoAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_LeonardoBattle
    GoTo Restaurant_LeonardoDeclineBattle

Restaurant_LeonardoAskBattle1:
    Message Restaurant_Text_LeonardoIntro1
    FacePlayer
    Message Restaurant_Text_LeonardoAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_LeonardoBattle
    GoTo Restaurant_LeonardoDeclineBattle

Restaurant_LeonardoAskBattle2:
    Message Restaurant_Text_LeonardoIntro2
    FacePlayer
    Message Restaurant_Text_LeonardoAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_LeonardoBattle
    GoTo Restaurant_LeonardoDeclineBattle

Restaurant_LeonardoBattle:
    CloseMessage
    StartTrainerBattle TRAINER_GENTLEMAN_LEONARDO, TRAINER_SOCIALITE_REBECCA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_GENTLEMAN_LEONARDO
    SetTrainerFlag TRAINER_SOCIALITE_REBECCA
    Call Restaurant_LeonardoFaceEast
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_LEONARDO_REBECCA
    GoToIfEq VAR_0x8008, 0, Restaurant_LeonardoPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_LeonardoPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_LeonardoPostBattle2
    ReleaseAll
    End

Restaurant_LeonardoPostBattle0:
    Message Restaurant_Text_LeonardoDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_LeonardoPostBattle1:
    Message Restaurant_Text_LeonardoDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_LeonardoPostBattle2:
    Message Restaurant_Text_LeonardoDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_LeonardoDeclineBattle:
    CloseMessage
    Call Restaurant_LeonardoFaceEast
    ReleaseAll
    End

Restaurant_LeonardoDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_LEONARDO_REBECCA
    GoToIfEq VAR_0x8008, 0, Restaurant_LeonardoDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_LeonardoDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_LeonardoDefeated2
    End

Restaurant_LeonardoDefeated0:
    Message Restaurant_Text_LeonardoDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_LeonardoDefeated1:
    Message Restaurant_Text_LeonardoDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_LeonardoDefeated2:
    Message Restaurant_Text_LeonardoDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_LeonardoNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_LeonardoNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_LeonardoFaceEast
    ReleaseAll
    End

Restaurant_LeonardoFaceEast:
    ApplyMovement LOCALID_GENTLEMAN_LEONARDO, Restaurant_Movement_FaceEast
    WaitMovement
    Return

Restaurant_SocialiteRebecca:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_SOCIALITE_REBECCA
    GoToIfDefeated TRAINER_SOCIALITE_REBECCA, Restaurant_RebeccaDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_RebeccaNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_LEONARDO_REBECCA
    GoToIfEq VAR_0x8008, 0, Restaurant_RebeccaAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_RebeccaAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_RebeccaAskBattle2
    ReleaseAll
    End

Restaurant_RebeccaAskBattle0:
    Message Restaurant_Text_RebeccaIntro0
    FacePlayer
    Message Restaurant_Text_RebeccaAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_RebeccaBattle
    GoTo Restaurant_RebeccaDeclineBattle

Restaurant_RebeccaAskBattle1:
    Message Restaurant_Text_RebeccaIntro1
    FacePlayer
    Message Restaurant_Text_RebeccaAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_RebeccaBattle
    GoTo Restaurant_RebeccaDeclineBattle

Restaurant_RebeccaAskBattle2:
    Message Restaurant_Text_RebeccaIntro2
    FacePlayer
    Message Restaurant_Text_RebeccaAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_RebeccaBattle
    GoTo Restaurant_RebeccaDeclineBattle

Restaurant_RebeccaBattle:
    CloseMessage
    StartTrainerBattle TRAINER_GENTLEMAN_LEONARDO, TRAINER_SOCIALITE_REBECCA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_GENTLEMAN_LEONARDO
    SetTrainerFlag TRAINER_SOCIALITE_REBECCA
    Call Restaurant_RebeccaFaceWest
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_LEONARDO_REBECCA
    GoToIfEq VAR_0x8008, 0, Restaurant_RebeccaPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_RebeccaPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_RebeccaPostBattle2
    ReleaseAll
    End

Restaurant_RebeccaPostBattle0:
    Message Restaurant_Text_RebeccaDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_RebeccaPostBattle1:
    Message Restaurant_Text_RebeccaDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_RebeccaPostBattle2:
    Message Restaurant_Text_RebeccaDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_RebeccaDeclineBattle:
    CloseMessage
    Call Restaurant_RebeccaFaceWest
    ReleaseAll
    End

Restaurant_RebeccaDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_LEONARDO_REBECCA
    GoToIfEq VAR_0x8008, 0, Restaurant_RebeccaDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_RebeccaDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_RebeccaDefeated2
    End

Restaurant_RebeccaDefeated0:
    Message Restaurant_Text_RebeccaDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_RebeccaDefeated1:
    Message Restaurant_Text_RebeccaDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_RebeccaDefeated2:
    Message Restaurant_Text_RebeccaDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_RebeccaNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_RebeccaNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_RebeccaFaceWest
    ReleaseAll
    End

Restaurant_RebeccaFaceWest:
    ApplyMovement LOCALID_SOCIALITE_REBECCA, Restaurant_Movement_FaceWest
    WaitMovement
    Return

Restaurant_CollectorEugene:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_COLLECTOR_EUGENE
    GoToIfDefeated TRAINER_COLLECTOR_EUGENE, Restaurant_EugeneDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_EugeneNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EUGENE_ALISON
    GoToIfEq VAR_0x8008, 0, Restaurant_EugeneAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_EugeneAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_EugeneAskBattle2
    ReleaseAll
    End

Restaurant_EugeneAskBattle0:
    Message Restaurant_Text_EugeneIntro0
    FacePlayer
    Message Restaurant_Text_EugeneAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_EugeneBattle
    GoTo Restaurant_EugeneDeclineBattle

Restaurant_EugeneAskBattle1:
    Message Restaurant_Text_EugeneIntro1
    FacePlayer
    Message Restaurant_Text_EugeneAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_EugeneBattle
    GoTo Restaurant_EugeneDeclineBattle

Restaurant_EugeneAskBattle2:
    Message Restaurant_Text_EugeneIntro2
    FacePlayer
    Message Restaurant_Text_EugeneAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_EugeneBattle
    GoTo Restaurant_EugeneDeclineBattle

Restaurant_EugeneBattle:
    CloseMessage
    StartTrainerBattle TRAINER_COLLECTOR_EUGENE, TRAINER_AROMA_LADY_ALISON
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_COLLECTOR_EUGENE
    SetTrainerFlag TRAINER_AROMA_LADY_ALISON
    Call Restaurant_EugeneFaceEast
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EUGENE_ALISON
    GoToIfEq VAR_0x8008, 0, Restaurant_EugenePostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_EugenePostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_EugenePostBattle2
    ReleaseAll
    End

Restaurant_EugenePostBattle0:
    Message Restaurant_Text_EugeneDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EugenePostBattle1:
    Message Restaurant_Text_EugeneDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EugenePostBattle2:
    Message Restaurant_Text_EugeneDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EugeneDeclineBattle:
    CloseMessage
    Call Restaurant_EugeneFaceEast
    ReleaseAll
    End

Restaurant_EugeneDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EUGENE_ALISON
    GoToIfEq VAR_0x8008, 0, Restaurant_EugeneDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_EugeneDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_EugeneDefeated2
    End

Restaurant_EugeneDefeated0:
    Message Restaurant_Text_EugeneDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EugeneDefeated1:
    Message Restaurant_Text_EugeneDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EugeneDefeated2:
    Message Restaurant_Text_EugeneDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EugeneNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_EugeneNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_EugeneFaceEast
    ReleaseAll
    End

Restaurant_EugeneFaceEast:
    ApplyMovement LOCALID_COLLECTOR_EUGINE, Restaurant_Movement_FaceEast
    WaitMovement
    Return

Restaurant_AromaLadyAlison:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_AROMA_LADY_ALISON
    GoToIfDefeated TRAINER_AROMA_LADY_ALISON, Restaurant_AlisonDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_AlisonNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EUGENE_ALISON
    GoToIfEq VAR_0x8008, 0, Restaurant_AlisonAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_AlisonAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_AlisonAskBattle2
    ReleaseAll
    End

Restaurant_AlisonAskBattle0:
    Message Restaurant_Text_AlisonIntro0
    FacePlayer
    Message Restaurant_Text_AlisonAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_AlisonBattle
    GoTo Restaurant_AlisonDeclineBattle

Restaurant_AlisonAskBattle1:
    Message Restaurant_Text_AlisonIntro1
    FacePlayer
    Message Restaurant_Text_AlisonAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_AlisonBattle
    GoTo Restaurant_AlisonDeclineBattle

Restaurant_AlisonAskBattle2:
    Message Restaurant_Text_AlisonIntro2
    FacePlayer
    Message Restaurant_Text_AlisonAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_AlisonBattle
    GoTo Restaurant_AlisonDeclineBattle

Restaurant_AlisonBattle:
    CloseMessage
    StartTrainerBattle TRAINER_COLLECTOR_EUGENE, TRAINER_AROMA_LADY_ALISON
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_COLLECTOR_EUGENE
    SetTrainerFlag TRAINER_AROMA_LADY_ALISON
    Call Restaurant_AlisonFaceWest
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EUGENE_ALISON
    GoToIfEq VAR_0x8008, 0, Restaurant_AlisonPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_AlisonPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_AlisonPostBattle2
    ReleaseAll
    End

Restaurant_AlisonPostBattle0:
    Message Restaurant_Text_AlisonDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_AlisonPostBattle1:
    Message Restaurant_Text_AlisonDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_AlisonPostBattle2:
    Message Restaurant_Text_AlisonDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_AlisonDeclineBattle:
    CloseMessage
    Call Restaurant_AlisonFaceWest
    ReleaseAll
    End

Restaurant_AlisonDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EUGENE_ALISON
    GoToIfEq VAR_0x8008, 0, Restaurant_AlisonDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_AlisonDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_AlisonDefeated2
    End

Restaurant_AlisonDefeated0:
    Message Restaurant_Text_AlisonDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_AlisonDefeated1:
    Message Restaurant_Text_AlisonDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_AlisonDefeated2:
    Message Restaurant_Text_AlisonDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_AlisonNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_AlisonNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_AlisonFaceWest
    ReleaseAll
    End

Restaurant_AlisonFaceWest:
    ApplyMovement LOCALID_AROMA_LADY_ALISON, Restaurant_Movement_FaceWest
    WaitMovement
    Return

Restaurant_SchoolKidEsteban:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_SCHOOL_KID_ESTEBAN
    GoToIfDefeated TRAINER_SCHOOL_KID_ESTEBAN, Restaurant_EstebanDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_EstebanNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ESTEBAN_MEREDITH
    GoToIfEq VAR_0x8008, 0, Restaurant_EstebanAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_EstebanAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_EstebanAskBattle2
    ReleaseAll
    End

Restaurant_EstebanAskBattle0:
    Message Restaurant_Text_EstebanIntro0
    FacePlayer
    Message Restaurant_Text_EstebanAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_EstebanBattle
    GoTo Restaurant_EstebanDeclineBattle

Restaurant_EstebanAskBattle1:
    Message Restaurant_Text_EstebanIntro1
    FacePlayer
    Message Restaurant_Text_EstebanAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_EstebanBattle
    GoTo Restaurant_EstebanDeclineBattle

Restaurant_EstebanAskBattle2:
    Message Restaurant_Text_EstebanIntro2
    FacePlayer
    Message Restaurant_Text_EstebanAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_EstebanBattle
    GoTo Restaurant_EstebanDeclineBattle

Restaurant_EstebanBattle:
    CloseMessage
    StartTrainerBattle TRAINER_SCHOOL_KID_ESTEBAN, TRAINER_POKEFAN_MEREDITH
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_SCHOOL_KID_ESTEBAN
    SetTrainerFlag TRAINER_POKEFAN_MEREDITH
    Call Restaurant_EstebanFaceEast
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ESTEBAN_MEREDITH
    GoToIfEq VAR_0x8008, 0, Restaurant_EstebanPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_EstebanPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_EstebanPostBattle2
    ReleaseAll
    End

Restaurant_EstebanPostBattle0:
    Message Restaurant_Text_EstebanDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EstebanPostBattle1:
    Message Restaurant_Text_EstebanDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EstebanPostBattle2:
    Message Restaurant_Text_EstebanDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EstebanDeclineBattle:
    CloseMessage
    Call Restaurant_EstebanFaceEast
    ReleaseAll
    End

Restaurant_EstebanDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ESTEBAN_MEREDITH
    GoToIfEq VAR_0x8008, 0, Restaurant_EstebanDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_EstebanDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_EstebanDefeated2
    End

Restaurant_EstebanDefeated0:
    Message Restaurant_Text_EstebanDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EstebanDefeated1:
    Message Restaurant_Text_EstebanDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EstebanDefeated2:
    Message Restaurant_Text_EstebanDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EstebanNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_EstebanNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_EstebanFaceEast
    ReleaseAll
    End

Restaurant_EstebanFaceEast:
    ApplyMovement LOCALID_SCHOOL_KID_ESTEBAN, Restaurant_Movement_FaceEast
    WaitMovement
    Return

Restaurant_PokefanMeredith:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_POKEFAN_MEREDITH
    GoToIfDefeated TRAINER_POKEFAN_MEREDITH, Restaurant_MeredithDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_MeredithNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ESTEBAN_MEREDITH
    GoToIfEq VAR_0x8008, 0, Restaurant_MeredithAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_MeredithAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_MeredithAskBattle2
    ReleaseAll
    End

Restaurant_MeredithAskBattle0:
    Message Restaurant_Text_MeredithIntro0
    FacePlayer
    Message Restaurant_Text_MeredithAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_MeredithBattle
    GoTo Restaurant_MeredithDeclineBattle

Restaurant_MeredithAskBattle1:
    Message Restaurant_Text_MeredithIntro1
    FacePlayer
    Message Restaurant_Text_MeredithAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_MeredithBattle
    GoTo Restaurant_MeredithDeclineBattle

Restaurant_MeredithAskBattle2:
    Message Restaurant_Text_MeredithIntro2
    FacePlayer
    Message Restaurant_Text_MeredithAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_MeredithBattle
    GoTo Restaurant_MeredithDeclineBattle

Restaurant_MeredithBattle:
    CloseMessage
    StartTrainerBattle TRAINER_SCHOOL_KID_ESTEBAN, TRAINER_POKEFAN_MEREDITH
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_SCHOOL_KID_ESTEBAN
    SetTrainerFlag TRAINER_POKEFAN_MEREDITH
    Call Restaurant_MeredithFaceWest
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ESTEBAN_MEREDITH
    GoToIfEq VAR_0x8008, 0, Restaurant_MeredithPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_MeredithPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_MeredithPostBattle2
    ReleaseAll
    End

Restaurant_MeredithPostBattle0:
    Message Restaurant_Text_MeredithDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_MeredithPostBattle1:
    Message Restaurant_Text_MeredithDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_MeredithPostBattle2:
    Message Restaurant_Text_MeredithDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_MeredithDeclineBattle:
    CloseMessage
    Call Restaurant_MeredithFaceWest
    ReleaseAll
    End

Restaurant_MeredithDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_ESTEBAN_MEREDITH
    GoToIfEq VAR_0x8008, 0, Restaurant_MeredithDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_MeredithDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_MeredithDefeated2
    End

Restaurant_MeredithDefeated0:
    Message Restaurant_Text_MeredithDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_MeredithDefeated1:
    Message Restaurant_Text_MeredithDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_MeredithDefeated2:
    Message Restaurant_Text_MeredithDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_MeredithNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_MeredithNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_MeredithFaceWest
    ReleaseAll
    End

Restaurant_MeredithFaceWest:
    ApplyMovement LOCALID_POKEFAN_MEREDITH, Restaurant_Movement_FaceWest
    WaitMovement
    Return

Restaurant_VeteranEmanuel:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_VETERAN_EMANUEL
    GoToIfDefeated TRAINER_VETERAN_EMANUEL, Restaurant_EmanuelDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_EmanuelNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EMANUEL_BLYTHE
    GoToIfEq VAR_0x8008, 0, Restaurant_EmanuelAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_EmanuelAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_EmanuelAskBattle2
    ReleaseAll
    End

Restaurant_EmanuelAskBattle0:
    Message Restaurant_Text_EmanuelIntro0
    FacePlayer
    Message Restaurant_Text_EmanuelAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_EmanuelBattle
    GoTo Restaurant_EmanuelDeclineBattle

Restaurant_EmanuelAskBattle1:
    Message Restaurant_Text_EmanuelIntro1
    FacePlayer
    Message Restaurant_Text_EmanuelAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_EmanuelBattle
    GoTo Restaurant_EmanuelDeclineBattle

Restaurant_EmanuelAskBattle2:
    Message Restaurant_Text_EmanuelIntro2
    FacePlayer
    Message Restaurant_Text_EmanuelAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_EmanuelBattle
    GoTo Restaurant_EmanuelDeclineBattle

Restaurant_EmanuelBattle:
    CloseMessage
    StartTrainerBattle TRAINER_VETERAN_EMANUEL, TRAINER_LASS_BLYTHE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_VETERAN_EMANUEL
    SetTrainerFlag TRAINER_LASS_BLYTHE
    Call Restaurant_EmanuelFaceEast
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EMANUEL_BLYTHE
    GoToIfEq VAR_0x8008, 0, Restaurant_EmanuelPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_EmanuelPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_EmanuelPostBattle2
    ReleaseAll
    End

Restaurant_EmanuelPostBattle0:
    Message Restaurant_Text_EmanuelDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EmanuelPostBattle1:
    Message Restaurant_Text_EmanuelDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EmanuelPostBattle2:
    Message Restaurant_Text_EmanuelDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EmanuelDeclineBattle:
    CloseMessage
    Call Restaurant_EmanuelFaceEast
    ReleaseAll
    End

Restaurant_EmanuelDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EMANUEL_BLYTHE
    GoToIfEq VAR_0x8008, 0, Restaurant_EmanuelDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_EmanuelDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_EmanuelDefeated2
    End

Restaurant_EmanuelDefeated0:
    Message Restaurant_Text_EmanuelDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EmanuelDefeated1:
    Message Restaurant_Text_EmanuelDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EmanuelDefeated2:
    Message Restaurant_Text_EmanuelDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EmanuelNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_EmanuelNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_EmanuelFaceEast
    ReleaseAll
    End

Restaurant_EmanuelFaceEast:
    ApplyMovement LOCALID_VETERAN_EMANUEL, Restaurant_Movement_FaceEast
    WaitMovement
    Return

Restaurant_LassBlythe:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_LASS_BLYTHE
    GoToIfDefeated TRAINER_LASS_BLYTHE, Restaurant_BlytheDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_BlytheNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EMANUEL_BLYTHE
    GoToIfEq VAR_0x8008, 0, Restaurant_BlytheAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_BlytheAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_BlytheAskBattle2
    ReleaseAll
    End

Restaurant_BlytheAskBattle0:
    Message Restaurant_Text_BlytheIntro0
    FacePlayer
    Message Restaurant_Text_BlytheAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_BlytheBattle
    GoTo Restaurant_BlytheDeclineBattle

Restaurant_BlytheAskBattle1:
    Message Restaurant_Text_BlytheIntro1
    FacePlayer
    Message Restaurant_Text_BlytheAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_BlytheBattle
    GoTo Restaurant_BlytheDeclineBattle

Restaurant_BlytheAskBattle2:
    Message Restaurant_Text_BlytheIntro2
    FacePlayer
    Message Restaurant_Text_BlytheAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_BlytheBattle
    GoTo Restaurant_BlytheDeclineBattle

Restaurant_BlytheBattle:
    CloseMessage
    StartTrainerBattle TRAINER_VETERAN_EMANUEL, TRAINER_LASS_BLYTHE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_VETERAN_EMANUEL
    SetTrainerFlag TRAINER_LASS_BLYTHE
    Call Restaurant_BlytheFaceWest
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EMANUEL_BLYTHE
    GoToIfEq VAR_0x8008, 0, Restaurant_BlythePostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_BlythePostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_BlythePostBattle2
    ReleaseAll
    End

Restaurant_BlythePostBattle0:
    Message Restaurant_Text_BlytheDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_BlythePostBattle1:
    Message Restaurant_Text_BlytheDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_BlythePostBattle2:
    Message Restaurant_Text_BlytheDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_BlytheDeclineBattle:
    CloseMessage
    Call Restaurant_BlytheFaceWest
    ReleaseAll
    End

Restaurant_BlytheDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EMANUEL_BLYTHE
    GoToIfEq VAR_0x8008, 0, Restaurant_BlytheDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_BlytheDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_BlytheDefeated2
    End

Restaurant_BlytheDefeated0:
    Message Restaurant_Text_BlytheDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_BlytheDefeated1:
    Message Restaurant_Text_BlytheDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_BlytheDefeated2:
    Message Restaurant_Text_BlytheDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_BlytheNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_BlytheNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_BlytheFaceWest
    ReleaseAll
    End

Restaurant_BlytheFaceWest:
    ApplyMovement LOCALID_LASS_BLYTHE, Restaurant_Movement_FaceWest
    WaitMovement
    Return

Restaurant_CameramanDarryl:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_CAMERAMAN_DARRYL
    GoToIfDefeated TRAINER_CAMERAMAN_DARRYL, Restaurant_DarrylDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_DarrylNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_DARRYL_VALERIE
    GoToIfEq VAR_0x8008, 0, Restaurant_DarrylAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_DarrylAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_DarrylAskBattle2
    ReleaseAll
    End

Restaurant_DarrylAskBattle0:
    Message Restaurant_Text_DarrylIntro0
    FacePlayer
    Message Restaurant_Text_DarrylAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_DarrylBattle
    GoTo Restaurant_DarrylDeclineBattle

Restaurant_DarrylAskBattle1:
    Message Restaurant_Text_DarrylIntro1
    FacePlayer
    Message Restaurant_Text_DarrylAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_DarrylBattle
    GoTo Restaurant_DarrylDeclineBattle

Restaurant_DarrylAskBattle2:
    Message Restaurant_Text_DarrylIntro2
    FacePlayer
    Message Restaurant_Text_DarrylAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_DarrylBattle
    GoTo Restaurant_DarrylDeclineBattle

Restaurant_DarrylBattle:
    CloseMessage
    StartTrainerBattle TRAINER_CAMERAMAN_DARRYL, TRAINER_REPORTER_VALERIE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_CAMERAMAN_DARRYL
    SetTrainerFlag TRAINER_REPORTER_VALERIE
    Call Restaurant_DarrylFaceEast
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_DARRYL_VALERIE
    GoToIfEq VAR_0x8008, 0, Restaurant_DarrylPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_DarrylPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_DarrylPostBattle2
    ReleaseAll
    End

Restaurant_DarrylPostBattle0:
    Message Restaurant_Text_DarrylDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_DarrylPostBattle1:
    Message Restaurant_Text_DarrylDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_DarrylPostBattle2:
    Message Restaurant_Text_DarrylDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_DarrylDeclineBattle:
    CloseMessage
    Call Restaurant_DarrylFaceEast
    ReleaseAll
    End

Restaurant_DarrylDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_DARRYL_VALERIE
    GoToIfEq VAR_0x8008, 0, Restaurant_DarrylDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_DarrylDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_DarrylDefeated2
    End

Restaurant_DarrylDefeated0:
    Message Restaurant_Text_DarrylDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_DarrylDefeated1:
    Message Restaurant_Text_DarrylDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_DarrylDefeated2:
    Message Restaurant_Text_DarrylDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_DarrylNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_DarrylNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_DarrylFaceEast
    ReleaseAll
    End

Restaurant_DarrylFaceEast:
    ApplyMovement LOCALID_CAMERAMAN_DARRYL, Restaurant_Movement_FaceEast
    WaitMovement
    Return

Restaurant_ReporterValerie:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_REPORTER_VALERIE
    GoToIfDefeated TRAINER_REPORTER_VALERIE, Restaurant_ValerieDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_ValerieNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_DARRYL_VALERIE
    GoToIfEq VAR_0x8008, 0, Restaurant_ValerieAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_ValerieAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_ValerieAskBattle2
    ReleaseAll
    End

Restaurant_ValerieAskBattle0:
    Message Restaurant_Text_ValerieIntro0
    FacePlayer
    Message Restaurant_Text_ValerieAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_ValerieBattle
    GoTo Restaurant_ValerieDeclineBattle

Restaurant_ValerieAskBattle1:
    Message Restaurant_Text_ValerieIntro1
    FacePlayer
    Message Restaurant_Text_ValerieAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_ValerieBattle
    GoTo Restaurant_ValerieDeclineBattle

Restaurant_ValerieAskBattle2:
    Message Restaurant_Text_ValerieIntro2
    FacePlayer
    Message Restaurant_Text_ValerieAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_ValerieBattle
    GoTo Restaurant_ValerieDeclineBattle

Restaurant_ValerieBattle:
    CloseMessage
    StartTrainerBattle TRAINER_CAMERAMAN_DARRYL, TRAINER_REPORTER_VALERIE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_CAMERAMAN_DARRYL
    SetTrainerFlag TRAINER_REPORTER_VALERIE
    Call Restaurant_ValerieFaceWest
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_DARRYL_VALERIE
    GoToIfEq VAR_0x8008, 0, Restaurant_ValeriePostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_ValeriePostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_ValeriePostBattle2
    ReleaseAll
    End

Restaurant_ValeriePostBattle0:
    Message Restaurant_Text_ValerieDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_ValeriePostBattle1:
    Message Restaurant_Text_ValerieDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_ValeriePostBattle2:
    Message Restaurant_Text_ValerieDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_ValerieDeclineBattle:
    CloseMessage
    Call Restaurant_ValerieFaceWest
    ReleaseAll
    End

Restaurant_ValerieDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_DARRYL_VALERIE
    GoToIfEq VAR_0x8008, 0, Restaurant_ValerieDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_ValerieDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_ValerieDefeated2
    End

Restaurant_ValerieDefeated0:
    Message Restaurant_Text_ValerieDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_ValerieDefeated1:
    Message Restaurant_Text_ValerieDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_ValerieDefeated2:
    Message Restaurant_Text_ValerieDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_ValerieNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_ValerieNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_ValerieFaceWest
    ReleaseAll
    End

Restaurant_ValerieFaceWest:
    ApplyMovement LOCALID_REPORTER_VALERIE, Restaurant_Movement_FaceWest
    WaitMovement
    Return

Restaurant_PIKendrick:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_PI_KENDRICK
    GoToIfDefeated TRAINER_PI_KENDRICK, Restaurant_KendrickDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_KendrickNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_KENDRICK_GABRIELLA
    GoToIfEq VAR_0x8008, 0, Restaurant_KendrickAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_KendrickAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_KendrickAskBattle2
    ReleaseAll
    End

Restaurant_KendrickAskBattle0:
    Message Restaurant_Text_KendrickIntro0
    FacePlayer
    Message Restaurant_Text_KendrickAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_KendrickBattle
    GoTo Restaurant_KendrickDeclineBattle

Restaurant_KendrickAskBattle1:
    Message Restaurant_Text_KendrickIntro1
    FacePlayer
    Message Restaurant_Text_KendrickAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_KendrickBattle
    GoTo Restaurant_KendrickDeclineBattle

Restaurant_KendrickAskBattle2:
    Message Restaurant_Text_KendrickIntro2
    FacePlayer
    Message Restaurant_Text_KendrickAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_KendrickBattle
    GoTo Restaurant_KendrickDeclineBattle

Restaurant_KendrickBattle:
    CloseMessage
    StartTrainerBattle TRAINER_PI_KENDRICK, TRAINER_BEAUTY_GABRIELLA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_PI_KENDRICK
    SetTrainerFlag TRAINER_BEAUTY_GABRIELLA
    Call Restaurant_KendrickFaceEast
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_KENDRICK_GABRIELLA
    GoToIfEq VAR_0x8008, 0, Restaurant_KendrickPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_KendrickPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_KendrickPostBattle2
    ReleaseAll
    End

Restaurant_KendrickPostBattle0:
    Message Restaurant_Text_KendrickDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KendrickPostBattle1:
    Message Restaurant_Text_KendrickDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KendrickPostBattle2:
    Message Restaurant_Text_KendrickDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KendrickDeclineBattle:
    CloseMessage
    Call Restaurant_KendrickFaceEast
    ReleaseAll
    End

Restaurant_KendrickDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_KENDRICK_GABRIELLA
    GoToIfEq VAR_0x8008, 0, Restaurant_KendrickDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_KendrickDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_KendrickDefeated2
    End

Restaurant_KendrickDefeated0:
    Message Restaurant_Text_KendrickDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KendrickDefeated1:
    Message Restaurant_Text_KendrickDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KendrickDefeated2:
    Message Restaurant_Text_KendrickDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KendrickNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_KendrickNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_KendrickFaceEast
    ReleaseAll
    End

Restaurant_KendrickFaceEast:
    ApplyMovement LOCALID_PI_KENDRICK, Restaurant_Movement_FaceEast
    WaitMovement
    Return

Restaurant_BeautyGabriella:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_BEAUTY_GABRIELLA
    GoToIfDefeated TRAINER_BEAUTY_GABRIELLA, Restaurant_GabriellaDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_GabriellaNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_KENDRICK_GABRIELLA
    GoToIfEq VAR_0x8008, 0, Restaurant_GabriellaAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_GabriellaAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_GabriellaAskBattle2
    ReleaseAll
    End

Restaurant_GabriellaAskBattle0:
    Message Restaurant_Text_GabriellaIntro0
    FacePlayer
    Message Restaurant_Text_GabriellaAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_GabriellaBattle
    GoTo Restaurant_GabriellaDeclineBattle

Restaurant_GabriellaAskBattle1:
    Message Restaurant_Text_GabriellaIntro1
    FacePlayer
    Message Restaurant_Text_GabriellaAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_GabriellaBattle
    GoTo Restaurant_GabriellaDeclineBattle

Restaurant_GabriellaAskBattle2:
    Message Restaurant_Text_GabriellaIntro2
    FacePlayer
    Message Restaurant_Text_GabriellaAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_GabriellaBattle
    GoTo Restaurant_GabriellaDeclineBattle

Restaurant_GabriellaBattle:
    CloseMessage
    StartTrainerBattle TRAINER_PI_KENDRICK, TRAINER_BEAUTY_GABRIELLA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_PI_KENDRICK
    SetTrainerFlag TRAINER_BEAUTY_GABRIELLA
    Call Restaurant_GabriellaFaceWest
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_KENDRICK_GABRIELLA
    GoToIfEq VAR_0x8008, 0, Restaurant_GabriellaPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_GabriellaPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_GabriellaPostBattle2
    ReleaseAll
    End

Restaurant_GabriellaPostBattle0:
    Message Restaurant_Text_GabriellaDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_GabriellaPostBattle1:
    Message Restaurant_Text_GabriellaDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_GabriellaPostBattle2:
    Message Restaurant_Text_GabriellaDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_GabriellaDeclineBattle:
    CloseMessage
    Call Restaurant_GabriellaFaceWest
    ReleaseAll
    End

Restaurant_GabriellaDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_KENDRICK_GABRIELLA
    GoToIfEq VAR_0x8008, 0, Restaurant_GabriellaDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_GabriellaDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_GabriellaDefeated2
    End

Restaurant_GabriellaDefeated0:
    Message Restaurant_Text_GabriellaDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_GabriellaDefeated1:
    Message Restaurant_Text_GabriellaDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_GabriellaDefeated2:
    Message Restaurant_Text_GabriellaDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_GabriellaNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_GabriellaNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_GabriellaFaceWest
    ReleaseAll
    End

Restaurant_GabriellaFaceWest:
    ApplyMovement LOCALID_BEAUTY_GABRIELLA, Restaurant_Movement_FaceWest
    WaitMovement
    Return

Restaurant_ScientistEmilio:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_SCIENTIST_EMILIO
    GoToIfDefeated TRAINER_SCIENTIST_EMILIO, Restaurant_EmilioDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_EmilioNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EMILIO_KAYLEE
    GoToIfEq VAR_0x8008, 0, Restaurant_EmilioAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_EmilioAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_EmilioAskBattle2
    ReleaseAll
    End

Restaurant_EmilioAskBattle0:
    Message Restaurant_Text_EmilioIntro0
    FacePlayer
    Message Restaurant_Text_EmilioAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_EmilioBattle
    GoTo Restaurant_EmilioDeclineBattle

Restaurant_EmilioAskBattle1:
    Message Restaurant_Text_EmilioIntro1
    FacePlayer
    Message Restaurant_Text_EmilioAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_EmilioBattle
    GoTo Restaurant_EmilioDeclineBattle

Restaurant_EmilioAskBattle2:
    Message Restaurant_Text_EmilioIntro2
    FacePlayer
    Message Restaurant_Text_EmilioAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_EmilioBattle
    GoTo Restaurant_EmilioDeclineBattle

Restaurant_EmilioBattle:
    CloseMessage
    StartTrainerBattle TRAINER_SCIENTIST_EMILIO, TRAINER_BREEDER_KAYLEE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_SCIENTIST_EMILIO
    SetTrainerFlag TRAINER_BREEDER_KAYLEE
    Call Restaurant_EmilioFaceEast
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EMILIO_KAYLEE
    GoToIfEq VAR_0x8008, 0, Restaurant_EmilioPostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_EmilioPostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_EmilioPostBattle2
    ReleaseAll
    End

Restaurant_EmilioPostBattle0:
    Message Restaurant_Text_EmilioDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EmilioPostBattle1:
    Message Restaurant_Text_EmilioDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EmilioPostBattle2:
    Message Restaurant_Text_EmilioDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EmilioDeclineBattle:
    CloseMessage
    Call Restaurant_EmilioFaceEast
    ReleaseAll
    End

Restaurant_EmilioDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EMILIO_KAYLEE
    GoToIfEq VAR_0x8008, 0, Restaurant_EmilioDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_EmilioDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_EmilioDefeated2
    End

Restaurant_EmilioDefeated0:
    Message Restaurant_Text_EmilioDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EmilioDefeated1:
    Message Restaurant_Text_EmilioDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EmilioDefeated2:
    Message Restaurant_Text_EmilioDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_EmilioNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_EmilioNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_EmilioFaceEast
    ReleaseAll
    End

Restaurant_EmilioFaceEast:
    ApplyMovement LOCALID_SCIENTIST_EMILIO, Restaurant_Movement_FaceEast
    WaitMovement
    Return

Restaurant_BreederKaylee:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckTrainerFlag TRAINER_BREEDER_KAYLEE
    GoToIfDefeated TRAINER_BREEDER_KAYLEE, Restaurant_KayleeDefeated
    CountAliveMonsExcept VAR_RESULT, 6
    GoToIfEq VAR_RESULT, 1, Restaurant_KayleeNeedMultiplePokemon
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EMILIO_KAYLEE
    GoToIfEq VAR_0x8008, 0, Restaurant_KayleeAskBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_KayleeAskBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_KayleeAskBattle2
    ReleaseAll
    End

Restaurant_KayleeAskBattle0:
    Message Restaurant_Text_KayleeIntro0
    FacePlayer
    Message Restaurant_Text_KayleeAskBattle0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_KayleeBattle
    GoTo Restaurant_KayleeDeclineBattle

Restaurant_KayleeAskBattle1:
    Message Restaurant_Text_KayleeIntro1
    FacePlayer
    Message Restaurant_Text_KayleeAskBattle1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_KayleeBattle
    GoTo Restaurant_KayleeDeclineBattle

Restaurant_KayleeAskBattle2:
    Message Restaurant_Text_KayleeIntro2
    FacePlayer
    Message Restaurant_Text_KayleeAskBattle2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Restaurant_KayleeBattle
    GoTo Restaurant_KayleeDeclineBattle

Restaurant_KayleeBattle:
    CloseMessage
    StartTrainerBattle TRAINER_SCIENTIST_EMILIO, TRAINER_BREEDER_KAYLEE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Restaurant_LostBattle
    SetTrainerFlag TRAINER_SCIENTIST_EMILIO
    SetTrainerFlag TRAINER_BREEDER_KAYLEE
    Call Restaurant_KayleeFaceWest
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EMILIO_KAYLEE
    GoToIfEq VAR_0x8008, 0, Restaurant_KayleePostBattle0
    GoToIfEq VAR_0x8008, 1, Restaurant_KayleePostBattle1
    GoToIfEq VAR_0x8008, 2, Restaurant_KayleePostBattle2
    ReleaseAll
    End

Restaurant_KayleePostBattle0:
    Message Restaurant_Text_KayleeDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KayleePostBattle1:
    Message Restaurant_Text_KayleeDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KayleePostBattle2:
    Message Restaurant_Text_KayleeDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KayleeDeclineBattle:
    CloseMessage
    Call Restaurant_KayleeFaceWest
    ReleaseAll
    End

Restaurant_KayleeDefeated:
    SetVar VAR_0x8008, VAR_RESTAURANT_RANDOM_MESSAGE_EMILIO_KAYLEE
    GoToIfEq VAR_0x8008, 0, Restaurant_KayleeDefeated0
    GoToIfEq VAR_0x8008, 1, Restaurant_KayleeDefeated1
    GoToIfEq VAR_0x8008, 2, Restaurant_KayleeDefeated2
    End

Restaurant_KayleeDefeated0:
    Message Restaurant_Text_KayleeDefeated0
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KayleeDefeated1:
    Message Restaurant_Text_KayleeDefeated1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KayleeDefeated2:
    Message Restaurant_Text_KayleeDefeated2
    WaitButton
    CloseMessage
    ReleaseAll
    End

Restaurant_KayleeNeedMultiplePokemon:
    FacePlayer
    Message Restaurant_Text_KayleeNeedMultiplePokemon
    WaitButton
    CloseMessage
    Call Restaurant_KayleeFaceWest
    ReleaseAll
    End

Restaurant_KayleeFaceWest:
    ApplyMovement LOCALID_BREEDER_KAYLEE, Restaurant_Movement_FaceWest
    WaitMovement
    Return

Restaurant_LostBattle:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
Restaurant_Movement_FaceEast:
    FaceEast
    EndMovement

    .balign 4, 0
Restaurant_Movement_FaceWest:
    FaceWest
    EndMovement
