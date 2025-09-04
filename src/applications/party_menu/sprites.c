#include "applications/party_menu/sprites.h"

#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"
#include "generated/items.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/pokemon_summary_screen/main.h"

#include "graphics.h"
#include "grid_menu_cursor_position.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "narc.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "unk_0208C098.h"
#include "vram_transfer.h"

void PartyMenu_InitSpriteResources(PartyMenuApplication *application)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    VramTransfer_New(32, HEAP_ID_PARTY_MENU);

    application->spriteSystem = SpriteSystem_Alloc(12);
    application->spriteMan = SpriteManager_New(application->spriteSystem);

    RenderOamTemplate oamTemplate = {
        0,
        128,
        0,
        32,
        0,
        128,
        0,
        32,
    };
    CharTransferTemplateWithModes transferTemplate = {
        NUM_MENU_SPRITES + MAX_PARTY_SIZE, 1024, 1024, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K
    };

    SpriteSystem_Init(application->spriteSystem, &oamTemplate, &transferTemplate, 32);
    SpriteSystem_InitSprites(application->spriteSystem, application->spriteMan, NUM_MENU_SPRITES + MAX_PARTY_SIZE);

    G2dRenderer *renderer = SpriteSystem_GetRenderer(application->spriteSystem);
    SetSubScreenViewRect(renderer, 0, 256 * FX32_ONE);

    SpriteResourceDataPaths resdat = {
        "data/plist_chr.resdat",
        "data/plist_pal.resdat",
        "data/plist_cell.resdat",
        "data/plist_canm.resdat",
        NULL,
        NULL,
        "data/plist_h.cldat"
    };
    SpriteSystem_LoadResourceDataFromFilepaths(application->spriteSystem, application->spriteMan, &resdat);
}

void PartyMenu_DrawMemberSpeciesIcon(PartyMenuApplication *application, u8 slot, u16 x, u16 y, NARC *narc)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, slot);
    application->partyMembers[slot].spriteXDelta = x;
    application->partyMembers[slot].spriteYDelta = y;

    SpriteSystem_ReplaceCharResObjFromOpenNarc(
        application->spriteSystem,
        application->spriteMan,
        narc,
        Pokemon_IconSpriteIndex(mon),
        0,
        4 + slot);

    u32 isEgg = Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL);

    SpriteTemplateFromResourceHeader template;
    template.resourceHeaderID = 4 + slot;
    template.x = x;
    template.y = y;
    template.z = 0;
    template.animIdx = 0;
    template.priority = 0;
    template.plttIdx = PokeIconPaletteIndex(application->partyMembers[slot].species, application->partyMembers[slot].form, isEgg) + 3;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.dummy18 = 0;
    template.dummy1C = 0;
    template.dummy20 = 0;
    template.dummy24 = 0;

    application->partyMembers[slot].sprite = SpriteSystem_NewSpriteFromResourceHeader(application->spriteSystem, application->spriteMan, &template);
}

void sub_02082DA8(PartyMenuApplication *param0, u8 param1)
{
    Pokemon *v0;
    NARC *v1;
    int v2, v3;
    u32 v4;
    void *v5;
    NNSG2dCharacterData *v6;
    BOOL v7;

    v0 = Party_GetPokemonBySlotIndex(param0->partyMenu->party, param1);
    v2 = Pokemon_GetValue(v0, MON_DATA_SPECIES, NULL);
    v3 = Pokemon_GetValue(v0, MON_DATA_FORM, NULL);
    v1 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_PARTY_MENU);
    v4 = NNS_G2dGetImageLocation(Sprite_GetImageProxy(param0->partyMembers[param1].sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
    v5 = LoadMemberFromOpenNARC(v1, Pokemon_IconSpriteIndex(v0), 0, HEAP_ID_PARTY_MENU, 1);
    v7 = NNS_G2dGetUnpackedCharacterData(v5, &v6);

    if (v7) {
        DC_FlushRange(v6->pRawData, v6->szByte);
        GX_LoadOBJ(v6->pRawData, v4, v6->szByte);
    }

    Heap_Free(v5);
    Sprite_SetExplicitPalette2(param0->partyMembers[param1].sprite, PokeIconPaletteIndex(v2, v3, 0) + 3);
    NARC_dtor(v1);
}

static const SpriteTemplateFromResourceHeader sSpriteTemplates[] = {
    { 0x1, 0x40, 0x18, 0x0, 0x1, 0x3, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x1, 0x40, 0x48, 0x0, 0x2, 0x2, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x2, 0xE8, 0xA8, 0x0, 0x2, 0x1, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x2, 0xE8, 0xB8, 0x0, 0x2, 0x1, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x3, 0x24, 0x2C, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x3, 0xA4, 0x34, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x3, 0x24, 0x5C, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x3, 0xA4, 0x64, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x3, 0x24, 0x8C, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0x3, 0xA4, 0x94, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0xA4, 0x94, 0x0, 0x2, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0xA4, 0x94, 0x0, 0x2, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0xA4, 0x94, 0x0, 0x2, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0xA4, 0x94, 0x0, 0x2, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0xA4, 0x94, 0x0, 0x2, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xA, 0xA4, 0x94, 0x0, 0x2, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    { 0xB, 0xA4, 0x94, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DSUB, 0x0, 0x0, 0x0, 0x0 }
};

void PartyMenu_InitSprites(PartyMenuApplication *application)
{
    application->sprites[6] = SpriteSystem_NewSpriteFromResourceHeader(application->spriteSystem, application->spriteMan, &sSpriteTemplates[0]);
    application->sprites[7] = SpriteSystem_NewSpriteFromResourceHeader(application->spriteSystem, application->spriteMan, &sSpriteTemplates[1]);
    application->sprites[8] = SpriteSystem_NewSpriteFromResourceHeader(application->spriteSystem, application->spriteMan, &sSpriteTemplates[2]);
    application->sprites[9] = SpriteSystem_NewSpriteFromResourceHeader(application->spriteSystem, application->spriteMan, &sSpriteTemplates[3]);
    application->sprites[28] = SpriteSystem_NewSpriteFromResourceHeader(application->spriteSystem, application->spriteMan, &sSpriteTemplates[22]);

    for (u32 i = 0; i < MAX_PARTY_SIZE; i++) {
        application->sprites[10 + i] = SpriteSystem_NewSpriteFromResourceHeader(application->spriteSystem, application->spriteMan, &sSpriteTemplates[4 + i]);
        application->partyMembers[i].spriteXPos = sSpriteTemplates[4 + i].x;
        application->partyMembers[i].spriteYPos = sSpriteTemplates[4 + i].y;
        Sprite_SetDrawFlag(application->sprites[10 + i], FALSE);
        application->sprites[16 + i] = SpriteSystem_NewSpriteFromResourceHeader(application->spriteSystem, application->spriteMan, &sSpriteTemplates[10 + i]);
        application->sprites[22 + i] = SpriteSystem_NewSpriteFromResourceHeader(application->spriteSystem, application->spriteMan, &sSpriteTemplates[16 + i]);
    }

    Sprite_SetDrawFlag(application->sprites[7], FALSE);
    Sprite_SetDrawFlag(application->sprites[28], FALSE);
}

void PartyMenu_DrawMemberPokeBall(PartyMenuApplication *application, u8 slot, u16 x, u16 y)
{
    SpriteTemplateFromResourceHeader template;
    template.resourceHeaderID = 0;
    template.x = x;
    template.y = y;
    template.z = 0;
    template.animIdx = 0;
    template.priority = 1;
    template.plttIdx = 0;
    template.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.dummy18 = 0;
    template.dummy1C = 0;
    template.dummy20 = 0;
    template.dummy24 = 0;

    application->sprites[slot] = SpriteSystem_NewSpriteFromResourceHeader(application->spriteSystem, application->spriteMan, &template);
}

void sub_02082FF4(PartyMenuApplication *param0)
{
    SpriteSystem_DestroySpriteManager(param0->spriteSystem, param0->spriteMan);
    SpriteSystem_Free(param0->spriteSystem);
}

void PartyMenu_DrawMemberStatusCondition(PartyMenuApplication *application, u8 slot, u8 icon)
{
    Sprite **pSprite = &application->sprites[10 + slot];
    if (icon == SUMMARY_CONDITION_NONE) {
        Sprite_SetDrawFlag(*pSprite, FALSE);
        return;
    }

    Sprite_SetAnim(*pSprite, icon);
    Sprite_SetDrawFlag(*pSprite, TRUE);
}

void PartyMenu_DrawMemberHeldItem(PartyMenuApplication *application, u8 slot, u16 item)
{
    Sprite **pSprite = &application->sprites[16 + slot];
    if (item == ITEM_NONE) {
        Sprite_SetDrawFlag(*pSprite, FALSE);
        return;
    }

    if (Item_IsMail(item) == TRUE) {
        Sprite_SetAnim(*pSprite, 1);
    } else {
        Sprite_SetAnim(*pSprite, 0);
    }

    Sprite_SetDrawFlag(*pSprite, TRUE);
}

void sub_02083080(PartyMenuApplication *param0, u8 param1)
{
    Sprite **v0 = &param0->sprites[16 + param1];

    Sprite_SetAnim(*v0, 1);
    Sprite_SetDrawFlag(*v0, TRUE);
}

void PartyMenu_AlignMemberHeldItem(PartyMenuApplication *application, u8 slot, s16 x, s16 y)
{
    Sprite **pSprite = &application->sprites[16 + slot];
    application->partyMembers[slot].itemXPos = x + 8;
    application->partyMembers[slot].itemYPos = y + 8;

    Sprite_SetPositionXY(*pSprite, application->partyMembers[slot].itemXPos, application->partyMembers[slot].itemYPos);
}

void PartyMenu_AlignMemberBallSeal(PartyMenuApplication *application, u8 slot)
{
    Sprite_SetPositionXY(application->sprites[22 + slot], application->partyMembers[slot].itemXPos + 8, application->partyMembers[slot].itemYPos);
}

void PartyMenu_DrawMemberBallSeal(PartyMenuApplication *application, u8 slot)
{
    Sprite **pSprite = &application->sprites[22 + slot];
    if (application->partyMembers[slot].ballSeal == 0) {
        Sprite_SetDrawFlag(*pSprite, FALSE);
        return;
    }

    Sprite_SetDrawFlag(*pSprite, TRUE);
}

static void sub_02083138(Sprite *param0, u8 param1)
{
    if (Sprite_GetActiveAnim(param0) == param1) {
        return;
    }

    Sprite_SetAnimFrame(param0, 0);
    Sprite_SetAnim(param0, param1);
}

static u8 sub_02083158(PartyMenuMember *param0)
{
    if (param0->curHP == 0) {
        return 0;
    }

    if ((param0->statusIcon != SUMMARY_CONDITION_NONE) && (param0->statusIcon != SUMMARY_CONDITION_POKERUS) && (param0->statusIcon != SUMMARY_CONDITION_FAINTED)) {
        return 5;
    }

    switch (HealthBar_Color(param0->curHP, param0->maxHP, 48)) {
    case 4:
        return 1;
    case 3:
        return 2;
    case 2:
        return 3;
    case 1:
        return 4;
    }

    return 0;
}

void sub_020831B4(PartyMenuApplication *param0)
{
    PartyMenuMember *v0;
    u16 v1;
    u16 v2;

    for (v1 = 0; v1 < 6; v1++) {
        v0 = &param0->partyMembers[v1];

        if (v0->isPresent == FALSE) {
            continue;
        }

        if ((param0->unk_7F8.unk_304 == 1) && ((param0->unk_7F8.unk_300[0] == v1) || (param0->unk_7F8.unk_300[1] == v1))) {
            v2 = 0;
        } else {
            v2 = sub_02083158(v0);
        }

        sub_02083138(v0->sprite, v2);
        Sprite_UpdateAnim(v0->sprite, FX32_ONE);

        if ((param0->currPartySlot == v1) && (v2 != 0) && (v2 != 5)) {
            if (Sprite_GetAnimFrame(v0->sprite) == 0) {
                Sprite_SetPositionXY(v0->sprite, v0->spriteXDelta, v0->spriteYDelta - 3);
            } else {
                Sprite_SetPositionXY(v0->sprite, v0->spriteXDelta, v0->spriteYDelta + 1);
            }

            continue;
        }

        Sprite_SetPositionXY(v0->sprite, v0->spriteXDelta, v0->spriteYDelta);
    }
}

void sub_0208327C(PartyMenuApplication *param0, u8 param1, u8 param2)
{
    u8 v0, v1;

    GridMenuCursor_GetFirstCoords(&param0->cursorPosTable[param1], &v0, &v1);
    Sprite_SetAnim(param0->sprites[6], sub_020805D0(param0->partyMenu->type, param1));
    Sprite_SetDrawFlag(param0->sprites[6], TRUE);
    Sprite_SetPositionXY(param0->sprites[6], v0, v1);
    Sprite_SetExplicitPalette2(param0->sprites[6], param2);
}

void sub_020832E4(PartyMenuApplication *param0, s16 param1, s16 param2)
{
    VecFx32 v0;

    v0.x = param1 * FX32_ONE;
    v0.y = param2 * FX32_ONE;
    v0.y += (256 * FX32_ONE);
    v0.z = 0;

    Sprite_SetPosition(param0->sprites[28], &v0);
    Sprite_SetDrawFlag(param0->sprites[28], TRUE);
    Sprite_SetAnimFrame(param0->sprites[28], 0);
    Sprite_SetAnim(param0->sprites[28], 0);
}

void sub_02083334(PartyMenuApplication *param0)
{
    if (Sprite_GetDrawFlag(param0->sprites[28]) == 1) {
        Sprite_UpdateAnim(param0->sprites[28], FX32_ONE);

        if (Sprite_GetAnimFrame(param0->sprites[28]) == 2) {
            Sprite_SetDrawFlag(param0->sprites[28], FALSE);
        }
    }
}
