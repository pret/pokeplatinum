#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"
#include "pokemon.h"
#include "savedata.h"

#include "unk_0202631C.h"
#include "unk_0202CD50.h"
#include "unk_0202F180.h"
#include "poketch_data.h"
#include "pokemon.h"

void sub_0202F180 (SaveData * param0, const Pokemon * param1)
{
    if (Pokemon_GetValue((Pokemon *)param1, MON_DATA_IS_EGG, NULL) == 0) {
        PokedexData * v0 = SaveData_Pokedex(param0);

        sub_0202D040(sub_0202CD88(param0), v0, Pokemon_GetValue((Pokemon *)param1, MON_DATA_SPECIES, NULL));
        sub_0202736C(v0, (Pokemon *)param1);
        PoketchData_PokemonHistoryEnqueue(SaveData_PoketchData(param0), (const BoxPokemon *)param1);
    }
}
