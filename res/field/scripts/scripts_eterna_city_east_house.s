#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_east_house.h"


    ScriptEntry EternaCityEastHouse_ExpertM
    ScriptEntry EternaCityEastHouse_ExpertF
    ScriptEntry EternaCityEastHouse_PokemonBreederM
    ScriptEntryEnd

EternaCityEastHouse_ExpertM:
    NPCMessage EternaCityEastHouse_Text_EternaCameToBeLongAgo
    End

EternaCityEastHouse_ExpertF:
    NPCMessage EternaCityEastHouse_Text_HaveYouSeenStatue
    End

EternaCityEastHouse_PokemonBreederM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message EternaCityEastHouse_Text_WantToKnowWhatPlateSaid
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, EternaCityEastHouse_DontFeelObligated
    Message EternaCityEastHouse_Text_FirstInscriptionLikeThisHearOther
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, EternaCityEastHouse_DontFeelObligated
    Message EternaCityEastHouse_Text_SecondInscriptionWentLikeThis
    GoTo EternaCityEastHouse_PokemonBreederMEnd
    End

EternaCityEastHouse_DontFeelObligated:
    Message EternaCityEastHouse_Text_DontFeelObligated
    GoTo EternaCityEastHouse_PokemonBreederMEnd
    End

EternaCityEastHouse_PokemonBreederMEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
