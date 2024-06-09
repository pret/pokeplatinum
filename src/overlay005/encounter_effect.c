#include <nitro.h>
#include <string.h>

#include "constants/battle.h"

#include "constants/heap.h"
#include "inlines.h"

#include "nitro/fx/fx.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02014014_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "pokemon.h"

#include "functypes/sys_task_func.h"
#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay005/encounter_effect.h"
#include "overlay005/struct_ov5_021DDD80.h"
#include "overlay005/struct_ov5_021DDDBC.h"
#include "overlay005/struct_ov5_021DDE14.h"
#include "overlay005/struct_ov5_021DDF24.h"
#include "overlay005/struct_ov5_021DE47C.h"
#include "overlay005/struct_ov5_021DE5A4.h"
#include "overlay005/struct_ov5_021DE5D0.h"
#include "overlay006/battle_params.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02002F38.h"
#include "unk_0200679C.h"
#include "narc.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200D9E8.h"
#include "unk_02014000.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "gx_layers.h"
#include "unk_02020020.h"
#include "unk_020218BC.h"
#include "unk_02054884.h"
#include "pokemon.h"
#include "overlay005/ov5_021D0D80.h"
#include "overlay005/encounter_effect.h"
#include "overlay005/ov5_021E2338.h"
#include "overlay005/hblank_system.h"
#include "enc_effects.h"

enum ScreenFlashState {
    SCREENFLASH_STATE_INIT_OTHER_SCREEN_FADE = 0,
    SCREENFLASH_STATE_TARGET_INIT_SCREEN_FADE,
    SCREENFLASH_STATE_WAIT_FOR_TARGET_SCREEN_FADE,
    SCREENFLASH_STATE_RESET_TARGET_SCREEN_FADE,
    SCREENFLASH_STATE_WAIT_FOR_TARGET_SCREEN_FADE_RESET,
    SCREENFLASH_STATE_FINISH,
};

typedef struct ScreenFlash {
    enum ScreenFlashState state;
    u32 numFlashes;
    int flashCounter;
    enum Screen screen;
    u32 screenFlashColor;
    u32 otherScreenFlashColor;
    BrightnessFadeTask screenFadeTask;
    BrightnessFadeTask otherScreenFadeTask;
    BOOL *done;
} ScreenFlash;

typedef struct UnkStruct_ov5_02202120 {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    FieldSystem *fieldSystem;
    UnkStruct_02014014 *unk_08;
    void *unk_0C;
    u32 unk_10;
    u32 unk_14;
} UnkStruct_ov5_02202120;


static void ov5_021DE89C(Window *param0, s32 param1, s32 param2, s32 param3, s32 param4, u8 param5);
static void ov5_021DEB04(Window *param0, u16 param1, u16 param2, u8 param3);
static void BrightnessFadeTask_SetBrightness(SysTask *task, void *param);
static void EncounterEffect_ExecuteFlash(SysTask *task, void *param);
static void ov5_021DE028(SysTask *param0, void *param1);
static void ov5_021DE088(SysTask *param0, void *param1);
static void ov5_021DE14C(HBlankTask *param0, void *param1);
static void ov5_021DE0F0(ScreenSliceEffect *param0);
static void ov5_021DE2AC(SysTask *param0, void *param1);
static void ov5_021DE2DC(SysTask *param0, void *param1);
static void ov5_021DE344(HBlankTask *param0, void *param1);
static void ov5_021DE374(UnkStruct_ov5_021DE374 *param0);
static void ov5_021DEDE8(SysTask *param0, void *param1);
static void ov5_021DEE24(SysTask *param0, void *param1);
static void ov5_021DEE50(HBlankTask *param0, void *param1);
static void ov5_021DEE84(UnkStruct_ov5_021DED04 *param0);
static void ov5_021DE67C(GraphicElementData *param0, void *param1, u32 param2);
static void ov5_021DF258(SysTask *param0, void *param1);
static void ov5_021DF28C(SysTask *param0, void *param1);
static void ov5_021DF30C(FieldSystem *fieldSystem);
static void ov5_021DF3D4(FieldSystem *fieldSystem);
static u32 ov5_021DF3E8(u32 param0, BOOL param1);
static u32 ov5_021DF414(u32 param0, BOOL param1);
static void include_ov5_021DDBE8_rodata(SysTask *dummy1, void *dummy2);
void include_ov5_021DDBE8_rodata_funcptr(void);

static const SysTaskFunc sEncounterEffectTaskFuncs[] = {
    ov5_021E24A8,
    ov5_021E2338,
    ov5_021E261C,
    ov5_021E2748,
    ov5_021E2944,
    ov5_021E2A4C,
    ov5_021E2B54,
    ov5_021E2EB0,
    ov5_021E31A4,
    ov5_021E3560,
    ov5_021E3AD0,
    ov5_021E3D8C,
    ov5_021E5760,
    ov5_021E5784,
    ov5_021E57A8,
    ov5_021E57CC,
    ov5_021E57F0,
    ov5_021E5814,
    ov5_021E5838,
    ov5_021E585C,
    ov5_021E6178,
    ov5_021E619C,
    ov5_021E61C0,
    ov5_021E61E4,
    ov5_021E6208,
    ov5_021E4E14,
    ov5_021E4F7C,
    ov5_021E4738,
    ov5_021E4B3C,
    ov5_021E4260,
    ov5_021E44C0
};

static const u8 Unk_ov5_021F9988[8] = {
    0x0,
    0x2,
    0x5,
    0x7,
    0x1,
    0x6,
    0x3,
    0x4
};

static const u16 Unk_ov5_021F9A2C[8][2] = {
    {0x0, 0x17},
    {0x2D, 0x16},
    {0x2D, 0x44},
    {0x5A, 0x43},
    {0x5B, 0x71},
    {0x87, 0x70},
    {0x87, 0x9E},
    {0xB4, 0x9D}
};

static UnkStruct_ov5_02202120 *Unk_ov5_02202120 = NULL;

void EncounterEffect_Start(enum EncEffectCutIn effect, FieldSystem *fieldSystem, BOOL *done)
{
    SysTask *effectTask;
    EncounterEffect *encEffect;

    effectTask = SysTask_StartAndAllocateParam(sEncounterEffectTaskFuncs[effect], sizeof(EncounterEffect), 5, HEAP_ID_FIELD);
    encEffect = SysTask_GetParam(effectTask);
    encEffect->fieldSystem = fieldSystem;
    encEffect->done = done;
    encEffect->narc = NARC_ctor(NARC_INDEX_GRAPHIC__FIELD_ENCOUNTEFFECT, 4);

    if (encEffect->done != NULL) {
        *(encEffect->done) = FALSE;
    }

    encEffect->unk_18 = 0;
}

void EncounterEffect_Finish(EncounterEffect *encEffect, SysTask *effectTask)
{
    NARC_dtor(encEffect->narc);
    Heap_FreeToHeapExplicit(4, encEffect->unk_0C);
    SysTask_FinishAndFreeParam(effectTask);
}

void EncounterEffect_Flash(enum Screen screen, u32 screenFlashColor, u32 otherScreenFlashColor, BOOL *done, u32 numFlashes)
{
    SysTask *v0;
    ScreenFlash *screenFlash = Heap_AllocFromHeap(4, sizeof(ScreenFlash));
    memset(screenFlash, 0, sizeof(ScreenFlash));
    SysTask_Start(EncounterEffect_ExecuteFlash, screenFlash, 5);

    screenFlash->done = done;

    if (screenFlash->done != NULL) {
        *(screenFlash->done) = FALSE;
    }

    screenFlash->screen = screen;
    screenFlash->screenFlashColor = screenFlashColor;
    screenFlash->otherScreenFlashColor = otherScreenFlashColor;
    screenFlash->numFlashes = numFlashes;
}

static void EncounterEffect_ExecuteFlash(SysTask *task, void *param)
{
    ScreenFlash *screenFlash = param;

    switch (screenFlash->state) {
    case SCREENFLASH_STATE_INIT_OTHER_SCREEN_FADE:
        if (screenFlash->screen == SCREEN_TOP) {
            BrightnessFadeTask_Init(&screenFlash->otherScreenFadeTask, 0, screenFlash->otherScreenFlashColor, 2, 8);
        } else {
            if (screenFlash->screen == SCREEN_BOTTOM) {
                BrightnessFadeTask_Init(&screenFlash->otherScreenFadeTask, 0, screenFlash->otherScreenFlashColor, 1, 8);
            }
        }

        screenFlash->state++;
        break;
    case SCREENFLASH_STATE_TARGET_INIT_SCREEN_FADE:
        BrightnessFadeTask_Init(&screenFlash->screenFadeTask, 0, screenFlash->screenFlashColor, screenFlash->screen, 3);
        screenFlash->state++;
        break;
    case SCREENFLASH_STATE_WAIT_FOR_TARGET_SCREEN_FADE:
        if (BrightnessFadeTask_Update(&screenFlash->screenFadeTask)) {
            screenFlash->state++;
        }
        break;
    case SCREENFLASH_STATE_RESET_TARGET_SCREEN_FADE:
        BrightnessFadeTask_Init(&screenFlash->screenFadeTask, screenFlash->screenFlashColor, 0, screenFlash->screen, 3);
        screenFlash->state++;
        break;
    case SCREENFLASH_STATE_WAIT_FOR_TARGET_SCREEN_FADE_RESET:
        if (BrightnessFadeTask_Update(&screenFlash->screenFadeTask)) {
            screenFlash->flashCounter++;

            if (screenFlash->flashCounter == screenFlash->numFlashes) {
                screenFlash->state = SCREENFLASH_STATE_FINISH;
            } else {
                screenFlash->state = SCREENFLASH_STATE_TARGET_INIT_SCREEN_FADE;
            }
        }
        break;
    case SCREENFLASH_STATE_FINISH:
        screenFlash->state = SCREENFLASH_STATE_INIT_OTHER_SCREEN_FADE;
        screenFlash->flashCounter = 0;

        if (screenFlash->done != NULL) {
            *(screenFlash->done) = TRUE;
        }

        SysTask_Done(task);
        Heap_FreeToHeap(screenFlash);

        return;
    }

    BrightnessFadeTask_Update(&screenFlash->otherScreenFadeTask);
}

BOOL ov5_021DDD7C(EncounterEffect *param0)
{
    return param0->unk_18;
}

void LinearInterpolationTaskS32_Init(LinearInterpolationTaskS32 *task, int start, int end, int numSteps)
{
    task->currentValue = start;
    task->startValue = start;
    task->delta = end - start;
    task->numSteps = numSteps;
    task->currentStep = 0;
}

BOOL LinearInterpolationTaskS32_Update(LinearInterpolationTaskS32 *task)
{
    int interpolated = task->delta *task->currentStep;
    interpolated = interpolated / task->numSteps;

    task->currentValue = interpolated + task->startValue;

    if (task->currentStep + 1 <= task->numSteps) {
        task->currentStep++;
        return FALSE;
    }

    task->currentStep = task->numSteps;
    return TRUE;
}

void LinearInterpolationTaskFX32_Init(LinearInterpolationTaskFX32 *task, fx32 startValue, fx32 endValue, int numSteps)
{
    task->currentValue = startValue;
    task->startValue = startValue;
    task->delta = endValue - startValue;
    task->numSteps = numSteps;
    task->currentStep = 0;
}

BOOL LinearInterpolationTaskFX32_Update(LinearInterpolationTaskFX32 *task)
{
    fx32 interpolated = FX_Mul(task->delta, task->currentStep << FX32_SHIFT);
    interpolated = FX_Div(interpolated, task->numSteps << FX32_SHIFT);

    task->currentValue = interpolated + task->startValue;

    if (task->currentStep + 1 <= task->numSteps) {
        task->currentStep++;
        return FALSE;
    }

    task->currentStep = task->numSteps;
    return TRUE;
}

void QuadraticInterpolationTaskFX32_Init(QuadraticInterpolationTaskFX32 *task, fx32 startValue, fx32 endValue, fx32 initialRate, int numSteps)
{
    fx32 distance = endValue - startValue;
    fx32 tSquared = (numSteps * numSteps) << FX32_SHIFT;
    fx32 v0t = FX_Mul(initialRate, numSteps * FX32_ONE);
    v0t = distance - v0t;
    v0t = FX_Mul(v0t, 2 * FX32_ONE);
    fx32 quadraticCoeff = FX_Div(v0t, tSquared);

    task->currentValue = startValue;
    task->startValue = startValue;
    task->initialRate = initialRate;
    task->quadraticCoeff = quadraticCoeff;
    task->currentStep = 0;
    task->numSteps = numSteps;
}

BOOL QuadraticInterpolationTaskFX32_Update(QuadraticInterpolationTaskFX32 *task)
{
    // Quadratic interpolation
    // delta = linearTerm + ((quadraticCoeff * (currentStep^2)) / 2
    // f(t) = f(0) + v0t + (1/2)at^2
    fx32 linearTerm = FX_Mul(task->initialRate, task->currentStep << FX32_SHIFT);
    fx32 stepSquared = (task->currentStep * task->currentStep) << FX32_SHIFT;
    fx32 quadraticTerm = FX_Mul(task->quadraticCoeff, stepSquared);
    quadraticTerm = FX_Div(quadraticTerm, 2 * FX32_ONE);
    fx32 delta = linearTerm + quadraticTerm;

    task->currentValue = task->startValue + delta;

    if (task->currentStep + 1 <= task->numSteps) {
        task->currentStep++;
        return FALSE;
    }

    task->currentStep = task->numSteps;
    return TRUE;
}

void BrightnessFadeTask_ApplyBrightnessToScreen(int screen, int brightness)
{
    if (screen == 1) {
        GX_SetMasterBrightness(brightness);
    } else {
        GXS_SetMasterBrightness(brightness);
    }
}

void BrightnessFadeTask_Init(BrightnessFadeTask *task, s32 startValue, s32 endValue, s32 screen, s32 sync)
{
    task->screen = screen;
    LinearInterpolationTaskS32_Init(&task->interpolationTask, startValue, endValue, sync);
}

BOOL BrightnessFadeTask_Update(BrightnessFadeTask *task)
{
    BOOL finished = LinearInterpolationTaskS32_Update(&task->interpolationTask);
    CoreSys_ExecuteDuringVBlank(BrightnessFadeTask_SetBrightness, task, 10);

    return finished;
}

static void BrightnessFadeTask_SetBrightness(SysTask *task, void *param)
{
    BrightnessFadeTask *brightnessTask = param;

    BrightnessFadeTask_ApplyBrightnessToScreen(brightnessTask->screen, brightnessTask->interpolationTask.currentValue);
    SysTask_Done(task);
}

ScreenSliceEffect *ScreenSliceEffect_Alloc(void)
{
    ScreenSliceEffect *efx = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(ScreenSliceEffect));
    memset(efx, 0, sizeof(ScreenSliceEffect));

    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_NONE, FALSE);

    return efx;
}

void ScreenSliceEffect_Delete(ScreenSliceEffect *efx)
{
    if (efx->unk_24 != NULL) {
        ov5_021DE0F0(efx);
    }

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    Heap_FreeToHeap(efx);
}

void EncounterEffect_ScreenSlice(EncounterEffect *encEffect, ScreenSliceEffect *screenSliceEfx, u8 pixelsPerSlice, u32 numSteps, fx32 startX, fx32 endX, fx32 initialSpeed)
{
    GF_ASSERT(screenSliceEfx->unk_24 == NULL);

    encEffect->unk_18 = 0;
    screenSliceEfx->unk_20 = encEffect->fieldSystem->unk_04->unk_1C;
    screenSliceEfx->pixelsPerSlice = pixelsPerSlice;
    screenSliceEfx->state = 0;
    screenSliceEfx->unk_2C = &encEffect->unk_18;

    QuadraticInterpolationTaskFX32_Init(&screenSliceEfx->interpolationTask, startX, endX, initialSpeed, numSteps);

    if (startX >= 0) {
        G2_SetWnd0Position(0, 0, 255 - startX, 192);
        G2_SetWnd1Position(0, 0, 1 + startX, 192);
    } else {
        G2_SetWnd0Position(0, 0, 255 + startX, 192);
        G2_SetWnd1Position(0, 0, 1 - startX, 192);
    }

    CoreSys_ExecuteDuringVBlank(ov5_021DE028, screenSliceEfx, 1024);
}

static void ov5_021DE028(SysTask *task, void *param)
{
    ScreenSliceEffect *screenSliceEfx = param;

    screenSliceEfx->unk_28 = CoreSys_ExecuteDuringVBlank(ov5_021DE088, screenSliceEfx, 1024);
    screenSliceEfx->unk_24 = HBlankSystem_StartTask(screenSliceEfx->unk_20, ov5_021DE14C, screenSliceEfx);

    SysTask_Done(task);
}

void ov5_021DE058(EncounterEffect *param0, ScreenSliceEffect *param1, u8 param2, u32 param3, int param4, int param5, fx32 param6)
{
    GF_ASSERT(ov5_021DDD7C(param0) == 0);

    param1->pixelsPerSlice = param2;
    param1->state = 0;

    QuadraticInterpolationTaskFX32_Init(&param1->interpolationTask, param4, param5, param6, param3);
}

static void ov5_021DE088(SysTask *param0, void *param1)
{
    ScreenSliceEffect *v0 = param1;
    s32 v1;

    switch (v0->state) {
    case 0:
        if (QuadraticInterpolationTaskFX32_Update(&v0->interpolationTask)) {
            v0->state++;
        }

        v1 = v0->interpolationTask.currentValue >> FX32_SHIFT;

        if (v1 >= 0) {
            G2_SetWnd0Position(0, 0, 255 - v1, 192);
            G2_SetWnd1Position(0, 0, 1 + v1, 192);
        } else {
            G2_SetWnd0Position(0, 0, 255 + v1, 192);
            G2_SetWnd1Position(0, 0, 1 - v1, 192);
        }
        break;
    case 1:
        ov5_021DE0F0(param1);
        break;
    }
}

static void ov5_021DE0F0(ScreenSliceEffect *param0)
{
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, 0);
    G2_SetWnd0Position(0, 0, 0, 0);
    GX_SetVisibleWnd(GX_WNDMASK_W0);

    *(param0->unk_2C) = 1;

    HBlankTask_Delete(param0->unk_24);
    param0->unk_24 = NULL;
    SysTask_Done(param0->unk_28);
    param0->unk_28 = NULL;
}

static void ov5_021DE14C(HBlankTask *param0, void *param1)
{
    ScreenSliceEffect *v0 = param1;
    int v1;
    int v2;

    v1 = GX_GetVCount();

    if (((v1 / v0->pixelsPerSlice) % 2) == 0) {
        v2 = v0->interpolationTask.currentValue >> FX32_SHIFT;
    } else {
        v2 = -v0->interpolationTask.currentValue >> FX32_SHIFT;
    }

    G2_SetBG0Offset(v2, 0);
    G2_SetBG1Offset(v2, 0);
    G2_SetBG2Offset(v2, 0);
    G2_SetBG3Offset(v2, 0);

    if (v2 >= 0) {
        GX_SetVisibleWnd(GX_WNDMASK_W0);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, 0);
    } else {
        GX_SetVisibleWnd(GX_WNDMASK_W1);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    }
}

UnkStruct_ov5_021DE374 *ov5_021DE1CC(void)
{
    UnkStruct_ov5_021DE374 *v0;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021DE374));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DE374));

    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, 0);

    return v0;
}

void ov5_021DE218(UnkStruct_ov5_021DE374 *param0)
{
    if (param0->unk_3C != NULL) {
        ov5_021DE374(param0);
    }

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    Heap_FreeToHeap(param0);
}

void ov5_021DE240(EncounterEffect *param0, UnkStruct_ov5_021DE374 *param1, u32 param2, fx32 param3, fx32 param4)
{
    GF_ASSERT(param1->unk_3C == NULL);

    param0->unk_18 = 0;
    param1->unk_38 = param0->fieldSystem->unk_04->unk_1C;
    param1->unk_30 = 96;
    param1->unk_34 = 0;
    param1->unk_44 = &param0->unk_18;

    QuadraticInterpolationTaskFX32_Init(&param1->unk_00, 0, (255 *FX32_ONE), param3, param2);
    QuadraticInterpolationTaskFX32_Init(&param1->unk_18, 0, (96 *FX32_ONE), param4, param2);

    G2_SetWnd0Position(0, 0, 255, 192);
    G2_SetWnd1Position(0, 0, 255, 192);

    CoreSys_ExecuteDuringVBlank(ov5_021DE2AC, param1, 1024);
}

static void ov5_021DE2AC(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DE374 *v0 = param1;

    v0->unk_40 = CoreSys_ExecuteDuringVBlank(ov5_021DE2DC, v0, 1024);
    v0->unk_3C = HBlankSystem_StartTask(v0->unk_38, ov5_021DE344, v0);

    SysTask_Done(param0);
}

static void ov5_021DE2DC(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DE374 *v0 = param1;
    s32 v1;
    s32 v2;

    switch (v0->unk_34) {
    case 0:
        QuadraticInterpolationTaskFX32_Update(&v0->unk_18);

        if (QuadraticInterpolationTaskFX32_Update(&v0->unk_00)) {
            v0->unk_34++;
        }

        v1 = v0->unk_00.currentValue >> FX32_SHIFT;
        v2 = v0->unk_18.currentValue >> FX32_SHIFT;
        G2_SetWnd0Position(0, 0, 255 - v1, 96 - v2);
        G2_SetWnd1Position(v1, 96 + v2, 255, 192);
        break;
    case 1:
        ov5_021DE374(param1);
        break;
    }
}

static void ov5_021DE344(HBlankTask *param0, void *param1)
{
    UnkStruct_ov5_021DE374 *v0 = param1;
    int v1;
    int v2;
    int v3;

    v1 = GX_GetVCount();

    if (v1 <= v0->unk_30) {
        GX_SetVisibleWnd(GX_WNDMASK_W0);
    } else {
        GX_SetVisibleWnd(GX_WNDMASK_W1);
    }
}

static void ov5_021DE374(UnkStruct_ov5_021DE374 *param0)
{
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, 0);
    G2_SetWnd0Position(0, 0, 0, 0);
    GX_SetVisibleWnd(GX_WNDMASK_W0);

    *(param0->unk_44) = 1;

    HBlankTask_Delete(param0->unk_3C);
    param0->unk_3C = NULL;
    SysTask_Done(param0->unk_40);
    param0->unk_40 = NULL;
}

void include_ov5_021DDBE8_rodata_funcptr(void)
{
    SysTaskFunc dummy = include_ov5_021DDBE8_rodata;
}

static void include_ov5_021DDBE8_rodata(SysTask *dummy1, void *dummy2)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_1,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            0,
            0,
            0,
            0
        };
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_23,
            0,
            1,
            0,
            0
        };
    }
}

void ov5_021DE3D0(NARC *param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, BGL *param6, u32 param7)
{
    void *v0;
    NNSG2dScreenData *v1;

    sub_02007130(param0, param3, 0, param4 *32, param5 *32, 4);
    sub_020070E8(param0, param2, param6, param7, 0, 0, 0, 4);

    v0 = sub_020071D0(param0, param1, 0, &v1, 4);

    sub_020198C0(param6, param7, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    sub_02019E2C(param6, param7, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8, param4);
    Heap_FreeToHeap(v0);
    sub_0201C3C0(param6, param7);
}

void ov5_021DE47C(UnkStruct_ov5_021DE47C *param0, int param1, int param2)
{
    int v0;

    param0->unk_00 = sub_020095C4(param1, &param0->unk_04, 4);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = sub_02009714(param2, v0, 4);
    }
}

void ov5_021DE4AC(UnkStruct_ov5_021DE47C *param0)
{
    int v0;

    sub_02021964(param0->unk_00);

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_190[v0]);
    }
}

void ov5_021DE4CC(NARC *param0, UnkStruct_ov5_021DE47C *param1, UnkStruct_ov5_021DE5A4 *param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    param2->unk_00[0] = sub_02009AA8(param1->unk_190[0], param0, param5, 0, param8, NNS_G2D_VRAM_TYPE_2DMAIN, 4, 1);
    param2->unk_00[1] = sub_02009B04(param1->unk_190[1], param0, param3, 0, param8, NNS_G2D_VRAM_TYPE_2DMAIN, param4, 4);
    param2->unk_00[2] = sub_02009BC4(param1->unk_190[2], param0, param6, 0, param8, 2, 4);
    param2->unk_00[3] = sub_02009BC4(param1->unk_190[3], param0, param7, 0, param8, 3, 4);

    sub_0200A3DC(param2->unk_00[0]);
    sub_02009D4C(param2->unk_00[0]);
    sub_0200A640(param2->unk_00[1]);
    sub_020093B4(&param2->unk_10, param8, param8, param8, param8, 0xffffffff, 0xffffffff, 0, 0, param1->unk_190[0], param1->unk_190[1], param1->unk_190[2], param1->unk_190[3], NULL, NULL);
}

void ov5_021DE5A4(UnkStruct_ov5_021DE47C *param0, UnkStruct_ov5_021DE5A4 *param1)
{
    int v0;

    sub_0200A4E4(param1->unk_00[0]);
    sub_0200A6DC(param1->unk_00[1]);

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009D68(param0->unk_190[v0], param1->unk_00[v0]);
    }
}

void ov5_021DE5D0(GraphicElementData *param0, u32 param1, u32 param2, u8 param3, u16 param4)
{
    UnkStruct_ov5_021DE5D0 v0;
    NNSG2dPaletteData *v1;
    void *v2;
    u16 *v3;

    sub_02076AAC(param2, 2, &v0);
    v3 = Heap_AllocFromHeap(param1, 32);
    v2 = sub_02006F88(v0.unk_00, v0.unk_08, &v1, param1);
    sub_0200393C(v1->pRawData, v3, 16, param3, param4);

    ov5_021DE67C(param0, v3, 32);

    Heap_FreeToHeap(v3);
    Heap_FreeToHeap(v2);
}

GraphicElementData *ov5_021DE62C(UnkStruct_ov5_021DE47C *param0, UnkStruct_ov5_021DE5A4 *param1, fx32 param2, fx32 param3, fx32 param4, int param5)
{
    UnkStruct_ov83_0223D9A8 v0;
    GraphicElementData *v1;

    v0.unk_00 = param0->unk_00;
    v0.unk_04 = &param1->unk_10;
    v0.unk_08.x = param2;
    v0.unk_08.y = param3;
    v0.unk_08.z = param4;
    v0.unk_14 = param5;
    v0.unk_18 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_1C = 4;

    v1 = sub_02021B90(&v0);
    GF_ASSERT(v1);
    return v1;
}

VecFx32 VecFx32_FromXYZ(fx32 x, fx32 y, fx32 z)
{
    return (VecFx32){ x, y, z };
}

static void ov5_021DE67C(GraphicElementData *param0, void *param1, u32 param2)
{
    NNSG2dImagePaletteProxy *v0;

    v0 = sub_02021F9C(param0);

    DC_FlushRange(param1, param2);
    GX_LoadOBJPltt(param1, NNS_G2dGetImagePaletteLocation(v0, NNS_G2D_VRAM_TYPE_2DMAIN), param2);
}

UnkStruct_ov5_021DE6BC *ov5_021DE6A4(u32 param0)
{
    UnkStruct_ov5_021DE6BC *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov5_021DE6BC));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DE6BC));

    return v0;
}

void ov5_021DE6BC(UnkStruct_ov5_021DE6BC *param0)
{
    Heap_FreeToHeap(param0);
}

void ov5_021DE6C4(UnkStruct_ov5_021DE6BC *param0, int param1, int param2, int param3, int param4, int param5, Window *param6, u32 param7, u32 param8, u8 param9)
{
    GF_ASSERT(param0->unk_2E == 0);

    LinearInterpolationTaskS32_Init(&param0->unk_00, param1, param2, param5);
    LinearInterpolationTaskS32_Init(&param0->unk_14, param3, param4, param5);

    param0->unk_28 = param6;
    param0->unk_2C = param7;
    param0->unk_2D = param8;
    param0->unk_2F = param9;
    param0->unk_2E = 1;
}

BOOL ov5_021DE71C(UnkStruct_ov5_021DE6BC *param0)
{
    BOOL v0;
    s16 v1, v2, v3, v4;

    if (param0->unk_2E == 0) {
        return 1;
    }

    v0 = LinearInterpolationTaskS32_Update(&param0->unk_00);
    LinearInterpolationTaskS32_Update(&param0->unk_14);

    v3 = param0->unk_00.currentValue - (param0->unk_2C / 2);
    v1 = param0->unk_14.currentValue - (param0->unk_2D / 2);
    v4 = v3 + param0->unk_2C;
    v2 = v1 + param0->unk_2D;

    ov5_021DE89C(param0->unk_28, v1, v2, v3, v4, param0->unk_2F);

    return v0;
}

UnkStruct_ov5_021DE79C *ov5_021DE784(u32 param0)
{
    UnkStruct_ov5_021DE79C *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov5_021DE79C));

    memset(v0, 0, sizeof(UnkStruct_ov5_021DE79C));
    return v0;
}

void ov5_021DE79C(UnkStruct_ov5_021DE79C *param0)
{
    Heap_FreeToHeap(param0);
}

void ov5_021DE7A4(UnkStruct_ov5_021DE79C *param0, int param1, int param2, int param3, int param4, int param5, Window *param6, u32 param7, u32 param8, u8 param9)
{
    GF_ASSERT(param0->unk_2E == 0);

    LinearInterpolationTaskS32_Init(&param0->unk_00, param1, param2, param5);
    LinearInterpolationTaskS32_Init(&param0->unk_14, param3, param4, param5);

    param0->unk_28 = param6;
    param0->unk_2C = param7;
    param0->unk_2D = param8;
    param0->unk_2F = param9;
    param0->unk_2E = 1;
}

BOOL ov5_021DE7FC(UnkStruct_ov5_021DE79C *param0)
{
    BOOL v0;
    s16 v1, v2, v3, v4;

    if (param0->unk_2E == 0) {
        return 1;
    }

    v3 = param0->unk_00.currentValue - (param0->unk_2C / 2);
    v1 = param0->unk_14.currentValue - (param0->unk_2D / 2);
    v4 = v3 + param0->unk_2C;
    v2 = v1 + param0->unk_2D;

    ov5_021DE89C(param0->unk_28, v1, v2, v3, v4, 0);
    v0 = LinearInterpolationTaskS32_Update(&param0->unk_00);
    LinearInterpolationTaskS32_Update(&param0->unk_14);

    v3 = param0->unk_00.currentValue - (param0->unk_2C / 2);
    v1 = param0->unk_14.currentValue - (param0->unk_2D / 2);
    v4 = v3 + param0->unk_2C;
    v2 = v1 + param0->unk_2D;

    ov5_021DE89C(param0->unk_28, v1, v2, v3, v4, param0->unk_2F);

    return v0;
}

static void ov5_021DE89C(Window *param0, s32 param1, s32 param2, s32 param3, s32 param4, u8 param5)
{
    if ((param4 <= 0) || (param2 <= 0)) {
        return;
    }

    if ((param3 == param4) || (param1 == param2)) {
        return;
    }

    if (param3 < 0) {
        param3 = 0;
    }

    if (param4 > 256) {
        param4 = 256;
    }

    if (param1 < 0) {
        param1 = 0;
    }

    if (param2 > 256) {
        param2 = 256;
    }

    BGL_WindowColor(param0, param5, param3, param1, param4 - param3, param2 - param1);
}

UnkStruct_ov5_021DE928 *ov5_021DE8F8(u32 param0)
{
    UnkStruct_ov5_021DE928 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021DE928));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DE928));

    for (v1 = 0; v1 < 48; v1++) {
        v0->unk_04[v1] = ov5_021DE784(param0);
    }

    return v0;
}

void ov5_021DE928(UnkStruct_ov5_021DE928 *param0)
{
    int v0;

    for (v0 = 0; v0 < 48; v0++) {
        ov5_021DE79C(param0->unk_04[v0]);
    }

    Heap_FreeToHeap(param0);
}

void ov5_021DE948(UnkStruct_ov5_021DE928 *param0, u8 param1, u8 param2, Window *param3, u8 param4)
{
    param0->unk_00 = param3;
    param0->unk_C9 = param4;
    param0->unk_C6 = param1;
    param0->unk_C7 = param2;
    param0->unk_C4 = 0;
    param0->unk_C5 = 0;
    param0->unk_C8 = 0;
    param0->unk_CA = 1;
}

BOOL ov5_021DE988(UnkStruct_ov5_021DE928 *param0)
{
    int v0, v1, v2;
    int v3;
    BOOL v4;

    if (param0->unk_CA == 0) {
        return 1;
    }

    if (param0->unk_C4 < 48) {
        param0->unk_C8--;

        if (param0->unk_C8 <= 0) {
            param0->unk_C8 = param0->unk_C7;

            v0 = Unk_ov5_021F9988[param0->unk_C4 % 8];
            v0 = (32 / 2) + (v0 *32);
            v1 = -16 - ((param0->unk_C4 / 8) *32);
            v2 = (192 + -16) - ((param0->unk_C4 / 8) *32);

            ov5_021DE7A4(param0->unk_04[param0->unk_C4], v0, v0, v1, v2, param0->unk_C6, param0->unk_00, 32, 32, param0->unk_C9);
            param0->unk_C4++;
        }
    }

    for (v3 = param0->unk_C5; v3 < param0->unk_C4; v3++) {
        v4 = ov5_021DE7FC(param0->unk_04[v3]);

        if (v4 == 1) {
            param0->unk_C5++;
        }
    }

    if ((param0->unk_C5 >= 48) && (v4 == 1)) {
        param0->unk_CA = 0;
        return 1;
    }

    return 0;
}

UnkStruct_ov5_021DEA98 *ov5_021DEA80(u32 param0)
{
    UnkStruct_ov5_021DEA98 *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov5_021DEA98));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DEA98));
    return v0;
}

void ov5_021DEA98(UnkStruct_ov5_021DEA98 *param0)
{
    Heap_FreeToHeap(param0);
}

void ov5_021DEAA0(UnkStruct_ov5_021DEA98 *param0, u8 param1, u16 param2, u16 param3, Window *param4, u8 param5)
{
    param0->unk_00 = param4;
    param0->unk_19 = param5;
    param0->unk_18 = 1;

    LinearInterpolationTaskS32_Init(&param0->unk_04, param2, param3, param1);
}

BOOL ov5_021DEAC8(UnkStruct_ov5_021DEA98 *param0)
{
    BOOL v0;
    u16 v1;

    if (param0->unk_18 == 0) {
        return 1;
    }

    v1 = param0->unk_04.currentValue;
    v0 = LinearInterpolationTaskS32_Update(&param0->unk_04);

    ov5_021DEB04(param0->unk_00, v1, param0->unk_04.currentValue, param0->unk_19);

    if (v0 == 1) {
        param0->unk_18 = 0;
        return 1;
    }

    return 0;
}

static inline fx32 inline_ov5_021DEB04(u16 param0)
{
    return FX_Div(FX_SinIdx(param0), FX_CosIdx(param0));
}

static void ov5_021DEB04(Window *param0, u16 param1, u16 param2, u8 param3)
{
    int v0, v1, v2;
    int v3, v4;
    int v5;
    int v6;
    fx32 v7, v8;

    v7 = inline_ov5_021DEB04(param2);
    v8 = inline_ov5_021DEB04(param1);

    for (v5 = 0; v5 < 96; v5++) {
        v6 = 95 - v5;
        v0 = FX_Mul(v7, v6 *FX32_ONE) >> FX32_SHIFT;
        v1 = FX_Mul(v8, v6 *FX32_ONE) >> FX32_SHIFT;
        v3 = 128 + v0;
        v4 = 128 + v1;
        v0 = 128 - v0;
        v1 = 128 - v1;

        if (v1 > v0) {
            v2 = v1;
            v1 = v0;
            v0 = v2;
        }

        if (v4 > v3) {
            v2 = v4;
            v4 = v3;
            v3 = v2;
        }

        ov5_021DE89C(param0, v5, v5 + 1, v1, v0 + 1, param3);
        ov5_021DE89C(param0, 191 - v5, 192 - v5, v4, v3 + 1, param3);
    }
}

UnkStruct_ov5_021DEC18 *ov5_021DEBEC(u32 param0)
{
    UnkStruct_ov5_021DEC18 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov5_021DEC18));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DEC18));

    for (v1 = 0; v1 < 8; v1++) {
        v0->unk_00[v1] = ov5_021DEA80(param0);
    }

    return v0;
}

void ov5_021DEC18(UnkStruct_ov5_021DEC18 *param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        ov5_021DEA98(param0->unk_00[v0]);
    }

    Heap_FreeToHeap(param0);
}

void ov5_021DEC38(UnkStruct_ov5_021DEC18 *param0, u8 param1, Window *param2, u8 param3)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        ov5_021DEAA0(param0->unk_00[v0], param1, ((Unk_ov5_021F9A2C[v0][0] *0xffff) / 360), ((Unk_ov5_021F9A2C[v0][1] *0xffff) / 360), param2, param3);
    }

    param0->unk_20 = 1;
    ov5_021DE89C(param2, 93, 99, 0, 256, param3);
}

BOOL ov5_021DECB8(UnkStruct_ov5_021DEC18 *param0)
{
    int v0;
    BOOL v1;

    if (param0->unk_20 == 0) {
        return 1;
    }

    for (v0 = 0; v0 < 8; v0++) {
        v1 = ov5_021DEAC8(param0->unk_00[v0]);
    }

    if (v1 == 1) {
        param0->unk_20 = 0;
        return 1;
    }

    return 0;
}

UnkStruct_ov5_021DED04 *ov5_021DECEC(void)
{
    UnkStruct_ov5_021DED04 *v0;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021DED04));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DED04));

    return v0;
}

void ov5_021DED04(UnkStruct_ov5_021DED04 *param0)
{
    if (param0->unk_E0 != NULL) {
        ov5_021DEE84(param0);
    }

    Heap_FreeToHeap(param0);
}

void ov5_021DED20(EncounterEffect *param0, UnkStruct_ov5_021DED04 *param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    int v0;
    int v1;
    int v2;

    GF_ASSERT(param1->unk_E0 == NULL);

    param0->unk_18 = 0;
    param1->unk_D8 = param0->fieldSystem->unk_04->unk_1C;
    param1->unk_14 = 0;
    param1->unk_E4 = &param0->unk_18;

    LinearInterpolationTaskS32_Init(&param1->unk_00, 255, 0, param2);

    for (v0 = 0; v0 < 192; v0++) {
        v1 = v0 % param3;
        v2 = v1 *param4;
        v2 = v2 / param3;

        if (((v0 / param3) % 2) == 0) {
            param1->unk_18[v0] = v2;
        } else {
            param1->unk_18[v0] = param4 - v2;
        }
    }

    G2_SetWnd0InsidePlane(param5, 1);
    G2_SetWndOutsidePlane(param6, 0);
    G2_SetWnd0Position(0, 0, 0, 192);
    GX_SetVisibleWnd(GX_WNDMASK_W0);

    CoreSys_ExecuteDuringVBlank(ov5_021DEDE8, param1, 1024);
}

static void ov5_021DEDE8(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DED04 *v0 = param1;

    v0->unk_DC = HBlankSystem_StartTask(v0->unk_D8, ov5_021DEE50, v0);
    v0->unk_E0 = CoreSys_ExecuteDuringVBlank(ov5_021DEE24, v0, 1024);

    SysTask_Done(param0);
}

static void ov5_021DEE24(SysTask *param0, void *param1)
{
    UnkStruct_ov5_021DED04 *v0 = param1;
    BOOL v1;

    switch (v0->unk_14) {
    case 0:
        v1 = LinearInterpolationTaskS32_Update(&v0->unk_00);

        if (v1 == 1) {
            v0->unk_14++;
        }
        break;
    case 1:
        ov5_021DEE84(v0);
        break;
    }
}

static void ov5_021DEE50(HBlankTask *param0, void *param1)
{
    UnkStruct_ov5_021DED04 *v0 = param1;
    int v1;
    int v2;

    v2 = GX_GetVCount();

    if (v2 < 192) {
        v1 = -v0->unk_18[v2] + v0->unk_00.currentValue;

        if (v1 < 0) {
            v1 = 0;
        }

        G2_SetWnd0Position(v1, 0, 255, 192);
    }
}

static void ov5_021DEE84(UnkStruct_ov5_021DED04 *param0)
{
    GX_SetVisibleWnd(GX_WNDMASK_NONE);

    *(param0->unk_E4) = 1;
    HBlankTask_Delete(param0->unk_DC);
    param0->unk_DC = NULL;
    SysTask_Done(param0->unk_E0);
    param0->unk_E0 = NULL;
}

u32 CutInEffects_ForBattle(const BattleParams *param0)
{
    int v0;
    int v1;
    int v2;
    Pokemon *v3;
    Pokemon *v4;
    int v5, v6;

    if (param0->battleType & BATTLE_TYPE_TRAINER) {
        v2 = 1;
    // Implicitly, this must be a wild battle
    } else if ((param0->battleType & BATTLE_TYPE_SPECIAL_WILD)
            || (param0->battleType == BATTLE_TYPE_SINGLES)) {
        v2 = 0;
    } else {
        GF_ASSERT(0);
        v2 = 0;
    }

    v3 = Party_FindFirstEligibleBattler(param0->parties[0]);
    v4 = Party_FindFirstEligibleBattler(param0->parties[1]);
    v5 = Pokemon_GetValue(v3, MON_DATA_LEVEL, NULL);
    v6 = Pokemon_GetValue(v4, MON_DATA_LEVEL, NULL);
    v0 = v6 - v5;

    switch (param0->unk_12C) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 8:
    case 10:
    case 11:
    case 9:
    case 24:
        v1 = 0 *2;
        break;
    case 7:
        v1 = 1 *2;
        break;
    case 5:
        v1 = 2 *2;
        break;
    }

    if (v0 > 0) {
        v1++;
    }

    return (v2 *6) + v1;
}

static void ov5_021DEF74(SysTask *param0, void *param1)
{
    int *v0 = param1;

    GX_SetMasterBrightness(*v0);
    SysTask_Done(param0);
}

void ov5_021DEF8C(int *param0)
{
    CoreSys_ExecuteDuringVBlank(ov5_021DEF74, param0, 1024);
}

void ov5_021DEFA0(FieldSystem *fieldSystem)
{
    GF_ASSERT(Unk_ov5_02202120 == NULL);

    Unk_ov5_02202120 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_02202120));
    memset(Unk_ov5_02202120, 0, sizeof(UnkStruct_ov5_02202120));

    Unk_ov5_02202120->unk_00 = 0;
    Unk_ov5_02202120->unk_02 = 0;
    Unk_ov5_02202120->fieldSystem = fieldSystem;

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);

    GX_ResetBankForBG();
    MI_CpuClearFast((void *)HW_LCDC_VRAM_C, HW_VRAM_C_SIZE);
    GX_SetCapture(GX_CAPTURE_SIZE_256x192, GX_CAPTURE_MODE_AB, GX_CAPTURE_SRCA_2D3D, GX_CAPTURE_SRCB_VRAM_0x00000, GX_CAPTURE_DEST_VRAM_C_0x00000, 4, 12);

    CoreSys_ExecuteDuringVBlank(ov5_021DF258, Unk_ov5_02202120, 1024);
    SysTask_Start(ov5_021DF28C, Unk_ov5_02202120, 1024);
}

void ov5_021DF038(void)
{
    GF_ASSERT(Unk_ov5_02202120);
    Unk_ov5_02202120->unk_03 = 1;
}

BOOL ov5_021DF054(void)
{
    GF_ASSERT(Unk_ov5_02202120);
    return Unk_ov5_02202120->unk_02;
}

void ov5_021DF070(void)
{
    if (Unk_ov5_02202120 == NULL) {
        return;
    }

    sub_0201469C();
}

void ov5_021DF084(void)
{
    GF_ASSERT(Unk_ov5_02202120);

    sub_020141E4();

    ov5_021DF3D4(Unk_ov5_02202120->fieldSystem);
    ov5_021D16F4(Unk_ov5_02202120->fieldSystem, 1);
    ov5_021D1718(Unk_ov5_02202120->fieldSystem, 1);

    Heap_FreeToHeap(Unk_ov5_02202120);
    Unk_ov5_02202120 = NULL;
}

void ov5_021DF0CC(NARC *param0, u32 param1)
{
    void *v0;
    UnkStruct_020203AC *v1;

    GF_ASSERT(Unk_ov5_02202120);
    GF_ASSERT(Unk_ov5_02202120->unk_08 == NULL);

    Unk_ov5_02202120->unk_0C = Heap_AllocFromHeap(4, 0x4800);
    Unk_ov5_02202120->unk_08 = sub_02014014(ov5_021DF3E8, ov5_021DF414, Unk_ov5_02202120->unk_0C, 0x4800, 1, 4);
    GF_ASSERT(Unk_ov5_02202120->unk_08);

    sub_02014788(Unk_ov5_02202120->unk_08, 1);

    v1 = sub_02014784(Unk_ov5_02202120->unk_08);
    sub_020206BC(FX32_ONE, FX32_ONE *900, v1);

    v0 = sub_0200723C(param0, param1, 0, 4, 0);
    sub_020144CC(Unk_ov5_02202120->unk_08, v0, 0 | 0, 0);
}

void ov5_021DF17C(u32 param0)
{
    int v0;
    VecFx32 v1 = {0, 0, 0};

    GF_ASSERT(Unk_ov5_02202120);
    GF_ASSERT(Unk_ov5_02202120->unk_08);

    for (v0 = 0; v0 < param0; v0++) {
        sub_020146E4(Unk_ov5_02202120->unk_08, v0, &v1);
    }
}

BOOL ov5_021DF1CC(void)
{
    GF_ASSERT(Unk_ov5_02202120);

    if (Unk_ov5_02202120->unk_08 == NULL) {
        return 1;
    }

    sub_020146C0();

    if (sub_02014710(Unk_ov5_02202120->unk_08) == 0) {
        return 1;
    }

    return 0;
}

BOOL ov5_021DF208(void)
{
    if (sub_02014710(Unk_ov5_02202120->unk_08) == 0) {
        return 1;
    }

    return 0;
}

void ov5_021DF224(void)
{
    GF_ASSERT(Unk_ov5_02202120);

    sub_0201411C(Unk_ov5_02202120->unk_08);
    Heap_FreeToHeap(Unk_ov5_02202120->unk_0C);

    Unk_ov5_02202120->unk_08 = NULL;
    Unk_ov5_02202120->unk_0C = NULL;
}

static void ov5_021DF258(SysTask *param0, void *param1)
{
    UnkStruct_ov5_02202120 *v0 = param1;

    switch (v0->unk_00) {
    case 0:
        v0->unk_00++;
        break;
    case 1:
        if (v0->unk_03 == 1) {
            ov5_021DF30C(v0->fieldSystem);
            SysTask_Done(param0);
            v0->unk_00++;
        }
        break;
    }
}

static void ov5_021DF28C(SysTask *param0, void *param1)
{
    UnkStruct_ov5_02202120 *v0 = param1;

    switch (v0->unk_00) {
    case 2:

        sub_02014000();

        {
            VecFx32 v1 = {0};
            VecFx32 v2 = {FX32_ONE, FX32_ONE, FX32_ONE};
            MtxFx33 v3;

            MTX_Identity33(&v3);

            NNS_G3dGlbSetBaseTrans(&v1);
            NNS_G3dGlbSetBaseScale(&v2);
            NNS_G3dGlbSetBaseRot(&v3);
        }

        ov5_021D16F4(v0->fieldSystem, 0);
        ov5_021D1718(v0->fieldSystem, 0);

        BGL_SetPriority(0, 0);

        v0->unk_02 = 1;
        SysTask_Done(param0);
        break;
    default:
        break;
    }
}

static void ov5_021DF30C(FieldSystem *fieldSystem)
{
    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_256_BC,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_16_F,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_0_A,
            GX_VRAM_TEXPLTT_0123_E
        };

        GXLayers_SetBanks(&v0);
    }

    GXLayers_EngineAToggleLayers(
        GX_PLANEMASK_BG0, 0);

    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_3,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        sub_02018368(&v1);
    }

    {
        ov5_021D143C(fieldSystem->unk_08);

        {
            G2_SetBG3ControlDCBmp(GX_BG_SCRSIZE_DCBMP_256x256, GX_BG_AREAOVER_XLU, GX_BG_BMPSCRBASE_0x20000);

            BGL_SetPriority(3, 3);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);

            {
                MtxFx22 v2;

                MTX_Identity22(&v2);
                G2_SetBG3Affine(&v2, 0, 0, 0, 0);
            }
        }

        {
            UnkStruct_ov97_0222DB78 v3 = {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xe800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_23,
                0,
                0,
                0,
                0
            };

            sub_020183C4(fieldSystem->unk_08, 2, &v3, 0);
            sub_02019690(2, 32, 0, 4);
            sub_02019EBC(fieldSystem->unk_08, 2);
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov5_021DF3D4(FieldSystem *fieldSystem)
{
    sub_02019044(fieldSystem->unk_08, 2);
    ov5_021D1434(fieldSystem->unk_08);
}

static u32 ov5_021DF3E8(u32 param0, BOOL param1)
{
    u32 v0;

    GF_ASSERT(Unk_ov5_02202120);
    GF_ASSERT(param1 == 0);

    v0 = Unk_ov5_02202120->unk_10;
    Unk_ov5_02202120->unk_10 += param0;

    return v0;
}

static u32 ov5_021DF414(u32 param0, BOOL param1)
{
    u32 v0;

    GF_ASSERT(Unk_ov5_02202120);
    GF_ASSERT(param1 == 0);

    v0 = Unk_ov5_02202120->unk_14;
    Unk_ov5_02202120->unk_14 += param0;

    return v0;
}
