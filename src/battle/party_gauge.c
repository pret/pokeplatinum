#include "battle/party_gauge.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/palette.h"
#include "consts/sdat.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/battle_io.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "battle/graphic/pl_batt_obj/pl_batt_obj.naix"
#include "battle/ov16_0223DF00.h"

#include "assert.h"
#include "cell_actor.h"
#include "enums.h"
#include "heap.h"
#include "narc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"
#include "unk_0200C6E4.h"

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
static void ShowPokeballs(PartyGaugePokeballs *pokeballs, s8 *numBalls, enum PartyGaugeSide side, enum ShowPartyGaugeType type, enum PartyGaugePosition pos, int slot, int frame, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler);
static void HidePokeballs(PartyGaugePokeballs *pokeballs, int slot, enum HidePartyGaugeType type, s16 *arrowAlpha);
static void ShowArrowTask(SysTask *task, void *data);
static void HideArrowTask(SysTask *task, void *data);
static void ShowPokeballsStartOfBattleTask(SysTask *task, void *data);
static void ShowPokeballsMidBattleTask(SysTask *task, void *data);
static void HidePokeballsStartOfBattleTask(SysTask *task, void *data);
static void HidePokeballsMidBattleTask(SysTask *task, void *data);
static int PokeballsAnimationFrame(enum PartyGaugeBallStatus status, enum PartyGaugeSide side);
static int FlippedAnimationFrame(int frame);
static PartyGauge *NewPartyGauge(void);
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

#define ARROW_TASK_PRIORITY    500
#define POKEBALL_TASK_PRIORITY (ARROW_TASK_PRIORITY + 1)

#define SCREEN_EDGE_RIGHT 256
#define SCREEN_EDGE_LEFT  0

#define ARROW_X_START_OURS   (SCREEN_EDGE_RIGHT + 96) // 96 pixels off-screem
#define ARROW_X_START_THEIRS (SCREEN_EDGE_LEFT - 96) // 96 pixels off-screen
#define ARROW_X_END_OURS     (SCREEN_EDGE_RIGHT - 32)
#define ARROW_X_END_THEIRS   (SCREEN_EDGE_LEFT + 32)
#define ARROW_Y_POS_OURS     120
#define ARROW_Y_POS_THEIRS   56

#define POKEBALL_X_START_OURS   (SCREEN_EDGE_RIGHT + 20)
#define POKEBALL_X_START_THEIRS (SCREEN_EDGE_LEFT - 20)
#define POKEBALL_X_END_OURS     (SCREEN_EDGE_RIGHT - 128 + 34)
#define POKEBALL_X_END_THEIRS   (SCREEN_EDGE_LEFT + 128 - 34)
#define POKEBALL_Y_POS_OURS     (ARROW_Y_POS_OURS - 6)
#define POKEBALL_Y_POS_THEIRS   (ARROW_Y_POS_THEIRS - 6)

#define POKEBALL_SPACING          16
#define POKEBALL_OVERFLOW_SPACING 15
#define POKEBALL_OVERFLOW_LEN     6

#define ARROW_IN_SPEED   (18 << 8)
#define ARROW_OUT_SPEED  (4 << 8)
#define ARROW_FADE_SPEED (1 << 8)

#define POKEBALL_IN_SPEED      (18 << 8)
#define POKEBALL_IN_SPEED_SLOW (6 << 8)
#define POKEBALL_OUT_SPEED     (12 << 8)

#define POKEBALL_SLOT_SHOW_DELAY 3
#define POKEBALL_FLAT_SHOW_DELAY 5

#define HIGH_LOW_Y_POS_DIFF 36

__attribute__((aligned(4))) static const u16 sArrowYPosOurs[] = {
    [PARTY_GAUGE_POSITION_HIGH] = ARROW_Y_POS_OURS - HIGH_LOW_Y_POS_DIFF,
    [PARTY_GAUGE_POSITION_MIDDLE] = ARROW_Y_POS_OURS,
    [PARTY_GAUGE_POSITION_LOW] = ARROW_Y_POS_OURS
};

__attribute__((aligned(4))) static const u16 sArrowYPosTheirs[] = {
    [PARTY_GAUGE_POSITION_HIGH] = ARROW_Y_POS_THEIRS - HIGH_LOW_Y_POS_DIFF,
    [PARTY_GAUGE_POSITION_MIDDLE] = ARROW_Y_POS_THEIRS,
    [PARTY_GAUGE_POSITION_LOW] = ARROW_Y_POS_THEIRS
};

__attribute__((aligned(4))) static const u16 sPokeballYPosOurs[] = {
    [PARTY_GAUGE_POSITION_HIGH] = POKEBALL_Y_POS_OURS - HIGH_LOW_Y_POS_DIFF,
    [PARTY_GAUGE_POSITION_MIDDLE] = POKEBALL_Y_POS_OURS,
    [PARTY_GAUGE_POSITION_LOW] = POKEBALL_Y_POS_OURS
};

__attribute__((aligned(4))) static const u16 sPokeballYPosTheirs[] = {
    [PARTY_GAUGE_POSITION_HIGH] = POKEBALL_Y_POS_THEIRS - HIGH_LOW_Y_POS_DIFF,
    [PARTY_GAUGE_POSITION_MIDDLE] = POKEBALL_Y_POS_THEIRS,
    [PARTY_GAUGE_POSITION_LOW] = POKEBALL_Y_POS_THEIRS
};

void PartyGauge_LoadGraphics(SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler, PaletteData *palette)
{
    NARC *narc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);

    SpriteRenderer_LoadPalette(palette, PLTTBUF_MAIN_OBJ, renderer, gfxHandler, narc, party_gauge_nclr, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, PARTY_GAUGE_PLTT_RES_ID);
    SpriteRenderer_LoadCharResObjFromOpenNarc(renderer, gfxHandler, narc, party_gauge_ncgr, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, PARTY_GAUGE_CHAR_RES_ID);
    SpriteRenderer_LoadCellResObjFromOpenNarc(renderer, gfxHandler, narc, party_gauge_ncer, TRUE, PARTY_GAUGE_CELL_RES_ID);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(renderer, gfxHandler, narc, party_gauge_nanr, TRUE, PARTY_GAUGE_ANIM_RES_ID);

    NARC_dtor(narc);
}

void PartyGauge_FreeGraphics(SpriteGfxHandler *gfxHandler)
{
    SpriteGfxHandler_UnloadCharObjById(gfxHandler, PARTY_GAUGE_CHAR_RES_ID);
    SpriteGfxHandler_UnloadPlttObjById(gfxHandler, PARTY_GAUGE_PLTT_RES_ID);
    SpriteGfxHandler_UnloadCellObjById(gfxHandler, PARTY_GAUGE_CELL_RES_ID);
    SpriteGfxHandler_UnloadAnimObjById(gfxHandler, PARTY_GAUGE_ANIM_RES_ID);
}

static PartyGauge *NewPartyGauge()
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

PartyGauge *PartyGauge_Show(u8 ballStatus[], enum PartyGaugeSide side, enum ShowPartyGaugeType showType, enum PartyGaugePosition pos, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler)
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
        CellActor_SetAnim(arrow->cells->unk_00, PGANM_ARROW_OURS);
    } else {
        SpriteActor_SetSpritePositionXY(arrow->cells, ARROW_X_START_THEIRS, sArrowYPosTheirs[pos]);
        CellActor_SetAnim(arrow->cells->unk_00, PGANM_ARROW_THEIRS);
    }

    SpriteActor_UpdateObject(arrow->cells->unk_00);

    arrow->side = side;
    arrow->position = pos;
    arrow->state = SHOW_ARROW_INIT;
    arrow->task = SysTask_Start(ShowArrowTask, arrow, ARROW_TASK_PRIORITY);

    Sound_PlayEffect(SEQ_SE_PARTY_GAUGE_ARROW_IN);
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

        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, (arrow->alpha >> 8), 16 - (arrow->alpha >> 8));
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

enum {
    SHOW_POKEBALLS_INIT = 0,
    SHOW_POKEBALLS_DELAY,
    SHOW_POKEBALLS_DRAW,
    SHOW_POKEBALLS_INCREMENT,
    SHOW_POKEBALLS_SET_FRAME,
    SHOW_POKEBALLS_ANIMATE,
    SHOW_POKEBALLS_SCROLL,
    SHOW_POKEBALLS_DONE,
};

static void ShowPokeballs(PartyGaugePokeballs *pokeballs, s8 *numBalls, enum PartyGaugeSide side, enum ShowPartyGaugeType type, enum PartyGaugePosition pos, int slot, int frame, SpriteRenderer *renderer, SpriteGfxHandler *gfxHandler)
{
    GF_ASSERT(pokeballs->cells == NULL && pokeballs->task == NULL);

    MI_CpuClear8(pokeballs, sizeof(PartyGaugePokeballs));
    pokeballs->cells = SpriteActor_LoadResources(renderer, gfxHandler, &sPokeballTemplate);

    if (side == PARTY_GAUGE_OURS) {
        SpriteActor_SetSpritePositionXY(pokeballs->cells, POKEBALL_X_START_OURS, sPokeballYPosOurs[pos]);
    } else {
        SpriteActor_SetSpritePositionXY(pokeballs->cells, POKEBALL_X_START_THEIRS, sPokeballYPosTheirs[pos]);
    }

    CellActor_SetAnim(pokeballs->cells->unk_00, frame);
    SpriteActor_UpdateObject(pokeballs->cells->unk_00);

    pokeballs->side = side;
    pokeballs->ballSlot = slot;
    pokeballs->position = pos;
    pokeballs->flipAnimation = FlippedAnimationFrame(frame);
    pokeballs->pokeballCount = numBalls;
    pokeballs->sdatID = frame == PGANM_POKEBALL_EMPTY_SLOT ? SEQ_SE_PARTY_GAUGE_BALL_EMPTY : SEQ_SE_PARTY_GAUGE_BALL_IN;

    if (side == PARTY_GAUGE_OURS) {
        pokeballs->xEnd = POKEBALL_X_END_OURS + slot * POKEBALL_SPACING;
        pokeballs->xOverflow = POKEBALL_X_END_OURS + slot * POKEBALL_OVERFLOW_SPACING - POKEBALL_OVERFLOW_LEN;
    } else {
        pokeballs->xEnd = POKEBALL_X_END_THEIRS - slot * POKEBALL_SPACING;
        pokeballs->xOverflow = POKEBALL_X_END_THEIRS - slot * POKEBALL_OVERFLOW_SPACING + POKEBALL_OVERFLOW_LEN;
    }

    pokeballs->state = SHOW_POKEBALLS_INIT;

    if (type == SHOW_PARTY_GAUGE_BATTLE_START) {
        // At the start of the battle, Poke Balls scroll behind the arrow and roll across the screen
        pokeballs->delay = POKEBALL_SLOT_SHOW_DELAY * slot + POKEBALL_FLAT_SHOW_DELAY;
        pokeballs->task = SysTask_Start(ShowPokeballsStartOfBattleTask, pokeballs, POKEBALL_TASK_PRIORITY);
    } else {
        // Mid-battle, the Poke Balls scroll in alongside the arrow, and they do not roll across the screen
        pokeballs->delay = 0;
        pokeballs->task = SysTask_Start(ShowPokeballsMidBattleTask, pokeballs, POKEBALL_TASK_PRIORITY);
    }
}

static void ShowPokeballsStartOfBattleTask(SysTask *task, void *data)
{
    PartyGaugePokeballs *pokeballs = data;

    switch (pokeballs->state) {
    case SHOW_POKEBALLS_INIT:
        s16 x, y;
        SpriteActor_GetSpritePositionXY(pokeballs->cells, &x, &y);
        pokeballs->xStart = x << 8;

        pokeballs->state++;
        // fall-through
    case SHOW_POKEBALLS_DELAY:
        if (pokeballs->delay > 0) {
            pokeballs->delay--;
            break;
        }
        // fall-through
    case SHOW_POKEBALLS_DRAW:
        if (pokeballs->side == PARTY_GAUGE_OURS) {
            pokeballs->xStart -= POKEBALL_IN_SPEED;

            if (pokeballs->xStart <= pokeballs->xOverflow << 8) {
                pokeballs->xStart = pokeballs->xOverflow << 8;
                Sound_PlayEffect(pokeballs->sdatID);
                pokeballs->state++;
            }

            SpriteActor_SetSpritePositionXY(pokeballs->cells, pokeballs->xStart >> 8, sPokeballYPosOurs[pokeballs->position]);
        } else {
            pokeballs->xStart += POKEBALL_IN_SPEED;

            if (pokeballs->xStart >= pokeballs->xOverflow << 8) {
                pokeballs->xStart = pokeballs->xOverflow << 8;
                pokeballs->state++;
            }

            SpriteActor_SetSpritePositionXY(pokeballs->cells, pokeballs->xStart >> 8, sPokeballYPosTheirs[pokeballs->position]);
        }

        SpriteActor_UpdateObject(pokeballs->cells->unk_00);
        break;

    case SHOW_POKEBALLS_INCREMENT:
        (*(pokeballs->pokeballCount))++;
        pokeballs->state++;
        // fall-through
    case SHOW_POKEBALLS_SET_FRAME:
        if (*(pokeballs->pokeballCount) != 6) {
            SpriteActor_UpdateObject(pokeballs->cells->unk_00);
            break;
        }

        if (pokeballs->side == PARTY_GAUGE_OURS) {
            SpriteActor_SetAnimFrame(pokeballs->cells->unk_00, 1);
        } else {
            SpriteActor_SetAnimFrame(pokeballs->cells->unk_00, 1);
        }

        pokeballs->delay = 0;
        pokeballs->state++;
        // fall-through
    case SHOW_POKEBALLS_ANIMATE:
        pokeballs->delay++;

        if (pokeballs->delay < 0) {
            break;
        }

        CellActor_SetAnim(pokeballs->cells->unk_00, pokeballs->flipAnimation);
        pokeballs->delay = 0;
        pokeballs->state++;
        // fall-through
    case SHOW_POKEBALLS_SCROLL:
        if (pokeballs->side == PARTY_GAUGE_OURS) {
            pokeballs->xStart += POKEBALL_IN_SPEED_SLOW; // need more dissection on what exactly this is for

            if (pokeballs->xStart >= pokeballs->xEnd << 8) {
                pokeballs->xStart = pokeballs->xEnd << 8;
                pokeballs->state++;
            }

            SpriteActor_SetSpritePositionXY(pokeballs->cells, pokeballs->xStart >> 8, sPokeballYPosOurs[pokeballs->position]);
        } else {
            pokeballs->xStart -= POKEBALL_IN_SPEED_SLOW;

            if (pokeballs->xStart <= pokeballs->xEnd << 8) {
                pokeballs->xStart = pokeballs->xEnd << 8;
                pokeballs->state++;
            }

            SpriteActor_SetSpritePositionXY(pokeballs->cells, pokeballs->xStart >> 8, sPokeballYPosTheirs[pokeballs->position]);
        }

        SpriteActor_UpdateObject(pokeballs->cells->unk_00);
        break;

    default:
        SpriteActor_SetAnimFrame(pokeballs->cells->unk_00, 0);
        SysTask_Done(task);
        pokeballs->task = NULL;
    }
}

static void ShowPokeballsMidBattleTask(SysTask *task, void *data)
{
    PartyGaugePokeballs *pokeballs = data;

    switch (pokeballs->state) {
    case SHOW_POKEBALLS_INIT:
        s16 x, y;
        SpriteActor_GetSpritePositionXY(pokeballs->cells, &x, &y);
        pokeballs->xStart = x << 8;

        SpriteActor_SetAnimFrame(pokeballs->cells->unk_00, 0);
        pokeballs->state++;
        // fall-through
    case SHOW_POKEBALLS_DELAY:
        if (pokeballs->delay > 0) {
            pokeballs->delay--;
            break;
        }
        // fall-through
    case SHOW_POKEBALLS_DRAW:
        if (pokeballs->side == PARTY_GAUGE_OURS) {
            pokeballs->xStart -= POKEBALL_IN_SPEED;

            if (pokeballs->xStart <= pokeballs->xEnd << 8) {
                pokeballs->xStart = pokeballs->xEnd << 8;
                pokeballs->state++;
            }

            SpriteActor_SetSpritePositionXY(pokeballs->cells, pokeballs->xStart >> 8, sPokeballYPosOurs[pokeballs->position]);
        } else {
            pokeballs->xStart += POKEBALL_IN_SPEED;

            if (pokeballs->xStart >= pokeballs->xEnd << 8) {
                pokeballs->xStart = pokeballs->xEnd << 8;
                pokeballs->state++;
            }

            SpriteActor_SetSpritePositionXY(pokeballs->cells, pokeballs->xStart >> 8, sPokeballYPosTheirs[pokeballs->position]);
        }
        break;

    default:
        SysTask_Done(task);
        pokeballs->task = NULL;
    }
}

static void HidePokeballs(PartyGaugePokeballs *pokeballs, int slot, enum HidePartyGaugeType type, s16 *arrowAlpha)
{
    GF_ASSERT(pokeballs->cells != NULL && pokeballs->task == NULL);

    pokeballs->state = 0;

    if (type == HIDE_PARTY_GAUGE_BATTLE_START) {
        pokeballs->arrowAlpha = arrowAlpha;
        pokeballs->delay = 3 * slot;
        pokeballs->startDelay = 4;
        pokeballs->task = SysTask_Start(HidePokeballsStartOfBattleTask, pokeballs, POKEBALL_TASK_PRIORITY);
    } else {
        pokeballs->arrowAlpha = arrowAlpha;
        pokeballs->delay = 0;
        pokeballs->startDelay = 0;
        pokeballs->task = SysTask_Start(HidePokeballsMidBattleTask, pokeballs, POKEBALL_TASK_PRIORITY);
    }
}

enum {
    HIDE_POKEBALLS_INIT = 0,
    HIDE_POKEBALLS_DELAY,
    HIDE_POKEBALLS_FADE,
    HIDE_POKEBALLS_DONE,

    HIDE_POKEBALLS_BREAK = 100,
};

static void HidePokeballsStartOfBattleTask(SysTask *task, void *data)
{
    PartyGaugePokeballs *pokeballs = data;

    if (*(pokeballs->arrowAlpha) == 0) {
        pokeballs->state = HIDE_POKEBALLS_BREAK;
    }

    switch (pokeballs->state) {
    case HIDE_POKEBALLS_INIT:
        s16 x, y;

        SpriteActor_GetSpritePositionXY(pokeballs->cells, &x, &y);
        pokeballs->xStart = x << 8;

        SpriteActor_SetOAMMode(pokeballs->cells, GX_OAM_MODE_XLU);
        pokeballs->state++;
        // fall-through
    case HIDE_POKEBALLS_DELAY:
        if (pokeballs->startDelay > 0) {
            pokeballs->startDelay--;
            break;
        }

        if (pokeballs->delay > 0) {
            pokeballs->delay--;
            break;
        }
        // fall-through
    case HIDE_POKEBALLS_FADE:
        if (pokeballs->side == PARTY_GAUGE_OURS) {
            pokeballs->xStart -= POKEBALL_OUT_SPEED;
            SpriteActor_SetSpritePositionXY(pokeballs->cells, pokeballs->xStart >> 8, sPokeballYPosOurs[pokeballs->position]);
        } else {
            pokeballs->xStart += POKEBALL_OUT_SPEED;
            SpriteActor_SetSpritePositionXY(pokeballs->cells, pokeballs->xStart >> 8, sPokeballYPosTheirs[pokeballs->position]);
        }

        // Need some more documentation on this one
        if (pokeballs->xStart < -16 * 0x100 || pokeballs->xStart > ((256 + 16) << 8)) {
            pokeballs->state++;
        }

        SpriteActor_UpdateObject(pokeballs->cells->unk_00);
        break;

    case HIDE_POKEBALLS_BREAK:
    default:
        SpriteActor_DrawSprite(pokeballs->cells->unk_00, 0);
        SysTask_Done(task);
        pokeballs->task = NULL;
    }
}

static void HidePokeballsMidBattleTask(SysTask *task, void *data)
{
    PartyGaugePokeballs *pokeballs = data;

    if (*(pokeballs->arrowAlpha) == 0) {
        pokeballs->state = HIDE_POKEBALLS_BREAK;
    }

    switch (pokeballs->state) {
    case HIDE_POKEBALLS_INIT:
        SpriteActor_SetOAMMode(pokeballs->cells, GX_OAM_MODE_XLU);
        pokeballs->state++;
        // fall-through
    case HIDE_POKEBALLS_DELAY:
        // let the pokeballs fade out alongside the arrow
        break;

    case HIDE_POKEBALLS_BREAK:
    default:
        SpriteActor_DrawSprite(pokeballs->cells->unk_00, 0);
        SysTask_Done(task);
        pokeballs->task = NULL;
    }
}

static int PokeballsAnimationFrame(enum PartyGaugeBallStatus status, enum PartyGaugeSide side)
{
    switch (status) {
    case BALL_STATUS_NO_MON:
    default:
        return PGANM_POKEBALL_EMPTY_SLOT;

    case BALL_STATUS_MON_ALIVE:
        return (side == PARTY_GAUGE_OURS) ? PGANM_POKEBALL_HEALTHY_OURS : PGANM_POKEBALL_HEALTHY_THEIRS;

    case BALL_STATUS_MON_FAINTED:
        return (side == PARTY_GAUGE_OURS) ? PGANM_POKEBALL_FAINTED_OURS : PGANM_POKEBALL_FAINTED_THEIRS;

    case BALL_STATUS_HAS_STATUS_CONDITION:
        return (side == PARTY_GAUGE_OURS) ? PGANM_POKEBALL_STATUSED_OURS : PGANM_POKEBALL_STATUSED_THEIRS;
    }
}

static int FlippedAnimationFrame(int frame)
{
    switch (frame) {
    case PGANM_POKEBALL_EMPTY_SLOT:
    default:
        return frame;

    case PGANM_POKEBALL_HEALTHY_OURS:
        return PGANM_POKEBALL_HEALTHY_THEIRS;
    case PGANM_POKEBALL_HEALTHY_THEIRS:
        return PGANM_POKEBALL_HEALTHY_OURS;

    case PGANM_POKEBALL_FAINTED_OURS:
        return PGANM_POKEBALL_FAINTED_THEIRS;
    case PGANM_POKEBALL_FAINTED_THEIRS:
        return PGANM_POKEBALL_FAINTED_OURS;

    case PGANM_POKEBALL_STATUSED_OURS:
        return PGANM_POKEBALL_STATUSED_THEIRS;
    case PGANM_POKEBALL_STATUSED_THEIRS:
        return PGANM_POKEBALL_STATUSED_OURS;
    }
}
