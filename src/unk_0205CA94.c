#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02009714_decl.h"
#include "struct_decls/struct_02009F38_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "trainer_info.h"

#include "struct_defs/struct_02009508.h"
#include "struct_defs/struct_02009CFC.h"
#include "struct_defs/struct_0200C738.h"
#include "functypes/sys_task_func.h"
#include "field/field_system.h"
#include "overlay115/struct_ov115_02261520.h"

#include "unk_02005474.h"
#include "unk_0200679C.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "unk_02025E08.h"
#include "trainer_info.h"
#include "unk_0205CA94.h"
#include "player_avatar.h"
#include "map_object.h"

typedef struct {
    GraphicElementManager * unk_00;
    UnkStruct_02009508 * unk_04;
    UnkStruct_02009714 * unk_08[4];
    UnkStruct_02009CFC * unk_18[2];
    int unk_20[4];
    UnkStruct_0200C738 unk_30;
} UnkStruct_0205D094;

typedef struct UnkStruct_0205D3AC_t {
    void * unk_00;
    void (* unk_04)(UnkStruct_0205D094 *, struct UnkStruct_0205D3AC_t *);
    void (* unk_08)(struct UnkStruct_0205D3AC_t *);
    int (* unk_0C)(struct UnkStruct_0205D3AC_t *);
} UnkStruct_0205D3AC;

typedef struct {
    FieldSystem * fieldSystem;
    UnkStruct_0205D094 unk_04;
    UnkStruct_0205D3AC unk_1C0[2];
    int unk_1E0;
    int unk_1E4;
    int unk_1E8;
    BOOL * unk_1EC;
} UnkStruct_0205D274;

typedef struct {
    VecFx32 unk_00;
    GraphicElementData * unk_0C;
    int unk_10;
} UnkStruct_0205D3C4;

typedef struct {
    VecFx32 unk_00;
    GraphicElementData * unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_0205D5E0;

typedef struct {
    VecFx32 unk_00;
    GraphicElementData * unk_0C;
    int unk_10;
} UnkStruct_0205D4A4;

static void sub_0205CA94(SysTask * param0, void * param1);
static void sub_0205CBFC(SysTask * param0, void * param1);
static void sub_0205CD3C(SysTask * param0, void * param1);
static void sub_0205CE7C(SysTask * param0, void * param1);
static UnkStruct_0205D274 * sub_0205D050(SysTaskFunc func, FieldSystem * fieldSystem, u32 param2);
static void sub_0205D080(SysTask * param0, UnkStruct_0205D274 * param1);
void sub_0205D094(UnkStruct_0205D094 * param0, int param1, u32 param2);
static void sub_0205D0AC(UnkStruct_0205D094 * param0);
static void sub_0205D274(UnkStruct_0205D274 * param0, UnkStruct_0205D3AC * param1, int param2);
static GraphicElementData * sub_0205D344(UnkStruct_0205D094 * param0, int param1, VecFx32 * param2, int param3, int param4);
static void sub_0205D3AC(UnkStruct_0205D3AC * param0);
static void sub_0205D0B4(UnkStruct_0205D094 * param0);
static void sub_0205D0D8(UnkStruct_0205D094 * param0, int param1, u32 param2);
static int sub_0205D1C4(UnkStruct_02009714 * param0, UnkStruct_02009CFC ** param1, u32 param2);
static void sub_0205D22C(UnkStruct_0205D094 * param0);
static void sub_0205D3C4(UnkStruct_0205D094 * param0, struct UnkStruct_0205D3AC_t * param1);
static void sub_0205D404(struct UnkStruct_0205D3AC_t * param0);
static int sub_0205D424(struct UnkStruct_0205D3AC_t * param0);
static void sub_0205D4A4(UnkStruct_0205D094 * param0, struct UnkStruct_0205D3AC_t * param1);
static void sub_0205D4E0(struct UnkStruct_0205D3AC_t * param0);
static int sub_0205D500(struct UnkStruct_0205D3AC_t * param0);
static void sub_0205D524(UnkStruct_0205D094 * param0, struct UnkStruct_0205D3AC_t * param1);
static void sub_0205D564(struct UnkStruct_0205D3AC_t * param0);
static int sub_0205D584(struct UnkStruct_0205D3AC_t * param0);
static void sub_0205D5E0(UnkStruct_0205D094 * param0, struct UnkStruct_0205D3AC_t * param1);
static void sub_0205D624(struct UnkStruct_0205D3AC_t * param0);
static int sub_0205D644(struct UnkStruct_0205D3AC_t * param0);
static void sub_0205D714(UnkStruct_0205D094 * param0, struct UnkStruct_0205D3AC_t * param1);
static void sub_0205D768(struct UnkStruct_0205D3AC_t * param0);
static int sub_0205D788(struct UnkStruct_0205D3AC_t * param0);
static void sub_0205D844(UnkStruct_0205D094 * param0, struct UnkStruct_0205D3AC_t * param1);
static void sub_0205D888(struct UnkStruct_0205D3AC_t * param0);
static int sub_0205D8A8(struct UnkStruct_0205D3AC_t * param0);

const static u8 Unk_020ED8B4[2][2] = {
    {0x2, 0x3},
    {0x5, 0x6}
};

const static u8 Unk_020ED8B0[4] = {
    NNS_G2D_VRAM_TYPE_2DMAIN,
    NNS_G2D_VRAM_TYPE_MAX,
    NNS_G2D_VRAM_TYPE_MAX,
    NNS_G2D_VRAM_TYPE_2DMAIN
};

void sub_0205CA94 (SysTask * param0, void * param1)
{
    UnkStruct_0205D274 * v0 = (UnkStruct_0205D274 *)param1;
    int v1[2];
    int v2;
    int v3;

    v3 = v0->unk_1E4;

    if (v0->unk_04.unk_00) {
        sub_020219F8(v0->unk_04.unk_00);
    }

    switch (v0->unk_1E4) {
    case 0:
        sub_02062DDC(Player_MapObject(v0->fieldSystem->playerAvatar));
        PlayerAvatar_SetHidden(v0->fieldSystem->playerAvatar, 0);
        v0->unk_1E4++;
        break;
    case 1:
        sub_0205D274(v0, &v0->unk_1C0[0], 0);
        sub_0205D274(v0, &v0->unk_1C0[1], 1);
        v0->unk_1E0 = 2;
        v0->unk_1E4++;
        break;
    case 2:
        for (v2 = 0; v2 < v0->unk_1E0; v2++) {
            v1[v2] = v0->unk_1C0[v2].unk_0C(&v0->unk_1C0[v2]);
        }

        if (v1[0] == 2) {
            sub_0200F174(0, 0, 0, 0x0, 6, 1, 4);
        }

        for (v2 = 0; v2 < v0->unk_1E0; v2++) {
            if (v1[v2] != 0) {
                break;
            }
        }

        if (v2 == v0->unk_1E0) {
            v0->unk_1E4++;
        }
        break;
    case 3:
        if (ScreenWipe_Done()) {
            v0->unk_1E4++;
        }
        break;
    case 4:
        for (v2 = 0; v2 < v0->unk_1E0; v2++) {
            sub_0205D3AC(&v0->unk_1C0[v2]);
        }

        v0->unk_1E4++;
        break;
    case 5:
        *(v0->unk_1EC) = 1;
        sub_0205D080(param0, v0);
        break;
    }
}

void sub_0205CBFC (SysTask * param0, void * param1)
{
    UnkStruct_0205D274 * v0 = (UnkStruct_0205D274 *)param1;
    int v1;
    int v2;
    u16 v3 = 0;

    v2 = v0->unk_1E4;

    if (v2 != 5) {
        sub_020219F8(v0->unk_04.unk_00);
    }

    switch (v0->unk_1E4) {
    case 0:
        PlayerAvatar_SetHidden(v0->fieldSystem->playerAvatar, 0);
        v0->unk_1E4++;
        break;
    case 1:
        sub_0201972C(4, &v3, 2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
        sub_0205D274(v0, &v0->unk_1C0[0], 2);
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 4);
        Sound_PlayEffect(1583);
        v0->unk_1E0 = 1;
        v0->unk_1E4++;
        break;
    case 2:
        v1 = v0->unk_1C0[0].unk_0C(&v0->unk_1C0[0]);

        if ((v1 == 0) && (ScreenWipe_Done())) {
            Sound_PlayEffect(1585);
            v0->unk_1E4++;
            v0->unk_1E8 = -255;
        }
        break;
    case 3:
        v0->unk_1E8 += 16;

        if (v0->unk_1E8 > 0) {
            v0->unk_1E4++;
            PlayerAvatar_SetHidden(v0->fieldSystem->playerAvatar, 1);
        }
        break;
    case 4:
        sub_0205D3AC(&v0->unk_1C0[0]);
        v0->unk_1E4++;
        break;
    case 5:
        *(v0->unk_1EC) = 1;
        sub_0205D080(param0, v0);
        break;
    }
}

void sub_0205CD3C (SysTask * param0, void * param1)
{
    UnkStruct_0205D274 * v0 = (UnkStruct_0205D274 *)param1;
    int v1;
    int v2;

    v2 = v0->unk_1E4;

    if (v2 != 6) {
        sub_020219F8(v0->unk_04.unk_00);
    }

    switch (v0->unk_1E4) {
    case 0:
        PlayerAvatar_SetHidden(v0->fieldSystem->playerAvatar, 0);
        v0->unk_1E4++;
        break;
    case 1:
        sub_0205D274(v0, &v0->unk_1C0[0], 3);
        Sound_PlayEffect(1584);
        v0->unk_1E0 = 1;
        v0->unk_1E4++;
        break;
    case 2:
        v0->unk_1E8 -= 32;

        if (v0->unk_1E8 < -255) {
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);

            v0->unk_1E4++;
        }
        break;
    case 3:
        v1 = v0->unk_1C0[0].unk_0C(&v0->unk_1C0[0]);

        if (v1 == 2) {
            v0->unk_1E8 = 0;
            sub_0200F174(0, 0, 0, 0x7fff, 6, 1, 4);
        }

        if (v1 == 0) {
            v0->unk_1E4++;
        }
        break;
    case 4:
        if (ScreenWipe_Done()) {
            v0->unk_1E8 = 0;
            v0->unk_1E4++;
        }
        break;
    case 5:
        sub_0205D3AC(&v0->unk_1C0[0]);
        v0->unk_1E4++;
        break;
    case 6:
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
        *(v0->unk_1EC) = 1;
        sub_0205D080(param0, v0);
        break;
    }
}

void sub_0205CE7C (SysTask * param0, void * param1)
{
    UnkStruct_0205D274 * v0 = (UnkStruct_0205D274 *)param1;
    int v1[2];
    int v2;
    int v3;

    v3 = v0->unk_1E4;

    if (v3 != 6) {
        sub_020219F8(v0->unk_04.unk_00);
    }

    switch (v0->unk_1E4) {
    case 0:
        PlayerAvatar_SetHidden(v0->fieldSystem->playerAvatar, 0);
        sub_0205D274(v0, &v0->unk_1C0[0], 4);
        sub_0205D274(v0, &v0->unk_1C0[1], 5);
        v0->unk_1E0 = 2;
        v0->unk_1E4++;
        break;
    case 1:
        sub_0200F174(0, 1, 1, 0x7fff, 6, 1, 4);
        v0->unk_1E4++;
        break;
    case 2:
        if (ScreenWipe_Done()) {
            Sound_PlayEffect(1586);
            v0->unk_1E4++;
        }
        break;
    case 3:
        v1[0] = v0->unk_1C0[0].unk_0C(&v0->unk_1C0[0]);

        if (v1[0] == 0) {
            PlayerAvatar_SetHidden(v0->fieldSystem->playerAvatar, 1);
            v0->unk_1E8 = 6;
            v0->unk_1E4++;
        }
        break;
    case 4:
        v1[1] = v0->unk_1C0[1].unk_0C(&v0->unk_1C0[1]);

        if (v0->unk_1E8 <= 0) {
            if (v0->unk_1E8 == 0) {
                sub_0205D3AC(&v0->unk_1C0[0]);
                v0->unk_1E8--;
            }
        } else {
            v0->unk_1E8--;
        }

        if (v1[1] == 0) {
            v0->unk_1E4++;
        }
        break;
    case 5:
        sub_0205D3AC(&v0->unk_1C0[1]);
        v0->unk_1E4++;
        break;
    case 6:
        *(v0->unk_1EC) = 1;
        sub_0205D080(param0, v0);
        break;
    }
}

void sub_0205CFDC (FieldSystem * fieldSystem, int param1, BOOL * param2)
{
    UnkStruct_0205D274 * v0;

    switch (param1) {
    case 0:
        v0 = sub_0205D050(sub_0205CA94, fieldSystem, Unk_020ED8B0[param1]);
        break;
    case 1:
        v0 = sub_0205D050(sub_0205CBFC, fieldSystem, Unk_020ED8B0[param1]);
        break;
    case 2:
        v0 = sub_0205D050(sub_0205CD3C, fieldSystem, Unk_020ED8B0[param1]);
        break;
    case 3:
        v0 = sub_0205D050(sub_0205CE7C, fieldSystem, Unk_020ED8B0[param1]);
        break;
    }

    v0->unk_1EC = param2;
    v0->fieldSystem = fieldSystem;
}

UnkStruct_0205D274 * sub_0205D050 (SysTaskFunc func, FieldSystem * fieldSystem, u32 param2)
{
    UnkStruct_0205D274 * v0;
    SysTask * v1;
    int v2;
    TrainerInfo * v3;

    v1 = SysTask_StartAndAllocateParam(func, sizeof(UnkStruct_0205D274), 5, 4);
    v0 = SysTask_GetParam(v1);
    v3 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    v2 = TrainerInfo_Gender(v3);

    sub_0205D094(&v0->unk_04, v2, param2);

    return v0;
}

void sub_0205D080 (SysTask * param0, UnkStruct_0205D274 * param1)
{
    sub_0205D0AC(&param1->unk_04);
    sub_020067D0(param0);
}

void sub_0205D094 (UnkStruct_0205D094 * param0, int param1, u32 param2)
{
    sub_0205D0B4(param0);
    sub_0205D0D8(param0, param1, param2);
}

void sub_0205D0AC (UnkStruct_0205D094 * param0)
{
    sub_0205D22C(param0);
}

static void sub_0205D0B4 (UnkStruct_0205D094 * param0)
{
    param0->unk_00 = sub_020095C4(2, &param0->unk_30, 4);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void sub_0205D0D8 (UnkStruct_0205D094 * param0, int param1, u32 param2)
{
    int v0;
    void * v1;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_08[v0] = sub_02009714(2, v0, 4);
    }

    param0->unk_20[0] = sub_0205D1C4(param0->unk_08[0], &param0->unk_18[0], Unk_020ED8B4[0][param1]);

    for (v0 = 0; v0 < param0->unk_18[0]->unk_08; v0++) {
        sub_02009F08(param0->unk_18[0]->unk_00[v0], param2);
    }

    param0->unk_20[1] = sub_0205D1C4(param0->unk_08[1], &param0->unk_18[1], Unk_020ED8B4[1][param1]);

    for (v0 = 0; v0 < param0->unk_18[1]->unk_08; v0++) {
        sub_02009F08(param0->unk_18[1]->unk_00[v0], param2);
    }

    param0->unk_20[2] = sub_0205D1C4(param0->unk_08[2], NULL, 0);
    param0->unk_20[3] = sub_0205D1C4(param0->unk_08[3], NULL, 1);

    sub_0200A41C(param0->unk_18[0]);
    sub_0200A684(param0->unk_18[1]);

    v1 = sub_02006FE8(177, 4, 0, 4, 0);
    param0->unk_04 = sub_02009508(v1, 4, param0->unk_08[0], param0->unk_08[1], param0->unk_08[2], param0->unk_08[3], NULL, NULL);

    Heap_FreeToHeap(v1);
}

static int sub_0205D1C4 (UnkStruct_02009714 * param0, UnkStruct_02009CFC ** param1, u32 param2)
{
    UnkStruct_02009F38 * v0;
    UnkStruct_02009CFC * v1;
    int v2;
    void * v3;

    v0 = Heap_AllocFromHeapAtEnd(4, sub_02009F34());
    v3 = sub_02006FE8(177, param2, 0, 4, 0);

    sub_02009F40(v3, v0, 4);
    Heap_FreeToHeap(v3);

    if (param1 != NULL) {
        v2 = sub_02009FA4(v0);
        *param1 = sub_02009CFC(v2, 4);
        v1 = *param1;
    } else {
        v1 = NULL;
    }

    v2 = sub_02009C80(param0, v0, v1, 4);

    sub_02009F8C(v0);
    Heap_FreeToHeap(v0);

    return v2;
}

static void sub_0205D22C (UnkStruct_0205D094 * param0)
{
    int v0;

    sub_02021964(param0->unk_00);
    param0->unk_00 = NULL;

    sub_020095A8(param0->unk_04);
    param0->unk_04 = NULL;

    sub_0200A508(param0->unk_18[0]);
    sub_0200A700(param0->unk_18[1]);

    for (v0 = 0; v0 < 2; v0++) {
        sub_02009D20(param0->unk_18[v0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_08[v0]);
    }
}

void sub_0205D274 (UnkStruct_0205D274 * param0, UnkStruct_0205D3AC * param1, int param2)
{
    memset(param1, 0, sizeof(UnkStruct_0205D3AC));

    switch (param2) {
    case 0:
        param1->unk_04 = sub_0205D3C4;
        param1->unk_08 = sub_0205D404;
        param1->unk_0C = sub_0205D424;
        break;
    case 1:
        param1->unk_04 = sub_0205D4A4;
        param1->unk_08 = sub_0205D4E0;
        param1->unk_0C = sub_0205D500;
        break;
    case 2:
        param1->unk_04 = sub_0205D524;
        param1->unk_08 = sub_0205D564;
        param1->unk_0C = sub_0205D584;
        break;
    case 3:
        param1->unk_04 = sub_0205D5E0;
        param1->unk_08 = sub_0205D624;
        param1->unk_0C = sub_0205D644;
        break;
    case 4:
        param1->unk_04 = sub_0205D714;
        param1->unk_08 = sub_0205D768;
        param1->unk_0C = sub_0205D788;
        break;
    case 5:
        param1->unk_04 = sub_0205D844;
        param1->unk_08 = sub_0205D888;
        param1->unk_0C = sub_0205D8A8;
        break;
    }

    param1->unk_04(&param0->unk_04, param1);
}

static GraphicElementData * sub_0205D344 (UnkStruct_0205D094 * param0, int param1, VecFx32 * param2, int param3, int param4)
{
    UnkStruct_ov115_02261520 v0;
    GraphicElementData * v1;
    VecFx32 v2 = {FX32_ONE, FX32_ONE, FX32_ONE};

    memset(&v0, 0, sizeof(UnkStruct_ov115_02261520));

    v0.unk_00 = param0->unk_00;
    v0.unk_04 = &param0->unk_04->unk_00[param1];
    v0.unk_08 = *param2;
    v0.unk_14 = v2;
    v0.unk_24 = param3;
    v0.unk_28 = param4;
    v0.unk_2C = 4;

    v1 = sub_02021AA0(&v0);
    GF_ASSERT(v1);

    return v1;
}

void sub_0205D3AC (UnkStruct_0205D3AC * param0)
{
    param0->unk_08(param0);
    memset(param0, 0, sizeof(UnkStruct_0205D3AC));
}

void sub_0205D3C4 (UnkStruct_0205D094 * param0, struct UnkStruct_0205D3AC_t * param1)
{
    UnkStruct_0205D3C4 * v0;

    param1->unk_00 = Heap_AllocFromHeap(4, sizeof(UnkStruct_0205D3C4));
    memset(param1->unk_00, 0, sizeof(UnkStruct_0205D3C4));

    v0 = (UnkStruct_0205D3C4 *)param1->unk_00;

    v0->unk_00.x = (112 * FX32_ONE);
    v0->unk_00.y = (69 * FX32_ONE);
    v0->unk_0C = sub_0205D344(param0, 0, &v0->unk_00, 0, 1);
}

void sub_0205D404 (struct UnkStruct_0205D3AC_t * param0)
{
    UnkStruct_0205D3C4 * v0 = (UnkStruct_0205D3C4 *)param0->unk_00;

    if (param0->unk_00 != NULL) {
        sub_02021BD4(v0->unk_0C);
        Heap_FreeToHeapExplicit(4, param0->unk_00);

        param0->unk_00 = NULL;
    }
}

int sub_0205D424 (struct UnkStruct_0205D3AC_t * param0)
{
    VecFx32 v0;
    UnkStruct_0205D3C4 * v1 = (UnkStruct_0205D3C4 *)param0->unk_00;

    if (v1->unk_10 <= 0x8000) {
        v0 = v1->unk_00;
        v0.y -= FX_Mul(FX_SinIdx(v1->unk_10), (16 * FX32_ONE));

        sub_02021C50(v1->unk_0C, &v0);
        v1->unk_10 += (0x8000 / 16);
        sub_02021E2C(v1->unk_0C, FX32_ONE);

        if (v1->unk_10 == ((0x8000 / 16) * 16)) {
            return 2;
        } else {
            return 1;
        }
    }

    return 0;
}

void sub_0205D4A4 (UnkStruct_0205D094 * param0, struct UnkStruct_0205D3AC_t * param1)
{
    UnkStruct_0205D4A4 * v0;

    param1->unk_00 = Heap_AllocFromHeap(4, sizeof(UnkStruct_0205D4A4));
    memset(param1->unk_00, 0, sizeof(UnkStruct_0205D4A4));

    v0 = (UnkStruct_0205D4A4 *)param1->unk_00;

    v0->unk_00.x = (112 * FX32_ONE);
    v0->unk_00.y = 96 * FX32_ONE;
    v0->unk_0C = sub_0205D344(param0, 1, &v0->unk_00, 1, 1);
}

void sub_0205D4E0 (struct UnkStruct_0205D3AC_t * param0)
{
    UnkStruct_0205D4A4 * v0 = (UnkStruct_0205D4A4 *)param0->unk_00;

    if (param0->unk_00 != NULL) {
        sub_02021BD4(v0->unk_0C);
        Heap_FreeToHeapExplicit(4, param0->unk_00);

        param0->unk_00 = NULL;
    }
}

int sub_0205D500 (struct UnkStruct_0205D3AC_t * param0)
{
    UnkStruct_0205D4A4 * v0 = (UnkStruct_0205D4A4 *)param0->unk_00;

    if (v0->unk_10 < 7) {
        sub_02021E2C(v0->unk_0C, FX32_ONE);
        v0->unk_10++;
        return 1;
    }

    return 0;
}

void sub_0205D524 (UnkStruct_0205D094 * param0, struct UnkStruct_0205D3AC_t * param1)
{
    UnkStruct_0205D3C4 * v0;

    param1->unk_00 = Heap_AllocFromHeap(4, sizeof(UnkStruct_0205D3C4));
    memset(param1->unk_00, 0, sizeof(UnkStruct_0205D3C4));

    v0 = (UnkStruct_0205D3C4 *)param1->unk_00;

    v0->unk_00.x = (112 * FX32_ONE);
    v0->unk_00.y = (192 * FX32_ONE);
    v0->unk_0C = sub_0205D344(param0, 0, &v0->unk_00, 0, 1);
}

void sub_0205D564 (struct UnkStruct_0205D3AC_t * param0)
{
    UnkStruct_0205D3C4 * v0 = (UnkStruct_0205D3C4 *)param0->unk_00;

    if (param0->unk_00 != NULL) {
        sub_02021BD4(v0->unk_0C);
        Heap_FreeToHeapExplicit(4, param0->unk_00);
        param0->unk_00 = NULL;
    }
}

int sub_0205D584 (struct UnkStruct_0205D3AC_t * param0)
{
    UnkStruct_0205D3C4 * v0 = (UnkStruct_0205D3C4 *)param0->unk_00;

    v0->unk_00.y += (FX32_ONE * 8);

    sub_02021C50(v0->unk_0C, &v0->unk_00);
    sub_02021E2C(v0->unk_0C, FX32_ONE);

    if (v0->unk_10 == 0) {
        if (v0->unk_00.y >= (384 * FX32_ONE)) {
            v0->unk_00.y = (-32 * FX32_ONE);
            v0->unk_10++;
        }
    } else {
        if (v0->unk_00.y >= ((69 * FX32_ONE))) {
            v0->unk_00.y = ((69 * FX32_ONE));
            sub_02021C50(v0->unk_0C, &v0->unk_00);
            return 0;
        }
    }

    return 1;
}

void sub_0205D5E0 (UnkStruct_0205D094 * param0, struct UnkStruct_0205D3AC_t * param1)
{
    UnkStruct_0205D5E0 * v0;

    param1->unk_00 = Heap_AllocFromHeap(4, sizeof(UnkStruct_0205D5E0));
    memset(param1->unk_00, 0, sizeof(UnkStruct_0205D5E0));

    v0 = (UnkStruct_0205D5E0 *)param1->unk_00;

    v0->unk_00.x = (112 * FX32_ONE);
    v0->unk_00.y = (69 * FX32_ONE);
    v0->unk_0C = sub_0205D344(param0, 0, &v0->unk_00, 0, 1);

    SpriteActor_SetSpriteAnimActive(v0->unk_0C, 1);
}

void sub_0205D624 (struct UnkStruct_0205D3AC_t * param0)
{
    UnkStruct_0205D5E0 * v0 = (UnkStruct_0205D5E0 *)param0->unk_00;

    if (param0->unk_00 != NULL) {
        sub_02021BD4(v0->unk_0C);
        Heap_FreeToHeapExplicit(4, param0->unk_00);

        param0->unk_00 = NULL;
    }
}

int sub_0205D644 (struct UnkStruct_0205D3AC_t * param0)
{
    UnkStruct_0205D5E0 * v0 = (UnkStruct_0205D5E0 *)param0->unk_00;
    int v1 = 1;

    switch (v0->unk_10) {
    case 0:
        v0->unk_14 += (FX32_CONST(0.20f));
        sub_02021E2C(v0->unk_0C, v0->unk_14);

        if (v0->unk_14 >= (2 * FX32_ONE)) {
            v0->unk_10++;
        }
        break;
    case 1:
        if (v0->unk_00.y > (-32 * FX32_ONE)) {
            v0->unk_00.y -= (FX32_ONE * 8);
            sub_02021C50(v0->unk_0C, &v0->unk_00);
            sub_02021E2C(v0->unk_0C, v0->unk_14);
        } else {
            v0->unk_00.y = (384 * FX32_ONE);
            v0->unk_10++;
        }
        break;
    case 2:
        v0->unk_00.y -= (FX32_ONE * 8);

        sub_02021C50(v0->unk_0C, &v0->unk_00);
        sub_02021E2C(v0->unk_0C, v0->unk_14);

        if ((v0->unk_00.y < (300 * FX32_ONE))) {
            v1 = 2;
            v0->unk_10++;
        }
        break;
    case 3:
        if (v0->unk_00.y > (192 * FX32_ONE)) {
            v0->unk_00.y -= (FX32_ONE * 8);
            sub_02021C50(v0->unk_0C, &v0->unk_00);
            sub_02021E2C(v0->unk_0C, v0->unk_14);
        } else {
            v0->unk_10++;
        }
        break;
    case 4:
        v1 = 0;
        break;
    }

    return v1;
}

void sub_0205D714 (UnkStruct_0205D094 * param0, struct UnkStruct_0205D3AC_t * param1)
{
    UnkStruct_0205D5E0 * v0;

    param1->unk_00 = Heap_AllocFromHeap(4, sizeof(UnkStruct_0205D5E0));
    memset(param1->unk_00, 0, sizeof(UnkStruct_0205D5E0));

    v0 = (UnkStruct_0205D5E0 *)param1->unk_00;

    v0->unk_00.x = (112 * FX32_ONE);
    v0->unk_00.y = (69 * FX32_ONE);
    v0->unk_0C = sub_0205D344(param0, 0, &v0->unk_00, 0, 1);

    SpriteActor_SetSpriteAnimActive(v0->unk_0C, 1);
    v0->unk_14 = (2 * FX32_ONE);
    sub_02021CAC(v0->unk_0C, 0);
}

void sub_0205D768 (struct UnkStruct_0205D3AC_t * param0)
{
    UnkStruct_0205D5E0 * v0 = (UnkStruct_0205D5E0 *)param0->unk_00;

    if (param0->unk_00 != NULL) {
        sub_02021BD4(v0->unk_0C);
        Heap_FreeToHeapExplicit(4, param0->unk_00);
        param0->unk_00 = NULL;
    }
}

int sub_0205D788 (struct UnkStruct_0205D3AC_t * param0)
{
    VecFx32 v0;
    UnkStruct_0205D5E0 * v1 = (UnkStruct_0205D5E0 *)param0->unk_00;
    int v2 = 1;

    switch (v1->unk_10) {
    case 0:
        sub_02021CAC(v1->unk_0C, 1);
        v1->unk_10++;
        break;
    case 1:
        if (v1->unk_14 <= 0x8000) {
            v0 = v1->unk_00;
            v0.y -= FX_Mul(FX_SinIdx(v1->unk_14), (32 * FX32_ONE));

            sub_02021C50(v1->unk_0C, &v0);
            v1->unk_14 += (0x8000 / 8);
            sub_02021E2C(v1->unk_0C, FX32_ONE);
        } else {
            v1->unk_10++;
        }
        break;
    case 2:
        v1->unk_14 -= (FX32_CONST(0.40f));
        sub_02021E2C(v1->unk_0C, v1->unk_14);

        if (v1->unk_14 <= 0) {
            v1->unk_10++;
        }
        break;
    case 3:
        v2 = 0;
        break;
    }

    return v2;
}

void sub_0205D844 (UnkStruct_0205D094 * param0, struct UnkStruct_0205D3AC_t * param1)
{
    UnkStruct_0205D4A4 * v0;

    param1->unk_00 = Heap_AllocFromHeap(4, sizeof(UnkStruct_0205D4A4));
    memset(param1->unk_00, 0, sizeof(UnkStruct_0205D4A4));

    v0 = (UnkStruct_0205D4A4 *)param1->unk_00;

    v0->unk_00.x = (112 * FX32_ONE);
    v0->unk_00.y = 96 * FX32_ONE;
    v0->unk_0C = sub_0205D344(param0, 1, &v0->unk_00, 1, 1);

    SpriteActor_SetSpriteAnimActive(v0->unk_0C, 1);
}

void sub_0205D888 (struct UnkStruct_0205D3AC_t * param0)
{
    UnkStruct_0205D4A4 * v0 = (UnkStruct_0205D4A4 *)param0->unk_00;

    if (param0->unk_00 != NULL) {
        sub_02021BD4(v0->unk_0C);
        Heap_FreeToHeapExplicit(4, param0->unk_00);
        param0->unk_00 = NULL;
    }
}

int sub_0205D8A8 (struct UnkStruct_0205D3AC_t * param0)
{
    UnkStruct_0205D4A4 * v0 = (UnkStruct_0205D4A4 *)param0->unk_00;

    if (v0->unk_10 < 8) {
        sub_02021E2C(v0->unk_0C, FX32_ONE);
        v0->unk_10++;
        return 1;
    }

    return 0;
}
