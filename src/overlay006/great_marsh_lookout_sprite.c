#include "overlay006/great_marsh_lookout_sprite.h"

#include <nitro.h>

#include "generated/gender_ratios.h"
#include "generated/genders.h"

#include "character_sprite.h"
#include "heap.h"
#include "math_util.h"
#include "narc.h"
#include "pokemon.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"

static void CreateMonSprite(GreatMarshLookoutSpriteManager *spriteMan);
static void UpdateSpriteList(SysTask *task, void *data);
static void LoadMonSpriteData(SpriteResourceCollection *charResourceCollection, SpriteResourceCollection *plttResourceCollection, void *charData, void *plttData);

static const u8 sCapacities[] = { 1, 1, 1, 1 };

GreatMarshLookoutSpriteManager *GreatMarshLookout_AllocSpriteManager(const enum HeapID heapID)
{
    return Heap_AllocAtEnd(heapID, sizeof(GreatMarshLookoutSpriteManager));
}

void GreatMarshLookout_FreeSpriteManager(GreatMarshLookoutSpriteManager *spriteMan)
{
    Heap_Free(spriteMan);
}

void GreatMarshLookout_CreateMonSprite(GreatMarshLookoutSpriteManager *spriteMan, const int species)
{
    spriteMan->spriteShown = FALSE;

    int gender;
    u8 genderRatio = SpeciesData_GetSpeciesValue(species, SPECIES_DATA_GENDER_RATIO);

    switch (genderRatio) {
    case GENDER_RATIO_MALE_ONLY:
        gender = GENDER_MALE;
        break;
    case GENDER_RATIO_FEMALE_ONLY:
        gender = GENDER_FEMALE;
        break;
    case GENDER_RATIO_NO_GENDER:
        gender = GENDER_NONE;
        break;
    default:
        if (LCRNG_Next() % 2) {
            gender = GENDER_MALE;
        } else {
            gender = GENDER_FEMALE;
        }
    }

    BuildPokemonSpriteTemplate(&spriteMan->spriteTemplate, species, gender, 2, 0, NULL, NULL);

    spriteMan->spriteList = SpriteList_InitRendering(1, &spriteMan->g2dRenderer, HEAP_ID_FIELD1);
    NARC *narc = NARC_ctor(NARC_INDEX_DATA__FIELD_CUTIN, HEAP_ID_FIELD1);

    for (int i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
        spriteMan->resourceCollection[i] = SpriteResourceCollection_New(sCapacities[i], i, HEAP_ID_FIELD1);
    }

    spriteMan->resources[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTilesFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CHAR], narc, 5, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_FIELD1);
    spriteMan->resources[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPaletteFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_PLTT], narc, 3, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1, HEAP_ID_FIELD1);
    spriteMan->resources[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_AddFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_CELL], narc, 6, FALSE, 2, SPRITE_RESOURCE_CELL, HEAP_ID_FIELD1);
    spriteMan->resources[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_AddFrom(spriteMan->resourceCollection[SPRITE_RESOURCE_ANIM], narc, 12, FALSE, 3, SPRITE_RESOURCE_ANIM, HEAP_ID_FIELD1);
    spriteMan->monSpriteTiles = CharacterSprite_LoadTiles(spriteMan->spriteTemplate.narcID, spriteMan->spriteTemplate.character, HEAP_ID_FIELD1);
    spriteMan->monSpritePltt = CharacterSprite_LoadPalette(spriteMan->spriteTemplate.narcID, spriteMan->spriteTemplate.palette, HEAP_ID_FIELD1);

    LoadMonSpriteData(spriteMan->resourceCollection[0], spriteMan->resourceCollection[1], spriteMan->monSpriteTiles, spriteMan->monSpritePltt);

    NARC_dtor(narc);
    CreateMonSprite(spriteMan);
}

void GreatMarshLookout_ShowMonSprite(GreatMarshLookoutSpriteManager *spriteMan)
{
    spriteMan->spriteShown = TRUE;
    spriteMan->spriteTaskFinished = FALSE;

    SysTask_Start(UpdateSpriteList, spriteMan, 0);
}

void GreatMarshLookout_StopShowingMonSprite(GreatMarshLookoutSpriteManager *spriteMan)
{
    spriteMan->spriteShown = FALSE;
}

BOOL GreateMarshLookout_IsSpriteTaskFinished(GreatMarshLookoutSpriteManager *spriteMan)
{
    return spriteMan->spriteTaskFinished;
}

void GreatMarshLookout_FreeSpriteResources(GreatMarshLookoutSpriteManager *spriteMan)
{
    SpriteTransfer_ResetCharTransfer(spriteMan->resources[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(spriteMan->resources[SPRITE_RESOURCE_PLTT]);

    for (u8 i = 0; i < MAX_SPRITE_RESOURCE_GEN4; i++) {
        SpriteResourceCollection_Delete(spriteMan->resourceCollection[i]);
    }

    SpriteList_Delete(spriteMan->spriteList);
    Heap_Free(spriteMan->monSpriteTiles);
    Heap_Free(spriteMan->monSpritePltt);
}

static void UpdateSpriteList(SysTask *task, void *data)
{
    GreatMarshLookoutSpriteManager *resources = data;

    if (resources->spriteShown) {
        SpriteList_Update(resources->spriteList);
    } else {
        resources->spriteTaskFinished = TRUE;
        SysTask_Done(task);
    }
}

static void LoadMonSpriteData(SpriteResourceCollection *charResourceCollection, SpriteResourceCollection *plttResourceCollection, void *charData, void *plttData)
{
    SpriteResource *charResource = SpriteResourceCollection_Find(charResourceCollection, 0);
    SpriteResource *plttResource = SpriteResourceCollection_Find(plttResourceCollection, 1);

    SpriteTransfer_RequestCharAtEnd(charResource);
    SpriteTransfer_RequestPlttFreeSpace(plttResource);

    NNSG2dImageProxy *imageProxy = SpriteTransfer_GetImageProxy(charResource);
    const NNSG2dImagePaletteProxy *plttProxy = SpriteTransfer_GetPaletteProxy(plttResource, imageProxy);
    u32 charOffset = NNS_G2dGetImageLocation(imageProxy, NNS_G2D_VRAM_TYPE_2DMAIN);
    u32 plttOffset = NNS_G2dGetImagePaletteLocation(plttProxy, NNS_G2D_VRAM_TYPE_2DMAIN);
    int szBytes = (32 * 10) * 10;

    DC_FlushRange(charData, szBytes);
    GX_LoadOBJ(charData, charOffset, szBytes);

    szBytes = 32;

    DC_FlushRange(plttData, szBytes);
    GX_LoadOBJPltt(plttData, plttOffset, szBytes);
}

static void CreateMonSprite(GreatMarshLookoutSpriteManager *spriteMan)
{
    SpriteResourcesHeader resourceHeader;

    SpriteResourcesHeader_Init(&resourceHeader, 0, 1, 2, 3, -1, -1, FALSE, 0, spriteMan->resourceCollection[0], spriteMan->resourceCollection[1], spriteMan->resourceCollection[2], spriteMan->resourceCollection[3], NULL, NULL);

    AffineSpriteListTemplate spriteListTemplate;

    spriteListTemplate.list = spriteMan->spriteList;
    spriteListTemplate.resourceData = &resourceHeader;
    spriteListTemplate.position.x = 0;
    spriteListTemplate.position.y = 0;
    spriteListTemplate.position.z = 0;
    spriteListTemplate.affineScale.x = FX32_ONE;
    spriteListTemplate.affineScale.y = FX32_ONE;
    spriteListTemplate.affineScale.z = FX32_ONE;
    spriteListTemplate.affineZRotation = 0;
    spriteListTemplate.priority = 0;
    spriteListTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteListTemplate.heapID = HEAP_ID_FIELD1;
    spriteListTemplate.position.x = FX32_CONST(HW_LCD_WIDTH / 2);
    spriteListTemplate.position.y = FX32_CONST(HW_LCD_HEIGHT / 2);

    spriteMan->sprite = SpriteList_AddAffine(&spriteListTemplate);

    Sprite_SetAnimateFlag(spriteMan->sprite, FALSE);
    Sprite_SetAnim(spriteMan->sprite, 0);
}
