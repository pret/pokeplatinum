#include "pokedex_heightweight.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "heap.h"
#include "narc.h"
#include "pokedex_data_index.h"
#include "unk_02006E3C.h"

typedef struct HeightWeightData {
    int *height;
    int *weight;
    short *trainer_pos;
    short *pokemon_pos;
    short *trainer_scale;
    short *pokemon_scale;
} HeightWeightData;

static int *Pokedex_Height_Array(NARC *pokedex_data_narc, int param1);
static int *Pokedex_Weight_Array(NARC *pokedex_data_narc, int param1);
static void Pokedex_Comparison_Pos_M_Array(NARC *pokedex_data_narc, short **trainer_pos, short **pokemon_pos, int param3);
static void Pokedex_Comparison_Pos_F_Array(NARC *pokedex_data_narc, short **trainer_pos, short **pokemon_pos, int param3);
static void Pokedex_Comparison_Scale_M_Array(NARC *pokedex_data_narc, short **trainer_scale, short **pokemon_scale, int param3);
static void Pokedex_Comparison_Scale_F_Array(NARC *pokedex_data_narc, short **trainer_scale, short **pokemon_scale, int param3);

HeightWeightData *Pokedex_HeightWeightData(int param0)
{
    HeightWeightData *hw_data;

    hw_data = Heap_AllocFromHeap(param0, sizeof(HeightWeightData));
    memset(hw_data, 0, sizeof(HeightWeightData));

    return hw_data;
}

void Pokedex_HeightWeightData_Free(HeightWeightData *hw_data)
{
    GF_ASSERT(hw_data);

    Heap_FreeToHeap(hw_data);
    hw_data = NULL;
}

void Pokedex_HeightWeightData_Load(HeightWeightData *hw_data, int trainer_isgirl, int param2)
{
    NARC *pokedex_data_narc;
    u32 pokedex_data_narc_index;

    GF_ASSERT(hw_data);
    GF_ASSERT(hw_data->height == NULL);
    GF_ASSERT(hw_data->weight == NULL);

    pokedex_data_narc_index = Pokedex_Data_NARC_Index();
    pokedex_data_narc = NARC_ctor(pokedex_data_narc_index, param2);

    hw_data->height = Pokedex_Height_Array(pokedex_data_narc, param2);
    hw_data->weight = Pokedex_Weight_Array(pokedex_data_narc, param2);

    if (trainer_isgirl == 0) {
        Pokedex_Comparison_Pos_M_Array(pokedex_data_narc, &hw_data->trainer_pos, &hw_data->pokemon_pos, param2);
        Pokedex_Comparison_Scale_M_Array(pokedex_data_narc, &hw_data->trainer_scale, &hw_data->pokemon_scale, param2);
    } else {
        Pokedex_Comparison_Pos_F_Array(pokedex_data_narc, &hw_data->trainer_pos, &hw_data->pokemon_pos, param2);
        Pokedex_Comparison_Scale_F_Array(pokedex_data_narc, &hw_data->trainer_scale, &hw_data->pokemon_scale, param2);
    }

    NARC_dtor(pokedex_data_narc);
}

void Pokedex_HeightWeightData_Release(HeightWeightData *hw_data)
{
    GF_ASSERT(hw_data->height);
    GF_ASSERT(hw_data->weight);

    Heap_FreeToHeap(hw_data->height);
    Heap_FreeToHeap(hw_data->weight);

    Heap_FreeToHeap(hw_data->trainer_pos);
    Heap_FreeToHeap(hw_data->pokemon_pos);
    Heap_FreeToHeap(hw_data->trainer_scale);
    Heap_FreeToHeap(hw_data->pokemon_scale);

    hw_data->height = NULL;
    hw_data->weight = NULL;
    hw_data->trainer_pos = NULL;
    hw_data->pokemon_pos = NULL;
    hw_data->trainer_scale = NULL;
    hw_data->pokemon_scale = NULL;
}

int Pokedex_HeightWeightData_Height(const HeightWeightData *hw_data, int dex_number)
{
    GF_ASSERT(hw_data);
    GF_ASSERT(hw_data->height);
    return hw_data->height[dex_number];
}

int Pokedex_HeightWeightData_Weight(const HeightWeightData *hw_data, int dex_number)
{
    GF_ASSERT(hw_data);
    GF_ASSERT(hw_data->weight);
    return hw_data->weight[dex_number];
}

short Pokedex_HeightWeightData_TrainerPos(const HeightWeightData *hw_data, int dex_number)
{
    GF_ASSERT(hw_data);
    GF_ASSERT(hw_data->trainer_pos);
    return hw_data->trainer_pos[dex_number];
}

short Pokedex_HeightWeightData_PokemonPos(const HeightWeightData *hw_data, int dex_number)
{
    GF_ASSERT(hw_data);
    GF_ASSERT(hw_data->pokemon_pos);
    return hw_data->pokemon_pos[dex_number];
}

short Pokedex_HeightWeightData_TrainerScale(const HeightWeightData *hw_data, int dex_number)
{
    GF_ASSERT(hw_data);
    GF_ASSERT(hw_data->trainer_scale);
    return hw_data->trainer_scale[dex_number];
}

short Pokedex_HeightWeightData_PokemonScale(const HeightWeightData *hw_data, int dex_number)
{
    GF_ASSERT(hw_data);
    GF_ASSERT(hw_data->pokemon_scale);
    return hw_data->pokemon_scale[dex_number];
}

static int *Pokedex_Height_Array(NARC *pokedex_data_narc, int param1)
{
    void *height;

    height = sub_0200723C(pokedex_data_narc, 0, 0, param1, 0);
    return (int *)height;
}

static int *Pokedex_Weight_Array(NARC *pokedex_data_narc, int param1)
{
    void *weight;

    weight = sub_0200723C(pokedex_data_narc, 1, 0, param1, 0);
    return (int *)weight;
}

static void Pokedex_Comparison_Pos_M_Array(NARC *pokedex_data_narc, short **trainer_pos, short **pokemon_pos, int param3)
{
    *trainer_pos = (short *)sub_0200723C(pokedex_data_narc, 9, 0, param3, 0);
    *pokemon_pos = (short *)sub_0200723C(pokedex_data_narc, 10, 0, param3, 0);
}

static void Pokedex_Comparison_Pos_F_Array(NARC *pokedex_data_narc, short **trainer_pos, short **pokemon_pos, int param3)
{
    *trainer_pos = (short *)sub_0200723C(pokedex_data_narc, 7, 0, param3, 0);
    *pokemon_pos = (short *)sub_0200723C(pokedex_data_narc, 8, 0, param3, 0);
}

static void Pokedex_Comparison_Scale_M_Array(NARC *pokedex_data_narc, short **trainer_scale, short **pokemon_scale, int param3)
{
    *trainer_scale = (short *)sub_0200723C(pokedex_data_narc, 5, 0, param3, 0);
    *pokemon_scale = (short *)sub_0200723C(pokedex_data_narc, 6, 0, param3, 0);
}

static void Pokedex_Comparison_Scale_F_Array(NARC *pokedex_data_narc, short **trainer_scale, short **pokemon_scale, int param3)
{
    *trainer_scale = (short *)sub_0200723C(pokedex_data_narc, 3, 0, param3, 0);
    *pokemon_scale = (short *)sub_0200723C(pokedex_data_narc, 4, 0, param3, 0);
}
