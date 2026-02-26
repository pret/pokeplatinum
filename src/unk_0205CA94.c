#include "unk_0205CA94.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"

#include "bg_window.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "map_object.h"
#include "player_avatar.h"
#include "save_player.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "sys_task_manager.h"
#include "trainer_info.h"
#include "unk_0200679C.h"

typedef struct {
    SpriteList *unk_00;
    SpriteResourcesHeaderList *unk_04;
    SpriteResourceCollection *unk_08[4];
    SpriteResourceList *unk_18[2];
    int unk_20[4];
    G2dRenderer unk_30;
} UnkStruct_0205D094;

typedef struct UnkStruct_0205D3AC_t {
    void *unk_00;
    void (*unk_04)(UnkStruct_0205D094 *, struct UnkStruct_0205D3AC_t *);
    void (*unk_08)(struct UnkStruct_0205D3AC_t *);
    int (*unk_0C)(struct UnkStruct_0205D3AC_t *);
} UnkStruct_0205D3AC;

typedef struct {
    FieldSystem *fieldSystem;
    UnkStruct_0205D094 unk_04;
    UnkStruct_0205D3AC unk_1C0[2];
    int unk_1E0;
    int unk_1E4;
    int unk_1E8;
    BOOL *unk_1EC;
} UnkStruct_0205D274;

typedef struct {
    VecFx32 unk_00;
    Sprite *unk_0C;
    int unk_10;
} UnkStruct_0205D3C4;

typedef struct {
    VecFx32 unk_00;
    Sprite *unk_0C;
    int unk_10;
    int unk_14;
} UnkStruct_0205D5E0;

typedef struct {
    VecFx32 unk_00;
    Sprite *unk_0C;
    int unk_10;
} UnkStruct_0205D4A4;

static void sub_0205CA94(SysTask *param0, void *param1);
static void sub_0205CBFC(SysTask *param0, void *param1);
static void sub_0205CD3C(SysTask *param0, void *param1);
static void sub_0205CE7C(SysTask *param0, void *param1);
static UnkStruct_0205D274 *sub_0205D050(SysTaskFunc func, FieldSystem *fieldSystem, u32 param2);
static void sub_0205D080(SysTask *param0, UnkStruct_0205D274 *param1);
void sub_0205D094(UnkStruct_0205D094 *param0, int param1, u32 param2);
static void sub_0205D0AC(UnkStruct_0205D094 *param0);
static void sub_0205D274(UnkStruct_0205D274 *param0, UnkStruct_0205D3AC *param1, int param2);
static Sprite *sub_0205D344(UnkStruct_0205D094 *param0, int param1, VecFx32 *param2, int param3, int param4);
static void sub_0205D3AC(UnkStruct_0205D3AC *param0);
static void sub_0205D0B4(UnkStruct_0205D094 *param0);
static void sub_0205D0D8(UnkStruct_0205D094 *param0, int param1, u32 param2);
static int sub_0205D1C4(SpriteResourceCollection *param0, SpriteResourceList **param1, u32 param2);
static void sub_0205D22C(UnkStruct_0205D094 *param0);
static void sub_0205D3C4(UnkStruct_0205D094 *param0, struct UnkStruct_0205D3AC_t *param1);
static void sub_0205D404(struct UnkStruct_0205D3AC_t *param0);
static int sub_0205D424(struct UnkStruct_0205D3AC_t *param0);
static void sub_0205D4A4(UnkStruct_0205D094 *param0, struct UnkStruct_0205D3AC_t *param1);
static void sub_0205D4E0(struct UnkStruct_0205D3AC_t *param0);
static int sub_0205D500(struct UnkStruct_0205D3AC_t *param0);
static void sub_0205D524(UnkStruct_0205D094 *param0, struct UnkStruct_0205D3AC_t *param1);
static void sub_0205D564(struct UnkStruct_0205D3AC_t *param0);
static int sub_0205D584(struct UnkStruct_0205D3AC_t *param0);
static void sub_0205D5E0(UnkStruct_0205D094 *param0, struct UnkStruct_0205D3AC_t *param1);
static void sub_0205D624(struct UnkStruct_0205D3AC_t *param0);
static int sub_0205D644(struct UnkStruct_0205D3AC_t *param0);
static void sub_0205D714(UnkStruct_0205D094 *param0, struct UnkStruct_0205D3AC_t *param1);
static void sub_0205D768(struct UnkStruct_0205D3AC_t *param0);
static int sub_0205D788(struct UnkStruct_0205D3AC_t *param0);
static void sub_0205D844(UnkStruct_0205D094 *param0, struct UnkStruct_0205D3AC_t *param1);
static void sub_0205D888(struct UnkStruct_0205D3AC_t *param0);
static int sub_0205D8A8(struct UnkStruct_0205D3AC_t *param0);

const static u8 Unk_020ED8B4[2][2] = {
    { 0x2, 0x3 },
    { 0x5, 0x6 }
};

const static u8 Unk_020ED8B0[4] = {
    NNS_G2D_VRAM_TYPE_2DMAIN,
    NNS_G2D_VRAM_TYPE_2DBOTH,
    NNS_G2D_VRAM_TYPE_2DBOTH,
    NNS_G2D_VRAM_TYPE_2DMAIN
};

void sub_0205CA94(SysTask *param0, void *param1)
{
    UnkStruct_0205D274 *v0 = (UnkStruct_0205D274 *)param1;
    int v1[2];
    int v2;
    int v3 = v0->unk_1E4;

    if (v0->unk_04.unk_00) {
        SpriteList_Update(v0->unk_04.unk_00);
    }

    switch (v0->unk_1E4) {
    case 0:
        MapObject_SetPauseMovementOff(Player_MapObject(v0->fieldSystem->playerAvatar));
        PlayerAvatar_SetVisible(v0->fieldSystem->playerAvatar, 0);
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
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
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
        if (IsScreenFadeDone()) {
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

void sub_0205CBFC(SysTask *param0, void *param1)
{
    UnkStruct_0205D274 *v0 = (UnkStruct_0205D274 *)param1;
    int v1;
    int v2;
    u16 v3 = 0;

    v2 = v0->unk_1E4;

    if (v2 != 5) {
        SpriteList_Update(v0->unk_04.unk_00);
    }

    switch (v0->unk_1E4) {
    case 0:
        PlayerAvatar_SetVisible(v0->fieldSystem->playerAvatar, 0);
        v0->unk_1E4++;
        break;
    case 1:
        Bg_LoadPalette(4, &v3, 2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
        sub_0205D274(v0, &v0->unk_1C0[0], 2);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_FIELD1);
        Sound_PlayEffect(SEQ_SE_DP_PYUU);
        v0->unk_1E0 = 1;
        v0->unk_1E4++;
        break;
    case 2:
        v1 = v0->unk_1C0[0].unk_0C(&v0->unk_1C0[0]);

        if ((v1 == 0) && (IsScreenFadeDone())) {
            Sound_PlayEffect(SEQ_SE_DP_SUTYA);
            v0->unk_1E4++;
            v0->unk_1E8 = -255;
        }
        break;
    case 3:
        v0->unk_1E8 += 16;

        if (v0->unk_1E8 > 0) {
            v0->unk_1E4++;
            PlayerAvatar_SetVisible(v0->fieldSystem->playerAvatar, 1);
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

void sub_0205CD3C(SysTask *param0, void *param1)
{
    UnkStruct_0205D274 *v0 = (UnkStruct_0205D274 *)param1;
    int v1;
    int v2 = v0->unk_1E4;

    if (v2 != 6) {
        SpriteList_Update(v0->unk_04.unk_00);
    }

    switch (v0->unk_1E4) {
    case 0:
        PlayerAvatar_SetVisible(v0->fieldSystem->playerAvatar, 0);
        v0->unk_1E4++;
        break;
    case 1:
        sub_0205D274(v0, &v0->unk_1C0[0], 3);
        Sound_PlayEffect(SEQ_SE_DP_PYUU2);
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
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 6, 1, HEAP_ID_FIELD1);
        }

        if (v1 == 0) {
            v0->unk_1E4++;
        }
        break;
    case 4:
        if (IsScreenFadeDone()) {
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

void sub_0205CE7C(SysTask *param0, void *param1)
{
    UnkStruct_0205D274 *v0 = (UnkStruct_0205D274 *)param1;
    int v1[2];
    int v2;
    int v3 = v0->unk_1E4;

    if (v3 != 6) {
        SpriteList_Update(v0->unk_04.unk_00);
    }

    switch (v0->unk_1E4) {
    case 0:
        PlayerAvatar_SetVisible(v0->fieldSystem->playerAvatar, 0);
        sub_0205D274(v0, &v0->unk_1C0[0], 4);
        sub_0205D274(v0, &v0->unk_1C0[1], 5);
        v0->unk_1E0 = 2;
        v0->unk_1E4++;
        break;
    case 1:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 6, 1, HEAP_ID_FIELD1);
        v0->unk_1E4++;
        break;
    case 2:
        if (IsScreenFadeDone()) {
            Sound_PlayEffect(SEQ_SE_DP_GYURU);
            v0->unk_1E4++;
        }
        break;
    case 3:
        v1[0] = v0->unk_1C0[0].unk_0C(&v0->unk_1C0[0]);

        if (v1[0] == 0) {
            PlayerAvatar_SetVisible(v0->fieldSystem->playerAvatar, 1);
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

void sub_0205CFDC(FieldSystem *fieldSystem, int param1, BOOL *param2)
{
    UnkStruct_0205D274 *v0;

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

UnkStruct_0205D274 *sub_0205D050(SysTaskFunc func, FieldSystem *fieldSystem, u32 param2)
{
    UnkStruct_0205D274 *v0;
    SysTask *v1;
    int v2;
    TrainerInfo *v3;

    v1 = SysTask_StartAndAllocateParam(func, sizeof(UnkStruct_0205D274), 5, 4);
    v0 = SysTask_GetParam(v1);
    v3 = SaveData_GetTrainerInfo(fieldSystem->saveData);
    v2 = TrainerInfo_Gender(v3);

    sub_0205D094(&v0->unk_04, v2, param2);

    return v0;
}

void sub_0205D080(SysTask *param0, UnkStruct_0205D274 *param1)
{
    sub_0205D0AC(&param1->unk_04);
    SysTask_FinishAndFreeParam(param0);
}

void sub_0205D094(UnkStruct_0205D094 *param0, int param1, u32 param2)
{
    sub_0205D0B4(param0);
    sub_0205D0D8(param0, param1, param2);
}

void sub_0205D0AC(UnkStruct_0205D094 *param0)
{
    sub_0205D22C(param0);
}

static void sub_0205D0B4(UnkStruct_0205D094 *param0)
{
    param0->unk_00 = SpriteList_InitRendering(2, &param0->unk_30, HEAP_ID_FIELD1);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void sub_0205D0D8(UnkStruct_0205D094 *param0, int param1, u32 param2)
{
    int v0;
    void *v1;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_08[v0] = SpriteResourceCollection_New(2, v0, HEAP_ID_FIELD1);
    }

    param0->unk_20[0] = sub_0205D1C4(param0->unk_08[0], &param0->unk_18[0], Unk_020ED8B4[0][param1]);

    for (v0 = 0; v0 < param0->unk_18[0]->count; v0++) {
        SpriteResource_SetVRAMType(param0->unk_18[0]->resources[v0], param2);
    }

    param0->unk_20[1] = sub_0205D1C4(param0->unk_08[1], &param0->unk_18[1], Unk_020ED8B4[1][param1]);

    for (v0 = 0; v0 < param0->unk_18[1]->count; v0++) {
        SpriteResource_SetVRAMType(param0->unk_18[1]->resources[v0], param2);
    }

    param0->unk_20[2] = sub_0205D1C4(param0->unk_08[2], NULL, 0);
    param0->unk_20[3] = sub_0205D1C4(param0->unk_08[3], NULL, 1);

    SpriteTransfer_RequestCharListAtEnd(param0->unk_18[0]);
    SpriteTransfer_RequestPlttFreeSpaceList(param0->unk_18[1]);

    v1 = LoadMemberFromNARC(NARC_INDEX_DATA__UGROUNDEFFECT, 4, 0, HEAP_ID_FIELD1, 0);
    param0->unk_04 = SpriteResourcesHeaderList_NewFromResdat(v1, 4, param0->unk_08[0], param0->unk_08[1], param0->unk_08[2], param0->unk_08[3], NULL, NULL);

    Heap_Free(v1);
}

static int sub_0205D1C4(SpriteResourceCollection *param0, SpriteResourceList **param1, u32 param2)
{
    SpriteResourceTable *v0;
    SpriteResourceList *v1;
    int v2;
    void *v3;

    v0 = Heap_AllocAtEnd(HEAP_ID_FIELD1, SpriteResourceTable_Size());
    v3 = LoadMemberFromNARC(NARC_INDEX_DATA__UGROUNDEFFECT, param2, 0, HEAP_ID_FIELD1, 0);

    SpriteResourceTable_LoadFromBinary(v3, v0, HEAP_ID_FIELD1);
    Heap_Free(v3);

    if (param1 != NULL) {
        v2 = SpriteResourceTable_GetCount(v0);
        *param1 = SpriteResourceList_New(v2, HEAP_ID_FIELD1);
        v1 = *param1;
    } else {
        v1 = NULL;
    }

    v2 = SpriteResourceCollection_Extend(param0, v0, v1, HEAP_ID_FIELD1);

    SpriteResourceTable_Clear(v0);
    Heap_Free(v0);

    return v2;
}

static void sub_0205D22C(UnkStruct_0205D094 *param0)
{
    int v0;

    SpriteList_Delete(param0->unk_00);
    param0->unk_00 = NULL;

    SpriteResourcesHeaderList_Free(param0->unk_04);
    param0->unk_04 = NULL;

    SpriteTransfer_ResetCharTransferList(param0->unk_18[0]);
    SpriteTransfer_ResetPlttTransferList(param0->unk_18[1]);

    for (v0 = 0; v0 < 2; v0++) {
        SpriteResourceList_Delete(param0->unk_18[v0]);
    }

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0->unk_08[v0]);
    }
}

void sub_0205D274(UnkStruct_0205D274 *param0, UnkStruct_0205D3AC *param1, int param2)
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

static Sprite *sub_0205D344(UnkStruct_0205D094 *param0, int param1, VecFx32 *param2, int param3, int param4)
{
    AffineSpriteListTemplate v0;
    Sprite *v1;
    VecFx32 v2 = { FX32_ONE, FX32_ONE, FX32_ONE };

    memset(&v0, 0, sizeof(AffineSpriteListTemplate));

    v0.list = param0->unk_00;
    v0.resourceData = &param0->unk_04->headers[param1];
    v0.position = *param2;
    v0.affineScale = v2;
    v0.priority = param3;
    v0.vramType = param4;
    v0.heapID = HEAP_ID_FIELD1;

    v1 = SpriteList_AddAffine(&v0);
    GF_ASSERT(v1);

    return v1;
}

void sub_0205D3AC(UnkStruct_0205D3AC *param0)
{
    param0->unk_08(param0);
    memset(param0, 0, sizeof(UnkStruct_0205D3AC));
}

void sub_0205D3C4(UnkStruct_0205D094 *param0, struct UnkStruct_0205D3AC_t *param1)
{
    UnkStruct_0205D3C4 *v0;

    param1->unk_00 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_0205D3C4));
    memset(param1->unk_00, 0, sizeof(UnkStruct_0205D3C4));

    v0 = (UnkStruct_0205D3C4 *)param1->unk_00;

    v0->unk_00.x = (112 * FX32_ONE);
    v0->unk_00.y = (69 * FX32_ONE);
    v0->unk_0C = sub_0205D344(param0, 0, &v0->unk_00, 0, 1);
}

void sub_0205D404(struct UnkStruct_0205D3AC_t *param0)
{
    UnkStruct_0205D3C4 *v0 = (UnkStruct_0205D3C4 *)param0->unk_00;

    if (param0->unk_00 != NULL) {
        Sprite_Delete(v0->unk_0C);
        Heap_FreeExplicit(HEAP_ID_FIELD1, param0->unk_00);

        param0->unk_00 = NULL;
    }
}

int sub_0205D424(struct UnkStruct_0205D3AC_t *param0)
{
    VecFx32 v0;
    UnkStruct_0205D3C4 *v1 = (UnkStruct_0205D3C4 *)param0->unk_00;

    if (v1->unk_10 <= 0x8000) {
        v0 = v1->unk_00;
        v0.y -= FX_Mul(FX_SinIdx(v1->unk_10), (16 * FX32_ONE));

        Sprite_SetPosition(v1->unk_0C, &v0);
        v1->unk_10 += (0x8000 / 16);
        Sprite_UpdateAnim(v1->unk_0C, FX32_ONE);

        if (v1->unk_10 == ((0x8000 / 16) * 16)) {
            return 2;
        } else {
            return 1;
        }
    }

    return 0;
}

void sub_0205D4A4(UnkStruct_0205D094 *param0, struct UnkStruct_0205D3AC_t *param1)
{
    UnkStruct_0205D4A4 *v0;

    param1->unk_00 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_0205D4A4));
    memset(param1->unk_00, 0, sizeof(UnkStruct_0205D4A4));

    v0 = (UnkStruct_0205D4A4 *)param1->unk_00;

    v0->unk_00.x = (112 * FX32_ONE);
    v0->unk_00.y = 96 * FX32_ONE;
    v0->unk_0C = sub_0205D344(param0, 1, &v0->unk_00, 1, 1);
}

void sub_0205D4E0(struct UnkStruct_0205D3AC_t *param0)
{
    UnkStruct_0205D4A4 *v0 = (UnkStruct_0205D4A4 *)param0->unk_00;

    if (param0->unk_00 != NULL) {
        Sprite_Delete(v0->unk_0C);
        Heap_FreeExplicit(HEAP_ID_FIELD1, param0->unk_00);

        param0->unk_00 = NULL;
    }
}

int sub_0205D500(struct UnkStruct_0205D3AC_t *param0)
{
    UnkStruct_0205D4A4 *v0 = (UnkStruct_0205D4A4 *)param0->unk_00;

    if (v0->unk_10 < 7) {
        Sprite_UpdateAnim(v0->unk_0C, FX32_ONE);
        v0->unk_10++;
        return 1;
    }

    return 0;
}

void sub_0205D524(UnkStruct_0205D094 *param0, struct UnkStruct_0205D3AC_t *param1)
{
    UnkStruct_0205D3C4 *v0;

    param1->unk_00 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_0205D3C4));
    memset(param1->unk_00, 0, sizeof(UnkStruct_0205D3C4));

    v0 = (UnkStruct_0205D3C4 *)param1->unk_00;

    v0->unk_00.x = (112 * FX32_ONE);
    v0->unk_00.y = (192 * FX32_ONE);
    v0->unk_0C = sub_0205D344(param0, 0, &v0->unk_00, 0, 1);
}

void sub_0205D564(struct UnkStruct_0205D3AC_t *param0)
{
    UnkStruct_0205D3C4 *v0 = (UnkStruct_0205D3C4 *)param0->unk_00;

    if (param0->unk_00 != NULL) {
        Sprite_Delete(v0->unk_0C);
        Heap_FreeExplicit(HEAP_ID_FIELD1, param0->unk_00);
        param0->unk_00 = NULL;
    }
}

int sub_0205D584(struct UnkStruct_0205D3AC_t *param0)
{
    UnkStruct_0205D3C4 *v0 = (UnkStruct_0205D3C4 *)param0->unk_00;

    v0->unk_00.y += (FX32_ONE * 8);

    Sprite_SetPosition(v0->unk_0C, &v0->unk_00);
    Sprite_UpdateAnim(v0->unk_0C, FX32_ONE);

    if (v0->unk_10 == 0) {
        if (v0->unk_00.y >= (384 * FX32_ONE)) {
            v0->unk_00.y = (-32 * FX32_ONE);
            v0->unk_10++;
        }
    } else {
        if (v0->unk_00.y >= (69 * FX32_ONE)) {
            v0->unk_00.y = (69 * FX32_ONE);
            Sprite_SetPosition(v0->unk_0C, &v0->unk_00);
            return 0;
        }
    }

    return 1;
}

void sub_0205D5E0(UnkStruct_0205D094 *param0, struct UnkStruct_0205D3AC_t *param1)
{
    UnkStruct_0205D5E0 *v0;

    param1->unk_00 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_0205D5E0));
    memset(param1->unk_00, 0, sizeof(UnkStruct_0205D5E0));

    v0 = (UnkStruct_0205D5E0 *)param1->unk_00;

    v0->unk_00.x = (112 * FX32_ONE);
    v0->unk_00.y = (69 * FX32_ONE);
    v0->unk_0C = sub_0205D344(param0, 0, &v0->unk_00, 0, 1);

    Sprite_SetAnim(v0->unk_0C, 1);
}

void sub_0205D624(struct UnkStruct_0205D3AC_t *param0)
{
    UnkStruct_0205D5E0 *v0 = (UnkStruct_0205D5E0 *)param0->unk_00;

    if (param0->unk_00 != NULL) {
        Sprite_Delete(v0->unk_0C);
        Heap_FreeExplicit(HEAP_ID_FIELD1, param0->unk_00);

        param0->unk_00 = NULL;
    }
}

int sub_0205D644(struct UnkStruct_0205D3AC_t *param0)
{
    UnkStruct_0205D5E0 *v0 = (UnkStruct_0205D5E0 *)param0->unk_00;
    int v1 = 1;

    switch (v0->unk_10) {
    case 0:
        v0->unk_14 += (FX32_CONST(0.20f));
        Sprite_UpdateAnim(v0->unk_0C, v0->unk_14);

        if (v0->unk_14 >= (2 * FX32_ONE)) {
            v0->unk_10++;
        }
        break;
    case 1:
        if (v0->unk_00.y > (-32 * FX32_ONE)) {
            v0->unk_00.y -= (FX32_ONE * 8);
            Sprite_SetPosition(v0->unk_0C, &v0->unk_00);
            Sprite_UpdateAnim(v0->unk_0C, v0->unk_14);
        } else {
            v0->unk_00.y = (384 * FX32_ONE);
            v0->unk_10++;
        }
        break;
    case 2:
        v0->unk_00.y -= (FX32_ONE * 8);

        Sprite_SetPosition(v0->unk_0C, &v0->unk_00);
        Sprite_UpdateAnim(v0->unk_0C, v0->unk_14);

        if (v0->unk_00.y < (300 * FX32_ONE)) {
            v1 = 2;
            v0->unk_10++;
        }
        break;
    case 3:
        if (v0->unk_00.y > (192 * FX32_ONE)) {
            v0->unk_00.y -= (FX32_ONE * 8);
            Sprite_SetPosition(v0->unk_0C, &v0->unk_00);
            Sprite_UpdateAnim(v0->unk_0C, v0->unk_14);
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

void sub_0205D714(UnkStruct_0205D094 *param0, struct UnkStruct_0205D3AC_t *param1)
{
    UnkStruct_0205D5E0 *v0;

    param1->unk_00 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_0205D5E0));
    memset(param1->unk_00, 0, sizeof(UnkStruct_0205D5E0));

    v0 = (UnkStruct_0205D5E0 *)param1->unk_00;

    v0->unk_00.x = (112 * FX32_ONE);
    v0->unk_00.y = (69 * FX32_ONE);
    v0->unk_0C = sub_0205D344(param0, 0, &v0->unk_00, 0, 1);

    Sprite_SetAnim(v0->unk_0C, 1);
    v0->unk_14 = (2 * FX32_ONE);
    Sprite_SetDrawFlag(v0->unk_0C, FALSE);
}

void sub_0205D768(struct UnkStruct_0205D3AC_t *param0)
{
    UnkStruct_0205D5E0 *v0 = (UnkStruct_0205D5E0 *)param0->unk_00;

    if (param0->unk_00 != NULL) {
        Sprite_Delete(v0->unk_0C);
        Heap_FreeExplicit(HEAP_ID_FIELD1, param0->unk_00);
        param0->unk_00 = NULL;
    }
}

int sub_0205D788(struct UnkStruct_0205D3AC_t *param0)
{
    VecFx32 v0;
    UnkStruct_0205D5E0 *v1 = (UnkStruct_0205D5E0 *)param0->unk_00;
    int v2 = 1;

    switch (v1->unk_10) {
    case 0:
        Sprite_SetDrawFlag(v1->unk_0C, TRUE);
        v1->unk_10++;
        break;
    case 1:
        if (v1->unk_14 <= 0x8000) {
            v0 = v1->unk_00;
            v0.y -= FX_Mul(FX_SinIdx(v1->unk_14), (32 * FX32_ONE));

            Sprite_SetPosition(v1->unk_0C, &v0);
            v1->unk_14 += (0x8000 / 8);
            Sprite_UpdateAnim(v1->unk_0C, FX32_ONE);
        } else {
            v1->unk_10++;
        }
        break;
    case 2:
        v1->unk_14 -= (FX32_CONST(0.40f));
        Sprite_UpdateAnim(v1->unk_0C, v1->unk_14);

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

void sub_0205D844(UnkStruct_0205D094 *param0, struct UnkStruct_0205D3AC_t *param1)
{
    UnkStruct_0205D4A4 *v0;

    param1->unk_00 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_0205D4A4));
    memset(param1->unk_00, 0, sizeof(UnkStruct_0205D4A4));

    v0 = (UnkStruct_0205D4A4 *)param1->unk_00;

    v0->unk_00.x = (112 * FX32_ONE);
    v0->unk_00.y = 96 * FX32_ONE;
    v0->unk_0C = sub_0205D344(param0, 1, &v0->unk_00, 1, 1);

    Sprite_SetAnim(v0->unk_0C, 1);
}

void sub_0205D888(struct UnkStruct_0205D3AC_t *param0)
{
    UnkStruct_0205D4A4 *v0 = (UnkStruct_0205D4A4 *)param0->unk_00;

    if (param0->unk_00 != NULL) {
        Sprite_Delete(v0->unk_0C);
        Heap_FreeExplicit(HEAP_ID_FIELD1, param0->unk_00);
        param0->unk_00 = NULL;
    }
}

int sub_0205D8A8(struct UnkStruct_0205D3AC_t *param0)
{
    UnkStruct_0205D4A4 *v0 = (UnkStruct_0205D4A4 *)param0->unk_00;

    if (v0->unk_10 < 8) {
        Sprite_UpdateAnim(v0->unk_0C, FX32_ONE);
        v0->unk_10++;
        return 1;
    }

    return 0;
}
