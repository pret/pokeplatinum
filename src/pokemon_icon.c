#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"

#include "pokemon.h"
#include "pokemon_icon.h"

#include "data/pokeicon_palettes.h"

u32 sub_02079D40 (const BoxPokemon * param0)
{
    u32 v0;
    u32 v1;
    BOOL v2;
    u32 v3;
    u32 v4;

    v2 = BoxPokemon_EnterDecryptionContext((BoxPokemon *)param0);
    v0 = BoxPokemon_GetValue((BoxPokemon *)param0, MON_DATA_SPECIES, NULL);
    v4 = BoxPokemon_GetValue((BoxPokemon *)param0, MON_DATA_IS_EGG, NULL);
    v3 = sub_02079E44((BoxPokemon *)param0);
    v1 = sub_02079D8C(v0, v4, v3);

    BoxPokemon_ExitDecryptionContext((BoxPokemon *)param0, v2);
    return v1;
}

u32 sub_02079D80 (Pokemon * param0)
{
    return sub_02079D40((const BoxPokemon *)Pokemon_GetBoxPokemon(param0));
}

u32 sub_02079D8C (u32 param0, u32 param1, u32 param2)
{
    if (param1 == 1) {
        if (param0 == 490) {
            return 502;
        } else {
            return 501;
        }
    }

    param2 = Pokemon_SanitizeFormId(param0, param2);

    if (param2 != 0) {
        if (param0 == 386) {
            return 503 + param2 - 1;
        }

        if (param0 == 201) {
            return 507 + param2 - 1;
        }

        if (param0 == 412) {
            return 534 + param2 - 1;
        }

        if (param0 == 413) {
            return 536 + param2 - 1;
        }

        if (param0 == 422) {
            return 538 + param2 - 1;
        }

        if (param0 == 423) {
            return 539 + param2 - 1;
        }

        if (param0 == 487) {
            return 540 + param2 - 1;
        }

        if (param0 == 492) {
            return 541 + param2 - 1;
        }

        if (param0 == 479) {
            return 542 + param2 - 1;
        }
    }

    if (param0 > 493) {
        param0 = 0;
    }

    return 7 + param0;
}

u16 sub_02079E44 (const BoxPokemon * param0)
{
    u32 v0;

    v0 = BoxPokemon_GetValue((BoxPokemon *)param0, MON_DATA_SPECIES_EGG, NULL);

    switch (v0) {
    case 201:
        return BoxPokemon_GetForm((BoxPokemon *)param0);
    case 386:
    case 412:
    case 413:
    case 422:
    case 423:
    case 487:
    case 492:
    case 479:
        return BoxPokemon_GetValue((BoxPokemon *)param0, MON_DATA_FORM, NULL);
    default:
        return 0;
    }

    return 0;
}

const u8 sub_02079EDC (u32 param0, u32 param1, u32 param2)
{
    if (param2 == 1) {
        if (param0 == 490) {
            param0 = 495;
        } else {
            param0 = 494;
        }
    } else if (param0 > 493) {
        param0 = 0;
    } else if (param1 != 0) {
        if (param0 == 386) {
            param0 = 496 + param1 - 1;
        } else if (param0 == 201) {
            param0 = 499 + param1 - 1;
        } else if (param0 == 412) {
            param0 = 527 + param1 - 1;
        } else if (param0 == 413) {
            param0 = 529 + param1 - 1;
        } else if (param0 == 422) {
            param0 = 531 + param1 - 1;
        } else if (param0 == 423) {
            param0 = 532 + param1 - 1;
        } else if (param0 == 487) {
            param0 = 533 + param1 - 1;
        } else if (param0 == 492) {
            param0 = 534 + param1 - 1;
        } else if (param0 == 479) {
            param0 = 535 + param1 - 1;
        }
    }

    return sPokemonIconPaletteIndex[param0];
}

const u8 sub_02079F84 (const BoxPokemon * param0)
{
    BOOL v0;
    u32 v1;
    u32 v2;
    u32 v3;

    v0 = BoxPokemon_EnterDecryptionContext((BoxPokemon *)param0);
    v2 = sub_02079E44(param0);
    v1 = BoxPokemon_GetValue((BoxPokemon *)param0, MON_DATA_SPECIES, NULL);
    v3 = BoxPokemon_GetValue((BoxPokemon *)param0, MON_DATA_IS_EGG, NULL);

    BoxPokemon_ExitDecryptionContext((BoxPokemon *)param0, v0);

    return sub_02079EDC(v1, v2, v3);
}

const u8 sub_02079FC4 (Pokemon * param0)
{
    return sub_02079F84((const BoxPokemon *)Pokemon_GetBoxPokemon(param0));
}

u32 sub_02079FD0 (void)
{
    return 0;
}

u32 sub_02079FD4 (void)
{
    return 2;
}

u32 sub_02079FD8 (void)
{
    return 4;
}

u32 sub_02079FDC (void)
{
    return 6;
}

u32 sub_02079FE0 (void)
{
    return 1;
}

u32 sub_02079FE4 (void)
{
    return 3;
}

u32 sub_02079FE8 (void)
{
    return 5;
}
