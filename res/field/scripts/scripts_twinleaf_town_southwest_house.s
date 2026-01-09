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
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownSouthwestHouse_ProfRowanGaveYouAPokedexDidHe:
    Message TwinleafTownSouthwestHouse_Text_ProfRowanGaveYouAPokedexDidHe
    WaitABXPadPress
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
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownSouthwestHouse_DoYouThinkICanBeFriendsWithPokemon:
    Message TwinleafTownSouthwestHouse_Text_DoYouThinkICanBeFriendsWithPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
