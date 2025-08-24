#include "overlay104/ov104_0223C164.h"

#include <nitro.h>
#include <string.h>

#include "overlay104/struct_ov104_0223C23C_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    SysTask *unk_00;
    BgConfig *unk_04;
    u16 unk_08;
    u16 unk_0A;
} UnkStruct_ov104_0223C188;

struct UnkStruct_ov104_0223C23C_t {
    BgConfig *unk_00;
    UnkStruct_ov104_0223C188 *unk_04;
};

UnkStruct_ov104_0223C23C *ov104_0223C164(BgConfig *param0);
static UnkStruct_ov104_0223C188 *ov104_0223C188(BgConfig *param0);
static void ov104_0223C1BC(SysTask *param0, void *param1);
static void ov104_0223C208(u16 *param0, u8 param1);

UnkStruct_ov104_0223C23C *ov104_0223C164(BgConfig *param0)
{
    UnkStruct_ov104_0223C23C *v0 = Heap_Alloc(HEAP_ID_94, sizeof(UnkStruct_ov104_0223C23C));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223C23C));
    v0->unk_04 = ov104_0223C188(param0);

    return v0;
}

static UnkStruct_ov104_0223C188 *ov104_0223C188(BgConfig *param0)
{
    UnkStruct_ov104_0223C188 *v0 = Heap_Alloc(HEAP_ID_94, sizeof(UnkStruct_ov104_0223C188));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov104_0223C188));

    v0->unk_04 = param0;
    v0->unk_08 = 0;
    v0->unk_00 = SysTask_Start(ov104_0223C1BC, v0, (80000 - 500));

    return v0;
}

static void ov104_0223C1BC(SysTask *param0, void *param1)
{
    u32 v0;
    u16 v1[4];
    UnkStruct_ov104_0223C188 *v2 = param1;

    if (v2->unk_0A < 2) {
        v2->unk_0A++;
        return;
    }

    v2->unk_0A = 0;
    v2->unk_08 ^= 1;

    ov104_0223C208(v1, v2->unk_08);

    Bg_LoadToTilemapRect(v2->unk_04, 3, v1, 14, 2, 2, 2);
    Bg_ScheduleTilemapTransfer(v2->unk_04, 3);

    return;
}

static void ov104_0223C208(u16 *param0, u8 param1)
{
    u32 v0, v1, v2, v3;

    if (param1 == 0) {
        v3 = 12;
    } else {
        v3 = 14;
    }

    for (v0 = 0; v0 < 2; v0++) {
        for (v1 = 0; v1 < 2; v1++) {
            v2 = ((0x10 * 6) + v0 * 0x10) + (v3 + v1);

            param0[(v0 * 2) + v1] = v2;
        }
    }

    return;
}

void ov104_0223C23C(UnkStruct_ov104_0223C23C *param0);
static void ov104_0223C250(UnkStruct_ov104_0223C188 *param0);

void ov104_0223C23C(UnkStruct_ov104_0223C23C *param0)
{
    ov104_0223C250(param0->unk_04);
    Heap_Free(param0);

    return;
}

static void ov104_0223C250(UnkStruct_ov104_0223C188 *param0)
{
    SysTask_Done(param0->unk_00);
    Heap_Free(param0);

    return;
}

u16 ov104_0223C264(u8 param0)
{
    u16 v0;

    switch (param0) {
    case 2:
        v0 = 115;
        break;
    case 3:
        v0 = 119;
        break;
    case 4:
        v0 = 135;
        break;
    case 5:
        v0 = 123;
        break;
    case 6:
        v0 = 143;
        break;
    case 1:
        v0 = 113;
        break;
    }

    return v0;
}

u16 ov104_0223C29C(u8 param0)
{
    u16 v0;

    switch (param0) {
    case 2:
        v0 = 102;
        break;
    case 3:
        v0 = 104;
        break;
    case 4:
        v0 = 108;
        break;
    case 5:
        v0 = 106;
        break;
    case 6:
        v0 = 110;
        break;
    case 1:
        v0 = 100;
        break;
    }

    return v0;
}
