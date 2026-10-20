#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>

#include "common.h"
#include "game_types.h"

#include "constants/species.h"

_Static_assert(NATIONAL_DEX_COUNT < UINT16_MAX, "national dex must fit in u16 indices");

static const char *regionalFile = NULL;
static u16 national[NATIONAL_DEX_COUNT + 1];

enum { A_REGIONAL_TO_NATIONAL, A_NATIONAL_TO_REGIONAL };
enum { F_REGIONAL_DEX_SIZE };

#define L_SPECIES "enum Species"

static Driver driver = {
    .depfile = "pokedex_listings.d",

    .options = (Option[]) {
        POSITIONAL("REGIONAL_JSON", &regionalFile, "Regional Pokédex order: a JSON array of species."),
        { 0 },
    },

    .lookups = (Lookup[]) {
        LOOKUP_ENUM("generated/species.h", L_SPECIES),
        { 0 },
    },

    .outputs = {
        .archives = (Archive[]) {
            [A_REGIONAL_TO_NATIONAL] = { .filename = "regional_to_national.narc" },
            [A_NATIONAL_TO_REGIONAL] = { .filename = "national_to_regional.narc" },
            { 0 },
        },

        .textFiles = (TextFile[]) {
            [F_REGIONAL_DEX_SIZE] = { .filename = "regional_pokedex_size.h", .wrap = TEXT_FILE_WRAP_TEMPLATE },
            { 0 },
        },
    },
};

static void ProcRegional(dp_node array)
{
    size_t count = dp_arr_len(array);
    if (count > UINT16_MAX) {
        dp_error(array, "regional Pokédex size exceeds allowed max of %u", UINT16_MAX);
        return;
    }

    if (count == 0) dp_warn(array, "regional Pokédex has no members");

    u16 *regional = Zalloc(count, sizeof(*regional));
    for (dp_each(entry, i, array)) {
        const dp_node species = dp_lookup(entry, L_SPECIES);
        if (dp_type_of(species) != DP_SYMBOL) continue; // error is already staged

        const u16 val = dp_u16(species);
        if (val > NATIONAL_DEX_COUNT) {
            dp_error(species, "species '%s' exceeds NATIONAL_DEX_COUNT", dp_string(species));
            continue;
        }

        for (size_t j = 0; j < i; j++) {
            if (regional[j] == val) {
                const dp_node prev = dp_arr_at(array, j);
                const char   *curr = dp_string(species);
                dp_warn(species, "species '%s' has duplicate regional Pokédex entries", curr);
                dp_note(prev,    "species was previously registered here");
            }
        }

        regional[i]   = val;
        national[val] = (u16)i;
    }

    Archive_Pack(A_REGIONAL_TO_NATIONAL, regional, count * sizeof(*regional));
    Archive_Pack(A_NATIONAL_TO_REGIONAL, national, sizeof(national));
    TextFile_Printf(F_REGIONAL_DEX_SIZE, "#define REGIONAL_DEX_COUNT %u\n",
                    count == 0 ? 0 : (unsigned)(count - 1));

    free(regional);
}

int main(int argc, char **argv)
{
    Driver_Init(&driver, argc, argv);

    dp_file *regional = Driver_Load("%s", regionalFile);
    ProcRegional(dp_root(regional));
    Driver_Close(regional);

    return Driver_Finish(&driver);
}
