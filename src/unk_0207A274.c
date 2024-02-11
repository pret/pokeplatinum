#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02026324_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "unk_0202631C.h"
#include "pokemon.h"
#include "unk_0207A274.h"

u32 sub_0207A274 (SaveData * param0)
{
    PokedexData * v0;

    v0 = sub_02027560(param0);
    return sub_0207A280(v0);
}

u32 sub_0207A280 (const PokedexData * param0)
{
    BOOL v0;

    v0 = sub_02027474(param0);

    if (v0 == 1) {
        return 1;
    }

    return 0;
}

u32 sub_0207A294 (u32 param0, u32 param1)
{
    if (param0 == 0) {
        return Pokemon_SinnohDexNumber(param1);
    }

    return param1;
}
