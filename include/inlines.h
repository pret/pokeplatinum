#ifndef POKEPLATINUM_INLINES_H
#define POKEPLATINUM_INLINES_H

#include <nitro/rtc.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "vars_flags.h"

#include "field/field_system.h"
#include "struct_defs/struct_02049FA8.h"
#include "overlay061/struct_ov61_0222C3B0.h"

#include "assert.h"
#include "unk_02002F38.h"
#include "unk_02006E3C.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "map_header.h"
#include "field_overworld_state.h"
#include "field_script_context.h"
#include "unk_0203E880.h"
#include "unk_0206A8DC.h"

static inline void inline_ov61_0222C3B0_sub_1(UnkStruct_ov61_0222C3B0 *);
static inline void inline_ov61_0222C3B0_sub(SysTask *, void *);

static inline void inline_ov61_0222C3B0 (UnkStruct_ov61_0222C3B0 * param0, NARC * param1, int param2, int param3)
{
    NNSG2dPaletteData * v0;
    void * v1;

    MI_CpuClear8(param0, sizeof(UnkStruct_ov61_0222C3B0));

    v1 = sub_020071EC(param1, param2, &v0, param3);

    MI_CpuCopy16(&((u16 *)(v0->pRawData))[0 * 16], param0->unk_08, 4 * 0x20);
    MI_CpuCopy16(&((u16 *)(v0->pRawData))[0 * 16], param0->unk_88, 4 * 0x20);
    Heap_FreeToHeap(v1);
    inline_ov61_0222C3B0_sub_1(param0);

    param0->unk_04 = 1;
    param0->unk_00 = CoreSys_ExecuteOnVBlank(inline_ov61_0222C3B0_sub, param0, 20);
}

static inline void inline_ov61_0222C160 (UnkStruct_ov61_0222C3B0 * param0)
{
    if (param0->unk_00 != NULL) {
        SysTask_Done(param0->unk_00);
        param0->unk_00 = NULL;
        param0->unk_04 = 0;
    }
}

static inline void inline_ov61_0222C0F8 (UnkStruct_ov61_0222C3B0 * param0)
{
    return;
}

static inline void inline_ov61_0222C1FC (UnkStruct_ov61_0222C3B0 * param0)
{
    return;
}

static inline void inline_ov96_0223BDEC (UnkStruct_ov61_0222C3B0 * param0, BOOL param1)
{
    param0->unk_04 = param1;
}

static inline void inline_ov61_0222C3B0_sub_1 (UnkStruct_ov61_0222C3B0 * param0)
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
                sub_0200393C(&param0->unk_08[v0][v4], &param0->unk_88[v1][v4], 1, v3 >> 8, param0->unk_08[v2][v4]);
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

static inline void inline_ov61_0222C3B0_sub (SysTask * param0, void * param1)
{
    UnkStruct_ov61_0222C3B0 * v0 = param1;

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

static inline void inline_ov47_0225621C_sub (FieldSystem * fieldSystem, int * param1, int * param2)
{
    FieldOverworldState * v0 = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    Location * location = sub_0203A72C(v0);

    if (MapHeader_IsOnMainMatrix(fieldSystem->location->mapId)) {
        *param1 = fieldSystem->location->x;
        *param2 = fieldSystem->location->z;
    } else {
        *param1 = location->x;
        *param2 = location->z;
    }
}

static inline void inline_ov47_0225621C (FieldSystem * fieldSystem, int * param1, int * param2)
{
    inline_ov47_0225621C_sub(fieldSystem, param1, param2);
    *param1 /= 32;
    *param2 /= 32;
}

static inline void Location_Set (Location * location, int mapId, int param2, int param3, int param4, int param5)
{
    location->mapId = mapId;
    location->unk_04 = param2;
    location->x = param3;
    location->z = param4;
    location->unk_10 = param5;
}

static inline u16 * ScriptContext_GetVarPointer (ScriptContext * ctx)
{
    return FieldSystem_GetVar(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));
}

static inline u16 ScriptContext_GetVar (ScriptContext * ctx)
{
    return sub_0203F150(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));
}

static inline void inline_0204E650 (VarsFlags * param0)
{
    sub_0206AEAC(param0, 1);
}

static inline void inline_0204E650_1 (VarsFlags * param0)
{
    sub_0206AEAC(param0, 0);
}

static inline BOOL inline_0204E650_2 (VarsFlags * param0)
{
    return sub_0206AEAC(param0, 2);
}

static inline void inline_02044528 (VarsFlags * param0)
{
    sub_0206AF2C(param0, 1);
}

static inline BOOL inline_020535E8 (VarsFlags * param0)
{
    return sub_0206AF2C(param0, 2);
}

static inline void inline_0203A8E8 (VarsFlags * param0, u32 param1)
{
    sub_0206AF3C(param0, 1, param1);
}

static inline BOOL inline_0208BE68 (VarsFlags * param0, u32 param1)
{
    return sub_0206AF3C(param0, 2, param1);
}

inline u16 inline_020564D0 (const u16 param0)
{
    GF_ASSERT(param0 != 0);

    if (param0 <= 1) {
        return 0;
    } else {
        u16 v0;
        u16 v1;
        v0 = (0xffff / param0) + 1;
        v1 = LCRNG_Next() / v0;

        GF_ASSERT((v1 < param0));
        return v1;
    }
}

static inline u32 inline_0202D4B0_sub1 (u32 param0, u32 param1, u32 param2, int param3)
{
    return (param0 << 24) | ((param1 & 0xff) << 16) | ((param2 & 0xff) << 8) | param3;
}

static inline u32 inline_0202D4B0 (RTCDate * param0)
{
    return inline_0202D4B0_sub1(param0->year, param0->month, param0->day, param0->week);
}

static inline u8 inline_0202D558_sub1 (u32 param0)
{
    return param0 >> 24;
}

static inline u8 inline_0202D558_sub2 (u32 param0)
{
    return (param0 >> 16) & 0xff;
}

static inline u8 inline_0202D558_sub3 (u32 param0)
{
    return (param0 >> 8) & 0xff;
}

static inline u8 inline_0202D558_sub4 (u32 param0)
{
    return param0 & 0xff;
}

static inline void inline_0202D558 (u32 param0, RTCDate * param1)
{
    param1->year = inline_0202D558_sub1(param0);
    param1->month = inline_0202D558_sub2(param0);
    param1->day = inline_0202D558_sub3(param0);
    param1->week = inline_0202D558_sub4(param0);
}

static inline BOOL inline_0203A944 (u32 param0)
{
    if (((param0 % 4 == 0) && (param0 % 100 != 0)) || (param0 % 400 == 0)) {
        return 1;
    } else {
        return 0;
    }
}

static inline BOOL inline_ov12_02235998 (int param0, int param1)
{
    if ((param0 & param1) == param1) {
        return 1;
    }
    return 0;
}

#endif // POKEPLATINUM_INLINES_H
