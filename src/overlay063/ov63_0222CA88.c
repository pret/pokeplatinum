#include "overlay063/ov63_0222CA88.h"

#include <nitro.h>
#include <string.h>

#include "overlay063/ov63_0222BCE8.h"
#include "overlay063/ov63_0222BE18.h"
#include "overlay063/struct_ov63_0222BCE8_decl.h"
#include "overlay063/struct_ov63_0222BE18_decl.h"
#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay063/struct_ov63_0222CC3C.h"
#include "overlay063/struct_ov63_0222CCB8.h"
#include "overlay063/struct_ov63_0222D894.h"

static BOOL ov63_0222CAE4(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4);
static BOOL ov63_0222CB10(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4);
static BOOL ov63_0222CB4C(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4);
static BOOL ov63_0222CBC0(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4);
static BOOL ov63_0222CBD0(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4);
static BOOL ov63_0222CBF8(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4);
static BOOL ov63_0222CC04(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4);
static BOOL ov63_0222CC14(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4);
static BOOL ov63_0222CC3C(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, int param2);
static BOOL ov63_0222CCA4(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BE18 *param1, int param2);
static void ov63_0222CCB8(UnkStruct_ov63_0222CCB8 *param0, const UnkStruct_ov63_0222BEC0 *param1, int param2, u32 param3, int param4);

BOOL ov63_0222CA88(const UnkStruct_ov63_0222BCE8 *param0, const UnkStruct_ov63_0222BE18 *param1, const UnkStruct_ov63_0222D894 *param2, UnkStruct_ov63_0222CCB8 *param3) {
    const UnkStruct_ov63_0222BEC0 *v0;
    static BOOL (*const v1[12])(const UnkStruct_ov63_0222BEC0 *, const UnkStruct_ov63_0222BCE8 *, const UnkStruct_ov63_0222BE18 *, const UnkStruct_ov63_0222D894 *, UnkStruct_ov63_0222CCB8 *) = {
        ov63_0222CAE4,
        ov63_0222CB10,
        ov63_0222CB4C,
        ov63_0222CBC0,
        ov63_0222CBD0,
        ov63_0222CBF8,
        ov63_0222CC04,
        ov63_0222CB4C,
        ov63_0222CC14,
        ov63_0222CC14,
        ov63_0222CC14,
        ov63_0222CC14,
    };

    BOOL v2;

    GF_ASSERT(param0);
    GF_ASSERT(param1);
    GF_ASSERT(param2);
    GF_ASSERT(param3);

    v0 = ov63_0222BF80(param1, param2->unk_03);
    GF_ASSERT(v0);

    v2 = v1[param2->unk_00](v0, param0, param1, param2, param3);
    return v2;
}

static BOOL ov63_0222CAE4(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4) {
    s32 v0 = ov63_0222BF90(param0, 5);

    if ((v0 == 0) || (v0 == 4)) {
        ov63_0222CCB8(param4, param0, param3->unk_00, param3->unk_03, param3->unk_02);
        return 1;
    }

    return 0;
}

static BOOL ov63_0222CB10(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4) {
    s32 v0;
    s32 v1;

    v0 = ov63_0222BF90(param0, 5);
    v1 = ov63_0222BF90(param0, 6);

    if (v0 == 0) {
        if (v1 != param3->unk_02) {
            ov63_0222CCB8(param4, param0, param3->unk_00, param3->unk_03, param3->unk_02);
            return 1;
        }
    }

    return 0;
}

static BOOL ov63_0222CB4C(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4) {
    s32 v0;
    BOOL v1;
    s32 v2;

    do {
        v0 = ov63_0222BF90(param0, 5);

        if (v0 != 0) {
            break;
        }

        v1 = ov63_0222CC3C(param0, param1, param3->unk_02);

        if (v1 == 1) {
            break;
        }

        v1 = ov63_0222CCA4(param0, param2, param3->unk_02);

        if (v1 == 1) {
            break;
        }

        ov63_0222CCB8(param4, param0, param3->unk_00, param3->unk_03, param3->unk_02);
        return 1;
    } while (0);

    if (v0 == 0) {
        v2 = ov63_0222BF90(param0, 10);

        if (v2 >= 8) {
            ov63_0222CCB8(param4, param0, 5, param3->unk_03, param3->unk_02);
            return 1;
        }
    }

    return 0;
}

static BOOL ov63_0222CBC0(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4) {
    return ov63_0222CB4C(param0, param1, param2, param3, param4);
}

static BOOL ov63_0222CBD0(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4) {
    s32 v0 = ov63_0222BF90(param0, 5);

    if (v0 == 0) {
        ov63_0222CCB8(param4, param0, param3->unk_00, param3->unk_03, param3->unk_02);
        return 1;
    }

    return 0;
}

static BOOL ov63_0222CBF8(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4) {
    GF_ASSERT(0);
    return 0;
}

static BOOL ov63_0222CC04(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4) {
    return ov63_0222CB4C(param0, param1, param2, param3, param4);
}

static BOOL ov63_0222CC14(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, const UnkStruct_ov63_0222BE18 *param2, const UnkStruct_ov63_0222D894 *param3, UnkStruct_ov63_0222CCB8 *param4) {
    s32 v0 = ov63_0222BF90(param0, 5);

    if (v0 == 0) {
        ov63_0222CCB8(param4, param0, param3->unk_00, param3->unk_03, param3->unk_02);
        return 1;
    }

    return 0;
}

static BOOL ov63_0222CC3C(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BCE8 *param1, int param2) {
    UnkStruct_ov63_0222CC3C v0;

    v0 = ov63_0222C0E4(param0);
    v0 = ov63_0222C078(v0, param2);

    return ov63_0222BDAC(param1, (v0.unk_00) / 16, (v0.unk_02) / 16);
}

static BOOL ov63_0222CCA4(const UnkStruct_ov63_0222BEC0 *param0, const UnkStruct_ov63_0222BE18 *param1, int param2) {
    const UnkStruct_ov63_0222BEC0 *v0 = ov63_0222C1C4(param0, param1, param2);

    if (v0 == NULL) {
        return 0;
    }

    return 1;
}

static void ov63_0222CCB8(UnkStruct_ov63_0222CCB8 *param0, const UnkStruct_ov63_0222BEC0 *param1, int param2, u32 param3, int param4) {
    param0->unk_00 = ov63_0222C0E4(param1);
    param0->unk_04 = param2;
    param0->unk_07 = param3;
    param0->unk_06 = param4;
}
