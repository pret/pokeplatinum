#include "pokedex_heightweight.h"

#include <nitro.h>
#include <string.h>

#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "pokedex_data_index.h"

typedef struct HeightWeightData {
    int *height;
    int *weight;
    short *trainerPos;
    short *pokemonPos;
    short *trainerScale;
    short *pokemonScale;
} HeightWeightData;

static int *Pokedex_Height_Array(NARC *pokedexDataNARC, int param1);
static int *Pokedex_Weight_Array(NARC *pokedexDataNARC, int param1);
static void Pokedex_Comparison_Pos_M_Array(NARC *pokedexDataNARC, short **trainerPos, short **pokemonPos, int param3);
static void Pokedex_Comparison_Pos_F_Array(NARC *pokedexDataNARC, short **trainerPos, short **pokemonPos, int param3);
static void Pokedex_Comparison_Scale_M_Array(NARC *pokedexDataNARC, short **trainerScale, short **pokemonScale, int param3);
static void Pokedex_Comparison_Scale_F_Array(NARC *pokedexDataNARC, short **trainerScale, short **pokemonScale, int param3);

HeightWeightData *Pokedex_HeightWeightData(int heapID)
{
    HeightWeightData *HWData = Heap_AllocFromHeap(heapID, sizeof(HeightWeightData));
    memset(HWData, 0, sizeof(HeightWeightData));

    return HWData;
}

void Pokedex_HeightWeightData_Free(HeightWeightData *HWData)
{
    GF_ASSERT(HWData);

    Heap_FreeToHeap(HWData);
    HWData = NULL;
}

void Pokedex_HeightWeightData_Load(HeightWeightData *HWData, int trainerIsGirl, int param2)
{
    GF_ASSERT(HWData);
    GF_ASSERT(HWData->height == NULL);
    GF_ASSERT(HWData->weight == NULL);

    u32 pokedex_data_narc_index = Pokedex_Data_NARC_Index();
    NARC *pokedexDataNARC = NARC_ctor(pokedex_data_narc_index, param2);

    HWData->height = Pokedex_Height_Array(pokedexDataNARC, param2);
    HWData->weight = Pokedex_Weight_Array(pokedexDataNARC, param2);

    if (trainerIsGirl == 0) {
        Pokedex_Comparison_Pos_M_Array(pokedexDataNARC, &HWData->trainerPos, &HWData->pokemonPos, param2);
        Pokedex_Comparison_Scale_M_Array(pokedexDataNARC, &HWData->trainerScale, &HWData->pokemonScale, param2);
    } else {
        Pokedex_Comparison_Pos_F_Array(pokedexDataNARC, &HWData->trainerPos, &HWData->pokemonPos, param2);
        Pokedex_Comparison_Scale_F_Array(pokedexDataNARC, &HWData->trainerScale, &HWData->pokemonScale, param2);
    }

    NARC_dtor(pokedexDataNARC);
}

void Pokedex_HeightWeightData_Release(HeightWeightData *HWData)
{
    GF_ASSERT(HWData->height);
    GF_ASSERT(HWData->weight);

    Heap_FreeToHeap(HWData->height);
    Heap_FreeToHeap(HWData->weight);

    Heap_FreeToHeap(HWData->trainerPos);
    Heap_FreeToHeap(HWData->pokemonPos);
    Heap_FreeToHeap(HWData->trainerScale);
    Heap_FreeToHeap(HWData->pokemonScale);

    HWData->height = NULL;
    HWData->weight = NULL;
    HWData->trainerPos = NULL;
    HWData->pokemonPos = NULL;
    HWData->trainerScale = NULL;
    HWData->pokemonScale = NULL;
}

int Pokedex_HeightWeightData_Height(const HeightWeightData *HWData, int species)
{
    GF_ASSERT(HWData);
    GF_ASSERT(HWData->height);
    return HWData->height[species];
}

int Pokedex_HeightWeightData_Weight(const HeightWeightData *HWData, int species)
{
    GF_ASSERT(HWData);
    GF_ASSERT(HWData->weight);
    return HWData->weight[species];
}

short Pokedex_HeightWeightData_TrainerPos(const HeightWeightData *HWData, int species)
{
    GF_ASSERT(HWData);
    GF_ASSERT(HWData->trainerPos);
    return HWData->trainerPos[species];
}

short Pokedex_HeightWeightData_PokemonPos(const HeightWeightData *HWData, int species)
{
    GF_ASSERT(HWData);
    GF_ASSERT(HWData->pokemonPos);
    return HWData->pokemonPos[species];
}

short Pokedex_HeightWeightData_TrainerScale(const HeightWeightData *HWData, int species)
{
    GF_ASSERT(HWData);
    GF_ASSERT(HWData->trainerScale);
    return HWData->trainerScale[species];
}

short Pokedex_HeightWeightData_PokemonScale(const HeightWeightData *HWData, int species)
{
    GF_ASSERT(HWData);
    GF_ASSERT(HWData->pokemonScale);
    return HWData->pokemonScale[species];
}

static int *Pokedex_Height_Array(NARC *pokedexDataNARC, int param1)
{
    void *height = LoadMemberFromOpenNARC(pokedexDataNARC, 0, 0, param1, 0);
    return (int *)height;
}

static int *Pokedex_Weight_Array(NARC *pokedexDataNARC, int param1)
{
    void *weight = LoadMemberFromOpenNARC(pokedexDataNARC, 1, 0, param1, 0);
    return (int *)weight;
}

static void Pokedex_Comparison_Pos_M_Array(NARC *pokedexDataNARC, short **trainerPos, short **pokemonPos, int param3)
{
    *trainerPos = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 9, 0, param3, 0);
    *pokemonPos = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 10, 0, param3, 0);
}

static void Pokedex_Comparison_Pos_F_Array(NARC *pokedexDataNARC, short **trainerPos, short **pokemonPos, int param3)
{
    *trainerPos = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 7, 0, param3, 0);
    *pokemonPos = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 8, 0, param3, 0);
}

static void Pokedex_Comparison_Scale_M_Array(NARC *pokedexDataNARC, short **trainerScale, short **pokemonScale, int param3)
{
    *trainerScale = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 5, 0, param3, 0);
    *pokemonScale = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 6, 0, param3, 0);
}

static void Pokedex_Comparison_Scale_F_Array(NARC *pokedexDataNARC, short **trainerScale, short **pokemonScale, int param3)
{
    *trainerScale = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 3, 0, param3, 0);
    *pokemonScale = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 4, 0, param3, 0);
}
