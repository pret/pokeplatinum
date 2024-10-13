#include "overlay021/pokedex_sort.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"

#include "overlay021/struct_ov21_021D3208.h"
#include "overlay021/struct_ov21_021D3320.h"
#include "overlay021/struct_ov21_021D37DC.h"
#include "overlay021/struct_ov21_021D3A60.h"

#include "core_sys.h"
#include "heap.h"
#include "narc.h"
#include "pokedex_data_index.h"
#include "pokedex_heightweight.h"
#include "strbuf.h"
#include "trainer_info.h"
#include "unk_02006E3C.h"
#include "unk_0202631C.h"

static void Pokedex_Sort_Encountered(u16 *pokedexPreFilterArray, int *numEncountered, const PokedexData *dexData, const u16 *speciesArray, int pokedexLength);
static void Pokedex_Sort_Caught(u16 *param0, int *param1, const u16 *param2, int param3, const u16 *param4, int param5, BOOL param6, const PokedexData *dexData);
static void Pokedex_Sort_CaughtStatus(pokedexCompletionStruct *pokedexCompletion, const PokedexData *param1, const u16 *param2, int param3);
static void Pokedex_Sort_IndentifyEnountered_Full(pokedexCompletionStruct *pokedexCompletion, const u16 *param1, int param2);
static void Pokedex_Sort_IndentifyEnountered_Filtered(pokedexCompletionStruct *pokedexCompletion);
static void Pokedex_Sort_NumSeenNCaught(pokedexCompletionStruct *pokedexCompletion, int *numEncountered, int *numCaught);
static u16 *Pokedex_Sort_SortedArray(int heapID, int pokedexSort, int *pokedexLength);
static void Pokedex_Sort_Order(int sortCategory, u16 *pokedexPostFilterArray, int *dexLengthPostFilter, const u16 *param3, int dexLengthPreFilter, int heapID, const PokedexData *dexData);
static void Pokedex_Sort_FilterFirstLetter(int firstLetterFilter, u16 *pokedexPostFilterArray, int *dexLengthPostFilter, const u16 *pokedexPreFilterArray, int numEncountered, int heapID, const PokedexData *dexData);
static void Pokedex_Sort_FilterType(int typeFilter, u16 *param1, int *param2, const u16 *param3, int dexLengthPreFilter, int heapID, const PokedexData *dexData);
static void Pokedex_Sort_FilterBodyShape(int bodyShapeFilter, u16 *param1, int *param2, const u16 *param3, int dexLengthPreFilter, int heapID, const PokedexData *dexData);

void Pokedex_Sort_PopulatePokedexStruct(pokedexStruct *pokedexS, UnkStruct_ov21_021D3208 *param1, int heapID)
{
    int sortCategory;
    int firstLetterFilter;
    int typeFilter1;
    int typeFilter2;
    int bodyShapeFilter;
    BOOL dexExists;
    u32 isNationalDex;

    memset(pokedexS, 0, sizeof(pokedexStruct));

    pokedexS->dexData = param1->dexData;
    pokedexS->timeOfDay = param1->timeOfDay;

    if (Pokedex_NationalUnlocked(pokedexS->dexData)) {
        pokedexS->nationalDexUnlocked = 1;
    } else {
        pokedexS->nationalDexUnlocked = 0;
    }

    if (param1->unk_20 == 2) {
        if (pokedexS->nationalDexUnlocked) {
            isNationalDex = 1;
        } else {
            isNationalDex = 0;
        }
    } else {
        isNationalDex = param1->unk_20;
    }

    if (isNationalDex == 1) {
        pokedexS->isNationalDex = 1;
        sortCategory = 0;
        firstLetterFilter = 0;
        typeFilter1 = 0;
        typeFilter2 = 0;
        bodyShapeFilter = 0;
    } else {
        pokedexS->isNationalDex = 0;
        sortCategory = 0;
        firstLetterFilter = 0;
        typeFilter1 = 0;
        typeFilter2 = 0;
        bodyShapeFilter = 0;
    }

    dexExists = Pokedex_Sort_Unfiltered(pokedexS, sortCategory, firstLetterFilter, typeFilter1, typeFilter2, bodyShapeFilter, pokedexS->isNationalDex, heapID);

    GF_ASSERT(dexExists);

    ov21_021D3794(pokedexS, param1->unk_1C);
    ov21_021D3434(pokedexS, param1->unk_1C);
    ov21_021D344C(pokedexS, param1->unk_20);

    pokedexS->TrainerGameCode = TrainerInfo_GameCode(param1->unk_04);
    pokedexS->TrainerGender = TrainerInfo_Gender(param1->unk_04);
    pokedexS->trainerName = TrainerInfo_NameNewStrbuf(param1->unk_04, heapID);
    pokedexS->HWData = Pokedex_HeightWeightData(heapID);

    if (pokedexS->TrainerGender == 0) {
        Pokedex_HeightWeightData_Load(pokedexS->HWData, 0, heapID);
    } else {
        Pokedex_HeightWeightData_Load(pokedexS->HWData, 1, heapID);
    }

    pokedexS->pokedexSFlag_1 = param1->pokedexSFlag_1;
    pokedexS->pokedexSFlag_2 = param1->pokedexSFlag_2;
    pokedexS->pokedexSFlag_3 = param1->pokedexSFlag_3;
    pokedexS->pokedexSFlag_4 = param1->pokedexSFlag_4;
}

void ov21_021D3320(pokedexStruct *pokedexS)
{
    Strbuf_Free(pokedexS->trainerName);
    Pokedex_HeightWeightData_Release(pokedexS->HWData);
    Pokedex_HeightWeightData_Free(pokedexS->HWData);

    pokedexS->HWData = NULL;
}

u32 ov21_021D334C(const pokedexStruct *pokedexS, int param1, int param2)
{
    u32 v0;

    v0 = sub_02027058(pokedexS->dexData, param1, param2);
    return v0;
}

u32 ov21_021D335C(const pokedexStruct *pokedexS, int param1)
{
    int v0;

    GF_ASSERT(param1 < 28);
    v0 = sub_020270AC(pokedexS->dexData, param1);

    return v0;
}

u32 ov21_021D3374(const pokedexStruct *pokedexS, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 2);
    v0 = sub_020270F8(pokedexS->dexData, param1);

    return v0;
}

u32 ov21_021D338C(const pokedexStruct *pokedexS, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 2);

    v0 = sub_02027154(pokedexS->dexData, param1);
    return v0;
}

u32 ov21_021D33A4(const pokedexStruct *pokedexS, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 3);

    v0 = sub_020271B0(pokedexS->dexData, param1);
    return v0;
}

u32 ov21_021D33BC(const pokedexStruct *pokedexS, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 3);

    v0 = sub_02027208(pokedexS->dexData, param1);
    return v0;
}

u32 ov21_021D33D4(const pokedexStruct *pokedexS, u32 species)
{
    return sub_0202756C(pokedexS->dexData, species, 0);
}

u32 ov21_021D33E0(const pokedexStruct *pokedexS, int param1)
{
    int v0 = ov21_021D334C(pokedexS, param1, 1);

    if (v0 == -1) {
        return 1;
    }

    return 2;
}

u32 ov21_021D33F8(const pokedexStruct *pokedexS)
{
    return sub_0202702C(pokedexS->dexData, 0);
}

u32 ov21_021D3404(const pokedexStruct *pokedexS, int param1)
{
    return sub_02027264(pokedexS->dexData, param1);
}

u32 ov21_021D3410(const pokedexStruct *pokedexS, u32 param1, int param2)
{
    return sub_0202756C(pokedexS->dexData, param1, param2);
}

u32 ov21_021D341C(const pokedexStruct *pokedexS, u32 param1)
{
    return sub_020276C8(pokedexS->dexData, param1);
}

BOOL Pokedex_Sort_PokedexUnlocked(const pokedexStruct *pokedexS)
{
    return Pokedex_NationalUnlocked(pokedexS->dexData);
}

void ov21_021D3434(pokedexStruct *pokedexS, u32 param1)
{
    pokedexS->unk_175C = param1;
}

u32 ov21_021D3440(const pokedexStruct *pokedexS)
{
    return pokedexS->unk_175C;
}

void ov21_021D344C(pokedexStruct *pokedexS, u32 param1)
{
    pokedexS->unk_175E = param1;
}

u32 ov21_021D3458(const pokedexStruct *pokedexS)
{
    return pokedexS->unk_175E;
}

BOOL Pokedex_Sort(pokedexStruct *pokedexS, int sortCategory, int firstLetterFilter, int typeFilter1, int typeFilter2, int bodyShapeFilter, int isNationalDex, int heapID, BOOL isFiltered)
{
    u16 *pokedexPreFilterArray;
    int dexLengthPreFilter;
    u16 *pokedexPostFilterArray;
    int dexLengthPostFilter;
    u16 *pokedexArray;
    int pokedexLength;
    BOOL dexExists;

    pokedexPreFilterArray = Heap_AllocFromHeapAtEnd(heapID, sizeof(u16) * NATIONAL_DEX_COUNT);

    GF_ASSERT(pokedexPreFilterArray);
    memset(pokedexPreFilterArray, 0, sizeof(u16) * NATIONAL_DEX_COUNT);

    dexLengthPreFilter = 0;
    pokedexPostFilterArray = Heap_AllocFromHeapAtEnd(heapID, sizeof(u16) * NATIONAL_DEX_COUNT);

    GF_ASSERT(pokedexPostFilterArray);
    memset(pokedexPostFilterArray, 0, sizeof(u16) * NATIONAL_DEX_COUNT);

    dexLengthPostFilter = 0;

    if (isNationalDex == 0) {
        pokedexArray = Pokedex_Sort_SortedArray(heapID, 1, &pokedexLength);
        Pokedex_Sort_Encountered(pokedexPreFilterArray, &dexLengthPreFilter, pokedexS->dexData, pokedexArray, pokedexLength);
    } else {
        pokedexArray = Pokedex_Sort_SortedArray(heapID, 0, &pokedexLength);
        Pokedex_Sort_Encountered(pokedexPreFilterArray, &dexLengthPreFilter, pokedexS->dexData, pokedexArray, pokedexLength);
    }

    Pokedex_Sort_Order(sortCategory, pokedexPostFilterArray, &dexLengthPostFilter, pokedexPreFilterArray, dexLengthPreFilter, heapID, pokedexS->dexData);

    memcpy(pokedexPreFilterArray, pokedexPostFilterArray, sizeof(u16) * dexLengthPostFilter);
    dexLengthPreFilter = dexLengthPostFilter;

    memset(pokedexPostFilterArray, 0, sizeof(u16) * dexLengthPostFilter);
    dexLengthPostFilter = 0;

    do {
        Pokedex_Sort_FilterFirstLetter(firstLetterFilter, pokedexPostFilterArray, &dexLengthPostFilter, pokedexPreFilterArray, dexLengthPreFilter, heapID, pokedexS->dexData);

        if (dexLengthPostFilter == 0) {
            dexExists = 0;
            break;
        }

        memcpy(pokedexPreFilterArray, pokedexPostFilterArray, sizeof(u16) * dexLengthPostFilter);
        dexLengthPreFilter = dexLengthPostFilter;

        memset(pokedexPostFilterArray, 0, sizeof(u16) * dexLengthPostFilter);
        dexLengthPostFilter = 0;

        Pokedex_Sort_FilterType(typeFilter1, pokedexPostFilterArray, &dexLengthPostFilter, pokedexPreFilterArray, dexLengthPreFilter, heapID, pokedexS->dexData);

        if (dexLengthPostFilter == 0) {
            dexExists = 0;
            break;
        }

        memcpy(pokedexPreFilterArray, pokedexPostFilterArray, sizeof(u16) * dexLengthPostFilter);
        dexLengthPreFilter = dexLengthPostFilter;

        memset(pokedexPostFilterArray, 0, sizeof(u16) * dexLengthPostFilter);
        dexLengthPostFilter = 0;

        Pokedex_Sort_FilterType(typeFilter2, pokedexPostFilterArray, &dexLengthPostFilter, pokedexPreFilterArray, dexLengthPreFilter, heapID, pokedexS->dexData);

        if (dexLengthPostFilter == 0) {
            dexExists = 0;
            break;
        }

        memcpy(pokedexPreFilterArray, pokedexPostFilterArray, sizeof(u16) * dexLengthPostFilter);
        dexLengthPreFilter = dexLengthPostFilter;

        memset(pokedexPostFilterArray, 0, sizeof(u16) * dexLengthPostFilter);
        dexLengthPostFilter = 0;

        Pokedex_Sort_FilterBodyShape(bodyShapeFilter, pokedexPostFilterArray, &dexLengthPostFilter, pokedexPreFilterArray, dexLengthPreFilter, heapID, pokedexS->dexData);

        if (dexLengthPostFilter == 0) {
            dexExists = 0;
            break;
        }

        memcpy(pokedexPreFilterArray, pokedexPostFilterArray, sizeof(u16) * dexLengthPostFilter);
        dexLengthPreFilter = dexLengthPostFilter;

        memset(pokedexPostFilterArray, 0, sizeof(u16) * dexLengthPostFilter);
        dexLengthPostFilter = 0;

        Pokedex_Sort_CaughtStatus(&pokedexS->pokedexCompletion, pokedexS->dexData, pokedexPreFilterArray, dexLengthPreFilter);

        if ((sortCategory != 0) || (firstLetterFilter != 0) || (typeFilter1 != 0) || (typeFilter2 != 0) || (bodyShapeFilter != 0)) {
            isFiltered = 1;
        }

        if (isFiltered == 0) {
            Pokedex_Sort_IndentifyEnountered_Full(&pokedexS->pokedexCompletion, pokedexArray, pokedexLength);
        } else {
            Pokedex_Sort_IndentifyEnountered_Filtered(&pokedexS->pokedexCompletion);
        }

        dexExists = 1;
    } while (0);

    Pokedex_Sort_NumSeenNCaught(&pokedexS->pokedexCompletion, &pokedexS->numEncountered, &pokedexS->numCaught);

    Heap_FreeToHeap(pokedexPreFilterArray);
    Heap_FreeToHeap(pokedexPostFilterArray);
    Heap_FreeToHeap(pokedexArray);

    return dexExists;
}

BOOL Pokedex_Sort_Unfiltered(pokedexStruct *pokedexS, int sortCategory, int firstLetterFilter, int typeFilter1, int typeFilter2, int bodyShapeFilter, int isNationalDex, int heapID)
{
    return Pokedex_Sort(pokedexS, sortCategory, firstLetterFilter, typeFilter1, typeFilter2, bodyShapeFilter, isNationalDex, heapID, 0);
}

BOOL ov21_021D36A4(const pokedexStruct *pokedexS, int param1)
{
    if (param1 == 0) {
        return 1;
    }

    if (pokedexS->nationalDexUnlocked) {
        return 1;
    }

    return 0;
}

BOOL ov21_021D36C0(pokedexStruct *pokedexS, int param1)
{
    BOOL v0;

    v0 = ov21_021D36A4(pokedexS, param1);

    if (v0) {
        pokedexS->isNationalDex = param1;
    }

    return v0;
}

int ov21_021D36D8(const pokedexStruct *pokedexS)
{
    return pokedexS->isNationalDex;
}

BOOL Pokedex_Sort_IsValidDexIndex(const pokedexStruct *pokedexS, int dexIndex)
{
    if (((dexIndex) >= 0) && ((dexIndex) < pokedexS->pokedexCompletion.numEncountered)) {
        return 1;
    }

    return 0;
}

BOOL ov21_021D36FC(pokedexStruct *pokedexS, int dexIndex)
{
    if (Pokedex_Sort_IsValidDexIndex(pokedexS, dexIndex)) {
        pokedexS->pokedexCompletion.unk_F68 = dexIndex;
        return 1;
    }

    return 0;
}

BOOL ov21_021D371C(pokedexStruct *pokedexS, int param1)
{
    if (Pokedex_Sort_IsValidDexIndex(pokedexS, pokedexS->pokedexCompletion.unk_F68 + param1)) {
        pokedexS->pokedexCompletion.unk_F68 += param1;
        return 1;
    }

    if (param1 >= 0) {
        pokedexS->pokedexCompletion.unk_F68 = pokedexS->pokedexCompletion.numEncountered - 1;
    } else {
        pokedexS->pokedexCompletion.unk_F68 = 0;
    }

    return 0;
}

int ov21_021D375C(const pokedexStruct *pokedexS)
{
    return pokedexS->pokedexCompletion.unk_F68;
}

int Pokedex_Sort_CompletionNumEncountered(const pokedexStruct *pokedexS)
{
    return pokedexS->pokedexCompletion.numEncountered;
}

int ov21_021D3770(const pokedexStruct *pokedexS, u32 param1)
{
    int index;
    int numEncountered = Pokedex_Sort_CompletionNumEncountered(pokedexS);
    int species;

    for (index = 0; index < numEncountered; index++) {
        species = pokedexS->pokedexCompletion.caughtStatusArray[index].species;

        if (species == param1) {
            break;
        }
    }

    return index;
}

BOOL ov21_021D3794(pokedexStruct *pokedexS, int param1)
{
    u32 v0 = Pokedex_Sort_CompletionNumEncountered(pokedexS);
    u32 v1 = ov21_021D3770(pokedexS, param1);

    if (v0 > v1) {
        return ov21_021D36FC(pokedexS, v1);
    }

    return 0;
}

int Pokedex_Sort_CurrentSpecies(const pokedexStruct *pokedexS)
{
    return pokedexS->pokedexCompletion.caughtStatusArray[pokedexS->pokedexCompletion.unk_F68].species;
}

int Pokedex_Sort_CurrentCaughtStatus(const pokedexStruct *pokedexS)
{
    return pokedexS->pokedexCompletion.caughtStatusArray[pokedexS->pokedexCompletion.unk_F68].caughtStatus;
}

const speciesCaughtStatusStruct *Pokedex_Sort_SpeciesCaughtStatus(const pokedexStruct *pokedexS, int dexIndex)
{
    if (Pokedex_Sort_IsValidDexIndex(pokedexS, dexIndex)) {
        return &pokedexS->pokedexCompletion.caughtStatusArray[dexIndex];
    }

    return NULL;
}

BOOL ov21_021D37F8(const pokedexStruct *pokedexS, int param1)
{
    if ((pokedexS->pokedexCompletion.numSpecies > param1) && (param1 >= 0)) {
        return 1;
    }

    return 0;
}

BOOL ov21_021D3810(pokedexStruct *pokedexS, int param1)
{
    if (ov21_021D37F8(pokedexS, param1)) {
        pokedexS->pokedexCompletion.unk_1724 = param1;

        ov21_021D36FC(pokedexS, pokedexS->pokedexCompletion.encounteredIndexArray[pokedexS->pokedexCompletion.unk_1724]);
        return 1;
    }

    return 0;
}

BOOL ov21_021D3844(pokedexStruct *pokedexS, int param1)
{
    if (ov21_021D387C(pokedexS, param1)) {
        pokedexS->pokedexCompletion.unk_1724 += param1;

        ov21_021D36FC(pokedexS, pokedexS->pokedexCompletion.encounteredIndexArray[pokedexS->pokedexCompletion.unk_1724]);
        return 1;
    }

    return 0;
}

BOOL ov21_021D387C(pokedexStruct *pokedexS, int param1)
{
    if (ov21_021D37F8(pokedexS, pokedexS->pokedexCompletion.unk_1724 + param1)) {
        return 1;
    }

    return 0;
}

int ov21_021D3898(const pokedexStruct *pokedexS)
{
    return pokedexS->pokedexCompletion.unk_1724;
}

int ov21_021D38A4(const pokedexStruct *pokedexS)
{
    return pokedexS->pokedexCompletion.numSpecies;
}

int Pokedex_Sort_SeenIndexToSpecies(const pokedexStruct *pokedexS, int encounteredIndex)
{
    return pokedexS->pokedexCompletion.encounteredIndexArray[encounteredIndex];
}

void ov21_021D38C0(pokedexStruct *pokedexS)
{
    int v0;

    for (v0 = 0; v0 < pokedexS->pokedexCompletion.numSpecies; v0++) {
        if (Pokedex_Sort_SeenIndexToSpecies(pokedexS, v0) == ov21_021D375C(pokedexS)) {
            ov21_021D3810(pokedexS, v0);
            break;
        }
    }
}

int Pokedex_Sort_NumEncountered(const pokedexStruct *pokedexS)
{
    return pokedexS->numEncountered;
}

int Pokedex_Sort_NumCaught(const pokedexStruct *pokedexS)
{
    return pokedexS->numCaught;
}

Strbuf *Pokedex_Sort_TrainerName(const pokedexStruct *pokedexS)
{
    return pokedexS->trainerName;
}

u32 Pokedex_Sort_TrainerGender(const pokedexStruct *pokedexS)
{
    return pokedexS->TrainerGender;
}

BOOL ov21_021D392C(const pokedexStruct *pokedexS, int param1)
{
    int species = Pokedex_Sort_CurrentSpecies(pokedexS);

    if (sub_02027514(pokedexS->dexData) == 0) {
        return 0;
    }

    return sub_020274D0(pokedexS->dexData, species, param1);
}

BOOL Pokedex_Sort_CanDetectForms(const pokedexStruct *pokedexS)
{
    return Pokedex_CanDetectForms(pokedexS->dexData);
}

void ov21_021D3960(pokedexStruct *pokedexS)
{
    if (gCoreSys.touchHeld) {
        pokedexS->unk_1758 = 0;
        return;
    }

    if (gCoreSys.pressedKeys) {
        if (pokedexS->unk_1758 == 0) {
            pokedexS->unk_1758 = 1;
        } else {
            pokedexS->unk_1758 = 2;
        }
    }
}

u32 ov21_021D3998(const pokedexStruct *pokedexS)
{
    return pokedexS->unk_1758;
}

static void Pokedex_Sort_Encountered(u16 *pokedexPreFilterArray, int *numEncountered, const PokedexData *dexData, const u16 *speciesArray, int pokedexLength)
{
    int index;

    *numEncountered = 0;

    for (index = 0; index < pokedexLength; index++) {
        if (Pokedex_EncounteredSpecies(dexData, speciesArray[index])) {
            pokedexPreFilterArray[*numEncountered] = speciesArray[index];
            (*numEncountered)++;
        }
    }
}

static void Pokedex_Sort_Caught(u16 *param0, int *param1, const u16 *speciesArray, int param3, const u16 *param4, int param5, BOOL param6, const PokedexData *dexData)
{
    int v0, v1;

    *param1 = 0;

    for (v0 = 0; v0 < param3; v0++) {
        for (v1 = 0; v1 < param5; v1++) {
            if (speciesArray[v0] == param4[v1]) {
                if (param6 == 1) {
                    break;
                } else {
                    if (Pokedex_CaughtSpecies(dexData, speciesArray[v0])) {
                        break;
                    }
                }
            }
        }

        if (v1 < param5) {
            param0[*param1] = speciesArray[v0];
            (*param1)++;
        }
    }
}

static void Pokedex_Sort_CaughtStatus(pokedexCompletionStruct *pokedexCompletion, const PokedexData *dexData, const u16 *speciesArray, int numEncountered)
{
    int index;

    pokedexCompletion->numEncountered = 0;

    for (index = 0; index < numEncountered; index++) {
        if (Pokedex_CaughtSpecies(dexData, speciesArray[index])) {
            pokedexCompletion->caughtStatusArray[pokedexCompletion->numEncountered].caughtStatus = 2;
        } else {
            pokedexCompletion->caughtStatusArray[pokedexCompletion->numEncountered].caughtStatus = 1;
        }

        pokedexCompletion->caughtStatusArray[pokedexCompletion->numEncountered].species = speciesArray[index];
        pokedexCompletion->numEncountered++;
    }
}

static void Pokedex_Sort_IndentifyEnountered_Full(pokedexCompletionStruct *pokedexCompletion, const u16 *speciesArray, int pokedexLength)
{
    int dexIndex;
    int encounteredIndex;

    encounteredIndex = 0;
    pokedexCompletion->numSpecies = 0;

    for (dexIndex = 0; dexIndex < pokedexLength; dexIndex++) {
        if (encounteredIndex < pokedexCompletion->numEncountered) {
            if (pokedexCompletion->caughtStatusArray[encounteredIndex].species == speciesArray[dexIndex]) {
                pokedexCompletion->encounteredIndexArray[pokedexCompletion->numSpecies] = encounteredIndex;
                encounteredIndex++;
                pokedexCompletion->numSpecies++;
            } else {
                pokedexCompletion->encounteredIndexArray[pokedexCompletion->numSpecies] = (NATIONAL_DEX_COUNT + 1);
                pokedexCompletion->numSpecies++;
            }
        }
    }
}

static void Pokedex_Sort_IndentifyEnountered_Filtered(pokedexCompletionStruct *pokedexCompletion)
{
    int encounteredIndex;

    pokedexCompletion->numSpecies = 0;

    for (encounteredIndex = 0; encounteredIndex < pokedexCompletion->numEncountered; encounteredIndex++) {
        pokedexCompletion->encounteredIndexArray[pokedexCompletion->numSpecies] = encounteredIndex;
        pokedexCompletion->numSpecies++;
    }
}

static u16 *Pokedex_Sort_SortedArray(int heapID, int pokedexSort, int *pokedexLength)
{
    u32 pokedexSize;
    u16 *pokedexSortedArray;
    u32 pokedexDataNarcIndex;

    GF_ASSERT(47 > pokedexSort);

    pokedexDataNarcIndex = Pokedex_Data_NARC_Index();
    pokedexSortedArray = sub_02007068(pokedexDataNarcIndex, 11 + pokedexSort, 0, heapID, 0, &pokedexSize);
    *pokedexLength = pokedexSize / (sizeof(u16));

    return pokedexSortedArray;
}

static void Pokedex_Sort_Order(int sortCategory, u16 *pokedexPostFilterArray, int *dexLengthPostFilter, const u16 *pokedexPreFilterArray, int dexLengthPreFilter, int heapID, const PokedexData *dexData)
{
    u16 *pokedexSortedArray;
    int pokedexLength;
    BOOL isAlphabetical = 0;

    switch (sortCategory) {
    case 0:
        pokedexSortedArray = NULL;
        break;
    case 1:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 2, &pokedexLength); // alphabetical
        isAlphabetical = 1;
        break;
    case 2:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 3, &pokedexLength); // heaviest
        break;
    case 3:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 4, &pokedexLength); // lightest
        break;
    case 4:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 5, &pokedexLength); // tallest
        break;
    case 5:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 6, &pokedexLength); // shortest
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (pokedexSortedArray != NULL) {
        Pokedex_Sort_Caught(pokedexPostFilterArray, dexLengthPostFilter, pokedexSortedArray, pokedexLength, pokedexPreFilterArray, dexLengthPreFilter, isAlphabetical, dexData);
        Heap_FreeToHeap(pokedexSortedArray);
    } else {
        memcpy(pokedexPostFilterArray, pokedexPreFilterArray, (sizeof(u16)) * dexLengthPreFilter);
        *dexLengthPostFilter = dexLengthPreFilter;
    }
}

static void Pokedex_Sort_FilterFirstLetter(int firstLetterFilter, u16 *pokedexPostFilterArray, int *dexLengthPostFilter, const u16 *pokedexPreFilterArray, int dexLengthPreFilter, int heapID, const PokedexData *dexData)
{
    u16 *pokedexSortedArray;
    int pokedexLength;

    switch (firstLetterFilter) {
    case 0:
        pokedexSortedArray = NULL;
        break;
    case 1:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 7, &pokedexLength); // ABC
        break;
    case 2:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 8, &pokedexLength); // DEF
        break;
    case 3:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 9, &pokedexLength); // GHI
        break;
    case 4:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 10, &pokedexLength); // JKL
        break;
    case 5:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 11, &pokedexLength); // MNO
        break;
    case 6:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 12, &pokedexLength); // PQR
        break;
    case 7:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 13, &pokedexLength); // STU
        break;
    case 8:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 14, &pokedexLength); // VWX
        break;
    case 9:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 15, &pokedexLength); // YZ
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (pokedexSortedArray != NULL) {
        Pokedex_Sort_Caught(pokedexPostFilterArray, dexLengthPostFilter, pokedexPreFilterArray, dexLengthPreFilter, pokedexSortedArray, pokedexLength, 1, dexData);
        Heap_FreeToHeap(pokedexSortedArray);
    } else {
        memcpy(pokedexPostFilterArray, pokedexPreFilterArray, (sizeof(u16)) * dexLengthPreFilter);
        *dexLengthPostFilter = dexLengthPreFilter;
    }
}

static void Pokedex_Sort_FilterType(int typeFilter, u16 *param1, int *param2, const u16 *param3, int dexLengthPreFilter, int heapID, const PokedexData *dexData)
{
    u16 *pokedexSortedArray;
    int pokedexLength;

    switch (typeFilter) {
    case 0:
        pokedexSortedArray = NULL;
        break;
    case 1:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 16, &pokedexLength); // normal
        break;
    case 2:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 17, &pokedexLength); // fighting
        break;
    case 3:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 18, &pokedexLength); // flying
        break;
    case 4:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 19, &pokedexLength); // poison
        break;
    case 5:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 20, &pokedexLength); // ground
        break;
    case 6:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 21, &pokedexLength); // rock
        break;
    case 7:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 22, &pokedexLength); // bug
        break;
    case 8:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 23, &pokedexLength); // ghost
        break;
    case 9:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 24, &pokedexLength); // steel
        break;
    case 10:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 25, &pokedexLength); // fire
        break;
    case 11:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 26, &pokedexLength); // water
        break;
    case 12:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 27, &pokedexLength); // grass
        break;
    case 13:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 28, &pokedexLength); // electric
        break;
    case 14:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 29, &pokedexLength); // psychic
        break;
    case 15:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 30, &pokedexLength); // ice
        break;
    case 16:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 31, &pokedexLength); // dragon
        break;
    case 17:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 32, &pokedexLength); // dark
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (pokedexSortedArray != NULL) {
        Pokedex_Sort_Caught(param1, param2, param3, dexLengthPreFilter, pokedexSortedArray, pokedexLength, 0, dexData);
        Heap_FreeToHeap(pokedexSortedArray);
    } else {
        memcpy(param1, param3, (sizeof(u16)) * dexLengthPreFilter);
        *param2 = dexLengthPreFilter;
    }
}

static void Pokedex_Sort_FilterBodyShape(int bodyShapeFilter, u16 *param1, int *param2, const u16 *param3, int dexLengthPreFilter, int heapID, const PokedexData *dexData)
{
    u16 *pokedexSortedArray;
    int pokedexLength;

    switch (bodyShapeFilter) {
    case 0:
        pokedexSortedArray = NULL;
        break;
    case 1:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 33, &pokedexLength); // quadruped
        break;
    case 2:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 34, &pokedexLength); // bidedal tailless
        break;
    case 3:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 35, &pokedexLength); // bipedal tailed
        break;
    case 4:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 36, &pokedexLength); // serpentine
        break;
    case 5:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 37, &pokedexLength); // multi winged
        break;
    case 6:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 38, &pokedexLength); // winged
        break;
    case 7:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 39, &pokedexLength); // insectoid
        break;
    case 8:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 40, &pokedexLength); // head base
        break;
    case 9:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 41, &pokedexLength); // head arms
        break;
    case 10:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 42, &pokedexLength); // head legs
        break;
    case 11:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 43, &pokedexLength); // tentacles
        break;
    case 12:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 44, &pokedexLength); // fins
        break;
    case 13:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 45, &pokedexLength); // head
        break;
    case 14:
        pokedexSortedArray = Pokedex_Sort_SortedArray(heapID, 46, &pokedexLength); // multi-body
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (pokedexSortedArray != NULL) {
        Pokedex_Sort_Caught(param1, param2, param3, dexLengthPreFilter, pokedexSortedArray, pokedexLength, 1, dexData);
        Heap_FreeToHeap(pokedexSortedArray);
    } else {
        memcpy(param1, param3, (sizeof(u16)) * dexLengthPreFilter);
        *param2 = dexLengthPreFilter;
    }
}

static void Pokedex_Sort_NumSeenNCaught(pokedexCompletionStruct *pokedexCompletion, int *numEncountered, int *numCaught)
{
    int index;

    *numEncountered = 0;
    *numCaught = 0;

    for (index = 0; index < pokedexCompletion->numEncountered; index++) {
        if (pokedexCompletion->caughtStatusArray[index].caughtStatus == 2) {
            (*numCaught)++;
        }

        (*numEncountered)++;
    }
}
