#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "assert.h"

#include "constants/heap.h"
#include "constants/palette.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/sys_task.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_02005474.h"
#include "narc.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_020218BC.h"
#include "overlay016/ov16_0223DF00.h"
#include "battle/party_gauge.h"

typedef struct {
    CellActorData *cells;
    SysTask *task;
    enum HideArrowType hideType;
    enum PartyGaugeSide side;
    enum PartyGaugePosition position;
    s32 x;
    s16 alpha;
    u8 state;
    u8 delay;
} PartyGaugeArrow;

typedef struct {
    CellActorData *cells;
    SysTask *task;
    enum PartyGaugeSide side;
    enum PartyGaugePosition position;
    enum HidePartyGaugeType hideType;
    s8 *pokeballCount;
    s16 *arrowAlpha;
    s32 xStart;
    s32 xEnd;
    s32 xOverflow;
    s16 delay;
    u16 sdatID;
    u8 state;
    u8 ballSlot;
    u8 flipAnimation;
    u8 startDelay;
} PartyGaugePokeballs;

typedef struct PartyGauge {
    PartyGaugeArrow arrow;
    PartyGaugePokeballs pokeballs[MAX_PARTY_SIZE];
    s8 pokeballCount;
} PartyGauge;

static void ShowArrow(PartyGaugeArrow * param0, enum PartyGaugeSide param1, enum PartyGaugePosition param2, SpriteRenderer * param3, SpriteGfxHandler * param4);
static void HideArrow(PartyGaugeArrow * param0, enum HideArrowType param1);
static void ShowPokeballs(PartyGaugePokeballs * param0, s8 * param1, enum PartyGaugeSide param2, enum ShowPartyGaugeType param3, enum PartyGaugePosition param4, int param5, int param6, SpriteRenderer * param7, SpriteGfxHandler * param8);
static void HidePokeballs(PartyGaugePokeballs * param0, int param1, enum HidePartyGaugeType param2, s16 * param3);
static void ov16_0226D34C(SysTask * param0, void * param1);
static void ov16_0226D434(SysTask * param0, void * param1);
static void ov16_0226D654(SysTask * param0, void * param1);
static void ov16_0226D854(SysTask * param0, void * param1);
static void ov16_0226D99C(SysTask * param0, void * param1);
static void ov16_0226DAAC(SysTask * param0, void * param1);
static int PokeballsAnimationFrame(int param0, enum PartyGaugeSide param1);
static int ov16_0226DB44(int param0);
static PartyGauge* NewPartyGauge(void);
static void FreePartyGauge(PartyGauge *partyGauge);

static const UnkStruct_ov104_0223F9E0 Unk_ov16_02270A3C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xA,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x4FBD, 0x4E45, 0x4FB7, 0x4FAC, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov16_02270A70 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x8,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x4FBD, 0x4E45, 0x4FB7, 0x4FAC, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

__attribute__((aligned(4))) static const u16 Unk_ov16_02270A2C[] = {
    0x54,
    0x78,
    0x78
};

__attribute__((aligned(4))) static const u16 Unk_ov16_02270A24[] = {
    0x14,
    0x38,
    0x38
};

__attribute__((aligned(4))) static const u16 Unk_ov16_02270A34[] = {
    0x4E,
    0x72,
    0x72
};

__attribute__((aligned(4))) static const u16 Unk_ov16_02270A1C[] = {
    0xE,
    0x32,
    0x32
};

// TODO: naix?
#define PARTY_GAUGE_NCLR        110
#define PARTY_GAUGE_NCGR_BIN    340
#define PARTY_GAUGE_NCER_BIN    341
#define PARTY_GAUGE_NANR_BIN    342

// TODO: enum?
#define PARTY_GAUGE_PLTT_RES_ID 20037
#define PARTY_GAUGE_CHAR_RES_ID 20413
#define PARTY_GAUGE_CELL_RES_ID 20407
#define PARTY_GAUGE_ANIM_RES_ID 20396

void PartyGauge_LoadGraphics(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, PaletteData *palette)
{
    NARC *narc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

    SpriteRenderer_LoadPalette(palette, PLTTBUF_MAIN_OBJ, renderer, gfxHandler, narc, PARTY_GAUGE_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, PARTY_GAUGE_PLTT_RES_ID);
    SpriteRenderer_LoadCharResObjFromOpenNarc(renderer, gfxHandler, narc, PARTY_GAUGE_NCGR_BIN, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, PARTY_GAUGE_CHAR_RES_ID);
    SpriteRenderer_LoadCellResObjFromOpenNarc(renderer, gfxHandler, narc, PARTY_GAUGE_NCER_BIN, TRUE, PARTY_GAUGE_CELL_RES_ID);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(renderer, gfxHandler, narc, PARTY_GAUGE_NANR_BIN, TRUE, PARTY_GAUGE_ANIM_RES_ID);

    NARC_dtor(narc);
}

void PartyGauge_FreeGraphics(SpriteGfxHandler *gfxHandler)
{
    SpriteGfxHandler_UnloadCharObjById(gfxHandler, PARTY_GAUGE_CHAR_RES_ID);
    SpriteGfxHandler_UnloadPlttObjById(gfxHandler, PARTY_GAUGE_PLTT_RES_ID);
    SpriteGfxHandler_UnloadCellObjById(gfxHandler, PARTY_GAUGE_CELL_RES_ID);
    SpriteGfxHandler_UnloadAnimObjById(gfxHandler, PARTY_GAUGE_ANIM_RES_ID);
}

static PartyGauge* NewPartyGauge()
{
    PartyGauge *gauge = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(PartyGauge));
    MI_CpuClear8(gauge, sizeof(PartyGauge));
    return gauge;
}

static void FreePartyGauge(PartyGauge *gauge)
{
    GF_ASSERT(gauge->arrow.task == NULL);
    Heap_FreeToHeap(gauge);
}

PartyGauge* PartyGauge_Show(u8 ballStatus[], enum PartyGaugeSide side, enum ShowPartyGaugeType showType, enum PartyGaugePosition pos, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler)
{
    PartyGauge *gauge = NewPartyGauge();
    ShowArrow(&gauge->arrow, side, pos, renderer, gfxHandler);

    for (int slot = 0; slot < MAX_PARTY_SIZE; slot++) {
        int frame = PokeballsAnimationFrame(ballStatus[slot], side);
        ShowPokeballs(&gauge->pokeballs[slot], &gauge->pokeballCount, side, showType, pos, slot, frame, renderer, gfxHandler);
    }

    return gauge;
}

BOOL PartyGauge_ShowIsDone(PartyGauge *gauge)
{
    int i;
    if (gauge->arrow.task == NULL) {
        for (i = 0; i < MAX_PARTY_SIZE; i++) {
            if (gauge->pokeballs[i].task != NULL) {
                break;
            }
        }

        if (i == MAX_PARTY_SIZE) {
            return TRUE;
        }
    }

    return FALSE;
}

void PartyGauge_Hide(PartyGauge *gauge, enum HideArrowType hideArrowType, enum HidePartyGaugeType hideGaugeType)
{
    GF_ASSERT(gauge != NULL);

    HideArrow(&gauge->arrow, hideArrowType);
    for (int i = 0; i < MAX_PARTY_SIZE; i++) {
        HidePokeballs(&gauge->pokeballs[i], i, hideGaugeType, &gauge->arrow.alpha);
    }
}

BOOL PartyGauge_HideIsDone(PartyGauge *gauge)
{
    int i;
    if (gauge->arrow.task == NULL) {
        for (i = 0; i < MAX_PARTY_SIZE; i++) {
            if (gauge->pokeballs[i].task != NULL) {
                break;
            }
        }

        if (i == MAX_PARTY_SIZE) {
            return TRUE;
        }
    }

    return FALSE;
}

void PartyGauge_Free(PartyGauge *gauge)
{
    sub_0200D0F4(gauge->arrow.cells);

    for (int i = 0; i < MAX_PARTY_SIZE; i++) {
        sub_0200D0F4(gauge->pokeballs[i].cells);
    }

    FreePartyGauge(gauge);
}

static void ShowArrow (PartyGaugeArrow * param0, enum PartyGaugeSide param1, enum PartyGaugePosition param2, SpriteRenderer * param3, SpriteGfxHandler * param4)
{
    GF_ASSERT(param0->cells == NULL && param0->task == NULL);

    MI_CpuClear8(param0, sizeof(PartyGaugeArrow));

    param0->cells = SpriteActor_LoadResources(param3, param4, &Unk_ov16_02270A3C);

    if (param1 == PARTY_GAUGE_OURS) {
        SpriteActor_SetSpritePositionXY(param0->cells, (256 + 96), Unk_ov16_02270A2C[param2]);
        SpriteActor_SetSpriteAnimActive(param0->cells->unk_00, 8);
    } else {
        SpriteActor_SetSpritePositionXY(param0->cells, -96, Unk_ov16_02270A24[param2]);
        SpriteActor_SetSpriteAnimActive(param0->cells->unk_00, 7);
    }

    SpriteActor_UpdateObject(param0->cells->unk_00);

    param0->side = param1;
    param0->position = param2;
    param0->state = 0;
    param0->task = SysTask_Start(ov16_0226D34C, param0, 500);

    Sound_PlayEffect(1809);
}

static void ov16_0226D34C (SysTask * param0, void * param1)
{
    PartyGaugeArrow * v0 = param1;

    switch (v0->state) {
    case 0:
    {
        s16 v1, v2;

        SpriteActor_GetSpritePositionXY(v0->cells, &v1, &v2);
        v0->x = v1 << 8;
    }
        v0->state++;

    case 1:
        if (v0->side == PARTY_GAUGE_OURS) {
            v0->x -= 0x1200;

            if (v0->x <= (256 - 32) << 8) {
                v0->x = (256 - 32) << 8;
                v0->state++;
            }

            SpriteActor_SetSpritePositionXY(v0->cells, v0->x >> 8, Unk_ov16_02270A2C[v0->position]);
        } else {
            v0->x += 0x1200;

            if (v0->x >= 32 << 8) {
                v0->x = 32 << 8;
                v0->state++;
            }

            SpriteActor_SetSpritePositionXY(v0->cells, v0->x >> 8, Unk_ov16_02270A24[v0->position]);
        }
        break;
    default:
        SysTask_Done(param0);
        v0->task = NULL;
        return;
    }
}

static void HideArrow (PartyGaugeArrow * param0, enum HideArrowType param1)
{
    GF_ASSERT(param0->cells != NULL && param0->task == NULL);

    param0->state = 0;
    param0->hideType = param1;

    if (param1 == HIDE_ARROW_FADE_AND_SCROLL) {
        param0->delay = 4;
    } else {
        param0->delay = 0;
    }

    param0->task = SysTask_Start(ov16_0226D434, param0, 500);
}

static void ov16_0226D434 (SysTask * param0, void * param1)
{
    PartyGaugeArrow * v0 = param1;

    switch (v0->state) {
    case 0:
    {
        s16 v1, v2;

        SpriteActor_GetSpritePositionXY(v0->cells, &v1, &v2);
        v0->x = v1 << 8;
    }

        SpriteActor_SetOAMMode(v0->cells, GX_OAM_MODE_XLU);

        v0->alpha = 16 << 8;
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, (v0->alpha >> 8), 16 - (v0->alpha >> 8));
        v0->state++;
    case 1:
        if (v0->delay > 0) {
            v0->delay--;
            break;
        }

        v0->state++;
    case 2:
        if (v0->hideType == HIDE_ARROW_FADE_AND_SCROLL) {
            if (v0->side == PARTY_GAUGE_OURS) {
                v0->x -= 0x400;
                SpriteActor_SetSpritePositionXY(v0->cells, v0->x >> 8, Unk_ov16_02270A2C[v0->position]);
            } else {
                v0->x += 0x400;
                SpriteActor_SetSpritePositionXY(v0->cells, v0->x >> 8, Unk_ov16_02270A24[v0->position]);
            }
        }

        v0->alpha -= 0x100;

        if (v0->alpha <= 0) {
            v0->alpha = 0;
            SpriteActor_DrawSprite(v0->cells->unk_00, 0);
            v0->state++;
        }

        G2_ChangeBlendAlpha(v0->alpha >> 8, 16 - (v0->alpha >> 8));
        break;
    default:
        Battle_SetDefaultBlend();
        SysTask_Done(param0);
        v0->task = NULL;
        return;
    }
}

static void ShowPokeballs (PartyGaugePokeballs * param0, s8 * param1, enum PartyGaugeSide param2, enum ShowPartyGaugeType param3, enum PartyGaugePosition param4, int param5, int param6, SpriteRenderer * param7, SpriteGfxHandler * param8)
{
    GF_ASSERT(param0->cells == NULL && param0->task == NULL);

    MI_CpuClear8(param0, sizeof(PartyGaugePokeballs));
    param0->cells = SpriteActor_LoadResources(param7, param8, &Unk_ov16_02270A70);

    if (param2 == PARTY_GAUGE_OURS) {
        SpriteActor_SetSpritePositionXY(param0->cells, (256 + 20), Unk_ov16_02270A34[param4]);
    } else {
        SpriteActor_SetSpritePositionXY(param0->cells, -20, Unk_ov16_02270A1C[param4]);
    }

    SpriteActor_SetSpriteAnimActive(param0->cells->unk_00, param6);
    SpriteActor_UpdateObject(param0->cells->unk_00);

    param0->side = param2;
    param0->ballSlot = param5;
    param0->position = param4;
    param0->flipAnimation = ov16_0226DB44(param6);
    param0->pokeballCount = param1;
    param0->sdatID = ((param6 == 6) ? 1811 : 1810);

    if (param2 == PARTY_GAUGE_OURS) {
        param0->xEnd = (256 - 128 + 20 + 14) + param5 * 16;
        param0->xOverflow = (256 - 128 + 20 + 14) + param5 * 15 - 6;
    } else {
        param0->xEnd = (128 - 20 - 14) - param5 * 16;
        param0->xOverflow = (128 - 20 - 14) - param5 * 15 + 6;
    }

    param0->state = 0;

    if (param3 == SHOW_PARTY_GAUGE_BATTLE_START) {
        param0->delay = 3 * param5 + 5;
        param0->task = SysTask_Start(ov16_0226D654, param0, (500 + 1));
    } else {
        param0->delay = 0;
        param0->task = SysTask_Start(ov16_0226D854, param0, (500 + 1));
    }
}

static void ov16_0226D654 (SysTask * param0, void * param1)
{
    PartyGaugePokeballs * v0 = param1;

    switch (v0->state) {
    case 0:
    {
        s16 v1, v2;

        SpriteActor_GetSpritePositionXY(v0->cells, &v1, &v2);
        v0->xStart = v1 << 8;
    }
        v0->state++;
    case 1:
        if (v0->delay > 0) {
            v0->delay--;
            break;
        }
    case 2:
        if (v0->side == PARTY_GAUGE_OURS) {
            v0->xStart -= 0x1200;

            if (v0->xStart <= v0->xOverflow << 8) {
                v0->xStart = v0->xOverflow << 8;
                Sound_PlayEffect(v0->sdatID);
                v0->state++;
            }

            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, Unk_ov16_02270A34[v0->position]);
        } else {
            v0->xStart += 0x1200;

            if (v0->xStart >= v0->xOverflow << 8) {
                v0->xStart = v0->xOverflow << 8;
                v0->state++;
            }

            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, Unk_ov16_02270A1C[v0->position]);
        }

        SpriteActor_UpdateObject(v0->cells->unk_00);
        break;
    case 3:

        (*(v0->pokeballCount))++;
        v0->state++;

    case 4:
        if (*(v0->pokeballCount) != 6) {
            SpriteActor_UpdateObject(v0->cells->unk_00);
            break;
        }

        if (v0->side == PARTY_GAUGE_OURS) {
            SpriteActor_SetAnimFrame(v0->cells->unk_00, 1);
        } else {
            SpriteActor_SetAnimFrame(v0->cells->unk_00, 1);
        }

        v0->delay = 0;
        v0->state++;
    case 5:
        v0->delay++;

        if (v0->delay < 0) {
            break;
        }

        SpriteActor_SetSpriteAnimActive(v0->cells->unk_00, v0->flipAnimation);
        v0->delay = 0;
        v0->state++;
    case 6:
        if (v0->side == PARTY_GAUGE_OURS) {
            v0->xStart += 0x600;

            if (v0->xStart >= v0->xEnd << 8) {
                v0->xStart = v0->xEnd << 8;
                v0->state++;
            }

            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, Unk_ov16_02270A34[v0->position]);
        } else {
            v0->xStart -= 0x600;

            if (v0->xStart <= v0->xEnd << 8) {
                v0->xStart = v0->xEnd << 8;
                v0->state++;
            }

            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, Unk_ov16_02270A1C[v0->position]);
        }

        SpriteActor_UpdateObject(v0->cells->unk_00);
        break;
    default:
        SpriteActor_SetAnimFrame(v0->cells->unk_00, 0);
        SysTask_Done(param0);
        v0->task = NULL;
        return;
    }
}

static void ov16_0226D854 (SysTask * param0, void * param1)
{
    PartyGaugePokeballs * v0 = param1;

    switch (v0->state) {
    case 0:
    {
        s16 v1, v2;

        SpriteActor_GetSpritePositionXY(v0->cells, &v1, &v2);
        v0->xStart = v1 << 8;
    }
        SpriteActor_SetAnimFrame(v0->cells->unk_00, 0);
        v0->state++;
    case 1:
        if (v0->delay > 0) {
            v0->delay--;
            break;
        }
    case 2:
        if (v0->side == PARTY_GAUGE_OURS) {
            v0->xStart -= 0x1200;

            if (v0->xStart <= v0->xEnd << 8) {
                v0->xStart = v0->xEnd << 8;
                v0->state++;
            }

            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, Unk_ov16_02270A34[v0->position]);
        } else {
            v0->xStart += 0x1200;

            if (v0->xStart >= v0->xEnd << 8) {
                v0->xStart = v0->xEnd << 8;
                v0->state++;
            }

            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, Unk_ov16_02270A1C[v0->position]);
        }
        break;
    default:
        SysTask_Done(param0);
        v0->task = NULL;
        return;
    }
}

static void HidePokeballs (PartyGaugePokeballs * param0, int param1, enum HidePartyGaugeType param2, s16 * param3)
{
    GF_ASSERT(param0->cells != NULL && param0->task == NULL);

    param0->state = 0;

    if (param2 == HIDE_PARTY_GAUGE_BATTLE_START) {
        param0->arrowAlpha = param3;
        param0->delay = 3 * param1;
        param0->startDelay = 4;
        param0->task = SysTask_Start(ov16_0226D99C, param0, (500 + 1));
    } else {
        param0->arrowAlpha = param3;
        param0->delay = 0;
        param0->startDelay = 0;
        param0->task = SysTask_Start(ov16_0226DAAC, param0, (500 + 1));
    }
}

static void ov16_0226D99C (SysTask * param0, void * param1)
{
    PartyGaugePokeballs * v0 = param1;

    if ((*(v0->arrowAlpha)) == 0) {
        v0->state = 100;
    }

    switch (v0->state) {
    case 0:
    {
        s16 v1, v2;

        SpriteActor_GetSpritePositionXY(v0->cells, &v1, &v2);
        v0->xStart = v1 << 8;
    }
        SpriteActor_SetOAMMode(v0->cells, GX_OAM_MODE_XLU);
        v0->state++;
    case 1:
        if (v0->startDelay > 0) {
            v0->startDelay--;
            break;
        }

        if (v0->delay > 0) {
            v0->delay--;
            break;
        }
    case 2:
        if (v0->side == PARTY_GAUGE_OURS) {
            v0->xStart -= 0xc00;
            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, Unk_ov16_02270A34[v0->position]);
        } else {
            v0->xStart += 0xc00;
            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, Unk_ov16_02270A1C[v0->position]);
        }

        if ((v0->xStart < -16 * 0x100) || (v0->xStart > ((256 + 16) << 8))) {
            v0->state++;
        }

        SpriteActor_UpdateObject(v0->cells->unk_00);
        break;
    case 100:
    default:
        SpriteActor_DrawSprite(v0->cells->unk_00, 0);
        SysTask_Done(param0);
        v0->task = NULL;
        return;
    }
}

static void ov16_0226DAAC (SysTask * param0, void * param1)
{
    PartyGaugePokeballs * v0 = param1;

    if ((*(v0->arrowAlpha)) == 0) {
        v0->state = 100;
    }

    switch (v0->state) {
    case 0:
        SpriteActor_SetOAMMode(v0->cells, GX_OAM_MODE_XLU);
        v0->state++;
    case 1:
        break;
    case 100:
    default:
        SpriteActor_DrawSprite(v0->cells->unk_00, 0);
        SysTask_Done(param0);
        v0->task = NULL;
        return;
    }
}

static int PokeballsAnimationFrame (int param0, enum PartyGaugeSide param1)
{
    int v0;

    switch (param0) {
    case 0:
    default:
        v0 = 6;
        break;
    case 1:
        v0 = (param1 == PARTY_GAUGE_OURS) ? 3 : 0;
        break;
    case 2:
        v0 = (param1 == PARTY_GAUGE_OURS) ? 5 : 2;
        break;
    case 3:
        v0 = (param1 == PARTY_GAUGE_OURS) ? 4 : 1;
        break;
    }

    return v0;
}

static int ov16_0226DB44 (int param0)
{
    switch (param0) {
    case 6:
    default:
        return param0;
    case 3:
        return 0;
    case 0:
        return 3;
    case 5:
        return 2;
    case 2:
        return 5;
    case 4:
        return 1;
    case 1:
        return 4;
    }
}
