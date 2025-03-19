#include "overlay107/ov107_02249B1C.h"

#include <nitro.h>
#include <string.h>

#include "overlay104/ov104_0222DCE0.h"
#include "overlay107/ov107_02249604.h"
#include "overlay107/struct_ov107_02249954.h"
#include "overlay107/struct_ov107_02249B8C_decl.h"

#include "heap.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sprite.h"
#include "unk_02005474.h"

struct UnkStruct_ov107_02249B8C_t {
    s16 unk_00;
    s16 unk_02;
    Sprite *unk_04;
};

UnkStruct_ov107_02249B8C *ov107_02249B1C(UnkStruct_ov107_02249954 *param0, u32 param1, u32 param2, u32 param3, u32 param4, s16 param5, s16 param6, int param7, const u8 *param8);
void *ov107_02249B8C(UnkStruct_ov107_02249B8C *param0);
void ov107_02249BAC(UnkStruct_ov107_02249B8C *param0, int param1);
void ov107_02249BB8(UnkStruct_ov107_02249B8C *param0, u16 param1, u16 param2);
void ov107_02249BEC(UnkStruct_ov107_02249B8C *param0, u32 param1);
void ov107_02249C08(UnkStruct_ov107_02249B8C *param0, Pokemon *param1);
void ov107_02249C1C(UnkStruct_ov107_02249B8C *param0, u8 param1);
void ov107_02249C28(UnkStruct_ov107_02249B8C *param0, u8 param1);
BOOL ov107_02249C40(UnkStruct_ov107_02249B8C *param0);
void ov107_02249C4C(UnkStruct_ov107_02249B8C *param0, u8 param1);
void ov107_02249C58(UnkStruct_ov107_02249B8C *param0, s16 param1, s16 param2);
void ov107_02249C60(UnkStruct_ov107_02249B8C *param0, u16 param1, u16 param2);

UnkStruct_ov107_02249B8C *ov107_02249B1C(UnkStruct_ov107_02249954 *param0, u32 param1, u32 param2, u32 param3, u32 param4, s16 param5, s16 param6, int param7, const u8 *param8)
{
    UnkStruct_ov107_02249B8C *v0;
    VecFx32 v1;

    v0 = Heap_AllocFromHeap(HEAP_ID_100, sizeof(UnkStruct_ov107_02249B8C));
    memset(v0, 0, sizeof(UnkStruct_ov107_02249B8C));

    v0->unk_00 = param5;
    v0->unk_02 = param6;
    v0->unk_04 = ov107_022498A4(param0, param1, param2, param3, param4, 0, param7, 0);

    v1.x = (param5 * FX32_ONE);
    v1.y = (param6 * FX32_ONE);

    Sprite_SetPosition(v0->unk_04, &v1);
    return v0;
}

void *ov107_02249B8C(UnkStruct_ov107_02249B8C *param0)
{
    if (param0 == NULL) {
        GF_ASSERT(0);
        return NULL;
    }

    Sprite_Delete(param0->unk_04);
    Heap_FreeToHeap(param0);

    return NULL;
}

void ov107_02249BAC(UnkStruct_ov107_02249B8C *param0, int param1)
{
    Sprite_SetDrawFlag(param0->unk_04, param1);
    return;
}

void ov107_02249BB8(UnkStruct_ov107_02249B8C *param0, u16 param1, u16 param2)
{
    VecFx32 v0;

    v0 = *(Sprite_GetPosition(param0->unk_04));
    v0.x = (param1 * FX32_ONE);
    v0.y = (param2 * FX32_ONE);

    Sprite_SetPosition(param0->unk_04, &v0);
    return;
}

void ov107_02249BEC(UnkStruct_ov107_02249B8C *param0, u32 param1)
{
    Sprite_SetAnimSpeed(param0->unk_04, FX32_ONE);
    Sprite_SetAnim(param0->unk_04, param1);

    return;
}

void ov107_02249C08(UnkStruct_ov107_02249B8C *param0, Pokemon *param1)
{
    Sprite_SetExplicitPaletteOffsetAutoAdjust(param0->unk_04, Pokemon_IconPaletteIndex(param1));
    return;
}

void ov107_02249C1C(UnkStruct_ov107_02249B8C *param0, u8 param1)
{
    ov104_0222E1D8(param0->unk_04, param1);
    return;
}

void ov107_02249C28(UnkStruct_ov107_02249B8C *param0, u8 param1)
{
    ov104_0222E204(param0->unk_04, param0->unk_00, param0->unk_02, param1);
    return;
}

BOOL ov107_02249C40(UnkStruct_ov107_02249B8C *param0)
{
    return Sprite_IsAnimated(param0->unk_04);
}

void ov107_02249C4C(UnkStruct_ov107_02249B8C *param0, u8 param1)
{
    Sprite_SetExplicitPriority(param0->unk_04, param1);
    return;
}

void ov107_02249C58(UnkStruct_ov107_02249B8C *param0, s16 param1, s16 param2)
{
    param0->unk_00 = param1;
    param0->unk_02 = param2;
    return;
}

void ov107_02249C60(UnkStruct_ov107_02249B8C *param0, u16 param1, u16 param2)
{
    ov107_02249BEC(param0, 11);
    ov107_02249BB8(param0, param1, param2);
    ov107_02249BAC(param0, 1);

    Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
    Sound_PlayEffect(SEQ_SE_DP_DANSA4);

    return;
}
