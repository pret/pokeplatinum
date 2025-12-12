#include "height_weight_data.h"

#include <nitro.h>

#include "constants/heap.h"

#include "pokedex_heightweight.h"

HeightWeightData *HeightWeightData_Load(enum HeapID heapID)
{
    HeightWeightData *data = Pokedex_HeightWeightData(heapID);
    Pokedex_HeightWeightData_Load(data, FALSE, heapID);
    return data;
}

void HeightWeightData_Free(HeightWeightData *heightWeightData)
{
    Pokedex_HeightWeightData_Release(heightWeightData);
    Pokedex_HeightWeightData_Free(heightWeightData);
}
