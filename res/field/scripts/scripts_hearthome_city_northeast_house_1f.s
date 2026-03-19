#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_northeast_house_1f.h"


    ScriptEntry HearthomeCityNortheastHouse1F_PokefanF
    ScriptEntry HearthomeCityNortheastHouse1F_BabyInPram
    ScriptEntry HearthomeCityNortheastHouse1F_BattleGirl
    ScriptEntry HearthomeCityNortheastHouse1F_NinjaBoy
    ScriptEntry HearthomeCityNortheastHouse1F_Twin
    ScriptEntry HearthomeCityNortheastHouse1F_SchoolKidM
    ScriptEntry HearthomeCityNortheastHouse1F_Lass
    ScriptEntry HearthomeCityNortheastHouse1F_Unused
    ScriptEntry HearthomeCityNortheastHouse1F_Pikachu
    ScriptEntryEnd

HearthomeCityNortheastHouse1F_PokefanF:
    NPCMessage HearthomeCityNortheastHouse1F_Text_ThatMakesYouPapaAndMama
    End

HearthomeCityNortheastHouse1F_BabyInPram:
    EventMessage HearthomeCityNortheastHouse1F_Text_KuufuFuu
    End

HearthomeCityNortheastHouse1F_BattleGirl:
    NPCMessage HearthomeCityNortheastHouse1F_Text_BabiesAndPokemonGetAlong
    End

HearthomeCityNortheastHouse1F_NinjaBoy:
    NPCMessage HearthomeCityNortheastHouse1F_Text_ImGoingToBeATrainerToo
    End

HearthomeCityNortheastHouse1F_Twin:
    NPCMessage HearthomeCityNortheastHouse1F_Text_IWantToBecomeACoordinator
    End

HearthomeCityNortheastHouse1F_SchoolKidM:
    NPCMessage HearthomeCityNortheastHouse1F_Text_NoOneEvenNoticesMe
    End

HearthomeCityNortheastHouse1F_Lass:
    NPCMessage HearthomeCityNortheastHouse1F_Text_WowYoureAPokemonTrainer
    End

HearthomeCityNortheastHouse1F_Unused:
    NPCMessage HearthomeCityNortheastHouse1F_Text_Dummy7
    End

HearthomeCityNortheastHouse1F_Pikachu:
    PokemonCryAndMessage SPECIES_PIKACHU, HearthomeCityNortheastHouse1F_Text_PikachuCryPikapii
    End

    .balign 4, 0
