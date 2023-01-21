#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_0207ADB4_decl.h"
#include "overlay016/struct_ov16_02268A14_decl.h"

#include "unk_02005474.h"
#include "filesystem.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0201CCF0.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_0226871C.h"
#include "overlay016/ov16_0226E148.h"

typedef struct {
    UnkStruct_0207ADB4 * unk_00;
    s16 unk_04;
    s16 unk_06;
} UnkStruct_ov16_0226E148;

static void ov16_0226E188(UnkStruct_0201CD38 * param0, void * param1);

UnkStruct_0201CD38 * ov16_0226E148 (UnkStruct_0207ADB4 * param0)
{
    UnkStruct_ov16_0226E148 * v0;
    UnkStruct_0201CD38 * v1;

    v0 = AllocFromHeap(5, sizeof(UnkStruct_ov16_0226E148));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_0226E148));

    v0->unk_00 = param0;
    v1 = sub_0200D9E8(ov16_0226E188, v0, 1000);

    return v1;
}

void ov16_0226E174 (UnkStruct_0201CD38 * param0)
{
    UnkStruct_ov16_0226E148 * v0;

    v0 = sub_0201CED0(param0);

    FreeToHeap(v0);
    sub_0200DA58(param0);
}

static void ov16_0226E188 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0226E148 * v0 = param1;
    UnkStruct_ov16_02268A14 * v1;

    v1 = ov16_0223E02C(v0->unk_00);

    switch (v0->unk_04) {
    case 0:
        GF_ASSERT(v1 != NULL);

        {
            NARC * v2, * v3;

            v2 = NARC_ctor(7, 5);
            v3 = NARC_ctor(27, 5);

            ov16_02268C04(v2, v3, v1, 18, 0, NULL);
            NARC_dtor(v2);
            NARC_dtor(v3);
        }
        v0->unk_04++;
        break;
    case 1:
        if (ov16_02269348(v1) == 1) {
            v0->unk_04++;
        }
        break;
    case 2:
        if (ov16_0223F7A4(v0->unk_00) == 1) {
            if (ov16_0226925C(v1) == 1) {
                sub_02005748(1501);
                v0->unk_04++;
            }
        }
        break;
    case 3:
        v0->unk_06++;

        if (v0->unk_06 > 8) {
            ov16_0223F720(v0->unk_00, 0);
            v0->unk_04++;
        }
        break;
    case 4:
        break;
    }
}
