#include "unk_0202F180.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"

#include "game_records.h"
#include "pokedex.h"
#include "pokemon.h"
#include "poketch.h"
#include "savedata.h"

void sub_0202F180(SaveData *saveData, const Pokemon *mon)
{
    if (Pokemon_GetValue((Pokemon *)mon, MON_DATA_IS_EGG, NULL) == FALSE) {
        Pokedex *pokedex = SaveData_GetPokedex(saveData);

        GameRecords_IncrementTrainerScoreOnCatch(SaveData_GetGameRecordsPtr(saveData), pokedex, Pokemon_GetValue((Pokemon *)mon, MON_DATA_SPECIES, NULL));
        Pokedex_Capture(pokedex, (Pokemon *)mon);
        Poketch_PokemonHistoryEnqueue(SaveData_PoketchData(saveData), (const BoxPokemon *)mon);
    }
}
