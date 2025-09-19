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
const TownMapFlyDestDescriptor sTownBlocks[20] = {
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
    TownMapAppFlyDestinations *flyDestinations;
    TownMapAppFlyDestination *flyDest;
    const TownMapFlyDestDescriptor *flyDestBlocks;
    short i;
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

    flyDestinations = Heap_Alloc(heapID, sizeof(TownMapAppFlyDestinations));
    memset(flyDestinations, 0, sizeof(TownMapAppFlyDestinations));

    flyDestinations->numBlocks = count;
    flyDestinations->flyDestinationsList = Heap_Alloc(heapID, sizeof(TownMapAppFlyDestination) * flyDestinations->numBlocks);
    memset(flyDestinations->flyDestinationsList, 0, sizeof(TownMapAppFlyDestination) * flyDestinations->numBlocks);

    flyDestBlocks = sTownBlocks;

    for (i = 0; i < flyDestinations->numBlocks; i++) {
        flyDest = &flyDestinations->flyDestinationsList[i];
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
            if ((flyDest->flyDestBlockDescriptor.specialFlyDestID == FLY_DEST_PAL_PARK) || (flyDest->flyDestBlockDescriptor.specialFlyDestID == FLY_DEST_VICTORY_ROAD)) {
                Sprite_SetDrawFlag(flyDest->sprite, FALSE);
            }
        }

        Sprite_UpdateAnim(flyDest->sprite, FX32_CONST(flyDest->flyDestBlockDescriptor.blockShape));
        Sprite_SetPositionXY(flyDest->sprite, flyDest->flyDestBlockDescriptor.spriteX + TOWN_MAP_GRID_X_OFFSET, flyDest->flyDestBlockDescriptor.spriteY + TOWN_MAP_GRID_Y_OFFSET);
    }

    return flyDestinations;
}

void TownMapApp_FreeFlyDestinations(TownMapAppFlyDestinations *param0)
{
    TownMapAppFlyDestination *v0;
    short v1;

    for (v1 = 0; v1 < param0->numBlocks; v1++) {
        v0 = &param0->flyDestinationsList[v1];
        Sprite_SetAffineZRotationEx(v0->sprite, 0, 0);
        Sprite_Delete(v0->sprite);
    }

    Heap_Free(param0->flyDestinationsList);
    Heap_Free(param0);
}

TownMapAppFlyDestination *TownMapApp_GetHoveredFlyDestination(TownMapAppFlyDestinations *param0, int mapHeader, int x, int y)
{
    TownMapAppFlyDestination *flyDest;
    short i;

    for (i = 0; i < param0->numBlocks; i++) {
        flyDest = &(param0->flyDestinationsList[i]);

        if (flyDest->flyDestBlockDescriptor.mapHeader != mapHeader) {
            continue;
        }

        // Some map headers span several tiles but have a fly target that take up a single tile
        // For these, we need to check for the fly target's exact position
        switch (flyDest->flyDestBlockDescriptor.specialFlyDestID) {
        case REGULAR_FLY_DEST:
            return flyDest;
        case FLY_DEST_PAL_PARK:
            if (x == 9 && y == 28) {
                return flyDest;
            }
            break;
        case FLY_DEST_VICTORY_ROAD:
            if (x == 26 && y == 18) {
                return flyDest;
            }
            break;
        case FLY_DEST_POKEMON_LEAGUE:
            if (x == 26 && y == 17) {
                return flyDest;
            }
            break;
        }
    }

    return NULL;
}

BOOL TownMapApp_UpdateHoveredFlyTarget(TownMapAppFlyDestinations *param0, enum MapHeader mapHeader, int x, int y)
{
    TownMapAppFlyDestination *hoveredFlyDest;

    if (param0 == NULL) {
        return FALSE;
    }

    hoveredFlyDest = TownMapApp_GetHoveredFlyDestination(param0, mapHeader, x, y);

    if ((hoveredFlyDest == NULL) || (hoveredFlyDest->isUnlocked == FALSE)) {
        if (param0->hoveredFlyDest != NULL) {
            Sprite_SetExplicitPalette(param0->hoveredFlyDest->sprite, PLTT_5 + param0->hoveredFlyDest->flyDestBlockDescriptor.palette + param0->hoveredFlyDest->isUnlocked);
        }

        param0->hoveredFlyDest = NULL;
        return FALSE;
    }

    if (param0->hoveredFlyDest == NULL) {
        param0->flyTargetBlinkTimer = 0;
        param0->flyTargetBlinkState = 0;
    } else {
        if (hoveredFlyDest->flyDestBlockDescriptor.specialFlyDestID == FLY_DEST_VICTORY_ROAD
            || hoveredFlyDest->flyDestBlockDescriptor.specialFlyDestID == FLY_DEST_POKEMON_LEAGUE) {
            Sprite_SetExplicitPalette(param0->hoveredFlyDest->sprite, PLTT_5 + param0->hoveredFlyDest->flyDestBlockDescriptor.palette + param0->hoveredFlyDest->isUnlocked);
        }
    }

    param0->hoveredFlyDest = hoveredFlyDest;
    return TRUE;
}

void TownMapApp_BlinkHoveredFlyTarget(TownMapAppFlyDestinations *param0, enum TownMapMode param1)
{
    short v0;
    TownMapAppFlyDestination *v1;

    if ((param0->hoveredFlyDest == NULL) || (param1 != TOWN_MAP_MODE_FLY)) {
        return;
    }

    if (param0->flyTargetBlinkState == 0) {
        Sprite_SetExplicitPalette(param0->hoveredFlyDest->sprite, PLTT_8 + param0->hoveredFlyDest->flyDestBlockDescriptor.palette);
    } else {
        Sprite_SetExplicitPalette(param0->hoveredFlyDest->sprite, PLTT_5 + param0->hoveredFlyDest->flyDestBlockDescriptor.palette + param0->hoveredFlyDest->isUnlocked);
    }

    param0->flyTargetBlinkTimer++;

    if (param0->flyTargetBlinkTimer == 16) {
        param0->flyTargetBlinkTimer = 0;
        param0->flyTargetBlinkState ^= 1;
    }
}

TownMapBlockList *TownMap_ReadBlockData(const char *path, int heapID)
{
    FSFile tmapBlockFile;
    int readLength, i;
    int locationCount;
    TownMapBlockList *tmapBlock;
    TownMapBlock *entry;

    FS_InitFile(&tmapBlockFile);

    if (!FS_OpenFile(&tmapBlockFile, path)) {
        GF_ASSERT(FALSE);
        return NULL;
    }

    readLength = FS_ReadFile(&tmapBlockFile, &locationCount, sizeof(int));
    GF_ASSERT(readLength >= 0);

    tmapBlock = Heap_Alloc(heapID, sizeof(TownMapBlockList));
    memset(tmapBlock, 0, sizeof(TownMapBlockList));

    tmapBlock->entries = Heap_Alloc(heapID, sizeof(TownMapBlock) * locationCount);
    memset(tmapBlock->entries, 0, sizeof(TownMapBlock) * locationCount);

    tmapBlock->locationCount = locationCount;

    for (i = 0; i < tmapBlock->locationCount; i++) {
        entry = &(tmapBlock->entries[i]);
        readLength = FS_ReadFile(&tmapBlockFile, entry, sizeof(TownMapBlock));
        entry->index = i;
    }

    (void)FS_CloseFile(&tmapBlockFile);

    return tmapBlock;
}

void TownMapApp_FreeTownMapBlockData(TownMapBlockList *param0)
{
    Heap_Free(param0->entries);
    Heap_Free(param0);
}

TownMapBlock *TownMapApp_GetHoveredMapBlock(TownMapBlockList *param0, int param1, int param2, u16 param3)
{
    int v0;
    TownMapBlock *v1;

    for (v0 = 0; v0 < param0->locationCount; v0++) {
        v1 = &(param0->entries[v0]);

        if ((v1->x == param1) && (v1->y == param2)) {
            if ((v1->hiddenLocationFlags == 0) || (v1->hiddenLocationFlags & param3)) {
                return v1;
            } else {
                return NULL;
            }
        }
    }

    return NULL;
}
