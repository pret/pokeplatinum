#include "game_opening/ov77_021D6670.h"

#include <nitro.h>
#include <string.h>

#include "char_transfer.h"
#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    Sprite *unk_04;
    SysTask *unk_08;
} UnkStruct_ov77_021D6ADC;

typedef struct UnkStruct_ov77_021D6734_t {
    int unk_00;
    UnkStruct_ov77_021D6ADC *unk_04;
} UnkStruct_ov77_021D6734;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06[2];
} UnkStruct_ov77_021D6B0C;

typedef struct {
    UnkStruct_ov77_021D6B0C unk_00;
    SysTask *unk_08;
    UnkStruct_ov77_021D6ADC *unk_0C;
} UnkStruct_ov77_021D6A0C;

typedef struct {
    SpriteList *unk_00;
    G2dRenderer unk_04;
    SpriteResourceCollection *unk_190[4];
    SpriteResource *unk_1A0[4];
    UnkStruct_ov77_021D6ADC unk_1B0[10];
} UnkStruct_ov77_021D6800;

typedef struct UnkStruct_ov77_021D670C_t {
    UnkStruct_ov77_021D6800 unk_00;
    UnkStruct_ov77_021D6A0C unk_214[3];
} UnkStruct_ov77_021D670C;

static void ov77_021D6800(UnkStruct_ov77_021D6800 *param0);
static void ov77_021D691C(UnkStruct_ov77_021D6800 *param0);
static void ov77_021D6964(UnkStruct_ov77_021D6800 *param0);
static void ov77_021D69B4(UnkStruct_ov77_021D6800 *param0);
static void ov77_021D6A0C(UnkStruct_ov77_021D6A0C *param0, UnkStruct_ov77_021D670C *param1, const u8 param2, const u8 param3, const u8 param4, const u8 param5);
static void ov77_021D6B0C(SysTask *param0, void *param1);
static UnkStruct_ov77_021D6ADC *ov77_021D6ADC(UnkStruct_ov77_021D6ADC *param0, const int param1);
static void ov77_021D6B48(SysTask *param0, void *param1);
static void ov77_021D6BAC(UnkStruct_ov77_021D6734 *param0, const u8 param1, int param2);
static void ov77_021D6C44(SysTask *param0, void *param1);

static const u8 Unk_ov77_021D7930[4] = {
    0x1,
    0x1,
    0x1,
    0x1
};

static void ov77_021D6670()
{
    const int heapId = HEAP_ID_76;

    {
        CharTransferTemplate v1 = {
            1, 0, 0, heapId
        };

        CharTransfer_Init(&v1);
    }

    PlttTransfer_Init(1, heapId);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void ov77_021D66A0(UnkStruct_ov77_021D6800 *param0, AffineSpriteListTemplate *param1, SpriteResourcesHeader *param2)
{
    SpriteResourcesHeader_Init(param2, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, param0->unk_190[0], param0->unk_190[1], param0->unk_190[2], param0->unk_190[3], NULL, NULL);

    {
        param1->list = param0->unk_00;
        param1->resourceData = param2;
        param1->position.x = 0;
        param1->position.y = 0;
        param1->position.z = 0;
        param1->affineScale.x = FX32_ONE;
        param1->affineScale.y = FX32_ONE;
        param1->affineScale.z = FX32_ONE;
        param1->affineZRotation = 0;
        param1->priority = 1;
        param1->vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        param1->heapID = HEAP_ID_76;
    }
}

UnkStruct_ov77_021D670C *ov77_021D670C(void)
{
    int v0 = sizeof(UnkStruct_ov77_021D670C);
    UnkStruct_ov77_021D670C *v1 = Heap_Alloc(HEAP_ID_76, v0);

    memset(v1, 0, v0);

    ov77_021D6800(&v1->unk_00);
    ov77_021D6964(&v1->unk_00);

    return v1;
}

UnkStruct_ov77_021D6734 *ov77_021D6734(const int param0)
{
    int v0;
    UnkStruct_ov77_021D6734 *v1 = Heap_Alloc(HEAP_ID_76, sizeof(UnkStruct_ov77_021D6734));
    v0 = sizeof(UnkStruct_ov77_021D6ADC) * param0;
    v1->unk_04 = Heap_Alloc(HEAP_ID_76, v0);

    memset(v1->unk_04, 0, v0);
    v1->unk_00 = param0;

    return v1;
}

void ov77_021D6760(UnkStruct_ov77_021D6734 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        if (param0->unk_04[v0].unk_08 != NULL) {
            SysTask_Done(param0->unk_04[v0].unk_08);
        }
    }

    Heap_Free(param0->unk_04);
    Heap_Free(param0);
}

Sprite **ov77_021D6794(UnkStruct_ov77_021D6734 *param0, const int param1)
{
    GF_ASSERT(param1 < param0->unk_00);
    return &param0->unk_04[param1].unk_04;
}

void ov77_021D67B0(UnkStruct_ov77_021D670C *param0)
{
    u8 v0;

    ov77_021D691C(&param0->unk_00);

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk_214[v0].unk_08 != NULL) {
            SysTask_Done(param0->unk_214[v0].unk_08);
        }
    }

    for (v0 = 0; v0 < 10; v0++) {
        if (param0->unk_00.unk_1B0[v0].unk_08 != NULL) {
            SysTask_Done(param0->unk_00.unk_1B0[v0].unk_08);
        }
    }

    Heap_Free(param0);
}

static void ov77_021D6800(UnkStruct_ov77_021D6800 *param0)
{
    int i;
    const int heapID = HEAP_ID_76;

    GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    ov77_021D6670();

    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 128, 0, 32, 0, 128, 0, 32, heapID);

    param0->unk_00 = SpriteList_InitRendering(10, &param0->unk_04, heapID);

    for (i = 0; i < 4; i++) {
        param0->unk_190[i] = SpriteResourceCollection_New(Unk_ov77_021D7930[i], i, heapID);
    }

    param0->unk_1A0[0] = SpriteResourceCollection_AddTiles(param0->unk_190[0], 128, 4, 0, 0, NNS_G2D_VRAM_TYPE_2DBOTH, heapID);
    param0->unk_1A0[1] = SpriteResourceCollection_AddPalette(param0->unk_190[1], 128, 3, 0, 0, NNS_G2D_VRAM_TYPE_2DBOTH, 1, heapID);
    param0->unk_1A0[2] = SpriteResourceCollection_Add(param0->unk_190[2], 128, 5, 0, 0, 2, heapID);
    param0->unk_1A0[3] = SpriteResourceCollection_Add(param0->unk_190[3], 128, 6, 0, 0, 3, heapID);

    SpriteTransfer_RequestChar(param0->unk_1A0[0]);
    SpriteTransfer_RequestPlttWholeRange(param0->unk_1A0[1]);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov77_021D691C(UnkStruct_ov77_021D6800 *param0)
{
    u8 v0;

    SpriteTransfer_ResetCharTransfer(param0->unk_1A0[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_1A0[1]);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_190[v0]);
    }

    SpriteList_Delete(param0->unk_00);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();
}

static void ov77_021D6964(UnkStruct_ov77_021D6800 *param0)
{
    int v0;
    SpriteResourcesHeader v1;
    AffineSpriteListTemplate v2;

    for (v0 = 0; v0 < 10; v0++) {
        ov77_021D66A0(param0, &v2, &v1);
        v2.position.x = FX32_ONE * v0 * 2;
        v2.position.y = FX32_ONE * v0 * 2;

        param0->unk_1B0[v0].unk_04 = SpriteList_AddAffine(&v2);

        Sprite_SetAnimateFlag(param0->unk_1B0[v0].unk_04, 0);
        Sprite_SetDrawFlag(param0->unk_1B0[v0].unk_04, FALSE);
    }
}

static void ov77_021D69B4(UnkStruct_ov77_021D6800 *param0)
{
    SpriteList_Update(param0->unk_00);
}

void ov77_021D69C0(UnkStruct_ov77_021D670C *param0, const int param1)
{
    if (param1 == 180) {
        ov77_021D6A0C(&param0->unk_214[0], param0, 3, 3, 3, 0);
    } else if (param1 == 285) {
        ov77_021D6A0C(&param0->unk_214[1], param0, 3, 3, 3, 1);
    }

    ov77_021D69B4(&param0->unk_00);
}

static void ov77_021D6A0C(UnkStruct_ov77_021D6A0C *param0, UnkStruct_ov77_021D670C *param1, const u8 param2, const u8 param3, const u8 param4, const u8 param5)
{
    param0->unk_00.unk_00 = param2;
    param0->unk_00.unk_01 = param3;
    param0->unk_00.unk_02 = param4;
    param0->unk_00.unk_04 = 0;
    param0->unk_00.unk_03 = 0;
    param0->unk_0C = param1->unk_00.unk_1B0;
    param0->unk_00.unk_05 = param5;
    param0->unk_08 = SysTask_Start(ov77_021D6B0C, param0, 10);
}

static void ov77_021D6A44(UnkStruct_ov77_021D6ADC *param0, const u8 param1, const u8 param2)
{
    u8 v0;
    UnkStruct_ov77_021D6ADC *v1;
    int v2;

    if (param2 == 0) {
        v2 = 64;
    } else {
        v2 = 32;
    }

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ov77_021D6ADC(param0, 10);

        {
            VecFx32 v3;

            v3 = *Sprite_GetPosition(v1->unk_04);
            v3.x = FX32_ONE * (64 + (LCRNG_Next() % 128));
            v3.y = FX32_ONE * (v2 + (LCRNG_Next() % 64));

            Sprite_SetPosition(v1->unk_04, &v3);
        }

        Sprite_SetAnimateFlag(v1->unk_04, 1);
        Sprite_SetDrawFlag(v1->unk_04, TRUE);

        v1->unk_08 = SysTask_Start(ov77_021D6B48, v1, 20);
    }
}

static UnkStruct_ov77_021D6ADC *ov77_021D6ADC(UnkStruct_ov77_021D6ADC *param0, const int param1)
{
    u8 v0;
    UnkStruct_ov77_021D6ADC *v1;

    for (v0 = 0; v0 < 10; v0++) {
        if (!param0[v0].unk_00) {
            v1 = &param0[v0];
            v1->unk_00 = 1;
            v1->unk_01 = 0;
            return v1;
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static void ov77_021D6B0C(SysTask *param0, void *param1)
{
    UnkStruct_ov77_021D6A0C *v0 = param1;
    UnkStruct_ov77_021D6B0C *v1 = &v0->unk_00;

    if (v1->unk_04++ >= v1->unk_01) {
        ov77_021D6A44(v0->unk_0C, v1->unk_00, v1->unk_05);
        v1->unk_04 = 0;

        if (++v1->unk_03 >= v1->unk_02) {
            SysTask_Done(param0);
            v0->unk_08 = NULL;
        }
    }
}

static void ov77_021D6B48(SysTask *param0, void *param1)
{
    UnkStruct_ov77_021D6ADC *v0 = param1;

    {
        VecFx32 v1;

        v1 = *Sprite_GetPosition(v0->unk_04);
        v1.y += (FX32_ONE * 3);

        Sprite_SetPosition(v0->unk_04, &v1);
    }

    v0->unk_01++;

    if (v0->unk_01 >= 80) {
        SysTask_Done(param0);
        v0->unk_08 = NULL;
        v0->unk_00 = 0;
        Sprite_SetAnimateFlag(v0->unk_04, 0);
        Sprite_SetDrawFlag(v0->unk_04, FALSE);
    }
}

void ov77_021D6BA0(UnkStruct_ov77_021D6734 *param0, int param1)
{
    ov77_021D6BAC(param0, 2, param1);
}

static void ov77_021D6BAC(UnkStruct_ov77_021D6734 *param0, const u8 param1, int param2)
{
    u8 v0;
    UnkStruct_ov77_021D6ADC *v1;
    UnkStruct_ov77_021D6ADC *v2;

    v1 = param0->unk_04;

    for (v0 = 0; v0 < param1; v0++) {
        v2 = ov77_021D6ADC(v1, param0->unk_00);

        {
            VecFx32 v3;

            v3 = *Sprite_GetPosition(v2->unk_04);
            v3.x = FX32_ONE * ((16 - 6) + (LCRNG_Next() % 224));
            v3.y = FX32_ONE * (192 + (64 - 6) + (LCRNG_Next() % 56));

            Sprite_SetPosition(v2->unk_04, &v3);
        }

        Sprite_SetAnimateFlag(v2->unk_04, 1);

        if (param2 == 0) {
            Sprite_SetDrawFlag(v2->unk_04, TRUE);
        } else {
            Sprite_SetDrawFlag(v2->unk_04, FALSE);
        }

        v2->unk_08 = SysTask_Start(ov77_021D6C44, v2, 20);
    }
}

static void ov77_021D6C44(SysTask *param0, void *param1)
{
    UnkStruct_ov77_021D6ADC *v0 = param1;

    v0->unk_01++;

    if (v0->unk_01 >= 8) {
        SysTask_Done(param0);
        v0->unk_08 = NULL;
        v0->unk_00 = 0;
        Sprite_SetAnimateFlag(v0->unk_04, 0);
        Sprite_SetDrawFlag(v0->unk_04, FALSE);
    }
}
