#include "macros/scrcmd.inc"
#include "res/text/bank/poketch_co_2f.h"


    ScriptEntry PoketchCo2F_PokefanM
    ScriptEntry PoketchCo2F_OldMan
    ScriptEntry PoketchCo2F_Clefairy
    ScriptEntry PoketchCo2F_Pachirisu
    ScriptEntryEnd

PoketchCo2F_PokefanM:
    NPCMessage PoketchCo2F_Text_WellTryToThinkLikeATrainerAndFindWhatPoketchAppsWouldBeGood
    End

PoketchCo2F_OldMan:
    NPCMessage PoketchCo2F_Text_PokemonWatchThatsPoketchForShort
    End

PoketchCo2F_Clefairy:
    PokemonCryAndMessage SPECIES_CLEFAIRY, PoketchCo2F_Text_ClefairyCleffy
    End

PoketchCo2F_Pachirisu:
    PokemonCryAndMessage SPECIES_PACHIRISU, PoketchCo2F_Text_PachirisuPatchii
    End

    .balign 4, 0
