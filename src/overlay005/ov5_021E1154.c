#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "struct_defs/struct_0203CDB0.h"

#include "unk_02005474.h"
#include "heap.h"
#include "unk_020508D4.h"
#include "unk_0205DAC8.h"
#include "unk_0205E7D0.h"
#include "unk_0205F180.h"
#include "unk_02061804.h"
#include "unk_020655F4.h"
#include "overlay005/ov5_021E1154.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_0203CDB0 * unk_0C;
    UnkStruct_0205E884 * unk_10;
    UnkStruct_02061AB4 * unk_14;
} UnkStruct_ov5_021E11B0;

static void ov5_021E11B0(UnkStruct_0203CDB0 * param0, UnkStruct_0205E884 * param1, int param2);
static BOOL ov5_021E120C(UnkStruct_020508D4 * param0);
static void * ov5_021E132C(int param0);
static void ov5_021E1350(void * param0);

int ov5_021E1154 (UnkStruct_0203CDB0 * param0, UnkStruct_0205E884 * param1, int param2)
{
    UnkStruct_02061AB4 * v0 = sub_0205EB3C(param1);
    u8 v1 = sub_02062BE8(v0);
    int v2;

    if (sub_0205DEB4(v1) == 1) {
        v2 = 3;
    } else if (sub_0205DEC0(v1) == 1) {
        v2 = 2;
    } else if (sub_0205DECC(v1) == 1) {
        v2 = 0;
    } else if (sub_0205DED8(v1) == 1) {
        v2 = 1;
    } else {
        return 0;
    }

    ov5_021E11B0(param0, param1, v2);
    return 1;
}

static void ov5_021E11B0 (UnkStruct_0203CDB0 * param0, UnkStruct_0205E884 * param1, int param2)
{
    UnkStruct_ov5_021E11B0 * v0 = ov5_021E132C((sizeof(UnkStruct_ov5_021E11B0)));

    v0->unk_0C = param0;
    v0->unk_10 = param1;
    v0->unk_00 = param2;

    sub_02005748(1624);
    sub_02050904(param0, ov5_021E120C, v0);
}

static int ov5_021E11E0 (int param0)
{
    switch (param0) {
    case 0:
        return 2;
    case 2:
        return 1;
    case 1:
        return 3;
    case 3:
        return 0;
    }

    return 0;
}

static BOOL ov5_021E120C (UnkStruct_020508D4 * param0)
{
    UnkStruct_ov5_021E11B0 * v0 = sub_02050A64(param0);
    UnkStruct_02061AB4 * v1 = sub_0205EB3C(v0->unk_10);
    u8 v2 = sub_02062BE8(v1);

    switch (v0->unk_08) {
    case 0:
        sub_020628BC(v1, (1 << 8));
        v0->unk_08++;
        break;
    case 1:
        if (sub_02061544(v0->unk_10)) {
            int v3 = 0xc;

            v3 = sub_02065838(v0->unk_00, v3);
            sub_02061550(v0->unk_10, v3, 1);
            sub_0205EA84(v0->unk_10, v0->unk_00);
            v0->unk_08++;
            v0->unk_04 = 7;
        }
        break;
    case 2:
        switch (v0->unk_04) {
        case 6:
        case 4:
        case 2:
            v0->unk_00 = ov5_021E11E0(v0->unk_00);
            sub_0205EA84(v0->unk_10, v0->unk_00);
            break;
        default:
            break;
        }

        v0->unk_04--;

        if (v0->unk_04 == 0) {
            if (sub_0205DEB4(v2) == 1) {
                v0->unk_00 = 3;
            } else if (sub_0205DEC0(v2) == 1) {
                v0->unk_00 = 2;
            } else if (sub_0205DECC(v2) == 1) {
                v0->unk_00 = 0;
            } else if (sub_0205DED8(v2) == 1) {
                v0->unk_00 = 1;
            } else {
                v0->unk_00 = ov5_021E11E0(v0->unk_00);
            }

            {
                u32 v4 = sub_02060B7C(v0->unk_10, v1, v0->unk_00);

                if (v4 == 0) {
                    v0->unk_08 = 1;
                } else {
                    sub_020628C4(v1, (1 << 7));
                    sub_020628C4(v1, (1 << 8));
                    sub_0205EA84(v0->unk_10, v0->unk_00);
                    ov5_021E1350(v0);
                    sub_020057A4(1624, 0);
                    return 1;
                }
            }
        }
        break;
    }

    return 0;
}

static void * ov5_021E132C (int param0)
{
    void * v0 = Heap_AllocFromHeapAtEnd(4, param0);

    GF_ASSERT(v0 != NULL);
    memset(v0, 0, param0);

    return v0;
}

static void ov5_021E1350 (void * param0)
{
    Heap_FreeToHeapExplicit(4, param0);
}
