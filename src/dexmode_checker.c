#include "dexmode_checker.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"

#include "pokedex.h"
#include "pokemon.h"
#include "savedata.h"

u32 SaveData_GetDexMode(SaveData *saveData)
{
    Pokedex *dex = SaveData_GetPokedex(saveData);
    return IsNationalDexObtained(dex);
}

u32 IsNationalDexObtained(const Pokedex *dex)
{
    BOOL isNationalDexObtained = Pokedex_IsNationalDexObtained(dex);

    if (isNationalDexObtained == 1) {
        return TRUE;
    }

    return FALSE;
}

u32 GetDexNumber(u32 isNationalDexObtained, u32 monSpecies)
{
    if (isNationalDexObtained == 0) {
        return Pokemon_SinnohDexNumber(monSpecies);
    }

    return monSpecies;
}
