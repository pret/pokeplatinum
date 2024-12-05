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

typedef struct Pokedex {
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
} Pokedex;

int Pokedex_SaveSize(void)
{
    return sizeof(Pokedex);
}

Pokedex *Pokedex_New(u32 param0)
{
    Pokedex *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(Pokedex));
    Pokedex_Init(v0);

    return v0;
}

void Pokedex_Copy(const Pokedex *src, Pokedex *dest)
{
    MI_CpuCopy8(src, dest, sizeof(Pokedex));
}

static inline void CheckPokedexIntegrity(const Pokedex *param0)
{
    GF_ASSERT(param0->magic == 3203386110);
}

static BOOL IsSpeciesOutOfBounds(u16 species)
{
    if (species == SPECIES_NONE || species > NATIONAL_DEX_COUNT) {
        GF_ASSERT(0);
        return TRUE;
    } else {
        return FALSE;
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

static inline void Write_SeenSpecies(Pokedex *param0, u16 species)
{
    WriteBit((u8 *)param0->seenPokemon, species);
}

static inline void Write_CaughtSpecies(Pokedex *param0, u16 species)
{
    WriteBit((u8 *)param0->caughtPokemon, species);
}

static void sub_02026360(Pokedex *param0, u8 param1, u8 param2, u16 param3)
{
    if (param2 == 0) {
        inline_02026360((u8 *)param0->recordedGenders[1], param1, param3);
    }

    inline_02026360((u8 *)param0->recordedGenders[param2], param1, param3);
}

static void sub_020263D8(Pokedex *param0, u8 param1, u8 param2, u16 param3)
{
    GF_ASSERT(param1 <= 2);

    if (param1 == 2) {
        param1 = 0;
    }

    sub_02026360(param0, param1, param2, param3);
}

static inline BOOL CheckSeenMask(const Pokedex *pokedex, u16 species)
{
    return ReadBit((const u8 *)pokedex->seenPokemon, species);
}

static inline BOOL CheckCaughtMask(const Pokedex *pokedex, u16 species)
{
    return ReadBit((const u8 *)pokedex->caughtPokemon, species);
}

static inline u8 inline_02026BAC(const Pokedex *param0, u16 param1, u8 param2)
{
    return ReadBit((const u8 *)param0->recordedGenders[param2], param1);
}

static inline void inline_0202736C_1(Pokedex *param0, u16 param1, u32 param2)
{
    if (param1 == SPECIES_SPINDA) {
        param0->unk_104 = param2;
    }
}

static int sub_02026400(const Pokedex *param0)
{
    int v0;

    for (v0 = 0; v0 < UNOWN_COUNT; v0++) {
        if (param0->unk_10C[v0] == 0xff) {
            break;
        }
    }

    return v0;
}

static BOOL sub_02026418(const Pokedex *param0, u8 param1)
{
    int v0;

    for (v0 = 0; v0 < UNOWN_COUNT; v0++) {
        if (param0->unk_10C[v0] == param1) {
            return 1;
        }
    }

    return 0;
}

static void sub_0202643C(Pokedex *param0, int param1)
{
    int v0;

    if (sub_02026418(param0, param1)) {
        return;
    }

    v0 = sub_02026400(param0);

    if (v0 < UNOWN_COUNT) {
        param0->unk_10C[v0] = param1;
    }
}

static int sub_02026464(const Pokedex *param0, u32 param1)
{
    u32 v0;
    u32 v1;
    const u8 *v2;

    GF_ASSERT((param1 == 422) || (param1 == 423) || (param1 == 492) || (param1 == 487));

    if (Pokedex_HasSeenSpecies(param0, param1) == FALSE) {
        return 0;
    }

    switch (param1) {
    case 422:
        v2 = &param0->unk_108;
        break;
    case 423:
        v2 = &param0->unk_109;
        break;
    case 492:
        v2 = &param0->unk_320;
        break;
    case 487:
        v2 = &param0->unk_321;
        break;
    }

    v0 = ReadBit(v2, 1);
    v1 = ReadBit(v2, 2);

    if (v0 == v1) {
        return 1;
    }

    return 2;
}

static BOOL sub_02026514(const Pokedex *param0, u32 param1, u8 param2)
{
    u32 v0;
    u32 v1;
    u32 v2;
    const u8 *v3;

    GF_ASSERT((param1 == 422) || (param1 == 423) || (param1 == 492) || (param1 == 487));

    if (Pokedex_HasSeenSpecies(param0, param1) == FALSE) {
        return 0;
    }

    switch (param1) {
    case 422:
        v3 = &param0->unk_108;
        break;
    case 423:
        v3 = &param0->unk_109;
        break;
    case 492:
        v3 = &param0->unk_320;
        break;
    case 487:
        v3 = &param0->unk_321;
        break;
    }

    v2 = sub_02026464(param0, param1);

    for (v1 = 0; v1 < v2; v1++) {
        v0 = ReadBit(v3, v1 + 1);

        if (v0 == param2) {
            return 1;
        }
    }

    return 0;
}

static void sub_020265E8(Pokedex *param0, u32 param1, int param2)
{
    int v0;
    u8 *v1;

    GF_ASSERT((param1 == 422) || (param1 == 423) || (param1 == 492) || (param1 == 487));

    if (sub_02026514(param0, param1, param2)) {
        return;
    }

    switch (param1) {
    case 422:
        v1 = &param0->unk_108;
        break;
    case 423:
        v1 = &param0->unk_109;
        break;
    case 492:
        v1 = &param0->unk_320;
        break;
    case 487:
        v1 = &param0->unk_321;
        break;
    }

    v0 = sub_02026464(param0, param1);

    if (v0 < 2) {
        inline_02026360(v1, param2, v0 + 1);

        if (v0 == 0) {
            inline_02026360(v1, param2, v0 + 2);
        }
    }
}

static int sub_020266F8(const Pokedex *param0, u32 param1)
{
    u32 v0;
    int v1;
    const u8 *v2;

    GF_ASSERT((param1 == SPECIES_BURMY) || (param1 == SPECIES_WORMADAM));

    if (Pokedex_HasSeenSpecies(param0, param1) == FALSE) {
        return 0;
    }

    if (param1 == SPECIES_BURMY) {
        v2 = &param0->unk_10A;
    } else {
        v2 = &param0->unk_10B;
    }

    for (v1 = 0; v1 < 3; v1++) {
        v0 = inline_020266F8(v2, v1);

        if (v0 == 3) {
            break;
        }
    }

    return v1;
}

static BOOL sub_02026754(const Pokedex *param0, u32 param1, u8 param2)
{
    u32 v0;
    int v1;
    const u8 *v2;

    GF_ASSERT((param1 == 412) || (param1 == 413));

    if (Pokedex_HasSeenSpecies(param0, param1) == FALSE) {
        return 0;
    }

    if (param1 == 412) {
        v2 = &param0->unk_10A;
    } else {
        v2 = &param0->unk_10B;
    }

    for (v1 = 0; v1 < 3; v1++) {
        v0 = inline_020266F8(v2, v1);

        if (v0 == param2) {
            return 1;
        }
    }

    return 0;
}

static void sub_020267B8(Pokedex *param0, u32 param1, int param2)
{
    int v0;
    u8 *v1;

    GF_ASSERT((param1 == SPECIES_BURMY) || (param1 == SPECIES_WORMADAM));

    if (sub_02026754(param0, param1, param2)) {
        return;
    }

    if (param1 == SPECIES_BURMY) {
        v1 = &param0->unk_10A;
    } else {
        v1 = &param0->unk_10B;
    }

    v0 = sub_020266F8(param0, param1);

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

static void sub_02026850(Pokedex *param0, u8 param1, u8 param2)
{
    GF_ASSERT(param2 < 4);
    GF_ASSERT(param1 <= 15);

    if (param2 < 2) {
        sub_02026834(param0->caughtPokemon, param1, param2);
    } else {
        sub_02026834(param0->seenPokemon, param1, param2 - 2);
    }
}

static inline u32 inline_0202688C(const u32 *param0, u8 param1)
{
    u32 v0 = (24 + (param1 * 4));
    u32 v1 = (param0[16 - 1] >> v0) & 15;

    return v1;
}

static u32 sub_0202688C(const Pokedex *param0, u8 param1)
{
    u32 v0;

    if (param1 < 2) {
        v0 = inline_0202688C(param0->caughtPokemon, param1);
    } else {
        v0 = inline_0202688C(param0->seenPokemon, param1 - 2);
    }

    return v0;
}

static u32 sub_020268B8(const Pokedex *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (sub_0202688C(param0, v0) == 15) {
            break;
        }
    }

    return v0;
}

static BOOL sub_020268D8(const Pokedex *param0, u32 param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (sub_0202688C(param0, v0) == param1) {
            return 1;
        }
    }

    return 0;
}

static void sub_020268FC(Pokedex *param0, u16 param1, Pokemon *param2)
{
    u8 v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
    u32 v1;

    if (param1 == SPECIES_DEOXYS) {
        if (sub_020268D8(param0, v0) == 0) {
            v1 = sub_020268B8(param0);
            sub_02026850(param0, v0, v1);
        }
    }
}

static void sub_0202693C(Pokedex *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_02026850(param0, 0xf, v0);
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

static int sub_02026958(const Pokedex *param0, u32 param1)
{
    u32 v0;
    int v1, v2;

    GF_ASSERT(param1 == 479);

    if (Pokedex_HasSeenSpecies(param0, param1) == FALSE) {
        return 0;
    }

    v2 = 0;

    for (v1 = 0; v1 < 6; v1++) {
        v0 = inline_02026958(param0->unk_31C, v1);

        if (v0 != 0x7) {
            v2++;
        } else {
            break;
        }
    }

    return v2;
}

static BOOL sub_020269A4(const Pokedex *param0, u32 param1, u8 param2)
{
    int v0;
    u32 v1;
    u32 v2;

    GF_ASSERT(param1 == 479);

    if (Pokedex_HasSeenSpecies(param0, param1) == FALSE) {
        return 0;
    }

    v1 = sub_02026958(param0, param1);

    for (v0 = 0; v0 < v1; v0++) {
        v2 = inline_02026958(param0->unk_31C, v0);

        if (v2 == param2) {
            return 1;
        }
    }

    return 0;
}

static void sub_02026A00(Pokedex *param0, u32 param1, int param2)
{
    int v0;

    GF_ASSERT(param1 == 479);

    if (sub_020269A4(param0, param1, param2)) {
        return;
    }

    v0 = sub_02026958(param0, param1);

    if (v0 < 6) {
        inline_02026A00(&param0->unk_31C, v0, param2);
    }
}

static void sub_02026A60(Pokedex *param0, u16 param1, Pokemon *param2)
{
    int v0;

    switch (param1) {
    case SPECIES_UNOWN:
        v0 = Pokemon_GetForm(param2);
        sub_0202643C(param0, v0);
        break;
    case SPECIES_BURMY:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020267B8(param0, param1, v0);
        break;
    case SPECIES_WORMADAM:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020267B8(param0, param1, v0);
        break;
    case SPECIES_SHELLOS:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020265E8(param0, param1, v0);
        break;
    case SPECIES_GASTRODON:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020265E8(param0, param1, v0);
        break;
    case SPECIES_DEOXYS:
        sub_020268FC(param0, param1, param2);
        break;
    case SPECIES_SHAYMIN:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020265E8(param0, param1, v0);
        break;
    case SPECIES_GIRATINA:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_020265E8(param0, param1, v0);
        break;
    case SPECIES_ROTOM:
        v0 = Pokemon_GetValue(param2, MON_DATA_FORM, NULL);
        sub_02026A00(param0, param1, v0);
        break;
    default:
        break;
    }
}

static void sub_02026B88(Pokedex *param0, u16 param1, u32 param2)
{
    int v0;
    int v1;

    v0 = param1;
    v1 = sub_020986CC(param2);

    if (v1 == 6) {
        return;
    }

    param0->recordedLanguages[v0] |= 1 << v1;
}

static u32 sub_02026BAC(const Pokedex *param0, u16 param1, int param2)
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

    v0 = inline_02026BAC(param0, param1, 0);

    if (param2 == 1) {
        v1 = inline_02026BAC(param0, param1, 1);

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

static inline int inline_020270AC(const Pokedex *param0, int param1)
{
    return param0->unk_10C[param1];
}

static int sub_02026C24(const Pokedex *param0, u32 param1, int param2)
{
    const u8 *v0;

    GF_ASSERT((param1 == 422) || (param1 == 423) || (param1 == 492) || (param1 == 487));
    GF_ASSERT(param2 < 2);

    switch (param1) {
    case 422:
        v0 = &param0->unk_108;
        break;
    case 423:
        v0 = &param0->unk_109;
        break;
    case 492:
        v0 = &param0->unk_320;
        break;
    case 487:
        v0 = &param0->unk_321;
        break;
    }

    return ReadBit(v0, param2 + 1);
}

static int sub_02026CCC(const Pokedex *param0, u32 param1, int param2)
{
    GF_ASSERT(param1 == 479);
    GF_ASSERT(param2 < 6);

    return inline_02026958(param0->unk_31C, param2);
}

static int sub_02026CFC(const Pokedex *param0, u32 param1, int param2)
{
    const u8 *v0;

    GF_ASSERT((param1 == 412) || (param1 == 413));
    GF_ASSERT(param2 < 3);

    if (param1 == 412) {
        v0 = &param0->unk_10A;
    } else {
        v0 = &param0->unk_10B;
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

void Pokedex_Init(Pokedex *param0)
{
    memset(param0, 0, sizeof(Pokedex));

    param0->magic = 3203386110;
    param0->nationalDexObtained = FALSE;

    memset(param0->unk_10C, 0xff, sizeof(u8) * UNOWN_COUNT);

    param0->unk_108 = 0xff;
    param0->unk_109 = 0xff;
    param0->unk_10A = 0xff;
    param0->unk_10B = 0xff;
    param0->unk_31C = 0xffffffff;
    param0->unk_320 = 0xff;
    param0->unk_321 = 0xff;

    sub_0202693C(param0);
}

u16 sub_02026DD0(const Pokedex *param0)
{
    int v0;
    int v1;

    CheckPokedexIntegrity(param0);
    v1 = 0;

    for (v0 = 1; v0 <= NATIONAL_DEX_COUNT; v0++) {
        if (Pokedex_HasCaughtSpecies(param0, v0) == 1) {
            v1++;
        }
    }

    return v1;
}

u16 Pokedex_CountSeenNational(const Pokedex *pokedex)
{
    int i;
    CheckPokedexIntegrity(pokedex);

    int seenCount = 0;

    for (i = 1; i <= NATIONAL_DEX_COUNT; i++) {
        if (Pokedex_HasSeenSpecies(pokedex, i) == TRUE) {
            seenCount++;
        }
    }

    return seenCount;
}

u16 Pokedex_CountSeen(const Pokedex *pokedex)
{
    if (Pokedex_IsNationalDexObtained(pokedex)) {
        return Pokedex_CountSeenNational(pokedex);
    }

    return Pokedex_CountSeenSinnoh(pokedex);
}

u16 sub_02026E64(const Pokedex *param0)
{
    int v0;
    int v1;

    CheckPokedexIntegrity(param0);
    v1 = 0;

    for (v0 = 1; v0 <= NATIONAL_DEX_COUNT; v0++) {
        if (Pokedex_HasCaughtSpecies(param0, v0) == 1) {
            if (Pokemon_SinnohDexNumber(v0) != 0) {
                v1++;
            }
        }
    }

    return v1;
}

u16 Pokedex_CountSeenSinnoh(const Pokedex *pokedex)
{
    int i;

    CheckPokedexIntegrity(pokedex);
    int seenCount = 0;

    for (i = 1; i <= NATIONAL_DEX_COUNT; i++) {
        if (Pokedex_HasSeenSpecies(pokedex, i) == TRUE && Pokemon_SinnohDexNumber(i) != 0) {
            seenCount++;
        }
    }

    return seenCount;
}

BOOL sub_02026EF4(const Pokedex *param0)
{
    u16 v0;

    v0 = sub_02026F20(param0);

    if (v0 >= 482) {
        return 1;
    }

    return 0;
}

BOOL sub_02026F0C(const Pokedex *param0)
{
    u16 v0;

    v0 = sub_02026F58(param0);

    if (v0 >= LOCAL_DEX_COUNT) {
        return 1;
    }

    return 0;
}

u16 sub_02026F20(const Pokedex *param0)
{
    int v0;
    u16 v1;

    v1 = 0;

    for (v0 = 1; v0 <= NATIONAL_DEX_COUNT; v0++) {
        if (Pokedex_HasCaughtSpecies(param0, v0) == 1) {
            if (sub_02026D44(v0) == 1) {
                v1++;
            }
        }
    }

    return v1;
}

u16 sub_02026F58(const Pokedex *param0)
{
    int v0;
    u16 v1;
    u32 v2;

    v1 = 0;

    for (v0 = 1; v0 <= NATIONAL_DEX_COUNT; v0++) {
        if (Pokedex_HasSeenSpecies(param0, v0) == TRUE) {
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

BOOL Pokedex_HasCaughtSpecies(const Pokedex *pokedex, u16 species)
{
    CheckPokedexIntegrity(pokedex);

    if (IsSpeciesOutOfBounds(species)) {
        return FALSE;
    }

    if (CheckCaughtMask(pokedex, species) && CheckSeenMask(pokedex, species)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

BOOL Pokedex_HasSeenSpecies(const Pokedex *pokedex, u16 species)
{
    CheckPokedexIntegrity(pokedex);

    if (IsSpeciesOutOfBounds(species)) {
        return FALSE;
    }

    return CheckSeenMask(pokedex, species);
}

u32 sub_0202702C(const Pokedex *param0, u8 param1)
{
    u32 v0;

    CheckPokedexIntegrity(param0);

    switch (param1) {
    case 0:
        v0 = param0->unk_104;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}

u32 sub_02027058(const Pokedex *param0, u16 species, int param2)
{
    CheckPokedexIntegrity(param0);

    if (IsSpeciesOutOfBounds(species)) {
        return -1;
    }

    if (!CheckSeenMask(param0, species)) {
        return -1;
    }

    return sub_02026BAC(param0, species, param2);
}

u32 sub_020270AC(const Pokedex *param0, int param1)
{
    CheckPokedexIntegrity(param0);

    if (sub_02026400(param0) <= param1) {
        return -1;
    }

    return inline_020270AC(param0, param1);
}

u32 sub_020270DC(const Pokedex *param0)
{
    CheckPokedexIntegrity(param0);
    return sub_02026400(param0);
}

u32 sub_020270F8(const Pokedex *param0, int param1)
{
    CheckPokedexIntegrity(param0);

    if (sub_02026464(param0, 422) <= param1) {
        return -1;
    }

    return sub_02026C24(param0, 422, param1);
}

u32 sub_02027130(const Pokedex *param0)
{
    CheckPokedexIntegrity(param0);
    return sub_02026464(param0, 422);
}

u32 sub_02027154(const Pokedex *param0, int param1)
{
    CheckPokedexIntegrity(param0);

    if (sub_02026464(param0, 423) <= param1) {
        return -1;
    }

    return sub_02026C24(param0, 423, param1);
}

u32 sub_0202718C(const Pokedex *param0)
{
    CheckPokedexIntegrity(param0);
    return sub_02026464(param0, 423);
}

u32 sub_020271B0(const Pokedex *param0, int param1)
{
    CheckPokedexIntegrity(param0);

    if (sub_020266F8(param0, 412) <= param1) {
        return -1;
    }

    return sub_02026CFC(param0, 412, param1);
}

u32 sub_020271E8(const Pokedex *param0)
{
    CheckPokedexIntegrity(param0);
    return sub_020266F8(param0, 412);
}

u32 sub_02027208(const Pokedex *param0, int param1)
{
    CheckPokedexIntegrity(param0);

    if (sub_020266F8(param0, 413) <= param1) {
        return -1;
    }

    return sub_02026CFC(param0, 413, param1);
}

u32 sub_02027240(const Pokedex *param0)
{
    CheckPokedexIntegrity(param0);
    return sub_020266F8(param0, 413);
}

u32 sub_02027264(const Pokedex *param0, int param1)
{
    CheckPokedexIntegrity(param0);
    return sub_0202688C(param0, param1);
}

u32 sub_02027288(const Pokedex *param0)
{
    CheckPokedexIntegrity(param0);
    return sub_020268B8(param0);
}

void sub_020272A4(Pokedex *param0, Pokemon *pokemon)
{
    u16 species = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
    u32 v1 = Pokemon_GetValue(pokemon, MON_DATA_PERSONALITY, NULL);
    u32 v2 = Pokemon_GetGender(pokemon);
    u32 v3;

    CheckPokedexIntegrity(param0);

    if (IsSpeciesOutOfBounds(species)) {
        return;
    }

    if (!CheckSeenMask(param0, species)) {
        inline_0202736C_1(param0, species, v1);
        sub_020263D8(param0, v2, 0, species);
    } else {
        v3 = inline_02026BAC(param0, species, 0);

        if (v3 != v2) {
            sub_020263D8(param0, v2, 1, species);
        }
    }

    sub_02026A60(param0, species, pokemon);
    Write_SeenSpecies(param0, species);
}

void sub_0202736C(Pokedex *param0, Pokemon *param1)
{
    u16 species = Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL);
    u32 v1 = Pokemon_GetValue(param1, MON_DATA_LANGUAGE, NULL);
    u32 v2 = Pokemon_GetValue(param1, MON_DATA_PERSONALITY, NULL);
    u32 v3 = Pokemon_GetGender(param1);
    u32 v4;

    CheckPokedexIntegrity(param0);

    if (IsSpeciesOutOfBounds(species)) {
        return;
    }

    if (!CheckSeenMask(param0, species)) {
        inline_0202736C_1(param0, species, v2);
        sub_020263D8(param0, v3, 0, species);
    } else {
        v4 = inline_02026BAC(param0, species, 0);

        if (v4 != v3) {
            sub_020263D8(param0, v3, 1, species);
        }
    }

    sub_02026A60(param0, species, param1);
    sub_02026B88(param0, species, v1);

    Write_CaughtSpecies(param0, species);
    Write_SeenSpecies(param0, species);
}

void sub_02027454(Pokedex *param0)
{
    CheckPokedexIntegrity(param0);
    param0->nationalDexObtained = 1;
}

BOOL Pokedex_IsNationalDexObtained(const Pokedex *pokedex)
{
    CheckPokedexIntegrity(pokedex);
    return pokedex->nationalDexObtained;
}

BOOL Pokedex_CanDetectForms(const Pokedex *param0)
{
    CheckPokedexIntegrity(param0);
    return param0->canDetectForms;
}

void Pokedex_TurnOnFormDetection(Pokedex *param0)
{
    CheckPokedexIntegrity(param0);
    param0->canDetectForms = 1;
}

BOOL sub_020274D0(const Pokedex *param0, u16 species, u32 param2)
{
    int speciesInt;

    GF_ASSERT(param2 < 8);

    CheckPokedexIntegrity(param0);

    speciesInt = species;
    param2 = sub_020986CC(param2);

    return param0->recordedLanguages[speciesInt] & (1 << param2);
}

void sub_02027508(Pokedex *param0)
{
    param0->unk_319 = 1;
}

BOOL sub_02027514(const Pokedex *param0)
{
    return param0->unk_319;
}

BOOL Pokedex_IsObtained(const Pokedex *pokedex)
{
    CheckPokedexIntegrity(pokedex);
    return pokedex->pokedexObtained;
}

void Pokedex_FlagObtained(Pokedex *pokedex)
{
    CheckPokedexIntegrity(pokedex);
    pokedex->pokedexObtained = TRUE;
}

Pokedex *SaveData_Pokedex(SaveData *saveData)
{
    Pokedex *pokedex = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_POKEDEX);
    return pokedex;
}

u32 sub_0202756C(const Pokedex *param0, int species, int param2)
{
    CheckPokedexIntegrity(param0);

    switch (species) {
    case SPECIES_UNOWN:
        if (param2 < sub_020270DC(param0)) {
            return sub_020270AC(param0, param2);
        }
        break;
    case SPECIES_SHELLOS:
        if (param2 < sub_02027130(param0)) {
            return sub_020270F8(param0, param2);
        }
        break;
    case SPECIES_GASTRODON:
        if (param2 < sub_0202718C(param0)) {
            return sub_02027154(param0, param2);
        }
        break;
    case SPECIES_BURMY:
        if (param2 < sub_020271E8(param0)) {
            return sub_020271B0(param0, param2);
        }
        break;
    case SPECIES_WORMADAM:
        if (param2 < sub_02027240(param0)) {
            return sub_02027208(param0, param2);
        }
        break;
    case SPECIES_DEOXYS:
        if (param2 < sub_02027288(param0)) {
            return sub_02027264(param0, param2);
        }
        break;
    case SPECIES_SHAYMIN:
        if (param2 < sub_02026464(param0, SPECIES_SHAYMIN)) {
            return sub_02026C24(param0, SPECIES_SHAYMIN, param2);
        }
        break;
    case SPECIES_GIRATINA:
        if (param2 < sub_02026464(param0, SPECIES_GIRATINA)) {
            return sub_02026C24(param0, SPECIES_GIRATINA, param2);
        }
        break;
    case SPECIES_ROTOM:
        if (param2 < sub_02026958(param0, SPECIES_ROTOM)) {
            return sub_02026CCC(param0, SPECIES_ROTOM, param2);
        }
        break;
    default:
        break;
    }

    return 0;
}

u32 sub_020276C8(const Pokedex *pokedex, int species)
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
