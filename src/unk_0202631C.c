#include "unk_0202631C.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "heap.h"
#include "inlines.h"
#include "pokemon.h"
#include "savedata.h"
#include "unk_020986CC.h"

// These u32[16] arrays store pokedex seen/caught info as bit flags
// Therefore 32 * 16 = 512 pokedex slots. These need to be bumped up if it's pushed past this number
// ReadBit and WriteBit may need to be changed as well, to handle a larger range of bits

#define UNOWN_COUNT 28
#define BYTE_SLOTS  16

typedef struct PokedexData {
    u32 magic;
    u32 caughtPokemon[BYTE_SLOTS];
    u32 seenPokemon[BYTE_SLOTS];
    u32 recordedGenders[2][BYTE_SLOTS];
    u32 unk_104;
    u8 unk_108;
    u8 unk_109;
    u8 unk_10A;
    u8 unk_10B;
    u8 unk_10C[UNOWN_COUNT];
    u8 recordedLanguages[MAX_SPECIES + 1];
    u8 canDetectForms;
    u8 unk_319;
    u8 pokedexObtained;
    u8 nationalDexObtained;
    u32 unk_31C;
    u8 unk_320;
    u8 unk_321;
    u16 unk_322;
} PokedexData;

int Pokedex_SaveSize(void)
{
    return sizeof(PokedexData);
}

PokedexData *sub_02026324(u32 param0)
{
    PokedexData *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(PokedexData));
    Pokedex_Init(v0);

    return v0;
}

void sub_02026338(const PokedexData *dexData, PokedexData *param1)
{
    MI_CpuCopy8(dexData, param1, sizeof(PokedexData));
}

static inline void CheckPokedexIntegrity(const PokedexData *dexData)
{
    GF_ASSERT(dexData->magic == 3203386110);
}

static BOOL Pokedex_InvalidSpecies(u16 species)
{
    if ((species == 0) || (species > NATIONAL_DEX_COUNT)) {
        GF_ASSERT(0);
        return 1;
    } else {
        return 0;
    }
}

static inline BOOL ReadBit(const u8 *array, u16 bitNumber)
{
    bitNumber--;
    return 0 != (array[bitNumber >> 3] & (1 << (bitNumber & 7)));
}

static inline void WriteBit(u8 *array, u16 bitNumber)
{
    bitNumber--;
    array[bitNumber >> 3] |= 1 << (bitNumber & 7);
}

static inline void inline_02026360(u8 *param0, u8 param1, u16 param2)
{
    GF_ASSERT(param1 < 2);

    param2--;

    param0[param2 >> 3] &= ~(1 << (param2 & 7));
    param0[param2 >> 3] |= param1 << (param2 & 7);
}

static inline u32 inline_020266F8(const u8 *param0, u16 param1)
{
    return (param0[param1 >> 2] >> ((param1 & 3) * 2)) & 0x3;
}

static inline void inline_020267B8(u8 *param0, u8 param1, u16 param2)
{
    GF_ASSERT(param1 < 4);

    param0[param2 >> 2] &= ~(0x3 << ((param2 & 3) * 2));
    param0[param2 >> 2] |= param1 << ((param2 & 3) * 2);
}

static inline void Write_SeenSpecies(PokedexData *dexData, u16 species)
{
    WriteBit((u8 *)dexData->seenPokemon, species);
}

static inline void Write_CaughtSpecies(PokedexData *dexData, u16 species)
{
    WriteBit((u8 *)dexData->caughtPokemon, species);
}

static void sub_02026360(PokedexData *dexData, u8 param1, u8 param2, u16 param3)
{
    if (param2 == 0) {
        inline_02026360((u8 *)dexData->recordedGenders[1], param1, param3);
    }

    inline_02026360((u8 *)dexData->recordedGenders[param2], param1, param3);
}

static void sub_020263D8(PokedexData *dexData, u8 param1, u8 param2, u16 param3)
{
    GF_ASSERT(param1 <= 2);

    if (param1 == 2) {
        param1 = 0;
    }

    sub_02026360(dexData, param1, param2, param3);
}

static inline BOOL Read_SeenSpecies(const PokedexData *dexData, u16 species)
{
    return ReadBit((const u8 *)dexData->seenPokemon, species);
}

static inline BOOL Read_CaughtSpecies(const PokedexData *dexData, u16 species)
{
    return ReadBit((const u8 *)dexData->caughtPokemon, species);
}

static inline u8 inline_02026BAC(const PokedexData *dexData, u16 param1, u8 param2)
{
    return ReadBit((const u8 *)dexData->recordedGenders[param2], param1);
}

static inline void inline_0202736C_1(PokedexData *dexData, u16 param1, u32 param2)
{
    if (param1 == 327) {
        dexData->unk_104 = param2;
    }
}

static int sub_02026400(const PokedexData *dexData)
{
    int v0;

    for (v0 = 0; v0 < UNOWN_COUNT; v0++) {
        if (dexData->unk_10C[v0] == 0xff) {
            break;
        }
    }

    return v0;
}

static BOOL sub_02026418(const PokedexData *dexData, u8 param1)
{
    int v0;

    for (v0 = 0; v0 < UNOWN_COUNT; v0++) {
        if (dexData->unk_10C[v0] == param1) {
            return 1;
        }
    }

    return 0;
}

static void sub_0202643C(PokedexData *dexData, int param1)
{
    int v0;

    if (sub_02026418(dexData, param1)) {
        return;
    }

    v0 = sub_02026400(dexData);

    if (v0 < UNOWN_COUNT) {
        dexData->unk_10C[v0] = param1;
    }
}

static int sub_02026464(const PokedexData *dexData, u32 param1)
{
    u32 v0;
    u32 v1;
    const u8 *v2;

    GF_ASSERT((param1 == 422) || (param1 == 423) || (param1 == 492) || (param1 == 487));

    if (Pokedex_EncounteredSpecies(dexData, param1) == 0) {
        return 0;
    }

    switch (param1) {
    case 422:
        v2 = &dexData->unk_108;
        break;
    case 423:
        v2 = &dexData->unk_109;
        break;
    case 492:
        v2 = &dexData->unk_320;
        break;
    case 487:
        v2 = &dexData->unk_321;
        break;
    }

    v0 = ReadBit(v2, 1);
    v1 = ReadBit(v2, 2);

    if (v0 == v1) {
        return 1;
    }

    return 2;
}

static BOOL sub_02026514(const PokedexData *dexData, u32 param1, u8 param2)
{
    u32 v0;
    u32 v1;
    u32 v2;
    const u8 *v3;

    GF_ASSERT((param1 == 422) || (param1 == 423) || (param1 == 492) || (param1 == 487));

    if (Pokedex_EncounteredSpecies(dexData, param1) == 0) {
        return 0;
    }

    switch (param1) {
    case 422:
        v3 = &dexData->unk_108;
        break;
    case 423:
        v3 = &dexData->unk_109;
        break;
    case 492:
        v3 = &dexData->unk_320;
        break;
    case 487:
        v3 = &dexData->unk_321;
        break;
    }

    v2 = sub_02026464(dexData, param1);

    for (v1 = 0; v1 < v2; v1++) {
        v0 = ReadBit(v3, v1 + 1);

        if (v0 == param2) {
            return 1;
        }
    }

    return 0;
}

static void sub_020265E8(PokedexData *dexData, u32 param1, int param2)
{
    int v0;
    u8 *v1;

    GF_ASSERT((param1 == 422) || (param1 == 423) || (param1 == 492) || (param1 == 487));

    if (sub_02026514(dexData, param1, param2)) {
        return;
    }

    switch (param1) {
    case 422:
        v1 = &dexData->unk_108;
        break;
    case 423:
        v1 = &dexData->unk_109;
        break;
    case 492:
        v1 = &dexData->unk_320;
        break;
    case 487:
        v1 = &dexData->unk_321;
        break;
    }

    v0 = sub_02026464(dexData, param1);

    if (v0 < 2) {
        inline_02026360(v1, param2, v0 + 1);

        if (v0 == 0) {
            inline_02026360(v1, param2, v0 + 2);
        }
    }
}

static int sub_020266F8(const PokedexData *dexData, u32 param1)
{
    u32 v0;
    int v1;
    const u8 *v2;

    GF_ASSERT((param1 == 412) || (param1 == 413));

    if (Pokedex_EncounteredSpecies(dexData, param1) == 0) {
        return 0;
    }

    if (param1 == 412) {
        v2 = &dexData->unk_10A;
    } else {
        v2 = &dexData->unk_10B;
    }

    for (v1 = 0; v1 < 3; v1++) {
        v0 = inline_020266F8(v2, v1);

        if (v0 == 3) {
            break;
        }
    }

    return v1;
}

static BOOL sub_02026754(const PokedexData *dexData, u32 param1, u8 param2)
{
    u32 v0;
    int v1;
    const u8 *v2;

    GF_ASSERT((param1 == 412) || (param1 == 413));

    if (Pokedex_EncounteredSpecies(dexData, param1) == 0) {
        return 0;
    }

    if (param1 == 412) {
        v2 = &dexData->unk_10A;
    } else {
        v2 = &dexData->unk_10B;
    }

    for (v1 = 0; v1 < 3; v1++) {
        v0 = inline_020266F8(v2, v1);

        if (v0 == param2) {
            return 1;
        }
    }

    return 0;
}

static void sub_020267B8(PokedexData *dexData, u32 param1, int param2)
{
    int v0;
    u8 *v1;

    GF_ASSERT((param1 == 412) || (param1 == 413));

    if (sub_02026754(dexData, param1, param2)) {
        return;
    }

    if (param1 == 412) {
        v1 = &dexData->unk_10A;
    } else {
        v1 = &dexData->unk_10B;
    }

    v0 = sub_020266F8(dexData, param1);

    if (v0 < 3) {
        inline_020267B8(v1, param2, v0);
    }
}

static void sub_02026834(u32 *param0, u8 param1, u8 param2)
{
    u32 v0 = (24 + (param2 * 4));
    u32 v1 = ~(15 << v0);

    param0[16 - 1] &= v1;
    param0[16 - 1] |= (param1 << v0);
}

static void sub_02026850(PokedexData *dexData, u8 param1, u8 param2)
{
    GF_ASSERT(param2 < 4);
    GF_ASSERT(param1 <= 15);

    if (param2 < 2) {
        sub_02026834(dexData->caughtPokemon, param1, param2);
    } else {
        sub_02026834(dexData->seenPokemon, param1, param2 - 2);
    }
}

static inline u32 inline_0202688C(const u32 *param0, u8 param1)
{
    u32 v0 = (24 + (param1 * 4));
    u32 v1 = (param0[16 - 1] >> v0) & 15;

    return v1;
}

static u32 sub_0202688C(const PokedexData *dexData, u8 param1)
{
    u32 v0;

    if (param1 < 2) {
        v0 = inline_0202688C(dexData->caughtPokemon, param1);
    } else {
        v0 = inline_0202688C(dexData->seenPokemon, param1 - 2);
    }

    return v0;
}

static u32 sub_020268B8(const PokedexData *dexData)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (sub_0202688C(dexData, v0) == 15) {
            break;
        }
    }

    return v0;
}

static BOOL sub_020268D8(const PokedexData *dexData, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (sub_0202688C(dexData, v0) == param1) {
            return 1;
        }
    }

    return 0;
}

static void sub_020268FC(PokedexData *dexData, u16 param1, Pokemon *param2)
{
    u8 v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
    u32 v1;

    if (param1 == 386) {
        if (sub_020268D8(dexData, v0) == 0) {
            v1 = sub_020268B8(dexData);
            sub_02026850(dexData, v0, v1);
        }
    }
}

static void sub_0202693C(PokedexData *dexData)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_02026850(dexData, 0xf, v0);
    }
}

static inline u32 inline_02026958(u32 param0, u32 param1)
{
    return (param0 >> (param1 * 3)) & 0x7;
}

static inline void inline_02026A00(u32 *param0, u32 param1, u32 param2)
{
    GF_ASSERT(param2 < 0x7);

    (*param0) &= ~(0x7 << (param1 * 3));
    (*param0) |= (param2 << (param1 * 3));
}

static int sub_02026958(const PokedexData *dexData, u32 param1)
{
    u32 v0;
    int v1, v2;

    GF_ASSERT(param1 == 479);

    if (Pokedex_EncounteredSpecies(dexData, param1) == 0) {
        return 0;
    }

    v2 = 0;

    for (v1 = 0; v1 < 6; v1++) {
        v0 = inline_02026958(dexData->unk_31C, v1);

        if (v0 != 0x7) {
            v2++;
        } else {
            break;
        }
    }

    return v2;
}

static BOOL sub_020269A4(const PokedexData *dexData, u32 param1, u8 param2)
{
    int v0;
    u32 v1;
    u32 v2;

    GF_ASSERT(param1 == 479);

    if (Pokedex_EncounteredSpecies(dexData, param1) == 0) {
        return 0;
    }

    v1 = sub_02026958(dexData, param1);

    for (v0 = 0; v0 < v1; v0++) {
        v2 = inline_02026958(dexData->unk_31C, v0);

        if (v2 == param2) {
            return 1;
        }
    }

    return 0;
}

static void sub_02026A00(PokedexData *dexData, u32 param1, int param2)
{
    int v0;

    GF_ASSERT(param1 == 479);

    if (sub_020269A4(dexData, param1, param2)) {
        return;
    }

    v0 = sub_02026958(dexData, param1);

    if (v0 < 6) {
        inline_02026A00(&dexData->unk_31C, v0, param2);
    }
}

static void sub_02026A60(PokedexData *dexData, u16 param1, Pokemon *param2)
{
    int v0;

    switch (param1) {
    case 201:
        v0 = Pokemon_GetForm(param2);
        sub_0202643C(dexData, v0);
        break;
    case 412:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020267B8(dexData, param1, v0);
        break;
    case 413:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020267B8(dexData, param1, v0);
        break;
    case 422:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020265E8(dexData, param1, v0);
        break;
    case 423:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020265E8(dexData, param1, v0);
        break;
    case 386:
        sub_020268FC(dexData, param1, param2);
        break;
    case 492:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020265E8(dexData, param1, v0);
        break;
    case 487:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020265E8(dexData, param1, v0);
        break;
    case 479:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_02026A00(dexData, param1, v0);
        break;
    default:
        break;
    }
}

static void sub_02026B88(PokedexData *dexData, u16 param1, u32 param2)
{
    int v0;
    int v1;

    v0 = param1;
    v1 = sub_020986CC(param2);

    if (v1 == 6) {
        return;
    }

    dexData->recordedLanguages[v0] |= 1 << v1;
}

static u32 sub_02026BAC(const PokedexData *dexData, u16 param1, int param2)
{
    u32 v0, v1;
    u32 v2;

    if (PokemonPersonalData_GetSpeciesValue(param1, 18) == 255) {
        if (param2 == 0) {
            return 2;
        } else {
            return -1;
        }
    }

    v0 = inline_02026BAC(dexData, param1, 0);

    if (param2 == 1) {
        v1 = inline_02026BAC(dexData, param1, 1);

        if (v1 == v0) {
            v2 = -1;
        } else {
            v2 = v1;
        }
    } else {
        v2 = v0;
    }

    return v2;
}

static inline int inline_020270AC(const PokedexData *dexData, int param1)
{
    return dexData->unk_10C[param1];
}

static int sub_02026C24(const PokedexData *dexData, u32 param1, int param2)
{
    const u8 *v0;

    GF_ASSERT((param1 == 422) || (param1 == 423) || (param1 == 492) || (param1 == 487));
    GF_ASSERT(param2 < 2);

    switch (param1) {
    case 422:
        v0 = &dexData->unk_108;
        break;
    case 423:
        v0 = &dexData->unk_109;
        break;
    case 492:
        v0 = &dexData->unk_320;
        break;
    case 487:
        v0 = &dexData->unk_321;
        break;
    }

    return ReadBit(v0, param2 + 1);
}

static int sub_02026CCC(const PokedexData *dexData, u32 param1, int param2)
{
    GF_ASSERT(param1 == 479);
    GF_ASSERT(param2 < 6);

    return inline_02026958(dexData->unk_31C, param2);
}

static int sub_02026CFC(const PokedexData *dexData, u32 param1, int param2)
{
    const u8 *v0;

    GF_ASSERT((param1 == 412) || (param1 == 413));
    GF_ASSERT(param2 < 3);

    if (param1 == 412) {
        v0 = &dexData->unk_10A;
    } else {
        v0 = &dexData->unk_10B;
    }

    return inline_020266F8(v0, param2);
}

static BOOL sub_02026D44(u16 param0)
{
    int v0;
    BOOL v1;
    static const u16 v2[11] = {
        0x97,
        0xF9,
        0xFA,
        0xFB,
        0x181,
        0x182,
        0x1E9,
        0x1EA,
        0x1EB,
        0x1EC,
        0x1ED
    };

    v1 = 1;

    for (v0 = 0; v0 < 11; v0++) {
        if (v2[v0] == param0) {
            v1 = 0;
        }
    }

    return v1;
}

static BOOL sub_02026D68(u16 param0)
{
    return 1;
}

void Pokedex_Init(PokedexData *dexData)
{
    memset(dexData, 0, sizeof(PokedexData));

    dexData->magic = 3203386110;
    dexData->nationalDexObtained = FALSE;

    memset(dexData->unk_10C, 0xff, sizeof(u8) * UNOWN_COUNT);

    dexData->unk_108 = 0xff;
    dexData->unk_109 = 0xff;
    dexData->unk_10A = 0xff;
    dexData->unk_10B = 0xff;
    dexData->unk_31C = 0xffffffff;
    dexData->unk_320 = 0xff;
    dexData->unk_321 = 0xff;

    sub_0202693C(dexData);
}

u16 sub_02026DD0(const PokedexData *dexData)
{
    int v0;
    int v1;

    CheckPokedexIntegrity(dexData);
    v1 = 0;

    for (v0 = 1; v0 <= NATIONAL_DEX_COUNT; v0++) {
        if (Pokedex_CaughtSpecies(dexData, v0) == 1) {
            v1++;
        }
    }

    return v1;
}

u16 sub_02026E0C(const PokedexData *dexData)
{
    int v0;
    int v1;

    CheckPokedexIntegrity(dexData);
    v1 = 0;

    for (v0 = 1; v0 <= NATIONAL_DEX_COUNT; v0++) {
        if (Pokedex_EncounteredSpecies(dexData, v0) == 1) {
            v1++;
        }
    }

    return v1;
}

u16 sub_02026E48(const PokedexData *dexData)
{
    if (Pokedex_NationalUnlocked(dexData)) {
        return sub_02026E0C(dexData);
    }

    return sub_02026EAC(dexData);
}

u16 sub_02026E64(const PokedexData *dexData)
{
    int v0;
    int v1;

    CheckPokedexIntegrity(dexData);
    v1 = 0;

    for (v0 = 1; v0 <= NATIONAL_DEX_COUNT; v0++) {
        if (Pokedex_CaughtSpecies(dexData, v0) == 1) {
            if (Pokemon_SinnohDexNumber(v0) != 0) {
                v1++;
            }
        }
    }

    return v1;
}

u16 sub_02026EAC(const PokedexData *dexData)
{
    int v0;
    int v1;

    CheckPokedexIntegrity(dexData);
    v1 = 0;

    for (v0 = 1; v0 <= NATIONAL_DEX_COUNT; v0++) {
        if (Pokedex_EncounteredSpecies(dexData, v0) == 1) {
            if (Pokemon_SinnohDexNumber(v0) != 0) {
                v1++;
            }
        }
    }

    return v1;
}

BOOL sub_02026EF4(const PokedexData *dexData)
{
    u16 v0;

    v0 = sub_02026F20(dexData);

    if (v0 >= 482) {
        return 1;
    }

    return 0;
}

BOOL sub_02026F0C(const PokedexData *dexData)
{
    u16 v0;

    v0 = sub_02026F58(dexData);

    if (v0 >= LOCAL_DEX_COUNT) {
        return 1;
    }

    return 0;
}

u16 sub_02026F20(const PokedexData *dexData)
{
    int v0;
    u16 v1;

    v1 = 0;

    for (v0 = 1; v0 <= NATIONAL_DEX_COUNT; v0++) {
        if (Pokedex_CaughtSpecies(dexData, v0) == 1) {
            if (sub_02026D44(v0) == 1) {
                v1++;
            }
        }
    }

    return v1;
}

u16 sub_02026F58(const PokedexData *dexData)
{
    int v0;
    u16 v1;
    u32 v2;

    v1 = 0;

    for (v0 = 1; v0 <= NATIONAL_DEX_COUNT; v0++) {
        if (Pokedex_EncounteredSpecies(dexData, v0) == 1) {
            v2 = Pokemon_SinnohDexNumber(v0);

            if (v2 != 0) {
                if (sub_02026D68(v0) == 1) {
                    v1++;
                }
            }
        }
    }

    return v1;
}

BOOL Pokedex_CaughtSpecies(const PokedexData *dexData, u16 species)
{
    CheckPokedexIntegrity(dexData);

    if (Pokedex_InvalidSpecies(species)) {
        return 0;
    }

    if (Read_CaughtSpecies(dexData, species) && Read_SeenSpecies(dexData, species)) {
        return 1;
    } else {
        return 0;
    }
}

BOOL Pokedex_EncounteredSpecies(const PokedexData *dexData, u16 species)
{
    CheckPokedexIntegrity(dexData);

    if (Pokedex_InvalidSpecies(species)) {
        return 0;
    }

    return Read_SeenSpecies(dexData, species);
}

u32 sub_0202702C(const PokedexData *dexData, u8 param1)
{
    u32 v0;

    CheckPokedexIntegrity(dexData);

    switch (param1) {
    case 0:
        v0 = dexData->unk_104;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}

u32 sub_02027058(const PokedexData *dexData, u16 species, int param2)
{
    CheckPokedexIntegrity(dexData);

    if (Pokedex_InvalidSpecies(species)) {
        return -1;
    }

    if (!Read_SeenSpecies(dexData, species)) {
        return -1;
    }

    return sub_02026BAC(dexData, species, param2);
}

u32 sub_020270AC(const PokedexData *dexData, int param1)
{
    CheckPokedexIntegrity(dexData);

    if (sub_02026400(dexData) <= param1) {
        return -1;
    }

    return inline_020270AC(dexData, param1);
}

u32 sub_020270DC(const PokedexData *dexData)
{
    CheckPokedexIntegrity(dexData);
    return sub_02026400(dexData);
}

u32 sub_020270F8(const PokedexData *dexData, int param1)
{
    CheckPokedexIntegrity(dexData);

    if (sub_02026464(dexData, 422) <= param1) {
        return -1;
    }

    return sub_02026C24(dexData, 422, param1);
}

u32 sub_02027130(const PokedexData *dexData)
{
    CheckPokedexIntegrity(dexData);
    return sub_02026464(dexData, 422);
}

u32 sub_02027154(const PokedexData *dexData, int param1)
{
    CheckPokedexIntegrity(dexData);

    if (sub_02026464(dexData, 423) <= param1) {
        return -1;
    }

    return sub_02026C24(dexData, 423, param1);
}

u32 sub_0202718C(const PokedexData *dexData)
{
    CheckPokedexIntegrity(dexData);
    return sub_02026464(dexData, 423);
}

u32 sub_020271B0(const PokedexData *dexData, int param1)
{
    CheckPokedexIntegrity(dexData);

    if (sub_020266F8(dexData, 412) <= param1) {
        return -1;
    }

    return sub_02026CFC(dexData, 412, param1);
}

u32 sub_020271E8(const PokedexData *dexData)
{
    CheckPokedexIntegrity(dexData);
    return sub_020266F8(dexData, 412);
}

u32 sub_02027208(const PokedexData *dexData, int param1)
{
    CheckPokedexIntegrity(dexData);

    if (sub_020266F8(dexData, 413) <= param1) {
        return -1;
    }

    return sub_02026CFC(dexData, 413, param1);
}

u32 sub_02027240(const PokedexData *dexData)
{
    CheckPokedexIntegrity(dexData);
    return sub_020266F8(dexData, 413);
}

u32 sub_02027264(const PokedexData *dexData, int param1)
{
    CheckPokedexIntegrity(dexData);
    return sub_0202688C(dexData, param1);
}

u32 sub_02027288(const PokedexData *dexData)
{
    CheckPokedexIntegrity(dexData);
    return sub_020268B8(dexData);
}

void sub_020272A4(PokedexData *dexData, Pokemon *pokemon)
{
    u16 species = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
    u32 v1 = Pokemon_GetValue(pokemon, MON_DATA_PERSONALITY, NULL);
    u32 v2 = Pokemon_GetGender(pokemon);
    u32 v3;

    CheckPokedexIntegrity(dexData);

    if (Pokedex_InvalidSpecies(species)) {
        return;
    }

    if (!Read_SeenSpecies(dexData, species)) {
        inline_0202736C_1(dexData, species, v1);
        sub_020263D8(dexData, v2, 0, species);
    } else {
        v3 = inline_02026BAC(dexData, species, 0);

        if (v3 != v2) {
            sub_020263D8(dexData, v2, 1, species);
        }
    }

    sub_02026A60(dexData, species, pokemon);
    Write_SeenSpecies(dexData, species);
}

void sub_0202736C(PokedexData *dexData, Pokemon *param1)
{
    u16 species = Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL);
    u32 v1 = Pokemon_GetValue(param1, MON_DATA_LANGUAGE, NULL);
    u32 v2 = Pokemon_GetValue(param1, MON_DATA_PERSONALITY, NULL);
    u32 v3 = Pokemon_GetGender(param1);
    u32 v4;

    CheckPokedexIntegrity(dexData);

    if (Pokedex_InvalidSpecies(species)) {
        return;
    }

    if (!Read_SeenSpecies(dexData, species)) {
        inline_0202736C_1(dexData, species, v2);
        sub_020263D8(dexData, v3, 0, species);
    } else {
        v4 = inline_02026BAC(dexData, species, 0);

        if (v4 != v3) {
            sub_020263D8(dexData, v3, 1, species);
        }
    }

    sub_02026A60(dexData, species, param1);
    sub_02026B88(dexData, species, v1);

    Write_CaughtSpecies(dexData, species);
    Write_SeenSpecies(dexData, species);
}

void sub_02027454(PokedexData *dexData)
{
    CheckPokedexIntegrity(dexData);
    dexData->nationalDexObtained = 1;
}

BOOL Pokedex_NationalUnlocked(const PokedexData *dexData)
{
    CheckPokedexIntegrity(dexData);
    return dexData->nationalDexObtained;
}

BOOL Pokedex_CanDetectForms(const PokedexData *dexData)
{
    CheckPokedexIntegrity(dexData);
    return dexData->canDetectForms;
}

void Pokedex_CanDetectForms_True(PokedexData *dexData)
{
    CheckPokedexIntegrity(dexData);
    dexData->canDetectForms = 1;
}

BOOL sub_020274D0(const PokedexData *dexData, u16 species, u32 param2)
{
    int speciesInt;

    GF_ASSERT(param2 < 8);

    CheckPokedexIntegrity(dexData);

    speciesInt = species;
    param2 = sub_020986CC(param2);

    return dexData->recordedLanguages[speciesInt] & (1 << param2);
}

void sub_02027508(PokedexData *dexData)
{
    dexData->unk_319 = 1;
}

BOOL sub_02027514(const PokedexData *dexData)
{
    return dexData->unk_319;
}

BOOL sub_02027520(const PokedexData *dexData)
{
    CheckPokedexIntegrity(dexData);
    return dexData->pokedexObtained;
}

void sub_02027540(PokedexData *dexData)
{
    CheckPokedexIntegrity(dexData);
    dexData->pokedexObtained = 1;
}

PokedexData *SaveData_Pokedex(SaveData *param0)
{
    PokedexData *v0;

    v0 = SaveData_SaveTable(param0, 7);
    return v0;
}

u32 sub_0202756C(const PokedexData *dexData, int species, int param2)
{
    CheckPokedexIntegrity(dexData);

    switch (species) {
    case SPECIES_UNOWN:
        if (param2 < sub_020270DC(dexData)) {
            return sub_020270AC(dexData, param2);
        }
        break;
    case SPECIES_SHELLOS:
        if (param2 < sub_02027130(dexData)) {
            return sub_020270F8(dexData, param2);
        }
        break;
    case SPECIES_GASTRODON:
        if (param2 < sub_0202718C(dexData)) {
            return sub_02027154(dexData, param2);
        }
        break;
    case SPECIES_BURMY:
        if (param2 < sub_020271E8(dexData)) {
            return sub_020271B0(dexData, param2);
        }
        break;
    case SPECIES_WORMADAM:
        if (param2 < sub_02027240(dexData)) {
            return sub_02027208(dexData, param2);
        }
        break;
    case SPECIES_DEOXYS:
        if (param2 < sub_02027288(dexData)) {
            return sub_02027264(dexData, param2);
        }
        break;
    case SPECIES_SHAYMIN:
        if (param2 < sub_02026464(dexData, SPECIES_SHAYMIN)) {
            return sub_02026C24(dexData, SPECIES_SHAYMIN, param2);
        }
        break;
    case SPECIES_GIRATINA:
        if (param2 < sub_02026464(dexData, SPECIES_GIRATINA)) {
            return sub_02026C24(dexData, SPECIES_GIRATINA, param2);
        }
        break;
    case SPECIES_ROTOM:
        if (param2 < sub_02026958(dexData, SPECIES_ROTOM)) {
            return sub_02026CCC(dexData, SPECIES_ROTOM, param2);
        }
        break;
    default:
        break;
    }

    return 0;
}

u32 sub_020276C8(const PokedexData *pokedex, int species)
{
    CheckPokedexIntegrity(pokedex);

    switch (species) {
    case SPECIES_UNOWN:
        return sub_020270DC(pokedex);
    case SPECIES_SHELLOS:
        return sub_02027130(pokedex);
    case SPECIES_GASTRODON:
        return sub_0202718C(pokedex);
    case SPECIES_BURMY:
        return sub_020271E8(pokedex);
    case SPECIES_WORMADAM:
        return sub_02027240(pokedex);
    case SPECIES_DEOXYS:
        return sub_02027288(pokedex);
    case SPECIES_SHAYMIN:
        return sub_02026464(pokedex, 492);
    case SPECIES_GIRATINA:
        return sub_02026464(pokedex, 487);
    case SPECIES_ROTOM:
        return sub_02026958(pokedex, 479);
    default:
        break;
    }

    return 1;
}
