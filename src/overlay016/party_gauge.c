#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "assert.h"

#include "constants/heap.h"
#include "constants/palette.h"
#include "constants/sdat.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/sys_task.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/sprite_template.h"

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

enum PartyGaugeAnimIndex {
    PGANM_POKEBALL_HEALTHY_THEIRS = 0,
    PGANM_POKEBALL_STATUSED_THEIRS,
    PGANM_POKEBALL_FAINTED_THEIRS,
    PGANM_POKEBALL_HEALTHY_OURS,
    PGANM_POKEBALL_STATUSED_OURS,
    PGANM_POKEBALL_FAINTED_OURS,
    PGANM_POKEBALL_EMPTY_SLOT,
    PGANM_ARROW_THEIRS,
    PGANM_ARROW_OURS,
};

static void ShowArrow(PartyGaugeArrow *arrow, enum PartyGaugeSide side, enum PartyGaugePosition pos, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler);
static void HideArrow(PartyGaugeArrow *arrow, enum HideArrowType type);
static void ShowPokeballs(PartyGaugePokeballs * param0, s8 * param1, enum PartyGaugeSide param2, enum ShowPartyGaugeType param3, enum PartyGaugePosition param4, int param5, int param6, SpriteRenderer * param7, SpriteGfxHandler * param8);
static void HidePokeballs(PartyGaugePokeballs * param0, int param1, enum HidePartyGaugeType param2, s16 * param3);
static void ShowArrowTask(SysTask *task, void *data);
static void HideArrowTask(SysTask *task, void *data);
static void ov16_0226D654(SysTask * param0, void * param1);
static void ov16_0226D854(SysTask * param0, void * param1);
static void ov16_0226D99C(SysTask * param0, void * param1);
static void ov16_0226DAAC(SysTask * param0, void * param1);
static int PokeballsAnimationFrame(int param0, enum PartyGaugeSide param1);
static int ov16_0226DB44(int param0);
static PartyGauge* NewPartyGauge(void);
static void FreePartyGauge(PartyGauge *partyGauge);

// TODO: enum?
#define PARTY_GAUGE_PLTT_RES_ID 20037
#define PARTY_GAUGE_CHAR_RES_ID 20413
#define PARTY_GAUGE_CELL_RES_ID 20407
#define PARTY_GAUGE_ANIM_RES_ID 20396

static const SpriteTemplate sArrowTemplate = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 0,
    .priority = 10,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        PARTY_GAUGE_CHAR_RES_ID,
        PARTY_GAUGE_PLTT_RES_ID,
        PARTY_GAUGE_CELL_RES_ID,
        PARTY_GAUGE_ANIM_RES_ID,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .transferToVRAM = FALSE,
};

static const SpriteTemplate sPokeballTemplate = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 0,
    .priority = 8,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        PARTY_GAUGE_CHAR_RES_ID,
        PARTY_GAUGE_PLTT_RES_ID,
        PARTY_GAUGE_CELL_RES_ID,
        PARTY_GAUGE_ANIM_RES_ID,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .transferToVRAM = FALSE,
};

#define ARROW_TASK_PRIORITY     500
#define POKEBALL_TASK_PRIORITY  (ARROW_TASK_PRIORITY + 1)

#define SCREEN_EDGE_RIGHT       256
#define SCREEN_EDGE_LEFT        0

#define ARROW_X_START_OURS      (SCREEN_EDGE_RIGHT + 96)  // 96 pixels off-screem
#define ARROW_X_START_THEIRS    (SCREEN_EDGE_LEFT  - 96)  // 96 pixels off-screen
#define ARROW_X_END_OURS        (SCREEN_EDGE_RIGHT - 32)
#define ARROW_X_END_THEIRS      (SCREEN_EDGE_LEFT  + 32)
#define ARROW_Y_POS_OURS        120
#define ARROW_Y_POS_THEIRS      56
#define POKEBALL_Y_POS_OURS     (ARROW_Y_POS_OURS - 6)
#define POKEBALL_Y_POS_THEIRS   (ARROW_Y_POS_THEIRS - 6)

#define ARROW_IN_SPEED          (18 << 8)
#define ARROW_OUT_SPEED         (4 << 8)
#define ARROW_FADE_SPEED        (1 << 8)

#define HIGH_LOW_Y_POS_DIFF     36

__attribute__((aligned(4))) static const u16 sArrowYPosOurs[] = {
    [PARTY_GAUGE_POSITION_HIGH]   = ARROW_Y_POS_OURS - HIGH_LOW_Y_POS_DIFF,
    [PARTY_GAUGE_POSITION_MIDDLE] = ARROW_Y_POS_OURS,
    [PARTY_GAUGE_POSITION_LOW]    = ARROW_Y_POS_OURS
};

__attribute__((aligned(4))) static const u16 sArrowYPosTheirs[] = {
    [PARTY_GAUGE_POSITION_HIGH]   = ARROW_Y_POS_THEIRS - HIGH_LOW_Y_POS_DIFF,
    [PARTY_GAUGE_POSITION_MIDDLE] = ARROW_Y_POS_THEIRS,
    [PARTY_GAUGE_POSITION_LOW]    = ARROW_Y_POS_THEIRS
};

__attribute__((aligned(4))) static const u16 sPokeballYPosOurs[] = {
    [PARTY_GAUGE_POSITION_HIGH]   = POKEBALL_Y_POS_OURS - HIGH_LOW_Y_POS_DIFF,
    [PARTY_GAUGE_POSITION_MIDDLE] = POKEBALL_Y_POS_OURS,
    [PARTY_GAUGE_POSITION_LOW]    = POKEBALL_Y_POS_OURS
};

__attribute__((aligned(4))) static const u16 sPokeballYPosTheirs[] = {
    [PARTY_GAUGE_POSITION_HIGH]   = POKEBALL_Y_POS_THEIRS - HIGH_LOW_Y_POS_DIFF,
    [PARTY_GAUGE_POSITION_MIDDLE] = POKEBALL_Y_POS_THEIRS,
    [PARTY_GAUGE_POSITION_LOW]    = POKEBALL_Y_POS_THEIRS
};

// TODO: naix?
#define PARTY_GAUGE_NCLR        110
#define PARTY_GAUGE_NCGR_BIN    340
#define PARTY_GAUGE_NCER_BIN    341
#define PARTY_GAUGE_NANR_BIN    342

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

enum ShowArrowState {
    SHOW_ARROW_INIT = 0,
    SHOW_ARROW_DRAW,
    SHOW_ARROW_DONE,
};

static void ShowArrow(PartyGaugeArrow *arrow, enum PartyGaugeSide side, enum PartyGaugePosition pos, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler)
{
    GF_ASSERT(arrow->cells == NULL && arrow->task == NULL);

    MI_CpuClear8(arrow, sizeof(PartyGaugeArrow));
    arrow->cells = SpriteActor_LoadResources(renderer, gfxHandler, &sArrowTemplate);

    if (side == PARTY_GAUGE_OURS) {
        SpriteActor_SetSpritePositionXY(arrow->cells, ARROW_X_START_OURS, sArrowYPosOurs[pos]);
        SpriteActor_SetSpriteAnimActive(arrow->cells->unk_00, PGANM_ARROW_OURS);
    } else {
        SpriteActor_SetSpritePositionXY(arrow->cells, ARROW_X_START_THEIRS, sArrowYPosTheirs[pos]);
        SpriteActor_SetSpriteAnimActive(arrow->cells->unk_00, PGANM_ARROW_THEIRS);
    }

    SpriteActor_UpdateObject(arrow->cells->unk_00);

    arrow->side = side;
    arrow->position = pos;
    arrow->state = SHOW_ARROW_INIT;
    arrow->task = SysTask_Start(ShowArrowTask, arrow, ARROW_TASK_PRIORITY);

    Sound_PlayEffect(SEQ_PARTY_GAUGE_ARROW_IN);
}

static void ShowArrowTask(SysTask *task, void *data)
{
    PartyGaugeArrow *arrow = data;

    switch (arrow->state) {
    case SHOW_ARROW_INIT:
        s16 x, y;

        SpriteActor_GetSpritePositionXY(arrow->cells, &x, &y);
        arrow->x = x << 8; 
        arrow->state++;
        // fall-through
    case SHOW_ARROW_DRAW:
        if (arrow->side == PARTY_GAUGE_OURS) {
            arrow->x -= ARROW_IN_SPEED;
            if (arrow->x <= ARROW_X_END_OURS << 8) {
                arrow->x = ARROW_X_END_OURS << 8;
                arrow->state++;
            }

            SpriteActor_SetSpritePositionXY(arrow->cells, arrow->x >> 8, sArrowYPosOurs[arrow->position]);
        } else {
            arrow->x += ARROW_IN_SPEED;
            if (arrow->x >= ARROW_X_END_THEIRS << 8) {
                arrow->x = ARROW_X_END_THEIRS << 8;
                arrow->state++;
            }

            SpriteActor_SetSpritePositionXY(arrow->cells, arrow->x >> 8, sArrowYPosTheirs[arrow->position]);
        }
        break;

    default:
        SysTask_Done(task);
        arrow->task = NULL;
    }
}

enum HideArrowState {
    HIDE_ARROW_INIT = 0,
    HIDE_ARROW_DELAY,
    HIDE_ARROW_FADE,
    HIDE_ARROW_DONE,
};

static void HideArrow(PartyGaugeArrow *arrow, enum HideArrowType type)
{
    GF_ASSERT(arrow->cells != NULL && arrow->task == NULL);

    arrow->state = HIDE_ARROW_INIT;
    arrow->hideType = type;

    if (type == HIDE_ARROW_FADE_AND_SCROLL) {
        arrow->delay = 4;
    } else {
        arrow->delay = 0;
    }

    arrow->task = SysTask_Start(HideArrowTask, arrow, ARROW_TASK_PRIORITY);
}

static void HideArrowTask(SysTask *task, void *data)
{
    PartyGaugeArrow *arrow = data;

    switch (arrow->state) {
    case HIDE_ARROW_INIT:
        s16 x, y;

        SpriteActor_GetSpritePositionXY(arrow->cells, &x, &y);
        arrow->x = x << 8;

        SpriteActor_SetOAMMode(arrow->cells, GX_OAM_MODE_XLU);
        arrow->alpha = 16 << 8;

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD,
            (arrow->alpha >> 8), 16 - (arrow->alpha >> 8));
        arrow->state++;
        // fall-through
    case HIDE_ARROW_DELAY:
        if (arrow->delay > 0) {
            arrow->delay--;
            break;
        }

        arrow->state++;
        // fall-through
    case HIDE_ARROW_FADE:
        if (arrow->hideType == HIDE_ARROW_FADE_AND_SCROLL) {
            if (arrow->side == PARTY_GAUGE_OURS) {
                arrow->x -= ARROW_OUT_SPEED;
                SpriteActor_SetSpritePositionXY(arrow->cells, arrow->x >> 8, sArrowYPosOurs[arrow->position]);
            } else {
                arrow->x += ARROW_OUT_SPEED;
                SpriteActor_SetSpritePositionXY(arrow->cells, arrow->x >> 8, sArrowYPosTheirs[arrow->position]);
            }
        }

        arrow->alpha -= ARROW_FADE_SPEED;

        if (arrow->alpha <= 0) {
            arrow->alpha = 0;
            SpriteActor_DrawSprite(arrow->cells->unk_00, 0);
            arrow->state++;
        }

        G2_ChangeBlendAlpha(arrow->alpha >> 8, 16 - (arrow->alpha >> 8));
        break;

    default:
        Battle_SetDefaultBlend();
        SysTask_Done(task);
        arrow->task = NULL;
    }
}

static void ShowPokeballs (PartyGaugePokeballs * param0, s8 * param1, enum PartyGaugeSide param2, enum ShowPartyGaugeType param3, enum PartyGaugePosition param4, int param5, int param6, SpriteRenderer * param7, SpriteGfxHandler * param8)
{
    GF_ASSERT(param0->cells == NULL && param0->task == NULL);

    MI_CpuClear8(param0, sizeof(PartyGaugePokeballs));
    param0->cells = SpriteActor_LoadResources(param7, param8, &sPokeballTemplate);

    if (param2 == PARTY_GAUGE_OURS) {
        SpriteActor_SetSpritePositionXY(param0->cells, (256 + 20), sPokeballYPosOurs[param4]);
    } else {
        SpriteActor_SetSpritePositionXY(param0->cells, -20, sPokeballYPosTheirs[param4]);
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

            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, sPokeballYPosOurs[v0->position]);
        } else {
            v0->xStart += 0x1200;

            if (v0->xStart >= v0->xOverflow << 8) {
                v0->xStart = v0->xOverflow << 8;
                v0->state++;
            }

            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, sPokeballYPosTheirs[v0->position]);
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

            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, sPokeballYPosOurs[v0->position]);
        } else {
            v0->xStart -= 0x600;

            if (v0->xStart <= v0->xEnd << 8) {
                v0->xStart = v0->xEnd << 8;
                v0->state++;
            }

            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, sPokeballYPosTheirs[v0->position]);
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

            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, sPokeballYPosOurs[v0->position]);
        } else {
            v0->xStart += 0x1200;

            if (v0->xStart >= v0->xEnd << 8) {
                v0->xStart = v0->xEnd << 8;
                v0->state++;
            }

            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, sPokeballYPosTheirs[v0->position]);
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
            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, sPokeballYPosOurs[v0->position]);
        } else {
            v0->xStart += 0xc00;
            SpriteActor_SetSpritePositionXY(v0->cells, v0->xStart >> 8, sPokeballYPosTheirs[v0->position]);
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
