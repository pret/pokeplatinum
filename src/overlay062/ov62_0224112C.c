#include "overlay062/ov62_0224112C.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0208C06C.h"

#include "overlay061/ov61_0222B008.h"
#include "overlay062/ov62_02231690.h"
#include "overlay062/ov62_02237D24.h"
#include "overlay062/ov62_02239D60.h"
#include "overlay062/ov62_0223CAEC.h"
#include "overlay062/ov62_02241204.h"
#include "overlay062/struct_ov62_022349A8.h"
#include "overlay062/struct_ov62_02241130.h"

#include "inlines.h"
#include "system_data.h"

static inline BOOL inline_ov62_022411B8(UnkStruct_0208C06C *param0);

static inline BOOL inline_ov62_022411B8(UnkStruct_0208C06C *param0)
{
    return param0->unk_14.unk_54.unk_3B8;
}

UnkStruct_ov62_022349A8 *ov62_0224112C(UnkStruct_0208C06C *param0)
{
    return &param0->unk_14.unk_54;
}

void ov62_02241130(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02241130 v0;

    v0.unk_00 = sub_02025D74(SaveData_GetSystemData(param0->unk_830));
    v0.unk_04 = 102;
    v0.unk_08 = param0->unk_830;
    v0.unk_0C.unk_00 = param0;
    v0.unk_0C.unk_04 = ov62_02239D34;
    v0.unk_0C.unk_08 = ov62_02239D38;
    v0.unk_0C.unk_0C = ov62_0223CAA4;
    v0.unk_0C.unk_10 = ov62_0223CAA8;
    v0.unk_0C.unk_14 = ov62_0223DF10;
    v0.unk_0C.unk_18 = ov62_0223DF4C;
    v0.unk_0C.unk_1C = ov62_02246944;
    v0.unk_0C.unk_20 = ov62_02233828;
    v0.unk_0C.unk_24 = ov62_02246968;
    v0.unk_0C.unk_28 = ov62_0224699C;
    v0.unk_3C = param0;
    v0.unk_38 = NULL;

    ov61_0222B008(&param0->unk_14.unk_54, &v0);
}

BOOL ov62_022411B8(UnkStruct_0208C06C *param0)
{
    if (inline_ov62_022411B8(param0) == 0) {
        return 0;
    }

    return ov61_0222BBBC(ov62_0224112C(param0));
}

void ov62_022411D4(UnkStruct_0208C06C *param0)
{
    if (inline_ov62_022411B8(param0) == 0) {
        return;
    }

    ov61_0222B57C(ov62_0224112C(param0));
}

void ov62_022411EC(UnkStruct_0208C06C *param0)
{
    if (inline_ov62_022411B8(param0) == 0) {
        return;
    }

    ov61_0222B0F0(ov62_0224112C(param0));
}
