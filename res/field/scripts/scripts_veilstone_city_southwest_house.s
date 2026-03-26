#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_southwest_house.h"


    ScriptEntry VeilstoneCitySouthwestHouse_Beauty
    ScriptEntry VeilstoneCitySouthwestHouse_Youngster
    ScriptEntry VeilstoneCitySouthwestHouse_Pachirisu
    ScriptEntryEnd

VeilstoneCitySouthwestHouse_Beauty:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GOT_MASSAGE, VeilstoneCitySouthwestHouse_ComeBackTomorrow
    Message VeilstoneCitySouthwestHouse_Text_ICanMassagePokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, VeilstoneCitySouthwestHouse_ImNotShady
    Message VeilstoneCitySouthwestHouse_Text_MassageWhichPokemon
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_MAP_LOCAL_0
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_0, PARTY_SLOT_NONE, VeilstoneCitySouthwestHouse_ImNotShady
    GetPartyMonSpecies VAR_MAP_LOCAL_0, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, VeilstoneCitySouthwestHouse_IdBreakThatEgg
    Message VeilstoneCitySouthwestHouse_Text_LetsGetStarted
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlaySE SEQ_SE_DP_FW367
    WaitSE SEQ_SE_DP_FW367
    FadeScreenIn
    WaitFadeScreen
    BufferPartyMonNickname 0, VAR_MAP_LOCAL_0
    Message VeilstoneCitySouthwestHouse_Text_PokemonLooksContent
    SetFlag FLAG_GOT_MASSAGE
    IncreasePartyMonFriendship 3, VAR_MAP_LOCAL_0
    TryGetRandomMassageGirlAccessory VAR_0x8004
    GoToIfEq VAR_0x8004, -1, VeilstoneCitySouthwestHouse_DropByAgainTomorrow
    Message VeilstoneCitySouthwestHouse_Text_IFoundThis
    SetVar VAR_0x8005, 1
    Common_GiveAccessory
    GoTo VeilstoneCitySouthwestHouse_DropByAgainTomorrow

VeilstoneCitySouthwestHouse_ComeBackTomorrow:
    Message VeilstoneCitySouthwestHouse_Text_ComeBackTomorrow
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCitySouthwestHouse_IdBreakThatEgg:
    Message VeilstoneCitySouthwestHouse_Text_IdBreakThatEgg
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCitySouthwestHouse_ImNotShady:
    Message VeilstoneCitySouthwestHouse_Text_ImNotShady
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCitySouthwestHouse_DropByAgainTomorrow:
    Message VeilstoneCitySouthwestHouse_Text_DropByAgainTomorrow
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCitySouthwestHouse_Youngster:
    NPCMessage VeilstoneCitySouthwestHouse_Text_MyInLawIsScarfGuy
    End

VeilstoneCitySouthwestHouse_Pachirisu:
    PokemonCryAndMessage SPECIES_PACHIRISU, VeilstoneCitySouthwestHouse_Text_PachirisuCry
    End

    .balign 4, 0
