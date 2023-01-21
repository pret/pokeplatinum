#include <nitro.h>
#include <string.h>

#include "overlay005/struct_ov5_021D57B4.h"

#include "heap.h"
#include "overlay005/ov5_021D56BC.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov5_021D5778_sub1;

typedef struct UnkStruct_ov5_021D5778_t {
    UnkStruct_ov5_021D5778_sub1 * unk_00;
    UnkStruct_ov5_021D57B4 * unk_04;
} UnkStruct_ov5_021D5778;

UnkStruct_ov5_021D5778 * ov5_021D56BC (void)
{
    UnkStruct_ov5_021D5778 * v0;

    v0 = AllocFromHeap(4, sizeof(UnkStruct_ov5_021D5778));
    GF_ASSERT(v0 != NULL);

    return v0;
}

void ov5_021D56D4 (const char * param0, UnkStruct_ov5_021D5778 * param1)
{
    FSFile v0;
    u16 v1;
    u16 v2;
    int v3;
    int v4;

    FS_InitFile(&v0);

    if (FS_OpenFile(&v0, param0)) {
        int v5;

        v5 = FS_ReadFile(&v0, &v1, 2);
        GF_ASSERT(v5 >= 0);

        v5 = FS_ReadFile(&v0, &v2, 2);
        GF_ASSERT(v5 >= 0);

        v3 = sizeof(UnkStruct_ov5_021D5778_sub1) * v1;
        v4 = sizeof(UnkStruct_ov5_021D57B4) * v2;

        param1->unk_00 = AllocFromHeap(4, v3);
        GF_ASSERT(param1->unk_00 != NULL);

        param1->unk_04 = AllocFromHeap(4, v4);
        GF_ASSERT(param1->unk_04 != NULL);

        v5 = FS_ReadFile(&v0, param1->unk_00, v3);
        GF_ASSERT(v5 >= 0);

        v5 = FS_ReadFile(&v0, param1->unk_04, v4);
        GF_ASSERT(v5 >= 0);

        (void)FS_CloseFile(&v0);
    } else {
        GF_ASSERT(0);
    }
}

void ov5_021D5778 (UnkStruct_ov5_021D5778 * param0)
{
    FreeToHeap(param0->unk_04);
    FreeToHeap(param0->unk_00);
    FreeToHeap(param0);
}

void ov5_021D5790 (const int param0, const UnkStruct_ov5_021D5778 * param1, u16 * param2)
{
    *param2 = param1->unk_00[param0].unk_00;
}

void ov5_021D579C (const int param0, const UnkStruct_ov5_021D5778 * param1, u16 * param2, u16 * param3)
{
    *param2 = param1->unk_00[param0].unk_00;
    *param3 = param1->unk_00[param0].unk_02;
}

UnkStruct_ov5_021D57B4 const * ov5_021D57B4 (const u16 param0, const UnkStruct_ov5_021D5778 * param1)
{
    return &param1->unk_04[param0];
}
