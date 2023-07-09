#include <nitro.h>
#include <string.h>

#include "struct_decls/narc.h"
#include "struct_decls/struct_02014014_decl.h"

#include "functypes/funcptr_020146F4.h"

#include "library/spl.h"

#include "narc.h"
#include "unk_02014000.h"
#include "overlay011/ov11_0221F840.h"
#include "overlay012/ov12_022237EC.h"
#include "overlay012/ov12_0222389C.h"
#include "overlay012/ov12_0222421C.h"

static void ov12_022237EC(UnkSPLStruct6 * param0);

static const UnkFuncPtr_020146F4 Unk_ov12_02238DB0[] = {
    ov12_022237EC,
    ov12_022238E0,
    ov12_02223998,
    ov12_02223A38,
    ov12_022239F4,
    ov12_02224168,
    ov12_022241EC,
    ov12_02224174,
    ov12_02224180,
    ov12_0222418C,
    ov12_02224198,
    ov12_022241A4,
    ov12_022241B0,
    ov12_022241BC,
    ov12_022241C8,
    ov12_022241D4,
    ov12_022241E0,
    ov12_02224F14,
    ov12_02223B98,
    ov12_02223AC8,
    ov12_02223B30,
    ov12_02223A7C,
    ov12_022238DC
};

static void ov12_022237EC (UnkSPLStruct6 * param0)
{
    return;
}

UnkStruct_02014014 * ov12_022237F0 (int param0, int param1, int param2)
{
    UnkStruct_02014014 * v0;
    void * v1;

    v0 = ov11_0221F840(param0);
    v1 = sub_020144C4(29, param1, param0);

    sub_020144CC(v0, v1, (1 << 1) | (1 << 3), param2);
    return v0;
}

UnkStruct_02014014 * ov12_02223818 (int param0, int param1, int param2, int param3)
{
    UnkStruct_02014014 * v0;
    void * v1;

    v0 = ov11_0221F840(param0);
    v1 = sub_020144C4(param1, param2, param0);

    sub_020144CC(v0, v1, (1 << 1) | (1 << 3), param3);
    return v0;
}

void * ov12_02223844 (NARC * param0, int param1, int param2)
{
    return NARC_AllocAndReadWholeMember(param0, param1, param2);
}

UnkStruct_02014014 * ov12_0222384C (NARC * param0, int param1, int param2, int param3)
{
    UnkStruct_02014014 * v0;
    void * v1;

    v0 = ov11_0221F888(param1);

    if (v0 == NULL) {
        return NULL;
    }

    v1 = ov12_02223844(param0, param2, param1);
    sub_020144CC(v0, v1, (1 << 1) | (1 << 3), param3);

    return v0;
}

UnkSPLStruct6 * ov12_02223880 (UnkStruct_02014014 * param0, int param1, int param2, void * param3)
{
    return sub_020146F4(param0, param1, Unk_ov12_02238DB0[param2], param3);
}

void ov12_02223894 (UnkStruct_02014014 * param0)
{
    ov11_0221F8D8(param0);
}
