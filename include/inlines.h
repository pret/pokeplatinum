#ifndef POKEPLATINUM_INLINES_H
#define POKEPLATINUM_INLINES_H

#include <nitro/rtc.h>

#include "struct_decls/struct_0203A790_decl.h"

#include "field/field_system.h"
#include "overlay061/struct_ov61_0222C3B0.h"

#include "assert.h"
#include "field_overworld_state.h"
#include "field_script_context.h"
#include "graphics.h"
#include "heap.h"
#include "location.h"
#include "map_header.h"
#include "math_util.h"
#include "narc.h"
#include "palette.h"
#include "script_manager.h"
#include "sys_task.h"
#include "sys_task_manager.h"

static inline void inline_ov61_0222C3B0_sub_1(UnkStruct_ov61_0222C3B0 *);
static inline void inline_ov61_0222C3B0_sub(SysTask *, void *);

static inline void inline_ov61_0222C3B0(UnkStruct_ov61_0222C3B0 *param0, NARC *param1, int param2, int param3)
{
    NNSG2dPaletteData *v0;
    void *v1;

    MI_CpuClear8(param0, sizeof(UnkStruct_ov61_0222C3B0));

    v1 = Graphics_GetPlttDataFromOpenNARC(param1, param2, &v0, param3);

    MI_CpuCopy16(&((u16 *)(v0->pRawData))[0 * 16], param0->unk_08, 4 * 0x20);
    MI_CpuCopy16(&((u16 *)(v0->pRawData))[0 * 16], param0->unk_88, 4 * 0x20);
    Heap_FreeToHeap(v1);
    inline_ov61_0222C3B0_sub_1(param0);

    param0->unk_04 = 1;
    param0->unk_00 = SysTask_ExecuteOnVBlank(inline_ov61_0222C3B0_sub, param0, 20);
}

static inline void inline_ov61_0222C160(UnkStruct_ov61_0222C3B0 *param0)
{
    if (param0->unk_00 != NULL) {
        SysTask_Done(param0->unk_00);
        param0->unk_00 = NULL;
        param0->unk_04 = 0;
    }
}

static inline void inline_ov61_0222C0F8(UnkStruct_ov61_0222C3B0 *param0)
{
    return;
}

static inline void inline_ov61_0222C1FC(UnkStruct_ov61_0222C3B0 *param0)
{
    return;
}

static inline void inline_ov96_0223BDEC(UnkStruct_ov61_0222C3B0 *param0, BOOL param1)
{
    param0->unk_04 = param1;
}

static inline void inline_ov61_0222C3B0_sub_1(UnkStruct_ov61_0222C3B0 *param0)
{
    int v0, v1, v2, v3, v4, v5;
    v1 = 0;

    for (v0 = 0; v0 < 4 - 1; v0++) {
        v2 = v0 + 1;
        v3 = 0;
        v5 = 0;
        do {
            GF_ASSERT(v1 < (((16 << 8) / 0x300 + 2) * (4 - 1)));
            for (v4 = 1; v4 < 1 + 15; v4++) {
                BlendPalette(&param0->unk_08[v0][v4], &param0->unk_88[v1][v4], 1, v3 >> 8, param0->unk_08[v2][v4]);
            }
            v1++;
            if (v5 == 1) {
                break;
            }
            v3 += 0x300;
            if (v3 >= (16 << 8)) {
                v3 = (16 << 8);
                v5 = 1;
            }
        } while (TRUE);
    }
    DC_FlushRange(param0->unk_88, (((16 << 8) / 0x300 + 2) * (4 - 1)) * 16 * sizeof(u16));
}

static inline void inline_ov61_0222C3B0_sub(SysTask *param0, void *param1)
{
    UnkStruct_ov61_0222C3B0 *v0 = param1;

    if (v0->unk_04 == 0) {
        return;
    }

    v0->unk_32B ^= 1;

    if (v0->unk_32B & 1) {
        return;
    }

    GX_LoadBGPltt((const void *)v0->unk_88[v0->unk_328], 0 * 0x20, 1 * 0x20);
    GXS_LoadBGPltt((const void *)v0->unk_88[v0->unk_328], 0 * 0x20, 1 * 0x20);

    if (v0->unk_32A == 0) {
        v0->unk_328++;
        if (v0->unk_328 >= (((16 << 8) / 0x300 + 2) * (4 - 1))) {
            v0->unk_328 = (((16 << 8) / 0x300 + 2) * (4 - 1)) - 2;
            v0->unk_32A ^= 1;
        }
    } else {
        v0->unk_328--;
        if (v0->unk_328 < 0) {
            v0->unk_328 = 1;
            v0->unk_32A ^= 1;
        }
    }
}

static inline void inline_ov47_0225621C_sub(FieldSystem *fieldSystem, int *param1, int *param2)
{
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    Location *location = FieldOverworldState_GetExitLocation(fieldState);

    if (MapHeader_IsOnMainMatrix(fieldSystem->location->mapId)) {
        *param1 = fieldSystem->location->x;
        *param2 = fieldSystem->location->z;
    } else {
        *param1 = location->x;
        *param2 = location->z;
    }
}

static inline void inline_ov47_0225621C(FieldSystem *fieldSystem, int *param1, int *param2)
{
    inline_ov47_0225621C_sub(fieldSystem, param1, param2);
    *param1 /= 32;
    *param2 /= 32;
}

static inline u16 *ScriptContext_GetVarPointer(ScriptContext *ctx)
{
    return FieldSystem_GetVarPointer(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));
}

static inline u16 ScriptContext_GetVar(ScriptContext *ctx)
{
    return FieldSystem_TryGetVar(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));
}

// Functionally equivalent to LCRNG_Next() % param
inline u16 LCRNG_RandMod(const u16 param)
{
    GF_ASSERT(param != 0);

    if (param <= 1) {
        return 0;
    } else {
        u16 v0 = (0xffff / param) + 1;
        u16 v1 = LCRNG_Next() / v0;

        GF_ASSERT(v1 < param);
        return v1;
    }
}

static inline u32 inline_0202D4B0_sub1(u32 param0, u32 param1, u32 param2, int param3)
{
    return (param0 << 24) | ((param1 & 0xff) << 16) | ((param2 & 0xff) << 8) | param3;
}

static inline u32 inline_0202D4B0(RTCDate *param0)
{
    return inline_0202D4B0_sub1(param0->year, param0->month, param0->day, param0->week);
}

static inline u8 inline_0202D558_sub1(u32 param0)
{
    return param0 >> 24;
}

static inline u8 inline_0202D558_sub2(u32 param0)
{
    return (param0 >> 16) & 0xff;
}

static inline u8 inline_0202D558_sub3(u32 param0)
{
    return (param0 >> 8) & 0xff;
}

static inline u8 inline_0202D558_sub4(u32 param0)
{
    return param0 & 0xff;
}

static inline void inline_0202D558(u32 param0, RTCDate *param1)
{
    param1->year = inline_0202D558_sub1(param0);
    param1->month = inline_0202D558_sub2(param0);
    param1->day = inline_0202D558_sub3(param0);
    param1->week = inline_0202D558_sub4(param0);
}

static inline BOOL inline_ov12_02235998(int param0, int param1)
{
    if ((param0 & param1) == param1) {
        return 1;
    }
    return 0;
}

#endif // POKEPLATINUM_INLINES_H
