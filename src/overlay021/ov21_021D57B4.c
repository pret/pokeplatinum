#include "overlay021/ov21_021D57B4.h"

#include <nitro.h>
#include <string.h>

#include "overlay021/struct_ov21_021D5844.h"
#include "overlay021/struct_ov21_021D5868.h"
#include "overlay021/struct_ov21_021D5890.h"

#include "cell_actor.h"
#include "heap.h"
#include "narc.h"
#include "unk_02006E3C.h"

void ov21_021D57B4(pokedexEncStruct *dexEncData, int species, int param2, int heapID)
{
    int v0;
    u32 fileSize;

    switch (param2) {
    case 0:// category 0, morning
        v0 = 4;
        break;
    case 1:// category 0, day
        v0 = 499;
        break;
    case 2:// category 0, night
        v0 = 994;
        break;
    case 3:// category 2, regional
        v0 = 1489;
        break;
    case 4:// category 2, national
        v0 = 1984;
        break;
    case 5:// category 1, morning
        v0 = 2479;
        break;
    case 6:// category 1, day
        v0 = 2974;
        break;
    case 7:// category 1, night
        v0 = 3469;
        break;
    case 8:// category 3, regional
        v0 = 3964;
        break;
    case 9:// category 3, national
        v0 = 4459;
        break;
    }

    dexEncData->pokedexEncArray = (int *)sub_02007068(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_ENC_PLATINUM, v0 + species, 0, heapID, 0, &fileSize);
    dexEncData->pokedexEncLength = fileSize / sizeof(int);
}

void Free_pokedexEncData(pokedexEncStruct *dexEncData)
{
    GF_ASSERT(dexEncData);
    GF_ASSERT(dexEncData->pokedexEncArray);

    Heap_FreeToHeap(dexEncData->pokedexEncArray);

    dexEncData->pokedexEncArray = NULL;
    dexEncData->pokedexEncLength = 0;
}

UnkStruct_ov21_021D5868 *ov21_021D5868(int heapID, int *param1)
{
    UnkStruct_ov21_021D5868 *v0;
    u32 fileSize;

    v0 = (UnkStruct_ov21_021D5868 *)sub_02007068(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_ENC_PLATINUM, 0, 0, heapID, 0, &fileSize);

    if (param1) {
        *param1 = fileSize / sizeof(UnkStruct_ov21_021D5868);
    }

    return v0;
}

UnkStruct_ov21_021D5890 *ov21_021D5890(int heapID, int *param1)
{
    UnkStruct_ov21_021D5890 *v0;
    u32 fileSize;

    v0 = (UnkStruct_ov21_021D5890 *)sub_02007068(NARC_INDEX_APPLICATION__ZUKANLIST__ZKN_DATA__ZUKAN_ENC_PLATINUM, 2, 0, heapID, 0, &fileSize);

    if (param1) {
        *param1 = fileSize / sizeof(UnkStruct_ov21_021D5890);
    }

    return v0;
}

void ov21_021D58C0(u8 *param0, u8 param1, u8 param2, const UnkStruct_ov21_021D5890 *param3)
{
    int outerIndex, innerIndex;

    GF_ASSERT((param3->unk_01 + param3->unk_03) < param2);// param 1 and 2 are 30
    GF_ASSERT((param3->unk_00 + param3->unk_02) < param1);

    for (outerIndex = param3->unk_01; outerIndex < param3->unk_01 + param3->unk_03; outerIndex++) {
        for (innerIndex = param3->unk_00; innerIndex < param3->unk_00 + param3->unk_02; innerIndex++) {
            param0[(outerIndex * param1) + innerIndex] |= param3->unk_04[((outerIndex - param3->unk_01) * param3->unk_02) + (innerIndex - param3->unk_00)];
        }
    }
}

u32 ov21_021D5948(u8 *param0, int param1, int param2, const UnkStruct_ov21_021D5890 *param3, const pokedexEncStruct *dexEncData, const u8 *param5, u32 param6)
{
    int pokedexEncIndex;
    int v1;
    u32 v2 = 0;

    for (pokedexEncIndex = 0; pokedexEncIndex < dexEncData->pokedexEncLength - 1; pokedexEncIndex++) {
        GF_ASSERT(dexEncData->pokedexEncArray[pokedexEncIndex]);

        for (v1 = 0; v1 < param6; v1++) {
            if (dexEncData->pokedexEncArray[pokedexEncIndex] == param5[v1]) {
                break;
            }
        }

        if (v1 >= param6) {
            ov21_021D58C0(param0, param1, param2, &param3[dexEncData->pokedexEncArray[pokedexEncIndex]]);
            v2++;
        }
    }

    return v2;
}

void ov21_021D59D8(CellActor *actor, int param1, int param2, int param3, int param4, const UnkStruct_ov21_021D5868 *param5, int animID_1, int animID_2)
{
    VecFx32 position;

    position.x = (param5->unk_00 * param3) + param1;
    position.y = (param5->unk_01 * param4) + param2;
    position.x <<= FX32_SHIFT;
    position.y <<= FX32_SHIFT;

    CellActor_SetPosition(actor, &position);

    if (param5->unk_02) {
        CellActor_SetAnim(actor, animID_2);
    } else {
        CellActor_SetAnim(actor, animID_1);
    }
}

int ov21_021D5A20(CellActor **param0, int param1, int param2, int param3, int param4, int param5, int param6, const UnkStruct_ov21_021D5868 *zukan_enc_plat_0, const pokedexEncStruct *dexEncData, int param9, int param10, const u8 *param11, u32 param12, u32 *param13)
{
    int index, v1;
    int v2 = param1;
    int v3 = 0;

    for (index = 0; index < dexEncData->pokedexEncLength - 1; index++) {
        GF_ASSERT(dexEncData->pokedexEncArray[index]);
        GF_ASSERT(v2 < param2);

        for (v1 = 0; v1 < param12; v1++) {
            if (dexEncData->pokedexEncArray[index] == param11[v1]) {
                break;
            }
        }

        if (v1 >= param12) {
            ov21_021D59D8(param0[v2], param3, param4, param5, param6, &zukan_enc_plat_0[dexEncData->pokedexEncArray[index]], param9, param10);
            v2++;
            v3++;
        }
    }

    *param13 = v3;

    return v2;
}
