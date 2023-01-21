#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0201CD38_decl.h"
#include "overlay005/struct_ov5_021D1BEC_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203CDB0_sub2_t.h"

#include "unk_0200D9E8.h"
#include "heap.h"
#include "overlay006/ov6_02248050.h"
#include "overlay006/ov6_02248948.h"

typedef struct {
    UnkStruct_ov5_021D1BEC * unk_00;
    u16 * unk_04;
    u32 unk_08;
    u32 unk_0C;
} UnkStruct_ov6_02248948;

typedef UnkStruct_ov5_021D1BEC *(* UnkFuncPtr_ov6_02249840)(UnkStruct_0203CDB0 *);
typedef void (* UnkFuncPtr_ov6_02249834)(UnkStruct_ov5_021D1BEC *);
typedef BOOL (* UnkFuncPtr_ov6_0224984C)(UnkStruct_ov5_021D1BEC *);

static const UnkFuncPtr_ov6_02249840 Unk_ov6_02249840[3] = {
    ov6_0224830C,
    ov6_02248450,
    ov6_02248464
};

static const UnkFuncPtr_ov6_02249834 Unk_ov6_02249834[3] = {
    ov6_02248320,
    ov6_02248478,
    ov6_02248478
};

static const UnkFuncPtr_ov6_0224984C Unk_ov6_0224984C[3] = {
    ov6_02248328,
    ov6_02248480,
    ov6_02248480
};

static void ov6_02248948 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov6_02248948 * v0 = param1;

    switch (v0->unk_08) {
    case 0:
        if (Unk_ov6_0224984C[v0->unk_0C](v0->unk_00) == 1) {
            v0->unk_08++;
        }
        break;
    case 1:
        Unk_ov6_02249834[v0->unk_0C](v0->unk_00);
        *v0->unk_04 = 1;
        FreeToHeap(v0);
        sub_0200DA58(param0);
        break;
    }
}

void ov6_0224899C (UnkStruct_0203CDB0 * param0, u16 * param1, u32 param2, u32 param3)
{
    UnkStruct_ov6_02248948 * v0 = AllocFromHeap(param3, sizeof(UnkStruct_ov6_02248948));

    memset(v0, 0, sizeof(UnkStruct_ov6_02248948));

    v0->unk_00 = Unk_ov6_02249840[param2](param0);
    v0->unk_04 = param1;
    v0->unk_0C = param2;

    *param1 = 0;
    sub_0200D9E8(ov6_02248948, v0, 0);
}
