#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town_northeast_house.h"


    ScriptEntry SolaceonTownNortheastHouse_PokemonBreederF
    ScriptEntry SolaceonTownNortheastHouse_Cowgirl
    ScriptEntryEnd

SolaceonTownNortheastHouse_PokemonBreederF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFirstNonEggInParty VAR_RESULT
    GetPartyMonNature VAR_0x8004, VAR_RESULT
    BufferNatureName 0, VAR_0x8004
    Message SolaceonTownNortheastHouse_Text_YourPokemonHasThisNature
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownNortheastHouse_Cowgirl:
    NPCMessage SolaceonTownNortheastHouse_Text_ThisAreaHadManyPokemon
    End

    .balign 4, 0
