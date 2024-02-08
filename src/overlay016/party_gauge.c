#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "assert.h"

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

static void ov16_0226D2A0(PartyGaugeArrow * param0, enum PartyGaugeSide param1, enum PartyGaugePosition param2, SpriteRenderer * param3, SpriteGfxHandler * param4);
static void ov16_0226D3F8(PartyGaugeArrow * param0, enum HideArrowType param1);
static void ov16_0226D540(PartyGaugePokeballs * param0, s8 * param1, enum PartyGaugeSide param2, enum ShowPartyGaugeType param3, enum PartyGaugePosition param4, int param5, int param6, SpriteRenderer * param7, SpriteGfxHandler * param8);
static void ov16_0226D938(PartyGaugePokeballs * param0, int param1, enum HidePartyGaugeType param2, s16 * param3);
static void ov16_0226D34C(SysTask * param0, void * param1);
static void ov16_0226D434(SysTask * param0, void * param1);
static void ov16_0226D654(SysTask * param0, void * param1);
static void ov16_0226D854(SysTask * param0, void * param1);
static void ov16_0226D99C(SysTask * param0, void * param1);
static void ov16_0226DAAC(SysTask * param0, void * param1);
static int ov16_0226DB04(int param0, enum PartyGaugeSide param1);
static int ov16_0226DB44(int param0);
static PartyGauge * ov16_0226D160(void);
static void ov16_0226D17C(PartyGauge * param0);

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

void PartyGauge_LoadGraphics (SpriteRenderer * param0, SpriteGfxHandler * param1, PaletteData * param2)
{
    NARC * v0;

    v0 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);

    sub_0200CDC4(param2, 2, param0, param1, v0, 110, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20037);
    sub_0200CC3C(param0, param1, v0, 340, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20413);
    sub_0200CE24(param0, param1, v0, 341, 1, 20407);
    sub_0200CE54(param0, param1, v0, 342, 1, 20396);
    NARC_dtor(v0);
}

void PartyGauge_FreeGraphics (SpriteGfxHandler * param0)
{
    sub_0200D070(param0, 20413);
    sub_0200D080(param0, 20037);
    sub_0200D090(param0, 20407);
    sub_0200D0A0(param0, 20396);
}

static PartyGauge * ov16_0226D160 (void)
{
    PartyGauge * v0;

    v0 = Heap_AllocFromHeap(5, sizeof(PartyGauge));
    MI_CpuClear8(v0, sizeof(PartyGauge));
    return v0;
}

static void ov16_0226D17C (PartyGauge * param0)
{
    GF_ASSERT(param0->arrow.task == NULL);
    Heap_FreeToHeap(param0);
}

PartyGauge * PartyGauge_Show (u8 param0[], enum PartyGaugeSide param1, enum ShowPartyGaugeType param2, enum PartyGaugePosition param3, SpriteRenderer * param4, SpriteGfxHandler * param5)
{
    PartyGauge * v0;
    int v1, v2;

    v0 = ov16_0226D160();
    ov16_0226D2A0(&v0->arrow, param1, param3, param4, param5);

    for (v1 = 0; v1 < 6; v1++) {
        v2 = ov16_0226DB04(param0[v1], param1);
        ov16_0226D540(&v0->pokeballs[v1], &v0->pokeballCount, param1, param2, param3, v1, v2, param4, param5);
    }

    return v0;
}

BOOL PartyGauge_ShowIsDone (PartyGauge * param0)
{
    int v0;

    if (param0->arrow.task == NULL) {
        for (v0 = 0; v0 < 6; v0++) {
            if (param0->pokeballs[v0].task != NULL) {
                break;
            }
        }

        if (v0 == 6) {
            return 1;
        }
    }

    return 0;
}

void PartyGauge_Hide (PartyGauge * param0, enum HideArrowType param1, enum HidePartyGaugeType param2)
{
    int v0;

    GF_ASSERT(param0 != NULL);

    ov16_0226D3F8(&param0->arrow, param1);

    for (v0 = 0; v0 < 6; v0++) {
        ov16_0226D938(&param0->pokeballs[v0], v0, param2, &param0->arrow.alpha);
    }
}

BOOL PartyGauge_HideIsDone (PartyGauge * param0)
{
    int v0;

    if (param0->arrow.task == NULL) {
        for (v0 = 0; v0 < 6; v0++) {
            if (param0->pokeballs[v0].task != NULL) {
                break;
            }
        }

        if (v0 == 6) {
            return 1;
        }
    }

    return 0;
}

void PartyGauge_Free (PartyGauge * param0)
{
    int v0;

    sub_0200D0F4(param0->arrow.cells);

    for (v0 = 0; v0 < 6; v0++) {
        sub_0200D0F4(param0->pokeballs[v0].cells);
    }

    ov16_0226D17C(param0);
}

static void ov16_0226D2A0 (PartyGaugeArrow * param0, enum PartyGaugeSide param1, enum PartyGaugePosition param2, SpriteRenderer * param3, SpriteGfxHandler * param4)
{
    GF_ASSERT(param0->cells == NULL && param0->task == NULL);

    MI_CpuClear8(param0, sizeof(PartyGaugeArrow));

    param0->cells = sub_0200CE6C(param3, param4, &Unk_ov16_02270A3C);

    if (param1 == PARTY_GAUGE_OURS) {
        sub_0200D4C4(param0->cells, (256 + 96), Unk_ov16_02270A2C[param2]);
        sub_02021D6C(param0->cells->unk_00, 8);
    } else {
        sub_0200D4C4(param0->cells, -96, Unk_ov16_02270A24[param2]);
        sub_02021D6C(param0->cells->unk_00, 7);
    }

    sub_0200D324(param0->cells->unk_00);

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

        sub_0200D550(v0->cells, &v1, &v2);
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

            sub_0200D4C4(v0->cells, v0->x >> 8, Unk_ov16_02270A2C[v0->position]);
        } else {
            v0->x += 0x1200;

            if (v0->x >= 32 << 8) {
                v0->x = 32 << 8;
                v0->state++;
            }

            sub_0200D4C4(v0->cells, v0->x >> 8, Unk_ov16_02270A24[v0->position]);
        }
        break;
    default:
        SysTask_Done(param0);
        v0->task = NULL;
        return;
    }
}

static void ov16_0226D3F8 (PartyGaugeArrow * param0, enum HideArrowType param1)
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

        sub_0200D550(v0->cells, &v1, &v2);
        v0->x = v1 << 8;
    }

        sub_0200D810(v0->cells, GX_OAM_MODE_XLU);

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
                sub_0200D4C4(v0->cells, v0->x >> 8, Unk_ov16_02270A2C[v0->position]);
            } else {
                v0->x += 0x400;
                sub_0200D4C4(v0->cells, v0->x >> 8, Unk_ov16_02270A24[v0->position]);
            }
        }

        v0->alpha -= 0x100;

        if (v0->alpha <= 0) {
            v0->alpha = 0;
            sub_0200D3EC(v0->cells->unk_00, 0);
            v0->state++;
        }

        G2_ChangeBlendAlpha(v0->alpha >> 8, 16 - (v0->alpha >> 8));
        break;
    default:
        ov16_0223F9F0();
        SysTask_Done(param0);
        v0->task = NULL;
        return;
    }
}

static void ov16_0226D540 (PartyGaugePokeballs * param0, s8 * param1, enum PartyGaugeSide param2, enum ShowPartyGaugeType param3, enum PartyGaugePosition param4, int param5, int param6, SpriteRenderer * param7, SpriteGfxHandler * param8)
{
    GF_ASSERT(param0->cells == NULL && param0->task == NULL);

    MI_CpuClear8(param0, sizeof(PartyGaugePokeballs));
    param0->cells = sub_0200CE6C(param7, param8, &Unk_ov16_02270A70);

    if (param2 == PARTY_GAUGE_OURS) {
        sub_0200D4C4(param0->cells, (256 + 20), Unk_ov16_02270A34[param4]);
    } else {
        sub_0200D4C4(param0->cells, -20, Unk_ov16_02270A1C[param4]);
    }

    sub_02021D6C(param0->cells->unk_00, param6);
    sub_0200D324(param0->cells->unk_00);

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

        sub_0200D550(v0->cells, &v1, &v2);
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

            sub_0200D4C4(v0->cells, v0->xStart >> 8, Unk_ov16_02270A34[v0->position]);
        } else {
            v0->xStart += 0x1200;

            if (v0->xStart >= v0->xOverflow << 8) {
                v0->xStart = v0->xOverflow << 8;
                v0->state++;
            }

            sub_0200D4C4(v0->cells, v0->xStart >> 8, Unk_ov16_02270A1C[v0->position]);
        }

        sub_0200D324(v0->cells->unk_00);
        break;
    case 3:

        (*(v0->pokeballCount))++;
        v0->state++;

    case 4:
        if (*(v0->pokeballCount) != 6) {
            sub_0200D324(v0->cells->unk_00);
            break;
        }

        if (v0->side == PARTY_GAUGE_OURS) {
            sub_02021E50(v0->cells->unk_00, 1);
        } else {
            sub_02021E50(v0->cells->unk_00, 1);
        }

        v0->delay = 0;
        v0->state++;
    case 5:
        v0->delay++;

        if (v0->delay < 0) {
            break;
        }

        sub_02021D6C(v0->cells->unk_00, v0->flipAnimation);
        v0->delay = 0;
        v0->state++;
    case 6:
        if (v0->side == PARTY_GAUGE_OURS) {
            v0->xStart += 0x600;

            if (v0->xStart >= v0->xEnd << 8) {
                v0->xStart = v0->xEnd << 8;
                v0->state++;
            }

            sub_0200D4C4(v0->cells, v0->xStart >> 8, Unk_ov16_02270A34[v0->position]);
        } else {
            v0->xStart -= 0x600;

            if (v0->xStart <= v0->xEnd << 8) {
                v0->xStart = v0->xEnd << 8;
                v0->state++;
            }

            sub_0200D4C4(v0->cells, v0->xStart >> 8, Unk_ov16_02270A1C[v0->position]);
        }

        sub_0200D324(v0->cells->unk_00);
        break;
    default:
        sub_02021E50(v0->cells->unk_00, 0);
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

        sub_0200D550(v0->cells, &v1, &v2);
        v0->xStart = v1 << 8;
    }
        sub_02021E50(v0->cells->unk_00, 0);
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

            sub_0200D4C4(v0->cells, v0->xStart >> 8, Unk_ov16_02270A34[v0->position]);
        } else {
            v0->xStart += 0x1200;

            if (v0->xStart >= v0->xEnd << 8) {
                v0->xStart = v0->xEnd << 8;
                v0->state++;
            }

            sub_0200D4C4(v0->cells, v0->xStart >> 8, Unk_ov16_02270A1C[v0->position]);
        }
        break;
    default:
        SysTask_Done(param0);
        v0->task = NULL;
        return;
    }
}

static void ov16_0226D938 (PartyGaugePokeballs * param0, int param1, enum HidePartyGaugeType param2, s16 * param3)
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

        sub_0200D550(v0->cells, &v1, &v2);
        v0->xStart = v1 << 8;
    }
        sub_0200D810(v0->cells, GX_OAM_MODE_XLU);
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
            sub_0200D4C4(v0->cells, v0->xStart >> 8, Unk_ov16_02270A34[v0->position]);
        } else {
            v0->xStart += 0xc00;
            sub_0200D4C4(v0->cells, v0->xStart >> 8, Unk_ov16_02270A1C[v0->position]);
        }

        if ((v0->xStart < -16 * 0x100) || (v0->xStart > ((256 + 16) << 8))) {
            v0->state++;
        }

        sub_0200D324(v0->cells->unk_00);
        break;
    case 100:
    default:
        sub_0200D3EC(v0->cells->unk_00, 0);
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
        sub_0200D810(v0->cells, GX_OAM_MODE_XLU);
        v0->state++;
    case 1:
        break;
    case 100:
    default:
        sub_0200D3EC(v0->cells->unk_00, 0);
        SysTask_Done(param0);
        v0->task = NULL;
        return;
    }
}

static int ov16_0226DB04 (int param0, enum PartyGaugeSide param1)
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
