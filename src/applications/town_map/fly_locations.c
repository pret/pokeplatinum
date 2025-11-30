#include "applications/town_map/fly_locations.h"

#include <nitro.h>
#include <string.h>

#include "generated/first_arrival_to_zones.h"
#include "generated/map_headers.h"

#include "applications/town_map/defs.h"
#include "applications/town_map/main.h"

#include "heap.h"
#include "sprite.h"
#include "sprite_system.h"

enum TownMapFlyLocationShape {
    FLY_LOCATION_SHAPE_1x1_SQUARE = 0,
    FLY_LOCATION_SHAPE_VERTICAL,
    FLY_LOCATION_SHAPE_2x2_SQUARE,
    FLY_LOCATION_SHAPE_TOP_LEFT_ANGLE,
    FLY_LOCATION_SHAPE_TOP_RIGHT_ANGLE,
    FLY_LOCATION_SHAPE_HORIZONTAL,
    FLY_LOCATION_SHAPE_SMALL_RECTANGLE,
};

enum TownMapFlyLocationPalette {
    FLY_LOCATION_PALETTE_BLUE = 0,
    FLY_LOCATION_PALETTE_RED_GREEN,
};

enum TownMapSpecialFlyLocation {
    REGULAR_FLY_LOCATION = 0,
    FLY_LOCATION_PAL_PARK,
    FLY_LOCATION_VICTORY_ROAD,
    FLY_LOCATION_POKEMON_LEAGUE,
};

/*
 * The spriteX and spriteY can be determined from the main map matrix (aka map
 * matrix 0) and some offset depending on the block shape.
 * For the ones that span multiple map matrix blocks, the following uses the
 * coordinates of the north-westernmost one.
 */
const TownMapFlyLocationDescriptor sFlyLocations[NUM_FLY_LOCATIONS] = {
    {
        .mapHeader = MAP_HEADER_TWINLEAF_TOWN,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_TWINLEAF_TOWN,
        .blockShape = FLY_LOCATION_SHAPE_1x1_SQUARE,
        .palette = FLY_LOCATION_PALETTE_BLUE,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 3 * TOWN_MAP_GRID_SPACING,
        .spriteY = 27 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_SANDGEM_TOWN,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_SANDGEM_TOWN,
        .blockShape = FLY_LOCATION_SHAPE_1x1_SQUARE,
        .palette = FLY_LOCATION_PALETTE_BLUE,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 5 * TOWN_MAP_GRID_SPACING,
        .spriteY = 26 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_FLOAROMA_TOWN,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_FLOAROMA_TOWN,
        .blockShape = FLY_LOCATION_SHAPE_VERTICAL,
        .palette = FLY_LOCATION_PALETTE_BLUE,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 5 * TOWN_MAP_GRID_SPACING,
        .spriteY = 19 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_SOLACEON_TOWN,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_SOLACEON_TOWN,
        .blockShape = FLY_LOCATION_SHAPE_HORIZONTAL,
        .palette = FLY_LOCATION_PALETTE_BLUE,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 17 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 20 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_CELESTIC_TOWN,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_CELESTIC_TOWN,
        .blockShape = FLY_LOCATION_SHAPE_1x1_SQUARE,
        .palette = FLY_LOCATION_PALETTE_BLUE,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 14 * TOWN_MAP_GRID_SPACING,
        .spriteY = 16 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_SURVIVAL_AREA,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_SURVIVAL_AREA,
        .blockShape = FLY_LOCATION_SHAPE_1x1_SQUARE,
        .palette = FLY_LOCATION_PALETTE_BLUE,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 20 * TOWN_MAP_GRID_SPACING,
        .spriteY = 10 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_RESORT_AREA,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_RESORT_AREA,
        .blockShape = FLY_LOCATION_SHAPE_1x1_SQUARE,
        .palette = FLY_LOCATION_PALETTE_BLUE,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 25 * TOWN_MAP_GRID_SPACING,
        .spriteY = 14 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_JUBILIFE_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_JUBILIFE_CITY,
        .blockShape = FLY_LOCATION_SHAPE_2x2_SQUARE,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 4 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 23 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_CANALAVE_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_CANALAVE_CITY,
        .blockShape = FLY_LOCATION_SHAPE_VERTICAL,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 1 * TOWN_MAP_GRID_SPACING,
        .spriteY = 22 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_OREBURGH_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_OREBURGH_CITY,
        .blockShape = FLY_LOCATION_SHAPE_TOP_RIGHT_ANGLE,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 8 * TOWN_MAP_GRID_SPACING + 4,
        .spriteY = 23 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_ETERNA_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_ETERNA_CITY,
        .blockShape = FLY_LOCATION_SHAPE_TOP_LEFT_ANGLE,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 9 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 16 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_HEARTHOME_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_HEARTHOME_CITY,
        .blockShape = FLY_LOCATION_SHAPE_2x2_SQUARE,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 14 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 21 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_PASTORIA_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_PASTORIA_CITY,
        .blockShape = FLY_LOCATION_SHAPE_2x2_SQUARE,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 18 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 25 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_VEILSTONE_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_VEILSTONE_CITY,
        .blockShape = FLY_LOCATION_SHAPE_2x2_SQUARE,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 21 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 18 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_SUNYSHORE_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_SUNYSHORE_CITY,
        .blockShape = FLY_LOCATION_SHAPE_2x2_SQUARE,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 26 * TOWN_MAP_GRID_SPACING + 3,
        .spriteY = 23 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_SNOWPOINT_CITY,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_SNOWPOINT_CITY,
        .blockShape = FLY_LOCATION_SHAPE_VERTICAL,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 11 * TOWN_MAP_GRID_SPACING,
        .spriteY = 6 * TOWN_MAP_GRID_SPACING + 3,
    },
    {
        .mapHeader = MAP_HEADER_FIGHT_AREA,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_FIGHT_AREA,
        .blockShape = FLY_LOCATION_SHAPE_HORIZONTAL,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = REGULAR_FLY_LOCATION,
        .spriteX = 19 * TOWN_MAP_GRID_SPACING + 4,
        .spriteY = 13 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_ROUTE_221,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_POKE_PARK_FRONT_GATE,
        .blockShape = FLY_LOCATION_SHAPE_SMALL_RECTANGLE,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = FLY_LOCATION_PAL_PARK,
        .spriteX = 9 * TOWN_MAP_GRID_SPACING,
        .spriteY = 28 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_POKEMON_LEAGUE,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_OUTSIDE_VICTORY_ROAD,
        .blockShape = FLY_LOCATION_SHAPE_SMALL_RECTANGLE,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = FLY_LOCATION_VICTORY_ROAD,
        .spriteX = 26 * TOWN_MAP_GRID_SPACING,
        .spriteY = 18 * TOWN_MAP_GRID_SPACING,
    },
    {
        .mapHeader = MAP_HEADER_POKEMON_LEAGUE,
        .unusedUnlockFirstArrivalFlag = FIRST_ARRIVAL_POKEMON_LEAGUE,
        .blockShape = FLY_LOCATION_SHAPE_1x1_SQUARE,
        .palette = FLY_LOCATION_PALETTE_RED_GREEN,
        .specialFlyLocationID = FLY_LOCATION_POKEMON_LEAGUE,
        .spriteX = 26 * TOWN_MAP_GRID_SPACING,
        .spriteY = 17 * TOWN_MAP_GRID_SPACING,
    }
};

TownMapAppFlyLocationsManager *TownMap_LoadFlyLocations(SpriteSystem *spriteSystem, SpriteManager *spriteMan, u8 *unlocked, short count, enum HeapID heapID)
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

    TownMapAppFlyLocationsManager *flyLocationsMan = Heap_Alloc(heapID, sizeof(TownMapAppFlyLocationsManager));
    memset(flyLocationsMan, 0, sizeof(TownMapAppFlyLocationsManager));

    flyLocationsMan->count = count;
    flyLocationsMan->flyLocationsList = Heap_Alloc(heapID, sizeof(TownMapAppFlyLocation) * flyLocationsMan->count);
    memset(flyLocationsMan->flyLocationsList, 0, sizeof(TownMapAppFlyLocation) * flyLocationsMan->count);

    const TownMapFlyLocationDescriptor *descriptors = sFlyLocations;

    for (short i = 0; i < flyLocationsMan->count; i++) {
        TownMapAppFlyLocation *flyDest = &flyLocationsMan->flyLocationsList[i];
        flyDest->descriptor.mapHeader = descriptors[i].mapHeader;
        flyDest->descriptor.blockShape = descriptors[i].blockShape;
        flyDest->descriptor.palette = descriptors[i].palette;
        flyDest->descriptor.specialFlyLocationID = descriptors[i].specialFlyLocationID;
        flyDest->descriptor.spriteX = descriptors[i].spriteX;
        flyDest->descriptor.spriteY = descriptors[i].spriteY;
        flyDest->isUnlocked = unlocked[i];
        flyDest->sprite = SpriteSystem_NewSpriteFromResourceHeader(spriteSystem, spriteMan, &spriteTemplate);

        Sprite_SetDrawFlag(flyDest->sprite, TRUE);

        if (flyDest->isUnlocked) {
            Sprite_SetExplicitPalette(flyDest->sprite, PLTT_5 + flyDest->descriptor.palette + flyDest->isUnlocked);
        } else {
            if (flyDest->descriptor.specialFlyLocationID == FLY_LOCATION_PAL_PARK || flyDest->descriptor.specialFlyLocationID == FLY_LOCATION_VICTORY_ROAD) {
                Sprite_SetDrawFlag(flyDest->sprite, FALSE);
            }
        }

        Sprite_UpdateAnim(flyDest->sprite, FX32_CONST(flyDest->descriptor.blockShape));
        Sprite_SetPositionXY(flyDest->sprite, flyDest->descriptor.spriteX + TOWN_MAP_GRID_X_OFFSET, flyDest->descriptor.spriteY + TOWN_MAP_GRID_Y_OFFSET);
    }

    return flyLocationsMan;
}

void TownMap_FreeFlyLocations(TownMapAppFlyLocationsManager *flyLocations)
{
    for (short i = 0; i < flyLocations->count; i++) {
        TownMapAppFlyLocation *flyLocation = &flyLocations->flyLocationsList[i];
        Sprite_SetAffineZRotationEx(flyLocation->sprite, 0, AFFINE_OVERWRITE_MODE_NONE);
        Sprite_Delete(flyLocation->sprite);
    }

    Heap_Free(flyLocations->flyLocationsList);
    Heap_Free(flyLocations);
}

TownMapAppFlyLocation *TownMap_GetFlyLocationAtPos(TownMapAppFlyLocationsManager *flyLocations, enum MapHeader mapHeader, int x, int z)
{
    for (short i = 0; i < flyLocations->count; i++) {
        TownMapAppFlyLocation *flyLocation = &(flyLocations->flyLocationsList[i]);

        if (flyLocation->descriptor.mapHeader != mapHeader) {
            continue;
        }

        // Some map headers span several tiles but have a fly location that takes up a single tile
        // For these, we need to check for the fly location's exact position
        switch (flyLocation->descriptor.specialFlyLocationID) {
        case REGULAR_FLY_LOCATION:
            return flyLocation;
        case FLY_LOCATION_PAL_PARK:
            if (x == 9 && z == 28) {
                return flyLocation;
            }
            break;
        case FLY_LOCATION_VICTORY_ROAD:
            if (x == 26 && z == 18) {
                return flyLocation;
            }
            break;
        case FLY_LOCATION_POKEMON_LEAGUE:
            if (x == 26 && z == 17) {
                return flyLocation;
            }
            break;
        }
    }

    return NULL;
}

BOOL TownMap_UpdateHoveredFlyLocation(TownMapAppFlyLocationsManager *flyLocations, enum MapHeader mapHeader, int x, int y)
{
    if (flyLocations == NULL) {
        return FALSE;
    }

    TownMapAppFlyLocation *hoveredFlyDest = TownMap_GetFlyLocationAtPos(flyLocations, mapHeader, x, y);

    if (hoveredFlyDest == NULL || hoveredFlyDest->isUnlocked == FALSE) {
        if (flyLocations->hovered != NULL) {
            Sprite_SetExplicitPalette(flyLocations->hovered->sprite, PLTT_5 + flyLocations->hovered->descriptor.palette + flyLocations->hovered->isUnlocked);
        }

        flyLocations->hovered = NULL;
        return FALSE;
    }

    if (flyLocations->hovered == NULL) {
        flyLocations->blinkTimer = 0;
        flyLocations->blinkState = 0;
    } else {
        if (hoveredFlyDest->descriptor.specialFlyLocationID == FLY_LOCATION_VICTORY_ROAD
            || hoveredFlyDest->descriptor.specialFlyLocationID == FLY_LOCATION_POKEMON_LEAGUE) {
            Sprite_SetExplicitPalette(flyLocations->hovered->sprite, PLTT_5 + flyLocations->hovered->descriptor.palette + flyLocations->hovered->isUnlocked);
        }
    }

    flyLocations->hovered = hoveredFlyDest;
    return TRUE;
}

void TownMap_BlinkHoveredFlyLocation(TownMapAppFlyLocationsManager *flyLocations, enum TownMapMode mapMode)
{
    if (flyLocations->hovered == NULL || mapMode != TOWN_MAP_MODE_FLY) {
        return;
    }

    if (flyLocations->blinkState == 0) {
        Sprite_SetExplicitPalette(flyLocations->hovered->sprite, PLTT_8 + flyLocations->hovered->descriptor.palette);
    } else {
        Sprite_SetExplicitPalette(flyLocations->hovered->sprite, PLTT_5 + flyLocations->hovered->descriptor.palette + flyLocations->hovered->isUnlocked);
    }

    flyLocations->blinkTimer++;

    if (flyLocations->blinkTimer == 16) {
        flyLocations->blinkTimer = 0;
        flyLocations->blinkState ^= 1;
    }
}
