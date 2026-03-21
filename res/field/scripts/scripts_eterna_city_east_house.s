#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_east_house.h"


    ScriptEntry EternaCityEastHouse_ExpertM
    ScriptEntry EternaCityEastHouse_ExpertF
    ScriptEntry EternaCityEastHouse_PokemonBreederM
    ScriptEntryEnd

EternaCityEastHouse_ExpertM:
    NPCMessage EternaCityEastHouse_Text_EternaCameToBeLongAgoInHonorOfAncientPokemon
    End

EternaCityEastHouse_ExpertF:
    NPCMessage EternaCityEastHouse_Text_HaveYouSeenThePokemonStatue
    End

EternaCityEastHouse_PokemonBreederM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message EternaCityEastHouse_Text_SomeoneRippedOffTheDescriptivePlateFromThePokemonStatueWantToKnowWhatItSaid
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, EternaCityEastHouse_WellIfYoureNotInterestedDontFeelObligatedOrAnything
    Message EternaCityEastHouse_Text_TheFirstInscriptionWentLikeThisWantToHearAboutTheOtherInscription
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, EternaCityEastHouse_WellIfYoureNotInterestedDontFeelObligatedOrAnything
    Message EternaCityEastHouse_Text_TheSecondInscriptionWentSortOfLikeThis
    GoTo EternaCityEastHouse_PokemonBreederMEnd
    End

EternaCityEastHouse_WellIfYoureNotInterestedDontFeelObligatedOrAnything:
    Message EternaCityEastHouse_Text_WellIfYoureNotInterestedDontFeelObligatedOrAnything
    GoTo EternaCityEastHouse_PokemonBreederMEnd
    End

EternaCityEastHouse_PokemonBreederMEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
