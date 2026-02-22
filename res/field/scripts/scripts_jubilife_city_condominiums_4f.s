#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_condominiums_4f.h"


    ScriptEntry JubilifeCityCondominiums4F_Beauty
    ScriptEntryEnd

JubilifeCityCondominiums4F_Beauty:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_OBTAINED_FOCUS_BAND, JubilifeCityCondominiums4F_ObtainedFocusBand
    Message JubilifeCityCondominiums4F_Text_ForSomeoneLikeYouThisMightBePerfect
    SetVar VAR_0x8004, ITEM_FOCUS_BAND
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, JubilifeCityCondominiums4F_BagIsFull
    SetFlag FLAG_OBTAINED_FOCUS_BAND
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

JubilifeCityCondominiums4F_ObtainedFocusBand:
    Message JubilifeCityCondominiums4F_Text_ThereAreItemsThatAreUsefulOnlyWhenTheyreHeldByPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCityCondominiums4F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End
