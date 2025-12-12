#include "pokedex_heightweight.h"

#include <nitro.h>
#include <string.h>

#include "graphics.h"
#include "heap.h"
#include "narc.h"
#include "pokedex_data_index.h"

static int *Pokedex_Height_Array(NARC *pokedexDataNARC, int heapID);
static int *Pokedex_Weight_Array(NARC *pokedexDataNARC, int heapID);
static void Pokedex_Comparison_Pos_M_Array(NARC *pokedexDataNARC, short **trainerPos, short **pokemonPos, int heapID);
static void Pokedex_Comparison_Pos_F_Array(NARC *pokedexDataNARC, short **trainerPos, short **pokemonPos, int heapID);
static void Pokedex_Comparison_Scale_M_Array(NARC *pokedexDataNARC, short **trainerScale, short **pokemonScale, int heapID);
static void Pokedex_Comparison_Scale_F_Array(NARC *pokedexDataNARC, short **trainerScale, short **pokemonScale, int heapID);

HeightWeightData *Pokedex_HeightWeightData(int heapID)
{
    HeightWeightData *HWData = Heap_Alloc(heapID, sizeof(HeightWeightData));
    memset(HWData, 0, sizeof(HeightWeightData));

    return HWData;
}

void Pokedex_HeightWeightData_Free(HeightWeightData *HWData)
{
    GF_ASSERT(HWData);

    Heap_Free(HWData);
    HWData = NULL;
}

void Pokedex_HeightWeightData_Load(HeightWeightData *HWData, int trainerIsGirl, int heapID)
{
    GF_ASSERT(HWData);
    GF_ASSERT(HWData->height == NULL);
    GF_ASSERT(HWData->weight == NULL);

    enum NarcID pokedexDataNarcID = Pokedex_Data_NARC_Index();
    NARC *pokedexDataNARC = NARC_ctor(pokedexDataNarcID, heapID);

    HWData->height = Pokedex_Height_Array(pokedexDataNARC, heapID);
    HWData->weight = Pokedex_Weight_Array(pokedexDataNARC, heapID);

    if (trainerIsGirl == 0) {
        Pokedex_Comparison_Pos_M_Array(pokedexDataNARC, &HWData->trainerPos, &HWData->pokemonPos, heapID);
        Pokedex_Comparison_Scale_M_Array(pokedexDataNARC, &HWData->trainerScale, &HWData->pokemonScale, heapID);
    } else {
        Pokedex_Comparison_Pos_F_Array(pokedexDataNARC, &HWData->trainerPos, &HWData->pokemonPos, heapID);
        Pokedex_Comparison_Scale_F_Array(pokedexDataNARC, &HWData->trainerScale, &HWData->pokemonScale, heapID);
    }

    NARC_dtor(pokedexDataNARC);
}

void Pokedex_HeightWeightData_Release(HeightWeightData *HWData)
{
    GF_ASSERT(HWData->height);
    GF_ASSERT(HWData->weight);

    Heap_Free(HWData->height);
    Heap_Free(HWData->weight);

    Heap_Free(HWData->trainerPos);
    Heap_Free(HWData->pokemonPos);
    Heap_Free(HWData->trainerScale);
    Heap_Free(HWData->pokemonScale);

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

static int *Pokedex_Height_Array(NARC *pokedexDataNARC, int heapID)
{
    void *height = LoadMemberFromOpenNARC(pokedexDataNARC, 0, 0, heapID, 0);
    return (int *)height;
}

static int *Pokedex_Weight_Array(NARC *pokedexDataNARC, int heapID)
{
    void *weight = LoadMemberFromOpenNARC(pokedexDataNARC, 1, 0, heapID, 0);
    return (int *)weight;
}

static void Pokedex_Comparison_Pos_M_Array(NARC *pokedexDataNARC, short **trainerPos, short **pokemonPos, int heapID)
{
    *trainerPos = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 9, 0, heapID, 0);
    *pokemonPos = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 10, 0, heapID, 0);
}

static void Pokedex_Comparison_Pos_F_Array(NARC *pokedexDataNARC, short **trainerPos, short **pokemonPos, int heapID)
{
    *trainerPos = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 7, 0, heapID, 0);
    *pokemonPos = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 8, 0, heapID, 0);
}

static void Pokedex_Comparison_Scale_M_Array(NARC *pokedexDataNARC, short **trainerScale, short **pokemonScale, int heapID)
{
    *trainerScale = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 5, 0, heapID, 0);
    *pokemonScale = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 6, 0, heapID, 0);
}

static void Pokedex_Comparison_Scale_F_Array(NARC *pokedexDataNARC, short **trainerScale, short **pokemonScale, int heapID)
{
    *trainerScale = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 3, 0, heapID, 0);
    *pokemonScale = (short *)LoadMemberFromOpenNARC(pokedexDataNARC, 4, 0, heapID, 0);
}
