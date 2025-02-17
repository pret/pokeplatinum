#include "battle/ov16_0226DE44.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "math.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct CatchingTutorialFinger_t {
    ManagedSprite *unk_00;
    SysTask *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    fx32 unk_14;
    s16 unk_18;
    u8 unk_1A;
    u8 unk_1B;
    u8 unk_1C;
    u8 unk_1D;
    u8 unk_1E;
} CatchingTutorialFinger;

void CatchingTutorialFinger_LoadResources(SpriteSystem *spriteSystem, SpriteManager *param1, u32 param2, PaletteData *param3, u32 param4, u32 param5, u32 param6, u32 param7);
void CatchingTutorialFinger_FreeResources(SpriteManager *spriteManager, u32 param1, u32 param2, u32 param3, u32 param4);
CatchingTutorialFinger *CatchingTutorialFinger_Create(SpriteSystem *spriteSystem, SpriteManager *param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8);
void CatchingTutorialFinger_Free(CatchingTutorialFinger *finger);
void ov16_0226DFB0(CatchingTutorialFinger *finger, int param1, int param2);
void ov16_0226DFBC(CatchingTutorialFinger *finger);
static void ov16_0226DFD8(SysTask *task, void *param1);
static void ov16_0226E13C(CatchingTutorialFinger *finger);

static const SpriteTemplate Unk_ov16_02270AD8 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x0, 0x0, 0x0, 0x0, 0xFFFFFFFF, 0xFFFFFFFF },
    0x0,
    0x0
};

void CatchingTutorialFinger_LoadResources(SpriteSystem *spriteSystem, SpriteManager *spriteManager, u32 param2, PaletteData *param3, u32 param4, u32 param5, u32 param6, u32 param7)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__EV_POKESELECT, param2);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(param3, PLTTBUF_SUB_OBJ, spriteSystem, spriteManager, narc, 11, FALSE, 1, NNS_G2D_VRAM_TYPE_2DSUB, param5);
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteManager, narc, 10, FALSE, NNS_G2D_VRAM_TYPE_2DSUB, param4);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, spriteManager, narc, 12, FALSE, param6);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, spriteManager, narc, 13, FALSE, param7);
    NARC_dtor(narc);
}

void CatchingTutorialFinger_FreeResources(SpriteManager *spriteManager, u32 param1, u32 param2, u32 param3, u32 param4)
{
    SpriteManager_UnloadCharObjById(spriteManager, param1);
    SpriteManager_UnloadPlttObjById(spriteManager, param2);
    SpriteManager_UnloadCellObjById(spriteManager, param3);
    SpriteManager_UnloadAnimObjById(spriteManager, param4);
}

CatchingTutorialFinger *CatchingTutorialFinger_Create(SpriteSystem *spriteSystem, SpriteManager *param1, int param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    CatchingTutorialFinger *finger;
    SpriteTemplate v1;

    v1 = Unk_ov16_02270AD8;

    v1.resources[0] = param3;
    v1.resources[1] = param4;
    v1.resources[2] = param5;
    v1.resources[3] = param6;
    v1.priority = param7;
    v1.bgPriority = param8;

    finger = Heap_AllocFromHeap(param2, sizeof(CatchingTutorialFinger));
    MI_CpuClear8(finger, sizeof(CatchingTutorialFinger));

    finger->unk_00 = SpriteSystem_NewSprite(spriteSystem, param1, &v1);
    ManagedSprite_SetDrawFlag(finger->unk_00, 0);

    finger->unk_14 = (192 << FX32_SHIFT);
    finger->unk_04 = SysTask_Start(ov16_0226DFD8, finger, 999);

    return finger;
}

void CatchingTutorialFinger_Free(CatchingTutorialFinger *finger)
{
    Sprite_DeleteAndFreeResources(finger->unk_00);
    SysTask_Done(finger->unk_04);
    Heap_FreeToHeap(finger);
}

void CatchingTutorialFinger_SetPosition(CatchingTutorialFinger *finger, int param1, int param2, fx32 param3)
{
    ov16_0226E13C(finger);

    finger->unk_08 = param1;
    finger->unk_0C = param2;
    finger->unk_14 = param3;

    ManagedSprite_SetPositionXYWithSubscreenOffset(finger->unk_00, param1, param2, param3);
    ManagedSprite_SetDrawFlag(finger->unk_00, 1);
}

void ov16_0226DFB0(CatchingTutorialFinger *finger, int param1, int param2)
{
    CatchingTutorialFinger_SetPosition(finger, param1, param2, (192 << FX32_SHIFT));
}

void ov16_0226DFBC(CatchingTutorialFinger *finger)
{
    ManagedSprite_SetDrawFlag(finger->unk_00, 0);
    ov16_0226E13C(finger);
}

void CatchingTutorialFinger_RequestTouch(CatchingTutorialFinger *finger, int param1)
{
    finger->unk_18 = param1;
}

BOOL CatchingTutorialFinger_CheckTouchAnimationFinished(CatchingTutorialFinger *finger)
{
    return finger->unk_1B;
}

static void ov16_0226DFD8(SysTask *task, void *param1)
{
    CatchingTutorialFinger *finger = param1;

    if (finger->unk_1B == 1) {
        finger->unk_1B = 0;
    }

    if (finger->unk_18 > 0) {
        finger->unk_18--;

        if (finger->unk_18 == 0) {
            finger->unk_1A = 1;
        }
    }

    if (ManagedSprite_GetDrawFlag(finger->unk_00) == 0) {
        return;
    }

    if (finger->unk_1C == 0) {
        int v1;

        finger->unk_10 += (10 * 100);

        if (finger->unk_10 >= 180 * 100) {
            finger->unk_10 -= 180 * 100;

            if (finger->unk_1A == 1) {
                finger->unk_1C = 1;
                finger->unk_1A = 0;
            }
        }

        if (finger->unk_1C == 0) {
            v1 = FX_Mul(CalcSineDegrees(finger->unk_10 / 100), 14 << FX32_SHIFT) / FX32_ONE;
            ManagedSprite_SetPositionXYWithSubscreenOffset(finger->unk_00, finger->unk_08, finger->unk_0C - v1, finger->unk_14);
        }
    }

    if (finger->unk_1C == 1) {
        switch (finger->unk_1D) {
        case 0:
            finger->unk_1E++;

            if (finger->unk_1E > 3) {
                finger->unk_1E = 0;
                finger->unk_1D++;
            }
            break;
        case 1:
            ManagedSprite_SetPositionXYWithSubscreenOffset(finger->unk_00, finger->unk_08, finger->unk_0C + 8, finger->unk_14);
            finger->unk_1B = 1;
            finger->unk_1D++;
            break;
        case 2:
            finger->unk_1E++;

            if (finger->unk_1E > 2) {
                ManagedSprite_SetPositionXYWithSubscreenOffset(finger->unk_00, finger->unk_08, finger->unk_0C + 2, finger->unk_14);
                finger->unk_1E = 0;
                finger->unk_1D++;
            }
            break;
        case 3:
            finger->unk_1E++;

            if (finger->unk_1E > 2) {
                ov16_0226DFBC(finger);
                finger->unk_1E = 0;
                finger->unk_1D++;
            }
            break;
        default:
            break;
        }
    }

    ManagedSprite_TickFrame(finger->unk_00);
}

static void ov16_0226E13C(CatchingTutorialFinger *finger)
{
    finger->unk_10 = 0;
    finger->unk_1C = 0;
    finger->unk_1D = 0;
    finger->unk_1E = 0;
}
