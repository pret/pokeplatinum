#include "overlay076/ov76_0223B870.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "struct_defs/seal_case.h"
#include "struct_defs/struct_020127E8.h"

#include "battle_anim/battle_anim_helpers.h"
#include "overlay076/const_ov76_0223EF3C.h"
#include "overlay076/ov76_0223D338.h"
#include "overlay076/struct_ov76_0223C398.h"
#include "overlay076/struct_ov76_0223DE00.h"

#include "ball_seal_info.h"
#include "bg_window.h"
#include "char_transfer.h"
#include "font.h"
#include "g3d_pipeline.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "particle_system.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_list.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02012744.h"
#include "unk_0202419C.h"
#include "unk_02097B18.h"

typedef struct {
    XYTransformContext transforms[9];
    ManagedSprite *sprites[8];
    BgConfig *bgConfig;
    int unk_168;
    BOOL *unk_16C;
} UnkStruct_ov76_0223BCA0; // systaskdone(this)

static void ov76_0223B870(TouchScreenRect *rect, ManagedSprite *sprite, int xOffset, int yOffset)
{
    s16 x, y;

    ManagedSprite_GetPositionXY(sprite, &x, &y);

    rect->rect.top = y - yOffset;
    rect->rect.bottom = y + yOffset;
    rect->rect.left = x - xOffset;
    rect->rect.right = x + xOffset;
}

void ov76_0223B8A8(UnkStruct_ov76_0223DE00 *param0)
{
    param0->unk_D4.unk_160 = sub_02012744(2, HEAP_ID_53);
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_53);
}

void ov76_0223B8C4(UnkStruct_ov76_0223DE00 *param0)
{
    Font_Free(FONT_SUBSCREEN);
    sub_02012870(param0->unk_D4.unk_164[0]);
    CharTransfer_ClearRange(&param0->unk_D4.unk_16C[0]);
    sub_02012870(param0->unk_D4.unk_164[1]);
    CharTransfer_ClearRange(&param0->unk_D4.unk_16C[1]);
    sub_020127BC(param0->unk_D4.unk_160);
}

void ov76_0223B904(UnkStruct_ov76_0223DE00 *param0)
{
    SpriteSystem_LoadPaletteBuffer(param0->unk_D4.paletteData, 3, param0->unk_D4.spriteSystem, param0->unk_D4.spriteManager, 14, 7, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 30000);
}

void ov76_0223B940(UnkStruct_ov76_0223DE00 *param0)
{
    ov76_0223B904(param0);
    ov76_0223B98C(param0, 0, 104, 165, 0);
    ov76_0223B98C(param0, 1, 192, 165, 0);
}

void ov76_0223B96C(UnkStruct_ov76_0223DE00 *param0, BOOL param1)
{
    sub_020129D0(param0->unk_D4.unk_164[0], param1);
    sub_020129D0(param0->unk_D4.unk_164[1], param1);
}

void ov76_0223B98C(UnkStruct_ov76_0223DE00 *param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_020127E8 v0;
    String *string;
    int v2;
    int v3;
    MessageLoader *messageLoader;
    Window window;

    messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0008, HEAP_ID_53);
    string = MessageLoader_GetNewString(messageLoader, 5 + param1);

    {
        Window_Init(&window);
        Window_AddToTopLeftCorner(param0->unk_D4.bgConfig, &window, 10, 2, 0, 0);
        Text_AddPrinterWithParamsAndColor(&window, FONT_SUBSCREEN, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 13, 2), NULL);
    }

    v2 = 30000;
    v3 = sub_02012898(&v5, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_53);
    CharTransfer_AllocRange(v3, 1, NNS_G2D_VRAM_TYPE_2DSUB, &param0->unk_D4.unk_16C[param1]);

    v0.unk_00 = param0->unk_D4.unk_160;
    v0.unk_04 = &window;
    v0.unk_08 = SpriteManager_GetSpriteList(param0->unk_D4.spriteManager);
    v0.unk_0C = SpriteManager_FindPlttResourceProxy(param0->unk_D4.spriteManager, v2);
    v0.unk_10 = NULL;
    v0.unk_14 = param0->unk_D4.unk_16C[param1].offset;
    v0.unk_18 = param2 - Font_CalcStringWidth(FONT_SUBSCREEN, v1, 0) / 2;
    v0.unk_1C = param3 + 192;
    v0.unk_20 = 1;
    v0.unk_24 = 40;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DSUB;
    v0.heapID = HEAP_ID_53;
    param0->unk_D4.unk_164[param1] = sub_020127E8(&v0);

    sub_02012AC0(param0->unk_D4.unk_164[param1], param4);
    String_Free(string);
    MessageLoader_Free(messageLoader);
    Window_Remove(&window);
}

void ov76_0223BA90(UnkStruct_ov76_0223DE00 *param0, int param1)
{
    int i, j;
    int v2;
    int v3;
    int v4;
    BOOL v5;
    int v6;

    v2 = 0;
    v3 = 0;
    v4 = param1;
    v4 *= 8;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        param0->unk_418.unk_08[i] = 0;
    }

    for (i = 0; i < (80 + 1); i++) {
        for (j = 0; j < CAPSULE_NUM; j++) {
            sealOnCapsule = SealIsOnCapsule(param0->capsules[j].capsule, i);

            if (sealOnCapsule) {
                break;
            }
        }

        v6 = param0->unk_80[i];

        if ((v6 != 0) || (sealOnCapsule == 1)) {
            v3++;

            if (v3 <= v4) {
                continue;
            }

            param0->unk_418.unk_08[v2] = (i + 1);
            v2++;

            if (v2 >= 8) {
                break;
            }
        }
    }
}

void ov76_0223BB04(UnkStruct_ov76_0223DE00 *param0)
{
    int i;
    int v1;
    SpriteSystem *spriteSystem = param0->unk_D4.spriteSystem;
    SpriteManager *spriteManager = param0->unk_D4.spriteManager;
    PaletteData *paletteData = param0->unk_D4.paletteData;

    for (i = 0; i < 8; i++) {
        v1 = sub_02098140(param0->unk_418.unk_08[i]);
        SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, v1, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, i + 25000);
    }

    SpriteSystem_LoadPaletteBuffer(paletteData, PLTTBUF_SUB_OBJ, spriteSystem, spriteManager, 91, 293, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, 26000 + 292);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 180, TRUE, 27000 + 180);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_INDEX_APPLICATION__CUSTOM_BALL__DATA__CB_DATA, 88, TRUE, 28000 + 88);
}

void ov76_0223BBAC(UnkStruct_ov76_0223DE00 *param0)
{
    int i;
    UnkStruct_ov76_0223BBAC *v1;
    SpriteTemplate spriteTemplate;
    SpriteSystem *spriteSystem = param0->unk_D4.spriteSystem;
    SpriteManager *spriteManager = param0->unk_D4.spriteManager;
    PaletteData *paletteData = param0->unk_D4.paletteData;
    sprites = &param0->sprites;

    spriteTemplate.x = 0;
    spriteTemplate.y = 0;
    spriteTemplate.z = 0;
    spriteTemplate.animIdx = 0;
    spriteTemplate.priority = 60;
    spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    spriteTemplate.bgPriority = 1;
    spriteTemplate.vramTransfer = FALSE;
    spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
    spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;
    spriteTemplate.plttIdx = 0;
    spriteTemplate.resources[1] = 26000 + 292;
    spriteTemplate.resources[2] = 27000 + 180;
    spriteTemplate.resources[3] = 28000 + 88;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        spriteTemplate.resources[0] = (i + 25000);
        sprites->sprites[i] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);
    }

    {
        const s16 initialXY[][2] = {
            { 19, 23 },
            { 75, 23 },
            { 19, 47 },
            { 75, 47 },
            { 19, 71 },
            { 75, 71 },
            { 19, 95 },
            { 75, 95 },
        };

        for (i = 0; i < SEALS_PER_CAPSULE; i++) {
            ManagedSprite_SetPositionXY(param0->sprites.sprites[i], initialXY[i][0], initalXY[i][1] - 1);
            ManagedSprite_TickFrame(param0->sprites.sprites[i]);
            ManagedSprite_SetAnimationFrame(param0->sprites.sprites[i], 0);
        }
    }
}

void ov76_0223BC70(UnkStruct_ov76_0223DE00 *param0) // unload all sprites
{
    int i;

    for (i = 0; i < 8; i++) {
        SpriteManager_UnloadCharObjById(param0->unk_D4.spriteManager, i + 25000);
        Sprite_DeleteAndFreeResources(param0->sprites.sprites[i]);
    }
}

static void ov76_0223BCA0(SysTask *param0, void *param1)
{
    UnkStruct_ov76_0223BCA0 *v0 = (UnkStruct_ov76_0223BCA0 *)param1;
    BOOL v1 = 0;
    {
        int i;

        for (i = 0; i < SEALS_PER_CAPSULE; i++) {
            if (v0->unk_144[i] == NULL) {
                continue;
            }

            if (PosLerpContext_UpdateAndApplyToSprite(&v0->unk_00[i], v0->unk_144[v2]) == 1) {
                v1 = 1;
            }
        }

        if (PosLerpContext_Update(&v0->unk_00[SEALS_PER_CAPSULE]) == 1) {
            v1 = 1;
            Bg_SetOffset(v0->unk_164, BG_LAYER_SUB_1, 0, v0->transforms[SEALS_PER_CAPSULE].x);
            Bg_SetOffset(v0->unk_164, BG_LAYER_SUB_1, 3, v0->transforms[SEALS_PER_CAPSULE].y);
        }
    }

    if (v1 == 0) {
        *(v0->unk_16C) = 0;
        Heap_Free(v0);
        SysTask_Done(param0);
    }
}

void ov76_0223BD30(UnkStruct_ov76_0223DE00 *param0, s8 param1, int param2)
{
    UnkStruct_ov76_0223BCA0 *v0 = Heap_Alloc(HEAP_ID_53, sizeof(UnkStruct_ov76_0223BCA0));
    v0->bgConfig = param0->unk_D4.bgConfig;

    {
        int i;
        s16 x, y;

        for (i = 0; i < SEALS_PER_CAPSULE; i++) {
            if (param0->sealRenderInfo[i].shouldRender == 0) {
                v0->sprites[i] = NULL;
                continue;
            }

            v0->sprites[i] = param0->sealRenderInfo[i].sprite;

            ManagedSprite_GetPositionXY(v0->sprite[i], &x, &y);
            PosLerpContext_Init(&v0->unk_00[i], x, y + ((+7 * 8) * param1), y, y + ((-2 * 8) * param1), param2);
            PosLerpContext_UpdateAndApplyToSprite(&v0->capsules[i], v0->sprites[i]);
            PosLerpContext_UpdateAndApplyToSprite(&v0->capsules[i], v0->sprites[i]);
        }
    }

    {
        int xOffset = Bg_GetXOffset(v0->bgConfig, 5);
        int yOffset = Bg_GetYOffset(v0->bgConfig, 5);
        PosLerpContext_Init(&v0->capsules[SEALS_PER_CAPSULE], xOffset, xOffset + (((+7 * 8) * param1) * -1), yOffset, yOffset + (((-2 * 8) * param1) * -1), param2);
    }

    v0->unk_16C = &param0->unk_D4.windows4;
    *(v0->unk_16C) = 1;

    SysTask_Start(ov76_0223BCA0, v0, 0x1000);
}

G3DPipelineBuffers *ov76_0223BE6C(void)
{
    return G3DPipeline_Init(HEAP_ID_53, TEXTURE_VRAM_SIZE_256K, PALETTE_VRAM_SIZE_32K, ov76_0223BE8C);
}

void ov76_0223BE8C(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetFog(0, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7FFF, 63, 0);
    G3_ViewPort(0, 0, 255, 191);
}

void ov76_0223BF10(void)
{
    NNSGfdTexKey v0;
    NNSGfdPlttKey v1;
    u32 v2, v3;

    v0 = NNS_GfdAllocTexVram(0x2000 * 4, 0, 0);
    v1 = NNS_GfdAllocPlttVram(0x20 * 4, 0, 0);

    GF_ASSERT(v0 != NNS_GFD_ALLOC_ERROR_TEXKEY);
    GF_ASSERT(v1 != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    v2 = NNS_GfdGetTexKeyAddr(v0);
    v3 = NNS_GfdGetPlttKeyAddr(v1);

    ParticleSystem_ZeroAll();
}

void ov76_0223BF50(void)
{
    int result;
    const MtxFx43 *v1;

    G3_ResetG3X();

    result = ParticleSystem_DrawAll();

    if (result > 0) {
        G3_ResetG3X();
        NNS_G2dSetupSoftwareSpriteCamera();
    }

    ParticleSystem_UpdateAll();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

void ov76_0223BF74(BgConfig *bgConfig, Window *window, int param2, UnkStruct_ov76_0223DE00 *param3, int param4)
{
    MenuTemplate menuTemplate;
    int field;
    int v2, v3, v4, v5, v6, ySize;
    int v8[4];

    field = ov76_0223D45C(param3, param4);
    v6 = ((9 * 8) + ((27 * 2) + (0 + ((1 + (18 + 12)) + 9)))); // 162
    v2 = 21;
    v4 = 9;

    switch (field) {
    case 0:
        v3 = (15 - 2);
        v5 = (4 + 2);
        v8[0] = 0;
        v8[1] = 4;
        v8[2] = 1;
        break;
    case 1:
        v3 = 11;
        v5 = 8;
        v8[0] = 2;
        v8[1] = 0;
        v8[2] = 4;
        v8[3] = 1;
        break;
    case 2:
        v3 = 11;
        v5 = 8;
        v8[0] = 3;
        v8[1] = 0;
        v8[2] = 4;
        v8[3] = 1;
        break;
    case 3:
        v3 = 11;
        v5 = 8;
        v8[0] = 2;
        v8[1] = 0;
        v8[2] = 4;
        v8[3] = 1;
        break;
    }

    ySize = (v5 / 2);

    Window_Init(window);
    Window_Add(bgConfig, window, param2, v2, v3, v4, v5, 14, v6);

    param3->unk_D4.stringList = StringList_New(ySize, HEAP_ID_53);

    {
        int i;
        String *string;
        MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0008, HEAP_ID_53);

        for (i = 0; i < ySize; i++) {
            string = MessageLoader_GetNewString(messageLoader, Unk_oySize6_0223EF3C[v8[i]].unk_00);

            StringList_AddFromString(param3->unk_D4.unk_C8, v10, Unk_oySize6_0223EF3C[v8[i]].unk_04);
            String_Free(string);
        }

        MessageLoader_Free(messageLoader);
    }

    menuTemplate.choices = param3->unk_D4.stringList;
    menuTemplate.fontID = FONT_SYSTEM;
    menuTemplate.window = window;
    menuTemplate.xSize = 1;
    menuTemplate.ySize = ySize;
    menuTemplate.lineSpacing = 0;
    menuTemplate.suppressCursor = FALSE;
    menuTemplate.loopAround = TRUE;

    Window_DrawStandardFrame(window, 1, 1 + (18 + 12), 13);
    param3->unk_D4.menu = Menu_NewAndCopyToVRAM(&menuTemplate, 8, 0, 0, 53, PAD_BUTTON_B);
}

void ov76_0223C0EC(int param0, s16 *param1, s16 *param2)
{
    int v0 = (param0 % 4);
    *param1 = 32 + 8 + (v0 * 56);
    v0 = (param0 >> 2);
    *param2 = 27 + (v0 * 53);
}

void ov76_0223C110(UnkStruct_ov76_0223DE00 *param0)
{
    SpriteSystem *spriteSystem = param0->unk_D4.spriteSystem;
    SpriteManager *spriteManager = param0->unk_D4.spriteManager;
    PaletteData *paletteData = param0->unk_D4.paletteData;

    SpriteSystem_LoadPaletteBuffer(paletteData, 2, spriteSystem, spriteManager, 19, PokeIconPalettesFileIndex(), 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 16000);

    {
        int iconIndex = PokeIcon64KCellsFileIndex();
        SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, 19, iconIndex, 0, 17000);
    }

    {
        int iconIndex = PokeIcon64KAnimationFileIndex();
        SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, 19, iconIndex, 0, 18000);
    }
}

void ov76_0223C188(UnkStruct_ov76_0223DE00 *param0)
{
    int i;
    int isEgg;
    int species;
    int paletteIndex;
    int form;
    Pokemon *pokemon;
    SpriteTemplate spriteTemplate;

    for (i = 0; i < param0->capsules->unk_00; i++) {
        pokemon = param0->unk_00->pokemon[i];

        SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(param0->unk_D4.spriteSystem, param0->unk_D4.spriteManager, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, Pokemon_IconSpriteIndex(pokemon), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, i + 15000);

        spriteTemplate.x = 0;
        spriteTemplate.y = 0;
        spriteTemplate.z = 0;
        spriteTemplate.animIdx = 0;
        spriteTemplate.priority = 10;
        spriteTemplate.plttIdx = 0;
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        spriteTemplate.bgPriority = 2;
        spriteTemplate.vramTransfer = FALSE;
        spriteTemplate.resources[0] = (i + 15000);
        spriteTemplate.resources[1] = 16000;
        spriteTemplate.resources[2] = 17000;
        spriteTemplate.resources[3] = 18000;
        spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
        spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;

        param0->spriteSystem[i] = SpriteSystem_NewSprite(param0->unk_D4.spriteSystem, param0->unk_D4.spriteManager, &spriteTemplate);

        species = Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
        isEgg = Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL);
        form = Pokemon_GetValue(pokemon, MON_DATA_FORM, NULL);
        paletteIndex = PokeIconPaletteIndex(species, form, isEgg);

        Sprite_SetExplicitPaletteOffsetAutoAdjust(param0->unk_2FC[i]->sprite, paletteIndex);
        ManagedSprite_SetAnim(param0->unk_2FC[i], 1);
    }
}

void ov76_0223C288(UnkStruct_ov76_0223DE00 *param0)
{
    int i;
    int index;
    s16 x, y;

    for (i = 0; i < param0->unk_00->unk_00; i++) {
        ManagedSprite_SetDrawFlag(param0->unk_2FC[i], 0);
    }

    for (i = 0; i < CAPSULE_NUM; i++) {
        index = param0->capsules[i].index;

        if (v1 != 0xFF) {
            ov76_0223C0EC(i, &x, &y);
            ManagedSprite_SetPositionXY(param0->unk_2FC[index], x + -16, y + (+12));
            ManagedSprite_SetDrawFlag(param0->unk_2FC[index], 1);
        }
    }
}

void ov76_0223C304(UnkStruct_ov76_0223DE00 *param0)
{
    int i;

    for (i = 0; i < param0->unk_00->unk_00; i++) {
        ManagedSprite_TickFrame(param0->unk_2FC[i]);
    }
}

void ov76_0223C32C(UnkStruct_ov76_0223DE00 *param0)
{
    int i;
    int unused;

    for (i = 0; i < param0->unk_00->unk_00; i++) {
        Sprite_DeleteAndFreeResources(param0->unk_2FC[i]);
    }
}

void ov76_0223C354(UnkStruct_ov76_0223DE00 *param0)
{
    int i;
    int unused1;
    int unused2 = 0;
    BallCapsule *capsule;

    for (i = 0; i < CAPSULE_NUM; i++) {
        capsule = param0->capsules[i].capsule;
        param0->unk_264[i].animIdx = ov76_0223D430(capsule);
        param0->unk_264[i].unk_00 = param0->capsules[i].index;

        if ((param0->unk_264[i].animIdx == 0) && (param0->unk_264[i].unk_00 != 0xFF)) {
            ov76_0223E91C(param0, i);
        }
    }
}

void ov76_0223C398(UnkStruct_ov76_0223C398 *param0)
{
    param0->unk_08 = SpriteSystem_Alloc(53);
    {
        const RenderOamTemplate v0 = {
            0,
            128,
            0,
            32,
            0,
            128,
            0,
            32,
        };
        const CharTransferTemplateWithModes v1 = {
            48 + 48, 1024 * 0x40, 512 * 0x20, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_32K
        };

        SpriteSystem_Init(param0->spriteSystem, &v0, &v1, 16 + 16);
    }

    {
        BOOL v2;
        const SpriteResourceCapacities v3 = {
            48 + 48,
            16 + 16,
            64,
            64,
            16,
            16,
        };

        param0->spriteManager = SpriteManager_New(param0->spriteSystem);
        v2 = SpriteSystem_InitSprites(param0->spriteSystem, param0->spriteManager, 64 + 64);
        GF_ASSERT(v2);

        v2 = SpriteSystem_InitManagerWithCapacities(param0->spriteSystem, param0->spriteManager, &v3);
        GF_ASSERT(v2);
    }
}

void ov76_0223C424(UnkStruct_ov76_0223C398 *param0) // free sprite system
{
    SpriteSystem_FreeResourcesAndManager(param0->spriteSystem, param0->spriteManager);
    SpriteSystem_Free(param0->spriteSystem);
}

void ov76_0223C438(UnkStruct_ov76_0223DE00 *param0, NARC *narc)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_D4.spriteSystem, param0->unk_D4.spriteManager, narc, 265, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 45000);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_D4.spriteSystem, param0->unk_D4.spriteManager, narc, 173, TRUE, 47000);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_D4.spriteSystem, param0->unk_D4.spriteManager, narc, 81, TRUE, 48000);
}

void ov76_0223C4AC(UnkStruct_ov76_0223DE00 *param0)
{
    int i;
    SpriteTemplate spriteTemplate;
    int startingStates[][3] = {
        { 136, 16, 1 },
        { 136, 128, 3 },
        { 240, 16, 0 },
        { 240, 128, 2 },
    };

    for (i = 0; i < 4; i++) {
        spriteTemplate.x = startingStates[i][0];
        spriteTemplate.y = startingStates[i][1];
        spriteTemplate.z = 0;
        spriteTemplate.animIdx = 0;
        spriteTemplate.priority = 40;
        spriteTemplate.plttIdx = 2;
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        spriteTemplate.bgPriority = 1;
        spriteTemplate.vramTransfer = FALSE;
        spriteTemplate.resources[0] = 45000;
        spriteTemplate.resources[1] = 26000 + 290;
        spriteTemplate.resources[2] = 47000;
        spriteTemplate.resources[3] = 48000;
        spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
        spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;
        param0->unk_314[i] = SpriteSystem_NewSprite(param0->unk_D4.spriteSystem, param0->unk_D4.spriteManager, &spriteTemplate);

        ManagedSprite_SetFlipMode(param0->unk_314[i], startingStates[i][2]);
    }
}

void ov76_0223C544(UnkStruct_ov76_0223DE00 *param0)
{
    int i;

    if (param0->unk_D4.unk_04 == 0) {
        return;
    }

    for (i = 0; i < 4; i++) {
        ManagedSprite_TickFrame(param0->unk_314[i]);
    }
}

void ov76_0223C568(UnkStruct_ov76_0223DE00 *param0, int param1)
{
    int i;

    for (i = 0; i < 4; i++) {
        ManagedSprite_SetDrawFlag(param0->unk_314[i], param1);
    }
}

void ov76_0223C588(UnkStruct_ov76_0223DE00 *param0)
{
    int i;

    for (i = 0; i < 4; i++) {
        Sprite_DeleteAndFreeResources(param0->unk_314[i]);
    }
}

void ov76_0223C5A4(SpriteSystem *spriteSystem, SpriteManager *spriteManager, PaletteData *paletteData, int param3, int param4, int param5, int param6, int param7, int param8, int param9, NARC *narc)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteManager, narc, param3, TRUE, param7, param3 + 11000);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(paletteData, param8, spriteSystem, spriteManager, narc, param4, FALSE, param9, param7, param4 + 11000);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, spriteManager, narc, param5, TRUE, param5 + 11000);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, spriteManager, narc, param6, TRUE, param6 + 11000);
}

void ov76_0223C61C(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    ov76_0223C5A4(param0->unk_D4.spriteSystem, param0->unk_D4.spriteManager, param0->unk_D4.unk_14, 266, 286, 174, 82, NNS_G2D_VRAM_TYPE_2DMAIN, 2, 1, param1);
    ov76_0223C5A4(param0->unk_D4.spriteSystem, param0->unk_D4.spriteManager, param0->unk_D4.unk_14, 275, 291, 179, 87, NNS_G2D_VRAM_TYPE_2DMAIN, 2, 1, param1);
    {
        int i;
        SpriteTemplate spriteTemplate;

        for (i = 0; i < SEALS_PER_CAPSULE; i++) {
            spriteTemplate.x = 0;
            spriteTemplate.y = 0;
            spriteTemplate.z = 0;
            spriteTemplate.animIdx = param0->unk_264[i].animIdx;
            spriteTemplate.priority = 40 - i;
            spriteTemplate.plttIdx = 0;
            spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
            spriteTemplate.bgPriority = 2;
            spriteTemplate.vramTransfer = FALSE;
            spriteTemplate.resources[0] = (266 + 11000);
            spriteTemplate.resources[1] = (286 + 11000);
            spriteTemplate.resources[2] = (174 + 11000);
            spriteTemplate.resources[3] = (82 + 11000);
            spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
            spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;

            param0->unk_264[i].sprite = SpriteSystem_NewSprite(param0->unk_D4.spriteSystem, param0->unk_D4.spriteManager, &spriteTemplate);
            {
                s16 x, y;

                ov76_0223C0EC(i, &x, &y);
                ManagedSprite_SetPositionXY(param0->unk_264[i].sprite, x, y);
            }
        }

        spriteTemplate.x = 0;
        spriteTemplate.y = 0;
        spriteTemplate.z = 0;
        spriteTemplate.animIdx = 0;
        spriteTemplate.priority = 20;
        spriteTemplate.plttIdx = 0;
        spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        spriteTemplate.bgPriority = 2;
        spriteTemplate.vramTransfer = FALSE;
        spriteTemplate.resources[0] = (275 + 11000);
        spriteTemplate.resources[1] = (291 + 11000);
        spriteTemplate.resources[2] = (179 + 11000);
        spriteTemplate.resources[3] = (87 + 11000);
        spriteTemplate.resources[4] = SPRITE_RESOURCE_NONE;
        spriteTemplate.resources[5] = SPRITE_RESOURCE_NONE;

        param0->unk_2F4[0] = SpriteSystem_NewSprite(param0->unk_D4.spriteSystem, param0->unk_D4.spriteManager, &spriteTemplate);
        param0->unk_2F4[1] = SpriteSystem_NewSprite(param0->unk_D4.spriteSystem, param0->unk_D4.spriteManager, &spriteTemplate);

        {
            s16 x, y;

            ov76_0223C0EC(param0->unk_3C4[0], &x, &y);
            ManagedSprite_SetPositionXY(param0->unk_2F4[0], x, y);
            ManagedSprite_SetPositionXY(param0->unk_2F4[1], x, y);
            ManagedSprite_SetPriority(param0->unk_2F4[1], 25);
            ManagedSprite_SetAnim(param0->unk_2F4[0], 0);
            ManagedSprite_SetAnim(param0->unk_2F4[1], 0);
        }
    }
}

void ov76_0223C7E0(UnkStruct_ov76_0223DE00 *param0)
{
    int i;

    ov76_0223C354(param0);
    ov76_0223C288(param0);

    for (i = 0; i < 12; i++) {
        if (param0->unk_264[i].sprite == NULL) {
            continue;
        }

        ManagedSprite_SetAnim(param0->unk_264[i].sprite, param0->unk_264[i].animIdx);
    }
}

void ov76_0223C80C(UnkStruct_ov76_0223DE00 *param0, int capsuleIdx1, int capsuleIdx2) // swap capsule
{
    int tmp;
    int index1;
    int index2;
    int v3;
    int v4;
    BallCapsule tmpCapsule;

    index1 = param0->capsules[index1].index;
    index2 = param0->capsules[index2].index;

    if (v1 != 0xFF) {
        v3 = capsuleIdx2 + 1;
        Pokemon_SetValue(param0->unk_00->pokemon[index1], MON_DATA_BALL_CAPSULE_ID, (u8 *)&v3);
    }

    if (v2 != 0xFF) {
        v4 = param1 + 1;
        Pokemon_SetValue(param0->unk_00->pokemon[index1], MON_DATA_BALL_CAPSULE_ID, (u8 *)&v4);
    }

    tmp = param0->capsules[capsuleIdx1].index;
    param0->capsules[capsuleIdx1].index = param0->capsules[capsuleIdx2].index;
    param0->capsules[capsuleIdx2].index = tmp;

    BallCapsule_Copy(param0->capsules[capsuleIdx1].capsule, &tmpCapsule);
    BallCapsule_Copy(param0->capsules[capsuleIdx2].capsule, param0->capsules[capsuleIdx1].capsule);
    BallCapsule_Copy(&tmpCapsule, param0->capsules[capsuleIdx2].capsule);
    ov76_0223C7E0(param0); // set animations
}

void ov76_0223C88C(UnkStruct_ov76_0223DE00 *param0) // tick seals and 2f4
{
    int i;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        ManagedSprite_TickFrame(param0->unk_264[i].sprite);
    }

    ManagedSprite_TickFrame(param0->unk_2F4[0]);
    ManagedSprite_TickFrame(param0->unk_2F4[1]);
}

void ov76_0223C8BC(UnkStruct_ov76_0223DE00 *param0) // sprite destructor
{
    int i;

    for (i = 0; i < SEALS_PER_CAPSULE; i++) {
        Sprite_DeleteAndFreeResources(param0->unk_264[i].sprite);
    }

    Sprite_DeleteAndFreeResources(param0->unk_2F4[0]);
    Sprite_DeleteAndFreeResources(param0->unk_2F4[1]);
}

void ov76_0223C8EC(BgConfig *bgConfig, PaletteData *paletteData, int messageBoxFrame)
{
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_1, 1, 15, param2, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(paletteData, 38, GetMessageBoxPaletteNARCMember(messageBoxFrame), 53, 0, 0x20, 12 * 16);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_1, 1 + (18 + 12), 13, 0, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(paletteData, 38, GetStandardWindowPaletteNARCMember(), 53, 0, 0x20, 13 * 16);
    PaletteData_LoadBufferFromFileStart(paletteData, 14, 7, 53, 0, 0x20, 14 * 16);
}

void ov76_0223C974(BgConfig *bgConfig, PaletteData *paletteData, int messageBoxFrame)
{
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_SUB_0, 1, 15, param2, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(paletteData, 38, GetMessageBoxPaletteNARCMember(messageBoxFrame), 53, 1, 0x20, 12 * 16);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_SUB_0, 1 + (18 + 12), 13, 0, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(paletteData, 38, GetStandardWindowPaletteNARCMember(), 53, 1, 0x20, 13 * 16);
    PaletteData_LoadBufferFromFileStart(paletteData, 14, 7, 53, 1, 0x20, 14 * 16);
    PaletteData_LoadBufferFromFileStart(paletteData, 14, 7, 53, 1, 0x20, 3 * 16);
    PaletteData_LoadBufferFromFileStart(paletteData, 91, 294, 53, 1, 0x20, 11 * 16);
}

void ov76_0223CA30(Window *window, int entryID)
{
    MessageLoader *messageLoader;
    String *string;

    if (param1 == 0xFFFF) {
        Window_FillTilemap(window, 15);
        Window_CopyToVRAM(window);
        return;
    }

    messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0008, HEAP_ID_53);
    string = MessageLoader_GetNewString(messageLoader, entryID);

    Window_FillTilemap(window, 15);
    Text_AddPrinterWithParams(window, FONT_MESSAGE, string, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Window_CopyToVRAM(window);
    String_Free(string);
    MessageLoader_Free(messageLoader);
}

void ov76_0223CA98(BgConfig *bgConfig, Window *window, int bgLayer, int tilemapLeft, int tilemapTop, int width, int height, int baseTile) // init window
{
    Window_Init(window);
    Window_Add(bgConfig, window, bgLayer, tilemapLeft, tilemapTop, width, height, 14, baseTile);
    Window_DrawMessageBoxWithScrollCursor(window, 1, 1, 12);
    Window_FillTilemap(window, 15);
    Window_CopyToVRAM(window);
}

static void ov76_0223CAFC(BgConfig *bgConfig, Window *window, int bgLayer, int tilemapLeft, int tilemapTop, int width, int height, int palette, int baseTile) // init window ... but with specified palette
{
    Window_Init(window);
    Window_Add(bgConfig, window, bgLayer, tilemapLeft, tilemapTop, width, height, palette, baseTile);
    Window_FillTilemap(window, 15);
    Window_CopyToVRAM(window);
}

void ov76_0223CB58(UnkStruct_ov76_0223DE00 *param0)
{
    ov76_0223CAFC(param0->unk_D4.bgConfig, &param0->unk_D4.windows[3], 6, 4 - 1, 2, 3 + 1, 2, (27 * 4) + (0 + ((1 + (18 + 12)) + 9)), 11);
    ov76_0223CAFC(param0->unk_D4.bgConfig, &param0->unk_D4.windows[4], 6, 11 - 1, 2, 3 + 1, 2, ((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9))), 11);
    ov76_0223CAFC(param0->unk_D4.bgConfig, &param0->unk_D4.windows[5], 6, 4 - 1, 5, 3 + 1, 2, ((3 + 1) * 2) + (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9)))), 11);
    ov76_0223CAFC(param0->unk_D4.bgConfig, &param0->unk_D4.windows[6], 6, 11 - 1, 5, 3 + 1, 2, ((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9))))), 11);
    ov76_0223CAFC(param0->unk_D4.bgConfig, &param0->unk_D4.windows[7], 6, 4 - 1, 8, 3 + 1, 2, ((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9)))))), 11);
    ov76_0223CAFC(param0->unk_D4.bgConfig, &param0->unk_D4.windows[8], 6, 11 - 1, 8, 3 + 1, 2, ((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9))))))), 11);
    ov76_0223CAFC(param0->unk_D4.bgConfig, &param0->unk_D4.windows[9], 6, 4 - 1, 11, 3 + 1, 2, ((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9)))))))), 11);
    ov76_0223CAFC(param0->unk_D4.bgConfig, &param0->unk_D4.windows[10], 6, 11 - 1, 11, 3 + 1, 2, ((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + (((3 + 1) * 2) + ((27 * 4) + (0 + ((1 + (18 + 12)) + 9))))))))), 11);
}

void ov76_0223CC8C(UnkStruct_ov76_0223DE00 *param0)
{
    int i;
    int v1;
    int v2;
    int v3;
    String *string;
    Window *window;

    for (i = 3; i < 11; i++) {
        window = &param0->unk_D4.windows[i];
        v1 = i - 3;
        v2 = param0->unk_418.unk_08[v1];

        if (v2 == 0) {
            Window_FillTilemap(window, 0xEE);
            Window_CopyToVRAM(window);
            continue;
        }

        Window_FillTilemap(window, 0x0);

        string = String_Init(100, HEAP_ID_53);
        v3 = SealCase_GetSealCount(param0->sealCount, v2 - 1);

        String_FormatInt(string, v3, 3, 1, 1);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, -1 + 8, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Window_CopyToVRAM(window);
        String_Free(string);
    }
}

void ov76_0223CD20(UnkStruct_ov76_0223DE00 *param0, int param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    String *v4;
    Window *v5 = &param0->unk_D4.windows[param1 + 3];
    v1 = param1;
    v2 = param0->unk_418.unk_08[v1];

    if (v2 == 0) {
        Window_FillTilemap(v5, 0xEE);
        Window_CopyToVRAM(v5);
        return;
    }

    Window_FillTilemap(v5, 0x0);

    v4 = String_Init(100, HEAP_ID_53);
    v3 = SealCase_GetSealCount(param0->unk_64, v2 - 1);

    String_FormatInt(v4, v3, 3, 1, 1);
    Text_AddPrinterWithParamsAndColor(v5, FONT_MESSAGE, v4, -1 + 8, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Window_CopyToVRAM(v5);
    String_Free(v4);
}

void ov76_0223CDA4(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 3; v0 < 11; v0++) {
        Window_ClearAndCopyToVRAM(&param0->unk_D4.windows[v0]);
        Window_Remove(&param0->unk_D4.windows[v0]);
    }
}

void ov76_0223CDC4(Window *param0, int param1)
{
    MessageLoader *v0;
    String *v1;

    if (param1 == 0xFFFF) {
        Window_FillTilemap(param0, 15);
        Window_CopyToVRAM(param0);
        return;
    }

    v0 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BALL_SEAL_NAMES, HEAP_ID_53);
    v1 = MessageLoader_GetNewString(v0, param1);

    Window_FillTilemap(param0, 15);
    Text_AddPrinterWithParams(param0, FONT_MESSAGE, v1, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Window_CopyToVRAM(param0);
    String_Free(v1);
    MessageLoader_Free(v0);
}

void ov76_0223CE2C(void)
{
    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

void ov76_0223CE44(void)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_53);
}

void ov76_0223CE64(void)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_53);
}

void ov76_0223CE84(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    int v0 = 91;
    int v1 = 268;
    int v2 = 284;
    int v3 = 288;
    int v4 = 2;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, v1, param0->unk_D4.bgConfig, v4, 0, 0, 1, HEAP_ID_53);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, v2, param0->unk_D4.bgConfig, v4, 0, 0, 1, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(param0->unk_D4.unk_14, v0, v3, 53, 0, 0x20 * 2, 0);

    v1 = 269;
    v2 = 285;
    v4 = 3;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, v1, param0->unk_D4.bgConfig, v4, 0, 0, 1, HEAP_ID_53);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, v2, param0->unk_D4.bgConfig, v4, 0, 0, 1, HEAP_ID_53);
}

void ov76_0223CF24(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    int v0 = 91;
    int v1 = 267;
    int v2 = 283;
    int v3 = 287;
    int v4 = 5;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, v1, param0->unk_D4.bgConfig, v4, 0, 0, 1, HEAP_ID_53);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, v2, param0->unk_D4.bgConfig, v4, 0, 0, 1, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(param0->unk_D4.unk_14, v0, v3, 53, 1, 0x20 * 2, 0);
}

void ov76_0223CF88(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    int v0 = 91;
    int v1 = 267;
    int v2 = 282;
    int v3 = 287;
    int v4 = 7;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, v1, param0->unk_D4.bgConfig, v4, 0, 0, 1, HEAP_ID_53);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, v2, param0->unk_D4.bgConfig, v4, 0, 0, 1, HEAP_ID_53);
    PaletteData_LoadBufferFromFileStart(param0->unk_D4.unk_14, v0, v3, 53, 1, 0x20 * 2, 0);
}

void ov76_0223CFEC(UnkStruct_ov76_0223DE00 *param0, NARC *param1)
{
    SpriteSystem *v0 = param0->unk_D4.spriteSystem;
    SpriteManager *v1 = param0->unk_D4.spriteManager;
    PaletteData *v2 = param0->unk_D4.unk_14;

    SpriteSystem_LoadPaletteBufferFromOpenNarc(v2, PLTTBUF_SUB_OBJ, v0, v1, param1, 290, FALSE, 3, NNS_G2D_VRAM_TYPE_2DSUB, 26000 + 290);
    SpriteSystem_LoadCharResObjFromOpenNarc(v0, v1, param1, 273, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 25000 + 273);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, v1, param1, 177, TRUE, 27000 + 177);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, v1, param1, 85, TRUE, 28000 + 85);
    SpriteSystem_LoadCharResObjFromOpenNarc(v0, v1, param1, 274, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 25000 + 274);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, v1, param1, 178, TRUE, 27000 + 178);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, v1, param1, 86, TRUE, 28000 + 86);
    SpriteSystem_LoadCharResObjFromOpenNarc(v0, v1, param1, 270, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 25000 + 270);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, v1, param1, 175, TRUE, 27000 + 175);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, v1, param1, 83, TRUE, 28000 + 83);
    SpriteSystem_LoadCharResObjFromOpenNarc(v0, v1, param1, 272, TRUE, NNS_G2D_VRAM_TYPE_2DSUB, 35000 + 272);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, v1, param1, 176, TRUE, 27000 + 176);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, v1, param1, 84, TRUE, 28000 + 84);
}

void ov76_0223D16C(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;
    UnkStruct_ov76_0223BBAC *v1;
    SpriteTemplate v2;
    SpriteSystem *v3 = param0->unk_D4.spriteSystem;
    SpriteManager *v4 = param0->unk_D4.spriteManager;
    PaletteData *v5 = param0->unk_D4.unk_14;
    v1 = &param0->sprites;

    v2.x = 0;
    v2.y = 0;
    v2.z = 0;
    v2.animIdx = 0;
    v2.priority = 60;
    v2.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v2.bgPriority = 1;
    v2.vramTransfer = FALSE;
    v2.resources[4] = SPRITE_RESOURCE_NONE;
    v2.resources[5] = SPRITE_RESOURCE_NONE;

    v0 = 8;

    v2.plttIdx = 1;
    v2.resources[0] = 25000 + 273;
    v2.resources[1] = 26000 + 290;
    v2.resources[2] = 27000 + 177;
    v2.resources[3] = 28000 + 85;
    v1->unk_00[v0++] = SpriteSystem_NewSprite(v3, v4, &v2);

    v2.resources[0] = 25000 + 274;
    v2.resources[1] = 26000 + 290;
    v2.resources[2] = 27000 + 178;
    v2.resources[3] = 28000 + 86;
    v1->unk_00[v0++] = SpriteSystem_NewSprite(v3, v4, &v2);

    v2.bgPriority = 1;
    v2.plttIdx = 1;
    v2.resources[0] = 35000 + 272;
    v2.resources[1] = 26000 + 290;
    v2.resources[2] = 27000 + 176;
    v2.resources[3] = 28000 + 84;
    v1->unk_00[v0++] = SpriteSystem_NewSprite(v3, v4, &v2);

    v2.bgPriority = 1;
    v2.plttIdx = 0;
    v2.resources[0] = 25000 + 270;
    v2.resources[1] = 26000 + 290;
    v2.resources[2] = 27000 + 175;
    v2.resources[3] = 28000 + 83;
    v1->unk_00[v0++] = SpriteSystem_NewSprite(v3, v4, &v2);
    v1->unk_00[v0++] = SpriteSystem_NewSprite(v3, v4, &v2);

    {
        const s16 v6[][2] = {
            { 20, 23 },
            { 20, 47 },
            { 20, 71 },
            { 20, 95 },
            { 76, 23 },
            { 76, 47 },
            { 76, 71 },
            { 76, 95 },
            { 27, 124 },
            { 67, 124 },
            { 32, 171 },
            { 104, 171 },
            { 192, 171 },
        };
        const s16 v7[][2] = {
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 0xFF, 0xFF },
            { 13, 10 },
            { 13, 10 },
            { 16, 12 },
            { 28, 12 },
            { 28, 12 },
        };

        for (v0 = 8; v0 < 13; v0++) {
            ManagedSprite_SetPositionXY(param0->sprites.sprites[v0], v6[v0][0], v6[v0][1]);
            ManagedSprite_TickFrame(param0->sprites.sprites[v0]);
            ManagedSprite_SetAnimationFrame(param0->sprites.sprites[v0], 0);
            ov76_0223B870(&param0->unk_D4.unk_FC[v0], param0->sprites.sprites[v0], v7[v0][0], v7[v0][1]);
        }
    }
}

void ov76_0223D2F4(UnkStruct_ov76_0223DE00 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 13; v0++) {
        if (param0->sprites.sprites[v0] == NULL) {
            continue;
        }

        ManagedSprite_SetDrawFlag(param0->sprites.sprites[v0], param1);
    }
}

void ov76_0223D318(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 0; v0 < 13; v0++) {
        (void)0;
    }
}

void ov76_0223D31C(UnkStruct_ov76_0223DE00 *param0)
{
    int v0;

    for (v0 = 8; v0 < 13; v0++) {
        Sprite_DeleteAndFreeResources(param0->sprites.sprites[v0]);
    }
}
