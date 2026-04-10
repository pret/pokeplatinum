#include "overlay005/villa_furniture.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/map_prop.h"

#include "field_system.h"
#include "heap.h"
#include "map_object.h"
#include "persisted_map_features.h"
#include "savedata_misc.h"
#include "script_manager.h"
#include "system_flags.h"
#include "vars_flags.h"

#include "res/field/props/models/prop_models.naix"

#define FURNITURE_SLOTS       23
#define COLLISION_BOUNDS_NONE { 0, 0, 0, 0 }

typedef struct FurnitureCollisionBoundingBox {
    s16 left;
    s16 top;
    s16 right;
    s16 bottom;
} FurnitureCollisionBoundingBox;

typedef struct VillaFurniture {
    u16 furnitureType;
    u16 isCollisionEnabled;
    VecFx32 position;
    FurnitureCollisionBoundingBox collisionBounds;
} VillaFurniture;

typedef struct VillaFurnitureProp {
    u16 isLoaded;
    u16 propIdx;
    u32 modelID;
    MapProp *mapProp;
} VillaFurnitureProp;

typedef struct VillaDynamicMapData {
    FieldSystem *fieldSystem;
    VillaPersistedData *persistedData;
    VillaFurnitureProp furnitureProps[FURNITURE_SLOTS];
} VillaDynamicMapData;

static void LoadFurniturePropModel(VillaDynamicMapData *villaDynamicData, const enum VillaFurnitureType furnitureType);
static BOOL FieldSystem_OwnsVillaFurniture(FieldSystem *fieldSystem, enum VillaFurnitureType furnitureType);
static BOOL CheckFurnitureCollision(int tileX, int tileZ, const VillaFurniture *furniture, FieldSystem *fieldSystem);

static const VillaFurniture sVillaFurnitures[FURNITURE_SLOTS];
static const u32 sVillaFurnitureModelIDs[VILLA_FURNITURE_MAX];
static const u32 sVillaFurnitureScriptIDs[VILLA_FURNITURE_MAX];

void Villa_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedDatas = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    VillaPersistedData *villaPersistedData = PersistedMapFeatures_GetBuffer(persistedDatas, DYNAMIC_MAP_FEATURES_VILLA);
    VillaDynamicMapData *villaDynamicData = Heap_Alloc(HEAP_ID_FIELD1, sizeof(VillaDynamicMapData));

    memset(villaDynamicData, 0, sizeof(VillaDynamicMapData));

    villaDynamicData->fieldSystem = fieldSystem;
    villaDynamicData->persistedData = villaPersistedData;

    fieldSystem->unk_04->dynamicMapFeaturesData = villaDynamicData;

    for (int i = 0; i < VILLA_FURNITURE_MAX; i++) {
        if (FieldSystem_OwnsVillaFurniture(fieldSystem, i) == TRUE) {
            LoadFurniturePropModel(villaDynamicData, i);
        }
    }
}

void Villa_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    VillaDynamicMapData *villaDynamicData = fieldSystem->unk_04->dynamicMapFeaturesData;

    Heap_Free(villaDynamicData);
    fieldSystem->unk_04->dynamicMapFeaturesData = NULL;
}

BOOL Villa_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding)
{
    int i;
    const VillaFurniture *furniture = sVillaFurnitures;

    for (i = 0; i < FURNITURE_SLOTS; i++, furniture++) {
        if (CheckFurnitureCollision(tileX, tileZ, furniture, fieldSystem) == TRUE) {
            *isColliding = TRUE;
            return TRUE;
        }
    }

    *isColliding = FALSE;
    return FALSE;
}

BOOL FieldSystem_TrySetVillaFurnitureScript(FieldSystem *fieldSystem, const int tileX, const int tileZ, const int direction)
{
    PersistedMapFeatures *persistedDatas = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

    if (PersistedMapFeatures_GetID(persistedDatas) == DYNAMIC_MAP_FEATURES_VILLA) {
        int i;
        const VillaFurniture *furniture = sVillaFurnitures;

        for (i = 0; i < FURNITURE_SLOTS; i++, furniture++) {
            if (CheckFurnitureCollision(tileX, tileZ, furniture, fieldSystem) == TRUE) {
                u32 furnitureScript = sVillaFurnitureScriptIDs[furniture->furnitureType];

                if (furnitureScript == SCRIPT_ID_OFFSET_TV_BROADCAST && direction != DIR_NORTH) {
                    continue;
                }

                ScriptManager_Set(fieldSystem, furnitureScript, NULL);
                return TRUE;
            }
        }
    }

    return FALSE;
}

static void LoadFurniturePropModel(VillaDynamicMapData *villaDynamicData, const enum VillaFurnitureType furnitureType)
{
    VillaFurnitureProp *furnitureProp;
    VecFx32 rotation = { 0, 0, 0 };
    int modelID = sVillaFurnitureModelIDs[furnitureType];
    const VillaFurniture *furniture = sVillaFurnitures;
    FieldSystem *fieldSystem = villaDynamicData->fieldSystem;

    for (int i = 0; i < FURNITURE_SLOTS; i++, furniture++) {
        if (furniture->furnitureType == furnitureType) {

            furnitureProp = villaDynamicData->furnitureProps;
            for (int j = 0; j < FURNITURE_SLOTS; j++) {
                if (!furnitureProp->isLoaded) {
                    furnitureProp->isLoaded = TRUE;
                    furnitureProp->modelID = modelID;
                    furnitureProp->propIdx = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, modelID, &furniture->position, &rotation, fieldSystem->mapPropAnimMan);
                    furnitureProp->mapProp = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, modelID);
                    break;
                }
                furnitureProp++;
            }
        }
    }
}

static BOOL FieldSystem_OwnsVillaFurniture(FieldSystem *fieldSystem, enum VillaFurnitureType furnitureType)
{
    return SystemFlag_HandleOwnsVillaFurniture(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK, furnitureType);
}

static BOOL CheckFurnitureCollision(int tileX, int tileZ, const VillaFurniture *furniture, FieldSystem *fieldSystem)
{
    const FurnitureCollisionBoundingBox *collisionBounds = &furniture->collisionBounds;

    if (furniture->isCollisionEnabled == TRUE && FieldSystem_OwnsVillaFurniture(fieldSystem, furniture->furnitureType) == TRUE) {
        if (tileZ >= collisionBounds->top && tileZ <= collisionBounds->bottom && tileX >= collisionBounds->left && tileX <= collisionBounds->right) {
            return TRUE;
        }
    }

    return FALSE;
}

static const VillaFurniture sVillaFurnitures[FURNITURE_SLOTS] = {
    {
        .furnitureType = VILLA_FURNITURE_TABLE,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(12),
            .y = 0,
            .z = MAP_OBJECT_COORD_EDGE_TO_FX32(7),
        },
        .collisionBounds = {
            .left = 11,
            .top = 5,
            .right = 13,
            .bottom = 8,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_BIG_SOFA,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_EDGE_TO_FX32(15),
            .y = 0,
            .z = MAP_OBJECT_COORD_EDGE_TO_FX32(7),
        },
        .collisionBounds = {
            .left = 14,
            .top = 5,
            .right = 15,
            .bottom = 8,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_SMALL_SOFA,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(13),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(10),
        },
        .collisionBounds = {
            .left = 11,
            .top = 9,
            .right = 13,
            .bottom = 10,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_BED,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(18),
            .y = 0,
            .z = MAP_OBJECT_COORD_EDGE_TO_FX32(8),
        },
        .collisionBounds = {
            .left = 18,
            .top = 6,
            .right = 20,
            .bottom = 9,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_NIGHT_TABLE,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(20),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(7),
        },
        .collisionBounds = {
            .left = 17,
            .top = 6,
            .right = 17,
            .bottom = 7,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_TV,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_EDGE_TO_FX32(12),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(3),
        },
        .collisionBounds = {
            .left = 11,
            .top = 3,
            .right = 12,
            .bottom = 3,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_AUDIO_SYSTEM,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(14),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(3),
        },
        .collisionBounds = {
            .left = 13,
            .top = 3,
            .right = 15,
            .bottom = 3,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_BOOKSHELF,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_EDGE_TO_FX32(17),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(3),
        },
        .collisionBounds = {
            .left = 16,
            .top = 3,
            .right = 17,
            .bottom = 3,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_RACK,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_EDGE_TO_FX32(19),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(3),
        },
        .collisionBounds = {
            .left = 18,
            .top = 3,
            .right = 19,
            .bottom = 3,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_HOUSEPLANT,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(1),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(3),
        },
        .collisionBounds = {
            .left = 1,
            .top = 3,
            .right = 1,
            .bottom = 3,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_HOUSEPLANT,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(20),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(3),
        },
        .collisionBounds = {
            .left = 20,
            .top = 3,
            .right = 20,
            .bottom = 3,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_HOUSEPLANT,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(1),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(11),
        },
        .collisionBounds = {
            .left = 1,
            .top = 11,
            .right = 1,
            .bottom = 11,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_HOUSEPLANT,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(20),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(11),
        },
        .collisionBounds = {
            .left = 20,
            .top = 11,
            .right = 20,
            .bottom = 11,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_PC_DESK,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_EDGE_TO_FX32(2),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(8),
        },
        .collisionBounds = {
            .left = 1,
            .top = 7,
            .right = 2,
            .bottom = 9,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_MUSIC_BOX,
        .isCollisionEnabled = FALSE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(18),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(3),
        },
        .collisionBounds = COLLISION_BOUNDS_NONE,
    },
    {
        .furnitureType = VILLA_FURNITURE_POKEMON_BUST,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(2),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(3),
        },
        .collisionBounds = {
            .left = 2,
            .top = 3,
            .right = 2,
            .bottom = 3,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_POKEMON_BUST_SILVER,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(6),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(3),
        },
        .collisionBounds = {
            .left = 6,
            .top = 3,
            .right = 6,
            .bottom = 3,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_PIANO,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(2),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(5),
        },
        .collisionBounds = {
            .left = 1,
            .top = 4,
            .right = 2,
            .bottom = 6,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_GUEST_SET,
        .isCollisionEnabled = TRUE,
        .position = {
            .x = MAP_OBJECT_COORD_EDGE_TO_FX32(6),
            .y = 0,
            .z = MAP_OBJECT_COORD_EDGE_TO_FX32(10),
        },
        .collisionBounds = {
            .left = 4,
            .top = 9,
            .right = 7,
            .bottom = 10,
        },
    },
    {
        .furnitureType = VILLA_FURNITURE_WALL_CLOCK,
        .isCollisionEnabled = FALSE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(11),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(1),
        },
        .collisionBounds = COLLISION_BOUNDS_NONE,
    },
    {
        .furnitureType = VILLA_FURNITURE_MASTERPIECE,
        .isCollisionEnabled = FALSE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(8),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(1),
        },
        .collisionBounds = COLLISION_BOUNDS_NONE,
    },
    {
        .furnitureType = VILLA_FURNITURE_TEA_SET,
        .isCollisionEnabled = FALSE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(6),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(10),
        },
        .collisionBounds = COLLISION_BOUNDS_NONE,
    },
    {
        .furnitureType = VILLA_FURNITURE_CHANDELIER,
        .isCollisionEnabled = FALSE,
        .position = {
            .x = MAP_OBJECT_COORD_CENTER_TO_FX32(7),
            .y = 0,
            .z = MAP_OBJECT_COORD_CENTER_TO_FX32(6),
        },
        .collisionBounds = COLLISION_BOUNDS_NONE,
    },
};

static const u32 sVillaFurnitureModelIDs[VILLA_FURNITURE_MAX] = {
    [VILLA_FURNITURE_TABLE] = villa_furniture_table_nsbmd,
    [VILLA_FURNITURE_BIG_SOFA] = villa_furniture_big_sofa_nsbmd,
    [VILLA_FURNITURE_SMALL_SOFA] = villa_furniture_small_sofa_nsbmd,
    [VILLA_FURNITURE_BED] = villa_furniture_bed_nsbmd,
    [VILLA_FURNITURE_NIGHT_TABLE] = villa_furniture_night_table_nsbmd,
    [VILLA_FURNITURE_TV] = villa_furniture_tv_nsbmd,
    [VILLA_FURNITURE_AUDIO_SYSTEM] = villa_furniture_audio_system_nsbmd,
    [VILLA_FURNITURE_BOOKSHELF] = villa_furniture_bookshelf_nsbmd,
    [VILLA_FURNITURE_RACK] = villa_furniture_rack_nsbmd,
    [VILLA_FURNITURE_HOUSEPLANT] = villa_furniture_houseplant_nsbmd,
    [VILLA_FURNITURE_PC_DESK] = villa_furniture_pc_desk_nsbmd,
    [VILLA_FURNITURE_MUSIC_BOX] = villa_furniture_music_box_nsbmd,
    [VILLA_FURNITURE_POKEMON_BUST] = villa_furniture_pokemon_bust_nsbmd,
    [VILLA_FURNITURE_POKEMON_BUST_SILVER] = villa_furniture_pokemon_bust_silver_nsbmd,
    [VILLA_FURNITURE_PIANO] = villa_furniture_piano_nsbmd,
    [VILLA_FURNITURE_GUEST_SET] = villa_furniture_guest_set_nsbmd,
    [VILLA_FURNITURE_WALL_CLOCK] = villa_furniture_wall_clock_nsbmd,
    [VILLA_FURNITURE_MASTERPIECE] = villa_furniture_masterpiece_nsbmd,
    [VILLA_FURNITURE_TEA_SET] = villa_furniture_tea_set_nsbmd,
    [VILLA_FURNITURE_CHANDELIER] = villa_furniture_chandelier_nsbmd,
};

// TODO: generate script IDs and replace magic numbers with generated script IDs
static const u32 sVillaFurnitureScriptIDs[VILLA_FURNITURE_MAX] = {
    [VILLA_FURNITURE_TABLE] = 0x15,
    [VILLA_FURNITURE_BIG_SOFA] = 0x16,
    [VILLA_FURNITURE_SMALL_SOFA] = 0x17,
    [VILLA_FURNITURE_BED] = 0x18,
    [VILLA_FURNITURE_NIGHT_TABLE] = 0x19,
    [VILLA_FURNITURE_TV] = SCRIPT_ID_OFFSET_TV_BROADCAST,
    [VILLA_FURNITURE_AUDIO_SYSTEM] = 0x1B,
    [VILLA_FURNITURE_BOOKSHELF] = 0x1C,
    [VILLA_FURNITURE_RACK] = 0x1D,
    [VILLA_FURNITURE_HOUSEPLANT] = 0x1E,
    [VILLA_FURNITURE_PC_DESK] = 0x1F,
    [VILLA_FURNITURE_MUSIC_BOX] = 0x20,
    [VILLA_FURNITURE_POKEMON_BUST] = 0x21,
    [VILLA_FURNITURE_POKEMON_BUST_SILVER] = 0x22,
    [VILLA_FURNITURE_PIANO] = 0x23,
    [VILLA_FURNITURE_GUEST_SET] = 0x24,
    [VILLA_FURNITURE_WALL_CLOCK] = 0x25,
    [VILLA_FURNITURE_MASTERPIECE] = 0x26,
    [VILLA_FURNITURE_TEA_SET] = 0x27,
    [VILLA_FURNITURE_CHANDELIER] = 0x28
};
