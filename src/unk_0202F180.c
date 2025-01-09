#include "unk_0202F180.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"

#include "game_records.h"
#include "pokedex_data.h"
#include "pokemon.h"
#include "poketch_data.h"
#include "savedata.h"

void sub_0202F180(SaveData *param0, const Pokemon *param1)
{
    if (Pokemon_GetValue((Pokemon *)param1, MON_DATA_IS_EGG, NULL) == 0) {
        Pokedex *v0 = SaveData_Pokedex(param0);

        GameRecords_IncrementTrainerScoreOnCatch(SaveData_GetGameRecordsPtr(param0), v0, Pokemon_GetValue((Pokemon *)param1, MON_DATA_SPECIES, NULL));
        PokedexData_Capture(v0, (Pokemon *)param1);
        PoketchData_PokemonHistoryEnqueue(SaveData_PoketchData(param0), (const BoxPokemon *)param1);
    }
}
