#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"

#include "overlay007/struct_ov7_0224F358.h"
#include "overlay080/struct_town_map_info_block.h"
#include "overlay080/struct_ov80_021D2C1C.h"
#include "overlay080/struct_ov80_021D2C5C.h"
#include "overlay080/struct_town_map_block.h"
#include "overlay080/struct_ov80_021D2E10.h"

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
        .blockType = TOWN_MAP_BLOCK_1x2,
        .blockColor = 0x0,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(5),
        .yCoord = TOWN_MAP_COORDINATE(20) - TOWN_MAP_HALF_UNIT
    },
	{
        // Solaceon Town
        .mapHeader = 0x1B1,
        .flyPoint = 0x3,
        .blockType = TOWN_MAP_BLOCK_2x1,
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
        .blockType = TOWN_MAP_BLOCK_2x2,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(5) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(24) - TOWN_MAP_HALF_UNIT
    },
	{
        // Canalave City
        .mapHeader = 0x21,
        .flyPoint = 0x8,
        .blockType = TOWN_MAP_BLOCK_1x2,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(1),
        .yCoord = TOWN_MAP_COORDINATE(23) - TOWN_MAP_HALF_UNIT
    },
	{
        // Oreburgh City
        .mapHeader = 0x2D,
        .flyPoint = 0x9,
        .blockType = TOWN_MAP_BLOCK_L_2,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(9) - TOWN_MAP_HALF_UNIT + 1,
        .yCoord = TOWN_MAP_COORDINATE(24) - TOWN_MAP_HALF_UNIT
    },
	{
        // Eterna City
        .mapHeader = 0x41,
        .flyPoint = 0xA,
        .blockType = TOWN_MAP_BLOCK_L,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(10) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(17) - TOWN_MAP_HALF_UNIT
    },
	{
        // Hearthome City
        .mapHeader = 0x56,
        .flyPoint = 0xB,
        .blockType = TOWN_MAP_BLOCK_2x2,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(15) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(22) - TOWN_MAP_HALF_UNIT
    },
	{
        // Pastoria City
        .mapHeader = 0x78,
        .flyPoint = 0xC,
        .blockType = TOWN_MAP_BLOCK_2x2,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(19) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(26) - TOWN_MAP_HALF_UNIT
    },
	{
        // Veilstone City
        .mapHeader = 0x84,
        .flyPoint = 0xD,
        .blockType = TOWN_MAP_BLOCK_2x2,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(22) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(19) - TOWN_MAP_HALF_UNIT
    },
	{
        // Sunyshore City
        .mapHeader = 0x96,
        .flyPoint = 0xE,
        .blockType = TOWN_MAP_BLOCK_2x2,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(27) - TOWN_MAP_HALF_UNIT,
        .yCoord = TOWN_MAP_COORDINATE(24) - TOWN_MAP_HALF_UNIT
    },
	{
        // Snowpoint City
        .mapHeader = 0xA5,
        .flyPoint = 0xF,
        .blockType = TOWN_MAP_BLOCK_1x2,
        .blockColor = 0x1,
        .unk_0A = 0x0,
        .xCoord = TOWN_MAP_COORDINATE(11),
        .yCoord = TOWN_MAP_COORDINATE(7) - TOWN_MAP_HALF_UNIT
    },
	{
        // Fight Area
        .mapHeader = 0xBC,
        .flyPoint = 0x11,
        .blockType = TOWN_MAP_BLOCK_2x1,
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

UnkStruct_ov80_021D2C1C * ov80_021D2AF4 (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, u8 * param2, short param3, int param4)
{
    UnkStruct_ov80_021D2C1C * v0;
    UnkStruct_ov80_021D2C5C * v1;
    const TownMapBlock * v2;
    short v3;
    static const UnkStruct_ov7_0224F358 v4 = {
        4, 0, 0, 0, 0, 10, 5, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 0, 0, 0
    };

    v0 = Heap_AllocFromHeap(param4, sizeof(UnkStruct_ov80_021D2C1C));
    memset(v0, 0, sizeof(UnkStruct_ov80_021D2C1C));

    v0->unk_00 = param3;
    v0->unk_08 = Heap_AllocFromHeap(param4, sizeof(UnkStruct_ov80_021D2C5C) * v0->unk_00);
    memset(v0->unk_08, 0, sizeof(UnkStruct_ov80_021D2C5C) * v0->unk_00);

    v2 = gTownMapBlocks;

    for (v3 = 0; v3 < v0->unk_00; v3++) {
        v1 = &v0->unk_08[v3];
        v1->unk_00.mapHeader = v2[v3].mapHeader;
        v1->unk_00.blockType = v2[v3].blockType;
        v1->unk_00.blockColor = v2[v3].blockColor;
        v1->unk_00.unk_0A = v2[v3].unk_0A;
        v1->unk_00.xCoord = v2[v3].xCoord;
        v1->unk_00.yCoord = v2[v3].yCoord;
        v1->unk_14 = param2[v3];
        v1->unk_18 = sub_0200CA08(param0, param1, &v4);

        sub_02021CAC(v1->unk_18, 1);

        if (v1->unk_14) {
            sub_02021E90(v1->unk_18, 5 + v1->unk_00.blockColor + v1->unk_14);
        } else {
            if ((v1->unk_00.unk_0A == 1) || (v1->unk_00.unk_0A == 2)) {
                sub_02021CAC(v1->unk_18, 0);
            }
        }

        sub_02021E2C(v1->unk_18, FX32_CONST(v1->unk_00.blockType));
        sub_0200D494(v1->unk_18, v1->unk_00.xCoord + 25, v1->unk_00.yCoord + -34);
    }

    return v0;
}

void ov80_021D2C1C (UnkStruct_ov80_021D2C1C * param0)
{
    UnkStruct_ov80_021D2C5C * v0;
    short v1;

    for (v1 = 0; v1 < param0->unk_00; v1++) {
        v0 = &param0->unk_08[v1];
        sub_02021C98(v0->unk_18, 0, 0);
        sub_02021BD4(v0->unk_18);
    }

    Heap_FreeToHeap(param0->unk_08);
    Heap_FreeToHeap(param0);
}

UnkStruct_ov80_021D2C5C * ov80_021D2C5C (UnkStruct_ov80_021D2C1C * param0, int param1, int param2, int param3)
{
    UnkStruct_ov80_021D2C5C * v0;
    short v1, v2;

    for (v1 = 0; v1 < param0->unk_00; v1++) {
        v0 = &(param0->unk_08[v1]);

        if (v0->unk_00.mapHeader != param1) {
            continue;
        }

        switch (v0->unk_00.unk_0A) {
        case 0:
            return v0;
        case 1:
            if ((9 == param2) && (28 == param3)) {
                return v0;
            }
            break;
        case 2:
            if ((26 == param2) && (18 == param3)) {
                return v0;
            }
            break;
        case 3:
            if ((26 == param2) && (17 == param3)) {
                return v0;
            }
            break;
        }
    }

    return NULL;
}

int ov80_021D2CC0 (UnkStruct_ov80_021D2C1C * param0, int param1, int param2, int param3)
{
    UnkStruct_ov80_021D2C5C * v0;
    short v1, v2;

    v2 = 0;

    if (param0 == NULL) {
        return 0;
    }

    v0 = ov80_021D2C5C(param0, param1, param2, param3);

    if ((v0 == NULL) || (v0->unk_14 == 0)) {
        if (param0->unk_04 != NULL) {
            sub_02021E90(param0->unk_04->unk_18, 5 + param0->unk_04->unk_00.blockColor + param0->unk_04->unk_14);
        }

        param0->unk_04 = NULL;
        return 0;
    }

    if (param0->unk_04 == NULL) {
        param0->unk_02 = 0;
        param0->unk_03 = 0;
    } else {
        if ((v0->unk_00.unk_0A == 2) || (v0->unk_00.unk_0A == 3)) {
            sub_02021E90(param0->unk_04->unk_18, 5 + param0->unk_04->unk_00.blockColor + param0->unk_04->unk_14);
        }
    }

    param0->unk_04 = v0;
    return 1;
}

void ov80_021D2D28 (UnkStruct_ov80_021D2C1C * param0, int param1)
{
    short v0;
    UnkStruct_ov80_021D2C5C * v1;

    if ((param0->unk_04 == NULL) || (param1 != 1)) {
        return;
    }

    if (param0->unk_03 == 0) {
        sub_02021E90(param0->unk_04->unk_18, 8 + param0->unk_04->unk_00.blockColor);
    } else {
        sub_02021E90(param0->unk_04->unk_18, 5 + param0->unk_04->unk_00.blockColor + param0->unk_04->unk_14);
    }

    param0->unk_02++;

    if (param0->unk_02 == 16) {
        param0->unk_02 = 0;
        param0->unk_03 ^= 1;
    }
}

UnkStruct_ov80_021D2E10 * ov80_021D2D70 (const char * param0, int param1)
{
    FSFile v0;
    int v1, v2;
    int v3;
    UnkStruct_ov80_021D2E10 * v4;
    TownMapInfoBlock * v5;

    FS_InitFile(&v0);

    if (!FS_OpenFile(&v0, param0)) {
        GF_ASSERT(0);
        return NULL;
    }

    v1 = FS_ReadFile(&v0, &v3, 4);
    GF_ASSERT(v1 >= 0);

    v4 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_ov80_021D2E10));
    memset(v4, 0, sizeof(UnkStruct_ov80_021D2E10));

    v4->unk_04 = Heap_AllocFromHeap(param1, sizeof(TownMapInfoBlock) * v3);
    memset(v4->unk_04, 0, sizeof(TownMapInfoBlock) * v3);

    v4->unk_00 = v3;

    for (v2 = 0; v2 < v4->unk_00; v2++) {
        v5 = &(v4->unk_04[v2]);
        v1 = FS_ReadFile(&v0, v5, sizeof(TownMapInfoBlock));
        v5->unk_16 = v2;
    }

    (void)FS_CloseFile(&v0);

    return v4;
}

void ov80_021D2E10 (UnkStruct_ov80_021D2E10 * param0)
{
    Heap_FreeToHeap(param0->unk_04);
    Heap_FreeToHeap(param0);
}

TownMapInfoBlock * ov80_021D2E24 (UnkStruct_ov80_021D2E10 * param0, int param1, int param2, u16 param3)
{
    int v0;
    TownMapInfoBlock * v1;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        v1 = &(param0->unk_04[v0]);

        if ((v1->xCoord == param1) && (v1->yCoord == param2)) {
            if ((v1->unk_14 == 0) || (v1->unk_14 & param3)) {
                return v1;
            } else {
                return NULL;
            }
        }
    }

    return NULL;
}
