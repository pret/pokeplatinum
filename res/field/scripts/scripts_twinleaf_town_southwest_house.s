#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_southwest_house.h"


    ScriptEntry TwinleafTownSouthwestHouse_ExpertF
    ScriptEntry TwinleafTownSouthwestHouse_Twin
    ScriptEntryEnd

TwinleafTownSouthwestHouse_ExpertF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_HAS_POKEDEX, TwinleafTownSouthwestHouse_ProfRowanGaveYouAPokedexDidHe
    Message TwinleafTownSouthwestHouse_Text_ThePokemonProfessorReturned
    WaitButton
    CloseMessage
    ReleaseAll
    End

TwinleafTownSouthwestHouse_ProfRowanGaveYouAPokedexDidHe:
    Message TwinleafTownSouthwestHouse_Text_ProfRowanGaveYouAPokedexDidHe
    WaitButton
    CloseMessage
    ReleaseAll
    End

TwinleafTownSouthwestHouse_Twin:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    GoToIfSet FLAG_HAS_POKEDEX, TwinleafTownSouthwestHouse_DoYouThinkICanBeFriendsWithPokemon
    Message TwinleafTownSouthwestHouse_Text_IWantACutePokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

TwinleafTownSouthwestHouse_DoYouThinkICanBeFriendsWithPokemon:
    Message TwinleafTownSouthwestHouse_Text_DoYouThinkICanBeFriendsWithPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
