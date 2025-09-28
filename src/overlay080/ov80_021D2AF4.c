#include "overlay080/ov80_021D2AF4.h"

#include <nitro.h>
#include <string.h>

#include "generated/first_arrival_to_zones.h"
#include "generated/map_headers.h"

#include "overlay080/ov80_021D0D80.h"
#include "overlay080/struct_ov80_021D2AF4.h"
#include "overlay080/struct_ov80_021D2C1C.h"
#include "overlay080/struct_ov80_021D2C5C.h"
#include "overlay080/struct_ov80_021D2C5C_sub1.h"
#include "overlay080/struct_ov80_021D2E10.h"

#include "heap.h"
#include "sprite.h"
#include "sprite_system.h"
#include "unk_0206B70C.h"

enum TownMapFlyDestinationShape {
    FLY_DEST_SPRITE_SHAPE_1x1_SQUARE = 0,
    FLY_DEST_SPRITE_SHAPE_VERTICAL,
    FLY_DEST_SPRITE_SHAPE_2x2_SQUARE,
    FLY_DEST_SPRITE_SHAPE_TOP_LEFT_ANGLE,
    FLY_DEST_SPRITE_SHAPE_TOP_RIGHT_ANGLE,
    FLY_DEST_SPRITE_SHAPE_HORIZONTAL,
    FLY_DEST_SPRITE_SHAPE_SMALL_RECTANGLE,
};

enum TownMapTownBlockPalette {
    FLY_DEST_SPRITE_PALETTE_BLUE = 0,
    FLY_DEST_SPRITE_PALETTE_RED_GREEN,
};

enum TownMapSpecialFlyDest {
    REGULAR_FLY_DEST = 0,
    FLY_DEST_PAL_PARK,
    FLY_DEST_VICTORY_ROAD,
    FLY_DEST_POKEMON_LEAGUE,
};

/*
 * The spriteX and spriteY can be determined from the main map matrix (the one at
 * index 0) and some offset depending on the block shape.
 * For the ones that span multiple map matrix blocks, the following uses the
 * coordinates of the north-westernmost one.
 */
const TownMapFlyDestDescriptor sFlyDestinations[NUM_FLY_LOCATIONS] = {
    {
        .mapHeader = MAP_HEADER_TWINLEAF_TOWN,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_TWINLEAF_TOWN,
        .blockShape = FLY_DEST_SPRITE_SHAPE_1x1_SQUARE,
        .palette = FLY_DEST_SPRITE_PALETTE_BLUE,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 3 * TOWN_MAP_GRID_SPACING,
        .spriteY = 27 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_SANDGEM_TOWN,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_SANDGEM_TOWN,
        .blockShape = FLY_DEST_SPRITE_SHAPE_1x1_SQUARE,
        .palette = FLY_DEST_SPRITE_PALETTE_BLUE,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 5 * TOWN_MAP_GRID_SPACING,
        .spriteY = 26 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_FLOAROMA_TOWN,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_FLOAROMA_TOWN,
        .blockShape = FLY_DEST_SPRITE_SHAPE_VERTICAL,
        .palette = FLY_DEST_SPRITE_PALETTE_BLUE,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 5 * TOWN_MAP_GRID_SPACING,
        .spriteY = 19 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_SOLACEON_TOWN,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_SOLACEON_TOWN,
        .blockShape = FLY_DEST_SPRITE_SHAPE_HORIZONTAL,
        .palette = FLY_DEST_SPRITE_PALETTE_BLUE,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 17 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 20 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_CELESTIC_TOWN,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_CELESTIC_TOWN,
        .blockShape = FLY_DEST_SPRITE_SHAPE_1x1_SQUARE,
        .palette = FLY_DEST_SPRITE_PALETTE_BLUE,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 14 * TOWN_MAP_GRID_SPACING,
        .spriteY = 16 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_SURVIVAL_AREA,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_SURVIVAL_AREA,
        .blockShape = FLY_DEST_SPRITE_SHAPE_1x1_SQUARE,
        .palette = FLY_DEST_SPRITE_PALETTE_BLUE,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 20 * TOWN_MAP_GRID_SPACING,
        .spriteY = 10 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_RESORT_AREA,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_RESORT_AREA,
        .blockShape = FLY_DEST_SPRITE_SHAPE_1x1_SQUARE,
        .palette = FLY_DEST_SPRITE_PALETTE_BLUE,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 25 * TOWN_MAP_GRID_SPACING,
        .spriteY = 14 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_JUBILIFE_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_JUBILIFE_CITY,
        .blockShape = FLY_DEST_SPRITE_SHAPE_2x2_SQUARE,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 4 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 23 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_CANALAVE_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_CANALAVE_CITY,
        .blockShape = FLY_DEST_SPRITE_SHAPE_VERTICAL,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 1 * TOWN_MAP_GRID_SPACING,
        .spriteY = 22 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_OREBURGH_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_OREBURGH_CITY,
        .blockShape = FLY_DEST_SPRITE_SHAPE_TOP_RIGHT_ANGLE,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 8 * TOWN_MAP_GRID_SPACING + 4,
        .spriteY = 23 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_ETERNA_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_ETERNA_CITY,
        .blockShape = FLY_DEST_SPRITE_SHAPE_TOP_LEFT_ANGLE,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 9 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 16 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_HEARTHOME_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_HEARTHOME_CITY,
        .blockShape = FLY_DEST_SPRITE_SHAPE_2x2_SQUARE,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 14 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 21 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_PASTORIA_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_PASTORIA_CITY,
        .blockShape = FLY_DEST_SPRITE_SHAPE_2x2_SQUARE,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 18 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 25 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_VEILSTONE_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_VEILSTONE_CITY,
        .blockShape = FLY_DEST_SPRITE_SHAPE_2x2_SQUARE,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 21 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 18 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_SUNYSHORE_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_SUNYSHORE_CITY,
        .blockShape = FLY_DEST_SPRITE_SHAPE_2x2_SQUARE,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 26 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 23 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_SNOWPOINT_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_SNOWPOINT_CITY,
        .blockShape = FLY_DEST_SPRITE_SHAPE_VERTICAL,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 11 * TOWN_MAP_GRID_SPACING,
        .spriteY = 6 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_FIGHT_AREA,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_FIGHT_AREA,
        .blockShape = FLY_DEST_SPRITE_SHAPE_HORIZONTAL,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = REGULAR_FLY_DEST,
        .spriteX = 19 * TOWN_MAP_GRID_SPACING + 4,
        .spriteY = 13 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_ROUTE_221,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_POKE_PARK_FRONT_GATE,
        .blockShape = FLY_DEST_SPRITE_SHAPE_SMALL_RECTANGLE,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = FLY_DEST_PAL_PARK,
        .spriteX = 9 * TOWN_MAP_GRID_SPACING,
        .spriteY = 28 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_POKEMON_LEAGUE,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_OUTSIDE_VICTORY_ROAD,
        .blockShape = FLY_DEST_SPRITE_SHAPE_SMALL_RECTANGLE,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = FLY_DEST_VICTORY_ROAD,
        .spriteX = 26 * TOWN_MAP_GRID_SPACING,
        .spriteY = 18 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_POKEMON_LEAGUE,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_POKEMON_LEAGUE,
        .blockShape = FLY_DEST_SPRITE_SHAPE_1x1_SQUARE,
        .palette = FLY_DEST_SPRITE_PALETTE_RED_GREEN,
        .specialFlyDestID = FLY_DEST_POKEMON_LEAGUE,
        .spriteX = 26 * TOWN_MAP_GRID_SPACING,
        .spriteY = 17 * TOWN_MAP_GRID_SPACING,
    }
};

TownMapAppFlyDestinations *TownMapApp_LoadFlyDestinations(SpriteSystem *spriteSystem, SpriteManager *spriteMan, u8 *unlocked, short count, int heapID)
{
    static const SpriteTemplateFromResourceHeader spriteTemplate = {
        .resourceHeaderID = 4,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 10,
        .plttIdx = PLTT_5,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .dummy18 = 0,
        .dummy1C = 0,
        .dummy20 = 0,
        .dummy24 = 0,
    };

    TownMapAppFlyDestinations *flyDestinations = Heap_Alloc(heapID, sizeof(TownMapAppFlyDestinations));
    memset(flyDestinations, 0, sizeof(TownMapAppFlyDestinations));

    flyDestinations->numBlocks = count;
    flyDestinations->flyDestinationsList = Heap_Alloc(heapID, sizeof(TownMapAppFlyDestination) * flyDestinations->numBlocks);
    memset(flyDestinations->flyDestinationsList, 0, sizeof(TownMapAppFlyDestination) * flyDestinations->numBlocks);

    const TownMapFlyDestDescriptor *flyDestBlocks = sFlyDestinations;

    for (short i = 0; i < flyDestinations->numBlocks; i++) {
        TownMapAppFlyDestination *flyDest = &flyDestinations->flyDestinationsList[i];
        flyDest->flyDestBlockDescriptor.mapHeader = flyDestBlocks[i].mapHeader;
        flyDest->flyDestBlockDescriptor.blockShape = flyDestBlocks[i].blockShape;
        flyDest->flyDestBlockDescriptor.palette = flyDestBlocks[i].palette;
        flyDest->flyDestBlockDescriptor.specialFlyDestID = flyDestBlocks[i].specialFlyDestID;
        flyDest->flyDestBlockDescriptor.spriteX = flyDestBlocks[i].spriteX;
        flyDest->flyDestBlockDescriptor.spriteY = flyDestBlocks[i].spriteY;
        flyDest->isUnlocked = unlocked[i];
        flyDest->sprite = SpriteSystem_NewSpriteFromResourceHeader(spriteSystem, spriteMan, &spriteTemplate);

        Sprite_SetDrawFlag(flyDest->sprite, TRUE);

        if (flyDest->isUnlocked) {
            Sprite_SetExplicitPalette(flyDest->sprite, PLTT_5 + flyDest->flyDestBlockDescriptor.palette + flyDest->isUnlocked);
        } else {
            if (flyDest->flyDestBlockDescriptor.specialFlyDestID == FLY_DEST_PAL_PARK || flyDest->flyDestBlockDescriptor.specialFlyDestID == FLY_DEST_VICTORY_ROAD) {
                Sprite_SetDrawFlag(flyDest->sprite, FALSE);
            }
        }

        Sprite_UpdateAnim(flyDest->sprite, FX32_CONST(flyDest->flyDestBlockDescriptor.blockShape));
        Sprite_SetPositionXY(flyDest->sprite, flyDest->flyDestBlockDescriptor.spriteX + TOWN_MAP_GRID_X_OFFSET, flyDest->flyDestBlockDescriptor.spriteY + TOWN_MAP_GRID_Y_OFFSET);
    }

    return flyDestinations;
}

void TownMapApp_FreeFlyDestinations(TownMapAppFlyDestinations *flyDests)
{
    for (short i = 0; i < flyDests->numBlocks; i++) {
        TownMapAppFlyDestination *dest = &flyDests->flyDestinationsList[i];
        Sprite_SetAffineZRotationEx(dest->sprite, 0, AFFINE_OVERWRITE_MODE_NONE);
        Sprite_Delete(dest->sprite);
    }

    Heap_Free(flyDests->flyDestinationsList);
    Heap_Free(flyDests);
}

TownMapAppFlyDestination *TownMapApp_GetHoveredFlyDestination(TownMapAppFlyDestinations *flyDests, int mapHeader, int x, int z)
{
    for (short i = 0; i < flyDests->numBlocks; i++) {
        TownMapAppFlyDestination *flyDest = &(flyDests->flyDestinationsList[i]);

        if (flyDest->flyDestBlockDescriptor.mapHeader != mapHeader) {
            continue;
        }

        // Some map headers span several tiles but have a fly target that take up a single tile
        // For these, we need to check for the fly target's exact position
        switch (flyDest->flyDestBlockDescriptor.specialFlyDestID) {
        case REGULAR_FLY_DEST:
            return flyDest;
        case FLY_DEST_PAL_PARK:
            if (x == 9 && z == 28) {
                return flyDest;
            }
            break;
        case FLY_DEST_VICTORY_ROAD:
            if (x == 26 && z == 18) {
                return flyDest;
            }
            break;
        case FLY_DEST_POKEMON_LEAGUE:
            if (x == 26 && z == 17) {
                return flyDest;
            }
            break;
        }
    }

    return NULL;
}

BOOL TownMapApp_UpdateHoveredFlyDestination(TownMapAppFlyDestinations *flyDests, enum MapHeader mapHeader, int x, int y)
{
    if (flyDests == NULL) {
        return FALSE;
    }

    TownMapAppFlyDestination *hoveredFlyDest = TownMapApp_GetHoveredFlyDestination(flyDests, mapHeader, x, y);

    if (hoveredFlyDest == NULL || hoveredFlyDest->isUnlocked == FALSE) {
        if (flyDests->hoveredFlyDest != NULL) {
            Sprite_SetExplicitPalette(flyDests->hoveredFlyDest->sprite, PLTT_5 + flyDests->hoveredFlyDest->flyDestBlockDescriptor.palette + flyDests->hoveredFlyDest->isUnlocked);
        }

        flyDests->hoveredFlyDest = NULL;
        return FALSE;
    }

    if (flyDests->hoveredFlyDest == NULL) {
        flyDests->flyTargetBlinkTimer = 0;
        flyDests->flyTargetBlinkState = 0;
    } else {
        if (hoveredFlyDest->flyDestBlockDescriptor.specialFlyDestID == FLY_DEST_VICTORY_ROAD
            || hoveredFlyDest->flyDestBlockDescriptor.specialFlyDestID == FLY_DEST_POKEMON_LEAGUE) {
            Sprite_SetExplicitPalette(flyDests->hoveredFlyDest->sprite, PLTT_5 + flyDests->hoveredFlyDest->flyDestBlockDescriptor.palette + flyDests->hoveredFlyDest->isUnlocked);
        }
    }

    flyDests->hoveredFlyDest = hoveredFlyDest;
    return TRUE;
}

void TownMapApp_BlinkHoveredFlyDestination(TownMapAppFlyDestinations *flyDests, enum TownMapMode mapMode)
{
    if (flyDests->hoveredFlyDest == NULL || mapMode != TOWN_MAP_MODE_FLY) {
        return;
    }

    if (flyDests->flyTargetBlinkState == 0) {
        Sprite_SetExplicitPalette(flyDests->hoveredFlyDest->sprite, PLTT_8 + flyDests->hoveredFlyDest->flyDestBlockDescriptor.palette);
    } else {
        Sprite_SetExplicitPalette(flyDests->hoveredFlyDest->sprite, PLTT_5 + flyDests->hoveredFlyDest->flyDestBlockDescriptor.palette + flyDests->hoveredFlyDest->isUnlocked);
    }

    flyDests->flyTargetBlinkTimer++;

    if (flyDests->flyTargetBlinkTimer == 16) {
        flyDests->flyTargetBlinkTimer = 0;
        flyDests->flyTargetBlinkState ^= 1;
    }
}

TownMapBlockList *TownMap_ReadBlockData(const char *path, enum HeapID heapID)
{
    FSFile tmapBlockFile;
    FS_InitFile(&tmapBlockFile);

    if (!FS_OpenFile(&tmapBlockFile, path)) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    int blockCount;
    int readLength = FS_ReadFile(&tmapBlockFile, &blockCount, sizeof(int));
    GF_ASSERT(readLength >= 0);

    TownMapBlockList *blockList = Heap_Alloc(heapID, sizeof(TownMapBlockList));
    memset(blockList, 0, sizeof(TownMapBlockList));

    blockList->entries = Heap_Alloc(heapID, sizeof(TownMapBlock) * blockCount);
    memset(blockList->entries, 0, sizeof(TownMapBlock) * blockCount);

    blockList->count = blockCount;

    for (int i = 0; i < blockList->count; i++) {
        TownMapBlock *block = &(blockList->entries[i]);
        readLength = FS_ReadFile(&tmapBlockFile, block, sizeof(TownMapBlock));
        block->index = i;
    }

    (void)FS_CloseFile(&tmapBlockFile);

    return blockList;
}

void TownMapApp_FreeTownMapBlockData(TownMapBlockList *blockList)
{
    Heap_Free(blockList->entries);
    Heap_Free(blockList);
}

TownMapBlock *TownMapApp_GetHoveredMapBlock(TownMapBlockList *blockList, int x, int z, u16 unlockedHiddenLocations)
{
    for (int i = 0; i < blockList->count; i++) {
        TownMapBlock *block = &(blockList->entries[i]);

        if (block->x == x && block->z == z) {
            if (block->hiddenLocationFlags == 0 || block->hiddenLocationFlags & unlockedHiddenLocations) {
                return block;
            } else {
                return NULL;
            }
        }
    }

    return NULL;
}
