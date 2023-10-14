#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "overlay006/struct_ov6_02242634.h"

#include "overlay006/ov6_022477B8.h"

void ov6_022477B8 (const UnkStruct_ov6_02242634 * param0, const BOOL param1, int * param2, int * param3)
{
    if (!param1) {
        return;
    }

    switch (gCoreSys.unk_66) {
    case 1:
        (*param2) = param0->unk_88[0];
        (*param3) = param0->unk_88[1];
        break;
    case 2:
        (*param2) = param0->unk_80[0];
        (*param3) = param0->unk_80[1];
        break;
    case 3:
        (*param2) = param0->unk_90[0];
        (*param3) = param0->unk_90[1];
        break;
    case 4:
        (*param2) = param0->unk_98[0];
        (*param3) = param0->unk_98[1];
        break;
    case 5:
        (*param2) = param0->unk_A0[0];
        (*param3) = param0->unk_A0[1];
        break;
    }
}
