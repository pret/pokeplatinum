#include <nitro.h>
#include <string.h>
#include <nitro/sinit.h>

#include "inlines.h"

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "overlay025/poketch_system.h"
#include "overlay031/struct_ov31_02256554_decl.h"

#include "overlay031/struct_ov31_02256554_1.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "touch_screen.h"
#include "poketch_data.h"
#include "overlay031/ov31_02256554.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u32 unk_04;
    u32 unk_08;
    UnkStruct_ov31_02256554_1 unk_0C;
    UnkStruct_ov31_02256554 * unk_1EC;
    PoketchSystem * unk_1F0;
    u8 unk_1F4[120];
} UnkStruct_ov31_02256228;

static void NitroStaticInit(void);

static BOOL ov31_022561D4(void ** param0, PoketchSystem * param1, BGL * param2, u32 param3);
static BOOL ov31_02256228(UnkStruct_ov31_02256228 * param0, PoketchSystem * param1, BGL * param2, u32 param3);
static void ov31_02256268(UnkStruct_ov31_02256228 * param0, UnkStruct_ov31_02256554_1 * param1);
static inline u8 inline_ov31_02256298(const u8 * param0, int param1);
static inline void inline_ov31_022562EC(u8 * param0, int param1, int param2);
static void ov31_02256298(UnkStruct_ov31_02256228 * param0, UnkStruct_ov31_02256554_1 * param1, PoketchData * param2);
static void ov31_022562EC(UnkStruct_ov31_02256228 * param0, UnkStruct_ov31_02256554_1 * param1, PoketchData * param2);
static void ov31_0225635C(UnkStruct_ov31_02256554_1 * param0);
static void ov31_02256384(UnkStruct_ov31_02256228 * param0);
static void ov31_022563B0(void * param0);
static void ov31_022563CC(SysTask * param0, void * param1);
static void ov31_02256404(void * param0);
static void ov31_0225640C(UnkStruct_ov31_02256228 * param0, u32 param1);
static BOOL ov31_02256420(UnkStruct_ov31_02256228 * param0);
static BOOL ov31_0225646C(UnkStruct_ov31_02256228 * param0);
static BOOL ov31_02256518(UnkStruct_ov31_02256228 * param0);

static void NitroStaticInit (void)
{
    PoketchSystem_SetAppFunctions(ov31_022561D4, ov31_02256404);
}

static BOOL ov31_022561D4 (void ** param0, PoketchSystem * param1, BGL * param2, u32 param3)
{
    UnkStruct_ov31_02256228 * v0 = (UnkStruct_ov31_02256228 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov31_02256228));

    if (v0 != NULL) {
        if (ov31_02256228(v0, param1, param2, param3)) {
            if (SysTask_Start(ov31_022563CC, v0, 1) != NULL) {
                *param0 = v0;
                ov25_02254274(ov31_022563B0, v0);
                return 1;
            }
        }

        Heap_FreeToHeap(v0);
    }

    return 0;
}

static BOOL ov31_02256228 (UnkStruct_ov31_02256228 * param0, PoketchSystem * param1, BGL * param2, u32 param3)
{
    param0->unk_1F0 = param1;
    ov31_02256268(param0, &(param0->unk_0C));

    if (ov31_02256554(&(param0->unk_1EC), &(param0->unk_0C), param2)) {
        param0->unk_00 = 0;
        param0->unk_01 = 0;
        param0->unk_02 = 0;
        param0->unk_04 = 24 + 1;
        param0->unk_08 = 20 + 1;

        return 1;
    }

    return 0;
}

static void ov31_02256268 (UnkStruct_ov31_02256228 * param0, UnkStruct_ov31_02256554_1 * param1)
{
    PoketchData * v0 = PoketchSystem_PoketchData(param0->unk_1F0);

    if (PoketchData_DotArtModified(v0)) {
        ov31_02256298(param0, param1, v0);
    } else {
        ov31_0225635C(param1);
    }
}

static inline u8 inline_ov31_02256298 (const u8 * param0, int param1)
{
    return (param0[(param1 / 4)] >> ((param1 & 3) * 2)) & 3;
}

static inline void inline_ov31_022562EC (u8 * param0, int param1, int param2)
{
    param0[(param1 / 4)] |= ((param2 & 3) << ((param1 & 3) * 2));
}

static void ov31_02256298 (UnkStruct_ov31_02256228 * param0, UnkStruct_ov31_02256554_1 * param1, PoketchData * param2)
{
    int v0, v1, v2;

    PoketchData_CopyDotArtData(param2, param0->unk_1F4);

    v2 = 0;

    for (v1 = 0; v1 < 20; v1++) {
        for (v0 = 0; v0 < 24; v0++) {
            param1->unk_00[v1][v0] = inline_ov31_02256298(param0->unk_1F4, v2++) + 1;
        }
    }
}

static void ov31_022562EC (UnkStruct_ov31_02256228 * param0, UnkStruct_ov31_02256554_1 * param1, PoketchData * param2)
{
    int v0, v1, v2;

    MI_CpuClear8(param0->unk_1F4, 120);

    v2 = 0;

    for (v1 = 0; v1 < 20; v1++) {
        for (v0 = 0; v0 < 24; v0++) {
            inline_ov31_022562EC(param0->unk_1F4, v2++, param1->unk_00[v1][v0] - 1);
        }
    }

    PoketchData_ModifyDotArtData(param2, param0->unk_1F4);
}

static void ov31_0225635C (UnkStruct_ov31_02256554_1 * param0)
{
    static const u8 v0[20][24] = {
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 4, 4, 4, 4, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 1},
        {1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 1},
        {1, 1, 1, 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 1, 1, 1, 4, 1},
        {1, 1, 1, 4, 1, 1, 4, 4, 4, 1, 4, 1, 4, 1, 4, 4, 4, 1, 4, 4, 4, 1, 4, 1},
        {1, 1, 1, 4, 1, 1, 4, 1, 4, 1, 4, 1, 4, 1, 4, 1, 1, 1, 4, 1, 4, 1, 1, 1},
        {1, 1, 1, 4, 1, 1, 4, 4, 4, 1, 4, 4, 4, 1, 4, 4, 4, 1, 4, 1, 4, 1, 4, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
        {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    };
    int v1, v2;

    for (v2 = 0; v2 < 20; v2++) {
        for (v1 = 0; v1 < 24; v1++) {
            param0->unk_00[v2][v1] = v0[v2][v1];
        }
    }
}

static void ov31_02256384 (UnkStruct_ov31_02256228 * param0)
{
    ov31_022562EC(param0, &param0->unk_0C, PoketchSystem_PoketchData(param0->unk_1F0));
    ov31_02256584(param0->unk_1EC);

    Heap_FreeToHeap(param0);
}

static void ov31_022563B0 (void * param0)
{
    UnkStruct_ov31_02256228 * v0 = param0;
    ov31_022562EC(v0, &v0->unk_0C, PoketchSystem_PoketchData(v0->unk_1F0));
}

static void ov31_022563CC (SysTask * param0, void * param1)
{
    static BOOL(*const v0[])(UnkStruct_ov31_02256228 *) = {
        ov31_02256420,
        ov31_0225646C,
        ov31_02256518
    };

    UnkStruct_ov31_02256228 * v1 = (UnkStruct_ov31_02256228 *)param1;

    if (v1->unk_00 < NELEMS(v0)) {
        if (v0[v1->unk_00](v1)) {
            ov31_02256384(v1);
            SysTask_Done(param0);
            PoketchSystem_NotifyAppUnloaded(v1->unk_1F0);
        }
    } else {
    }
}

static void ov31_02256404 (void * param0)
{
    ((UnkStruct_ov31_02256228 *)param0)->unk_02 = 1;
}

static void ov31_0225640C (UnkStruct_ov31_02256228 * param0, u32 param1)
{
    if (param0->unk_02 == 0) {
        param0->unk_00 = param1;
    } else {
        param0->unk_00 = 2;
    }

    param0->unk_01 = 0;
}

static BOOL ov31_02256420 (UnkStruct_ov31_02256228 * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov31_02256590(param0->unk_1EC, 0);
        param0->unk_01++;
        break;
    case 1:
        if (ov31_022565B4(param0->unk_1EC, 0)) {
            PoketchSystem_NotifyAppLoaded(param0->unk_1F0);
            ov31_0225640C(param0, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov31_0225646C (UnkStruct_ov31_02256228 * param0)
{
    if (param0->unk_02) {
        ov31_0225640C(param0, 2);
        return 0;
    }

    if (ov31_022565B4(param0->unk_1EC, 1)) {
        u32 v0, v1;

        if (ov25_0225446C(&v0, &v1)) {
            if ((v0 >= 16) && (v1 >= 16)) {
                v0 = (v0 - 16) / 8;
                v1 = (v1 - 16) / 8;

                if ((v0 < 24) && (v1 < 20)) {
                    if (((param0->unk_04 != v0) || (param0->unk_08 != v1)) || (TouchScreen_Tapped() == 1)) {
                        param0->unk_0C.unk_00[v1][v0]++;

                        if (param0->unk_0C.unk_00[v1][v0] > 4) {
                            param0->unk_0C.unk_00[v1][v0] = 1;
                        }

                        param0->unk_04 = v0;
                        param0->unk_08 = v1;

                        ov31_02256590(param0->unk_1EC, 1);
                    }
                }
            }
        }
    }

    return 0;
}

static BOOL ov31_02256518 (UnkStruct_ov31_02256228 * param0)
{
    switch (param0->unk_01) {
    case 0:
        ov31_02256590(param0->unk_1EC, 2);
        param0->unk_01++;
        break;
    case 1:
        if (ov31_022565C0(param0->unk_1EC)) {
            return 1;
        }
        break;
    }

    return 0;
}
