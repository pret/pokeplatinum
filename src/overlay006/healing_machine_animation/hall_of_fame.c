#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"
#include "overlay006/healing_machine_animation.h"

#include "field_task.h"
#include "heap.h"
#include "map_matrix.h"
#include "party.h"
#include "terrain_collision_manager.h"

#include "res/field/props/models/prop_models.naix"

typedef struct HallOfFameHealingAnimation {
    VecFx32 position;
    u8 pokeballCount;
    u8 currentPokeballIndex;
    u8 pokeballTicks;
    u8 state;
    u8 pokeballLoadedPropIDs[MAX_PARTY_SIZE];
} HallOfFameHealingAnimation;

static BOOL FieldTask_PlayHealingAnimation_HallOfFame(FieldTask *param0);

static VecFx32 HallOfFameHealingAnimation_PokeballOffsets[MAX_PARTY_SIZE] = {
    HEALING_MACHINE_ANIMATION_CREATE_POKEBALL_OFFSETS(TOP, LEFT),
    HEALING_MACHINE_ANIMATION_CREATE_POKEBALL_OFFSETS(TOP, RIGHT),
    HEALING_MACHINE_ANIMATION_CREATE_POKEBALL_OFFSETS(MIDDLE, LEFT),
    HEALING_MACHINE_ANIMATION_CREATE_POKEBALL_OFFSETS(MIDDLE, RIGHT),
    HEALING_MACHINE_ANIMATION_CREATE_POKEBALL_OFFSETS(BOTTOM, LEFT),
    HEALING_MACHINE_ANIMATION_CREATE_POKEBALL_OFFSETS(BOTTOM, RIGHT),
};

void FieldSystem_PlayHealingAnimation_HallOfFame(FieldSystem *fieldSystem, const u8 pokeballCount)
{
    BOOL mapPropFound;
    MapProp *healingMachine;
    int mapMatrixIndex;
    int healingMachineID = pokemon_league_hall_of_fame_machine_nsbmd;

    mapPropFound = FieldSystem_FindLoadedMapPropByModelID(fieldSystem, healingMachineID, &healingMachine, &mapMatrixIndex);

    if (mapPropFound) {
        HallOfFameHealingAnimation *animation = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(HallOfFameHealingAnimation));
        animation->pokeballCount = pokeballCount;
        animation->currentPokeballIndex = 0;
        animation->pokeballTicks = 0;
        animation->state = 0;

        VecFx32 mapOrigin;
        TerrainCollisionManager_GetMapAbsoluteOrigin(mapMatrixIndex, MapMatrix_GetWidth(fieldSystem->mapMatrix), &mapOrigin);

        animation->position = MapProp_GetPosition(healingMachine);
        animation->position.x += mapOrigin.x;
        animation->position.z += mapOrigin.z;

        FieldTask_InitCall(fieldSystem->task, FieldTask_PlayHealingAnimation_HallOfFame, animation);
    } else {
        GF_ASSERT(FALSE);
    }
}

static BOOL FieldTask_PlayHealingAnimation_HallOfFame(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    HallOfFameHealingAnimation *animation = (HallOfFameHealingAnimation *)FieldTask_GetEnv(param0);

    switch (animation->state) {
    case HEALING_MACHINE_ANIMATION_STATE_START: {
        NNSG3dResMdl *pokeballModel;
        NNSG3dResFileHeader **pokeballModelFile;
        NNSG3dRenderObj *unused;

        pokeballModelFile = AreaDataManager_GetMapPropModelFile(pokecenter_healing_machine_mini_pokeball_nsbmd, fieldSystem->areaDataManager);
        pokeballModel = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*pokeballModelFile), 0);

        MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, HEALING_MACHINE_ANIMATION_POKEBALL_TAG, pokecenter_healing_machine_mini_pokeball_nsbmd, NULL, pokeballModel, AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager), 1, 1, 0);
        (animation->state)++;
        break;
    }
    case HEALING_MACHINE_ANIMATION_STATE_ADD_POKEBALL: {
        MapProp *pokeballMapProp;
        NNSG3dRenderObj *pokeballRenderObj;
        VecFx32 pokeballPosition;
        VecFx32 pokeballRotation = { 0, 0, 0 };

        pokeballPosition.x = animation->position.x + HallOfFameHealingAnimation_PokeballOffsets[animation->currentPokeballIndex].x;
        pokeballPosition.y = animation->position.y + HallOfFameHealingAnimation_PokeballOffsets[animation->currentPokeballIndex].y;
        pokeballPosition.z = animation->position.z + HallOfFameHealingAnimation_PokeballOffsets[animation->currentPokeballIndex].z;

        animation->pokeballLoadedPropIDs[animation->currentPokeballIndex] = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, pokecenter_healing_machine_mini_pokeball_nsbmd, &pokeballPosition, &pokeballRotation, fieldSystem->mapPropAnimMan);

        pokeballMapProp = MapPropManager_GetLoadedPropSafely(fieldSystem->mapPropManager, animation->pokeballLoadedPropIDs[animation->currentPokeballIndex]);
        pokeballRenderObj = MapProp_GetRenderObj(pokeballMapProp);
        MapPropOneShotAnimationManager_SetAnimationRenderObj(fieldSystem->mapPropOneShotAnimMan, HEALING_MACHINE_ANIMATION_POKEBALL_TAG, animation->currentPokeballIndex, pokeballRenderObj);
        (animation->state)++;
        break;
    }
    case HEALING_MACHINE_ANIMATION_STATE_WAIT_FOR_POKEBALL:
        if (animation->pokeballTicks < HEALING_MACHINE_ANIMATION_POKEBALL_MAX_TICKS) {
            animation->pokeballTicks++;
            break;
        } else {
            animation->pokeballTicks = 0;
        }

        animation->currentPokeballIndex++;

        if (animation->currentPokeballIndex < animation->pokeballCount) {
            (animation->state) = HEALING_MACHINE_ANIMATION_STATE_ADD_POKEBALL;
        } else {
            (animation->state)++;
        }

        break;
    case HEALING_MACHINE_ANIMATION_STATE_PLAY_FINAL_ANIMATION:
        MapPropOneShotAnimationManager_PlayAnimation(fieldSystem->mapPropOneShotAnimMan, HEALING_MACHINE_ANIMATION_POKEBALL_TAG, 0);
        (animation->state)++;
        break;
    case HEALING_MACHINE_ANIMATION_STATE_WAIT_FOR_FINAL_ANIMATION:
        if (MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, HEALING_MACHINE_ANIMATION_POKEBALL_TAG)) {
            u8 pokeballIndex;

            MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, HEALING_MACHINE_ANIMATION_POKEBALL_TAG);

            for (pokeballIndex = 0; pokeballIndex < animation->pokeballCount; pokeballIndex++) {
                MapPropManager_ClearOne(animation->pokeballLoadedPropIDs[pokeballIndex], fieldSystem->mapPropManager);
            }

            (animation->state)++;
        }
        break;
    case HEALING_MACHINE_ANIMATION_STATE_CLEAN_UP:
        Heap_Free(animation);
        return TRUE;
    }

    return FALSE;
}
