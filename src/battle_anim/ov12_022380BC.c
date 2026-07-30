#include "battle_anim/ov12_022380BC.h"

#include <nitro.h>
#include <string.h>

#include "battle_anim/const_ov12_0223B0A0.h"
#include "battle_anim/struct_ov12_022380DC.h"

#include "character_sprite.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_sprite.h"

static void ov12_022380DC(BattlerSpriteContext *battlerSpriteCtx, int param1, int param2, enum HeapID heapID);

const s16 gEncounterCoords[][3] = {
    { 0x150, 0x70, 0xFFFFFFFFFFFFFE00 },
    { 0xFFFFFFFFFFFFFFB0, 0x32, 0xFFFFFFFFFFFFFD80 },
    { 0x13C, 0x70, 0xFFFFFFFFFFFFFE00 },
    { 0xFFFFFFFFFFFFFFC4, 0x32, 0xFFFFFFFFFFFFFF9C },
    { 0x164, 0x78, 0x0 },
    { 0xFFFFFFFFFFFFFF9C, 0x2A, 0xFFFFFFFFFFFFFD80 }
};

const s16 gBattlerEncounterX[][2] = {
    { 0x40, 0x20 },
    { 0xC0, 0xE0 },
    { 0x28, 0x20 },
    { 0xD8, 0xE0 },
    { 0x50, 0x20 },
    { 0xB0, 0xE0 }
};

const s16 gSlideTrainerInCoords[][3] = {
    { 0xFFFFFFFFFFFFFFB0, 0x70, 0xFFFFFFFFFFFFFE00 },
    { 0x150, 0x32, 0xFFFFFFFFFFFFFE00 },
    { 0xFFFFFFFFFFFFFFB0, 0x70, 0xFFFFFFFFFFFFFE00 },
    { 0x150, 0x32, 0xFFFFFFFFFFFFFE00 },
    { 0xFFFFFFFFFFFFFFB0, 0x70, 0xFFFFFFFFFFFFFE00 },
    { 0x150, 0x32, 0xFFFFFFFFFFFFFE00 }
};

void ov12_022380BC(BattlerSpriteContext *battlerSpriteCtx, enum HeapID heapID)
{
    ov12_022380DC(battlerSpriteCtx, battlerSpriteCtx->targetBattler, 0, heapID);
}

void ov12_022380CC(BattlerSpriteContext *battlerSpriteCtx, enum HeapID heapID)
{
    ov12_022380DC(battlerSpriteCtx, battlerSpriteCtx->sourceBattler, 1, heapID);
}

static void ov12_022380DC(BattlerSpriteContext *battlerSpriteCtx, int param1, int param2, enum HeapID heapID)
{
    PokemonSpriteTemplate v0;
    PokemonSpriteTemplate *v1;
    int v2;
    int v3;
    int v4;
    int v5;
    int v6;
    u32 v7;
    int v8;
    s8 v9;
    s8 v10;
    s8 v11;
    u8 v12;

    PokemonSprite_Push(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler]);

    v2 = battlerSpriteCtx->species[battlerSpriteCtx->sourceBattler];
    v3 = battlerSpriteCtx->genders[battlerSpriteCtx->sourceBattler];
    v5 = battlerSpriteCtx->shinyFlags[battlerSpriteCtx->sourceBattler];
    v6 = battlerSpriteCtx->forms[battlerSpriteCtx->sourceBattler];
    v7 = battlerSpriteCtx->personalities[battlerSpriteCtx->sourceBattler];

    if (param2) {
        if (battlerSpriteCtx->types[param1] & 0x1) {
            v4 = 0;
        } else {
            v4 = 2;
        }
    } else {
        if (battlerSpriteCtx->types[param1] & 0x1) {
            v4 = 2;
        } else {
            v4 = 0;
        }
    }

    BuildPokemonSpriteTemplate(&v0, v2, v3, v4, v5, v6, v7);

    v1 = PokemonSprite_GetTemplate(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler]);
    *v1 = v0;

    PokemonSprite_ScheduleReloadFromNARC(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler]);
    CharacterSprite_LoadPokemonSprite(v1->narcID, v1->character, heapID, battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->tiles, v7, FALSE, v4, v1->spindaSpots);

    battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->narcID = v1->narcID;
    battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->palette = v1->palette;

    v11 = battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->yOffset = LoadPokemonSpriteYOffset(v2, v3, v4, v6, v7);
    v8 = ov12_022384CC(battlerSpriteCtx->types[battlerSpriteCtx->targetBattler], 1);

    PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_Y_CENTER, v8 + v11);

    if (v4 == 2) {
        NARC *v13 = NARC_ctor(NARC_INDEX_POKETOOL__POKE_EDIT__PL_POKE_DATA, heapID);

        PokemonSprite_LoadYOffset(v13, &v9, v2);
        PokemonSprite_LoadXOffsetShadow(v13, &v10, v2);
        PokemonSprite_LoadShadowSize(v13, &v12, v2);
        NARC_dtor(v13);

        PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_SHADOW_SIZE, v12);
        PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_SHADOW_Y, (v8 + v11) + (36 - v11));
        PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_SHADOW_X_OFFSET, v10);
        PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_SHADOW_Y_OFFSET, 36 - v11);
        PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_SHADOW_HEIGHT, v9);
    }
}

void ov12_022382BC(BattlerSpriteContext *battlerSpriteCtx, enum HeapID heapID)
{
    PokemonSpriteTemplate *v0;
    int v1;
    int v2;
    int v3;
    int v4;
    u32 v5;
    int v6;

    PokemonSprite_Pop(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler]);

    v0 = PokemonSprite_GetTemplate(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler]);
    v1 = battlerSpriteCtx->species[battlerSpriteCtx->targetBattler];
    v2 = battlerSpriteCtx->genders[battlerSpriteCtx->targetBattler];
    v4 = battlerSpriteCtx->forms[battlerSpriteCtx->targetBattler];
    v5 = battlerSpriteCtx->personalities[battlerSpriteCtx->targetBattler];

    if (battlerSpriteCtx->types[battlerSpriteCtx->targetBattler] & 0x1) {
        v3 = 2;
    } else {
        v3 = 0;
    }

    CharacterSprite_LoadPokemonSprite(v0->narcID, v0->character, heapID, battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->tiles, v5, FALSE, v3, v0->spindaSpots);

    battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->narcID = v0->narcID;
    battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->palette = v0->palette;
    battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->yOffset = LoadPokemonSpriteYOffset(v1, v2, v3, v4, v5);

    v6 = ov12_022384CC(battlerSpriteCtx->types[battlerSpriteCtx->targetBattler], 1) + battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->yOffset;

    PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_Y_CENTER, v6);
}

void ov12_02238390(BattlerSpriteContext *battlerSpriteCtx, enum HeapID heapID)
{
    PokemonSpriteTemplate v0;
    PokemonSpriteTemplate *v1;
    int v2;
    int v3;
    u8 v4;

    PokemonSprite_Push(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler]);

    v0.narcID = 117;
    v0.palette = 250;
    v0.spindaSpots = 0;
    v0.dummy = 0;
    v0.personality = 0;

    if (battlerSpriteCtx->types[battlerSpriteCtx->targetBattler] & 0x1) {
        v0.character = 249;
        v3 = 135;
    } else {
        v0.character = 248;
        v3 = 134;
    }

    v1 = PokemonSprite_GetTemplate(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler]);
    *v1 = v0;

    PokemonSprite_ScheduleReloadFromNARC(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler]);
    CharacterSprite_LoadSpriteFrame0(v1->narcID, v1->character, heapID, battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->tiles);

    battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->narcID = v0.narcID;
    battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->palette = v0.palette;

    NARC_ReadWholeMemberByIndexPair(&v4, NARC_INDEX_POKETOOL__POKEGRA__HEIGHT_O, v3);
    battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->yOffset = v4;
    v2 = ov12_022384CC(battlerSpriteCtx->types[battlerSpriteCtx->targetBattler], 1) + battlerSpriteCtx->pokemonSpriteData[battlerSpriteCtx->targetBattler]->yOffset;

    PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_Y_CENTER, v2);

    if (battlerSpriteCtx->types[battlerSpriteCtx->targetBattler] & 0x1) {
        PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_SHADOW_SIZE, 1);
        PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_SHADOW_Y, v2 + (36 - v4));
        PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_SHADOW_X_OFFSET, 0);
        PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_SHADOW_Y_OFFSET, 36 - v4);
        PokemonSprite_SetAttribute(battlerSpriteCtx->sprites[battlerSpriteCtx->targetBattler], MON_SPRITE_SHADOW_HEIGHT, 0);
    }
}

s16 ov12_022384CC(int battlerType, int coordIndex)
{
    if (coordIndex == 0) {
        return gBattlerEncounterX[battlerType][0];
    } else {
        return gEncounterCoords[battlerType][coordIndex];
    }
}
