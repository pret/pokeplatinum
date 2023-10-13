#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"

#include "overlay007/struct_ov7_0224F358.h"
#include "overlay080/struct_town_map_interaction.h"
#include "overlay080/struct_town_map_city_holder.h"
#include "overlay080/struct_town_map_city.h"
#include "overlay080/struct_town_map_block.h"

#include "unk_0200C6E4.h"
#include "heap.h"
#include "unk_020218BC.h"
#include "overlay080/ov80_021D2AF4.h"

#include "overlay080/struct_town_map_block.h"

const TownMapBlock gTownMapBlocks[20] = {
	{ 
        // Twinleaf Town
        .mapHeader = 0x19B,
        .flyPoint = 0x0,
        .blockType = TOWN_MAP_BLOCK_CIRCLE,
        .blockColor = 0x0,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(3),
        .yCoord = TOWN_MAP_COORDINATE(27)
    },
	{ 
        // Sandgem Town
        .mapHeader = 0x1A2,
        .flyPoint = 0x1,
        .blockType = TOWN_MAP_BLOCK_CIRCLE,
        .blockColor = 0x0,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(5),
        .yCoord = TOWN_MAP_COORDINATE(26)
    },
	{
        // Floaroma Town
        .mapHeader = 0x1AA,
        .flyPoint = 0x2,
        .blockType = TOWN_MAP_BLOCK_VERTICAL,
        .blockColor = 0x0,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(5),
        .yCoord = TOWN_MAP_COORDINATE(20) - TOWN_MAP_HALF_UNIT
    },
	{
        // Solaceon Town
        .mapHeader = 0x1B1,
        .flyPoint = 0x3,
        .blockType = TOWN_MAP_BLOCK_HORIZONTAL,
        .blockColor = 0x0,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(18) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(20)
    },
	{
        // Celestic Town
        .mapHeader = 0x1BA,
        .flyPoint = 0x4,
        .blockType = TOWN_MAP_BLOCK_CIRCLE,
        .blockColor = 0x0,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(14),
        .yCoord = TOWN_MAP_COORDINATE(16)
    },
	{
        // Survival Area
        .mapHeader = 0x1C2,
        .flyPoint = 0x5,
        .blockType = TOWN_MAP_BLOCK_CIRCLE,
        .blockColor = 0x0,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(20),
        .yCoord = TOWN_MAP_COORDINATE(10)
    },
	{
        // Resort Area
        .mapHeader = 0x1C9,
        .flyPoint = 0x6,
        .blockType = TOWN_MAP_BLOCK_CIRCLE,
        .blockColor = 0x0,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(25),
        .yCoord = TOWN_MAP_COORDINATE(14)
    },
	{
        // Jubilife City
        .mapHeader = 0x3,
        .flyPoint = 0x7,
        .blockType = TOWN_MAP_BLOCK_SQUARE,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(5) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(24) - TOWN_MAP_HALF_UNIT
    },
	{
        // Canalave City
        .mapHeader = 0x21,
        .flyPoint = 0x8,
        .blockType = TOWN_MAP_BLOCK_VERTICAL,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(1),
        .yCoord = TOWN_MAP_COORDINATE(23) - TOWN_MAP_HALF_UNIT
    },
	{
        // Oreburgh City
        .mapHeader = 0x2D,
        .flyPoint = 0x9,
        .blockType = TOWN_MAP_BLOCK_L_UP_LEFT,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(9) - TOWN_MAP_HALF_UNIT + 1,
        .yCoord = TOWN_MAP_COORDINATE(24) - TOWN_MAP_HALF_UNIT
    },
	{
        // Eterna City
        .mapHeader = 0x41,
        .flyPoint = 0xA,
        .blockType = TOWN_MAP_BLOCK_L_UP_RIGHT,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(10) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(17) - TOWN_MAP_HALF_UNIT
    },
	{
        // Hearthome City
        .mapHeader = 0x56,
        .flyPoint = 0xB,
        .blockType = TOWN_MAP_BLOCK_SQUARE,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(15) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(22) - TOWN_MAP_HALF_UNIT
    },
	{
        // Pastoria City
        .mapHeader = 0x78,
        .flyPoint = 0xC,
        .blockType = TOWN_MAP_BLOCK_SQUARE,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(19) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(26) - TOWN_MAP_HALF_UNIT
    },
	{
        // Veilstone City
        .mapHeader = 0x84,
        .flyPoint = 0xD,
        .blockType = TOWN_MAP_BLOCK_SQUARE,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(22) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(19) - TOWN_MAP_HALF_UNIT
    },
	{
        // Sunyshore City
        .mapHeader = 0x96,
        .flyPoint = 0xE,
        .blockType = TOWN_MAP_BLOCK_SQUARE,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(27) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(24) - TOWN_MAP_HALF_UNIT
    },
	{
        // Snowpoint City
        .mapHeader = 0xA5,
        .flyPoint = 0xF,
        .blockType = TOWN_MAP_BLOCK_VERTICAL,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(11),
        .yCoord = TOWN_MAP_COORDINATE(7) - TOWN_MAP_HALF_UNIT
    },
	{
        // Fight Area
        .mapHeader = 0xBC,
        .flyPoint = 0x11,
        .blockType = TOWN_MAP_BLOCK_HORIZONTAL,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(20) - TOWN_MAP_HALF_UNIT + 1,
        .yCoord = TOWN_MAP_COORDINATE(13)
    },
	{
        // Pal Park
        .mapHeader = 0x188,
        .flyPoint = 0x43,
        .blockType = TOWN_MAP_BLOCK_PALPARK,
        .blockColor = 0x1,
        .unk_0A = 0x1,
        .xCoord = TOWN_MAP_COORDINATE(9),
        .yCoord = TOWN_MAP_COORDINATE(28)
    },
	{
        // Victory Road
        .mapHeader = 0xAC,
        .flyPoint = 0x10,
        .blockType = TOWN_MAP_BLOCK_PALPARK,
        .blockColor = 0x1,
        .unk_0A = 0x2,
        .xCoord = TOWN_MAP_COORDINATE(26),
        .yCoord = TOWN_MAP_COORDINATE(18)
    },
	{
        // Pokémon League
        .mapHeader = 0xAC,
        .flyPoint = 0x44,
        .blockType = TOWN_MAP_BLOCK_CIRCLE,
        .blockColor = 0x1,
        .unk_0A = 0x3,
        .xCoord = TOWN_MAP_COORDINATE(26),
        .yCoord = TOWN_MAP_COORDINATE(17)
    }
};

TownMapCityHolder * TownMapCityHolder_New (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, u8 * arriveFlags, short cityCount, int heapID)
{
    TownMapCityHolder * holder;
    TownMapCity * city;
    const TownMapBlock * blockArray;
    short i;
    static const UnkStruct_ov7_0224F358 v4 = {
        4, 0, 0, 0, 0, 10, 5, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 0, 0, 0
    };

    holder = Heap_AllocFromHeap(heapID, sizeof(TownMapCityHolder));
    memset(holder, 0, sizeof(TownMapCityHolder));

    holder->count = cityCount;
    holder->cities = Heap_AllocFromHeap(heapID, sizeof(TownMapCity) * holder->count);
    memset(holder->cities, 0, sizeof(TownMapCity) * holder->count);

    blockArray = gTownMapBlocks;

    for (i = 0; i < holder->count; i++) {
        city = &holder->cities[i];
        city->block.mapHeader = blockArray[i].mapHeader;
        city->block.blockType = blockArray[i].blockType;
        city->block.blockColor = blockArray[i].blockColor;
        city->block.unk_0A = blockArray[i].unk_0A;
        city->block.xCoord = blockArray[i].xCoord;
        city->block.yCoord = blockArray[i].yCoord;
        city->visited = arriveFlags[i];
        city->unk_18 = sub_0200CA08(param0, param1, &v4);

        sub_02021CAC(city->unk_18, 1);

        if (city->visited) {
            sub_02021E90(city->unk_18, 5 + city->block.blockColor + city->visited);
        } else {
            if ((city->block.unk_0A == 1) || (city->block.unk_0A == 2)) {
                sub_02021CAC(city->unk_18, 0);
            }
        }

        sub_02021E2C(city->unk_18, FX32_CONST(city->block.blockType));
        sub_0200D494(city->unk_18, city->block.xCoord + 25, city->block.yCoord + -34);
    }

    return holder;
}

void TownMapCityHolder_Free (TownMapCityHolder * holder)
{
    TownMapCity * city;
    short i;

    for (i = 0; i < holder->count; i++) {
        city = &holder->cities[i];
        sub_02021C98(city->unk_18, 0, 0);
        sub_02021BD4(city->unk_18);
    }

    Heap_FreeToHeap(holder->cities);
    Heap_FreeToHeap(holder);
}

TownMapCity * TownMapCityHolder_SearchByHeaderAndCoordinates (TownMapCityHolder * holder, int mapHeader, int xCoord, int yCoord)
{
    TownMapCity * city;
    short i;

    for (i = 0; i < holder->count; i++) {
        city = &(holder->cities[i]);

        if (city->block.mapHeader != mapHeader) {
            continue;
        }

        switch (city->block.unk_0A) {
        case 0:
            return city;
        case 1:
            if ((9 == xCoord) && (28 == yCoord)) {
                return city;
            }
            break;
        case 2:
            if ((26 == xCoord) && (18 == yCoord)) {
                return city;
            }
            break;
        case 3:
            if ((26 == xCoord) && (17 == yCoord)) {
                return city;
            }
            break;
        }
    }

    return NULL;
}

int ov80_021D2CC0 (TownMapCityHolder * param0, int param1, int param2, int param3)
{
    TownMapCity * v0;
    short v1, v2;

    v2 = 0;

    if (param0 == NULL) {
        return 0;
    }

    v0 = TownMapCityHolder_SearchByHeaderAndCoordinates(param0, param1, param2, param3);

    if ((v0 == NULL) || (v0->visited == 0)) {
        if (param0->unk_04 != NULL) {
            sub_02021E90(param0->unk_04->unk_18, 5 + param0->unk_04->block.blockColor + param0->unk_04->visited);
        }

        param0->unk_04 = NULL;
        return 0;
    }

    if (param0->unk_04 == NULL) {
        param0->unk_02 = 0;
        param0->unk_03 = 0;
    } else {
        if ((v0->block.unk_0A == 2) || (v0->block.unk_0A == 3)) {
            sub_02021E90(param0->unk_04->unk_18, 5 + param0->unk_04->block.blockColor + param0->unk_04->visited);
        }
    }

    param0->unk_04 = v0;
    return 1;
}

void ov80_021D2D28 (TownMapCityHolder * param0, int param1)
{
    short v0;
    TownMapCity * v1;

    if ((param0->unk_04 == NULL) || (param1 != 1)) {
        return;
    }

    if (param0->unk_03 == 0) {
        sub_02021E90(param0->unk_04->unk_18, 8 + param0->unk_04->block.blockColor);
    } else {
        sub_02021E90(param0->unk_04->unk_18, 5 + param0->unk_04->block.blockColor + param0->unk_04->visited);
    }

    param0->unk_02++;

    if (param0->unk_02 == 16) {
        param0->unk_02 = 0;
        param0->unk_03 ^= 1;
    }
}

TownMapInteractionList * TownMapInteractionList_New (const char * filePath, int heapID)
{
    FSFile file;
    int readResult, i;
    int blockCount;
    TownMapInteractionList * list;
    TownMapInteraction * block;

    FS_InitFile(&file);

    if (!FS_OpenFile(&file, filePath)) {
        GF_ASSERT(0);
        return NULL;
    }

    readResult = FS_ReadFile(&file, &blockCount, 4);
    GF_ASSERT(readResult >= 0);

    list = Heap_AllocFromHeap(heapID, sizeof(TownMapInteractionList));
    memset(list, 0, sizeof(TownMapInteractionList));

    list->data = Heap_AllocFromHeap(heapID, sizeof(TownMapInteraction) * blockCount);
    memset(list->data, 0, sizeof(TownMapInteraction) * blockCount);

    list->count = blockCount;

    for (i = 0; i < list->count; i++) {
        block = &(list->data[i]);
        readResult = FS_ReadFile(&file, block, sizeof(TownMapInteraction));
        block->unk_16 = i;
    }

    (void)FS_CloseFile(&file);

    return list;
}

void TownMapInteractionList_Free (TownMapInteractionList * list)
{
    Heap_FreeToHeap(list->data);
    Heap_FreeToHeap(list);
}

TownMapInteraction * TownMapInteractionList_GetElementFromCoordinates (TownMapInteractionList * list, int xCoord, int yCoord, u16 param3)
{
    int i;
    TownMapInteraction * interaction;

    for (i = 0; i < list->count; i++) {
        interaction = &(list->data[i]);

        if ((interaction->xCoord == xCoord) && (interaction->yCoord == yCoord)) {
            if ((interaction->unk_14 == 0) || (interaction->unk_14 & param3)) {
                return interaction;
            } else {
                return NULL;
            }
        }
    }

    return NULL;
}
