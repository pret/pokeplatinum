#include "overlay061/ov61_0222BC4C.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay061/struct_ov61_0222B960.h"
#include "overlay061/struct_ov61_0222BC4C.h"
#include "overlay061/struct_ov61_0222BC4C_1.h"
#include "overlay061/struct_ov61_0222BC4C_2.h"
#include "overlay061/struct_ov61_0222BC90.h"
#include "overlay061/struct_ov61_0222BCD0.h"
#include "overlay061/struct_ov61_0222BCF8.h"
#include "overlay061/struct_ov61_0222BCF8_sub1.h"
#include "overlay061/struct_ov61_0222BCF8_sub1_sub1.h"
#include "overlay061/struct_ov61_0222BD64.h"
#include "overlay061/struct_ov61_0222BD88.h"
#include "overlay061/struct_ov61_0222BDAC.h"
#include "overlay061/struct_ov61_0222BDAC_1.h"
#include "overlay061/struct_ov61_0222BDC8.h"
#include "overlay061/struct_ov61_0222BE00.h"
#include "overlay061/struct_ov61_0222BE00_sub1.h"
#include "overlay061/struct_ov61_0222BE20.h"
#include "overlay061/struct_ov61_0222BEB8.h"
#include "overlay061/struct_ov61_0222BED8.h"
#include "overlay061/struct_ov61_0222BED8_sub1.h"
#include "overlay062/struct_ov62_022349A8.h"
#include "overlay062/struct_ov62_02239DA4_sub1.h"
#include "overlay062/struct_ov62_0223DF10.h"

#include "gds.h"
#include "savedata.h"

int ov61_0222BC4C(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222B960 *param1) {
    UnkStruct_ov61_0222BC4C *v0;
    int v1 = 0;

    switch (param1->unk_02) {
    case 0:
        v0 = (UnkStruct_ov61_0222BC4C *)(param1->unk_04);
        v1 = 1;
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        break;
    case 4:
        break;
    case 5:
    default:
        break;
    }

    return v1;
}

int ov61_0222BC70(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222B960 *param1) {
    UnkStruct_ov61_0222BC4C_1 *v0;
    int v1 = 0;

    switch (param1->unk_02) {
    case 0:
        v0 = (UnkStruct_ov61_0222BC4C_1 *)(param1->unk_04);
        v1 = 1;
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
    default:
        break;
    }

    return v1;
}

int ov61_0222BC90(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222BC90 **param1, int param2) {
    UnkStruct_ov61_0222B960 *v0;
    UnkStruct_ov61_0222BC4C_1 *v1;
    UnkStruct_ov61_0222BC4C_2 *v2;
    int v3, v4;

    v0 = ov61_0222DE80();
    v1 = (UnkStruct_ov61_0222BC4C_1 *)(v0->unk_04);
    v4 = v1->unk_00;

    if (v4 > param2) {
        v4 = param2;
    }

    v2 = (UnkStruct_ov61_0222BC4C_2 *)(v1->unk_04);

    for (v3 = 0; v3 < v4; v3++) {
        param1[v3] = &v2[v3].unk_0C;
    }

    for (; v3 < param2; v3++) {
        param1[v3] = NULL;
    }

    return v4;
}

int ov61_0222BCD0(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222B960 *param1) {
    UnkStruct_ov61_0222BCD0 *v0;
    int v1 = 0;

    switch (param1->unk_02) {
    case 0:
        v0 = (UnkStruct_ov61_0222BCD0 *)(param1->unk_04);
        v1 = 1;
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        break;
    case 4:
        break;
    case 5:
        break;
    case 6:
    default:
        break;
    }

    return v1;
}

int ov61_0222BCF8(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222B960 *param1) {
    UnkStruct_ov61_0222BCF8 *v0;
    int v1 = 0;

    switch (param1->unk_02) {
    case 0:
        v0 = (UnkStruct_ov61_0222BCF8 *)(param1->unk_04);
        v1 = 1;
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
    default:
        break;
    }

    return v1;
}

int ov61_0222BD18(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222BCF8_sub1_sub1 **param1, int param2) {
    UnkStruct_ov61_0222B960 *v0;
    UnkStruct_ov61_0222BCF8 *v1;
    UnkStruct_ov61_0222BCF8_sub1 *v2;
    int v3, v4;

    v0 = ov61_0222DE80();
    v1 = (UnkStruct_ov61_0222BCF8 *)(v0->unk_04);

    v4 = v1->unk_00;

    if (v4 > param2) {
        v4 = param2;
        GF_ASSERT(0);
    }

    v2 = (UnkStruct_ov61_0222BCF8_sub1 *)(v1->unk_04);

    for (v3 = 0; v3 < v4; v3++) {
        param1[v3] = &v2[v3].unk_10;
    }

    for (; v3 < param2; v3++) {
        param1[v3] = NULL;
    }

    return v4;
}

int ov61_0222BD64(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222B960 *param1) {
    UnkStruct_ov61_0222BD64 *v0;
    int v1 = 0;

    switch (param1->unk_02) {
    case 0:
        v0 = (UnkStruct_ov61_0222BD64 *)(param1->unk_04);
        v1 = 1;
        break;
    case 1:
        break;
    case 2:
    default:
        break;
    }

    return v1;
}

void ov61_0222BD78(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov62_0223DF10 **param1) {
    UnkStruct_ov61_0222B960 *v0 = ov61_0222DE80();
    UnkStruct_ov61_0222BD64 *v1 = (UnkStruct_ov61_0222BD64 *)(v0->unk_04);

    *param1 = &v1->unk_00;
}

int ov61_0222BD88(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222B960 *param1) {
    UnkStruct_ov61_0222BD88 *v0;
    int v1 = 0;

    switch (param1->unk_02) {
    case 0:
        v0 = (UnkStruct_ov61_0222BD88 *)(param1->unk_04);
        v1 = 1;
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        break;
    case 4:
        break;
    case 5:
    default:
        break;
    }

    return v1;
}

void ov61_0222BDAC(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222BDAC **param1, UnkStruct_ov61_0222BDAC_1 **param2) {
    UnkStruct_ov61_0222B960 *v0 = ov61_0222DE80();
    UnkStruct_ov61_0222BD88 *v1 = (UnkStruct_ov61_0222BD88 *)(v0->unk_04);

    *param1 = &v1->unk_00;
    *param2 = &v1->unk_558;
}

int ov61_0222BDC8(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222B960 *param1) {
    UnkStruct_ov61_0222BDC8 *v0;
    int v1 = 0;

    switch (param1->unk_02) {
    case 0:
        v0 = (UnkStruct_ov61_0222BDC8 *)(param1->unk_04);
        v1 = 1;
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        break;
    case 4:
        break;
    case 5:
    default:
        break;
    case 6:
        break;
    case 7:
        break;
    }

    return v1;
}

u64 ov61_0222BDF0(UnkStruct_ov62_022349A8 *param0) {
    UnkStruct_ov61_0222B960 *v0 = ov61_0222DE80();
    UnkStruct_ov61_0222BDC8 *v1 = (UnkStruct_ov61_0222BDC8 *)(v0->unk_04);

    return v1->unk_00;
}

int ov61_0222BE00(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222B960 *param1) {
    UnkStruct_ov61_0222BE00 *v0;
    int v1 = 0;

    switch (param1->unk_02) {
    case 0:
        v0 = (UnkStruct_ov61_0222BE00 *)(param1->unk_04);
        v1 = 1;
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
    default:
        break;
    }

    return v1;
}

int ov61_0222BE20(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222BE20 **param1, int param2) {
    UnkStruct_ov61_0222B960 *v0;
    UnkStruct_ov61_0222BE00 *v1;
    UnkStruct_ov61_0222BE00_sub1 *v2;
    int v3, v4;

    v0 = ov61_0222DE80();
    v1 = (UnkStruct_ov61_0222BE00 *)(v0->unk_04);

    v4 = v1->unk_00;

    if (v4 > param2) {
        v4 = param2;
        GF_ASSERT(0);
    }

    v2 = (UnkStruct_ov61_0222BE00_sub1 *)(v1->unk_04);

    for (v3 = 0; v3 < v4; v3++) {
        param1[v3] = &v2[v3].unk_0C;

        if (v2[v3].unk_04 != param1[v3]->unk_80.unk_58) {
            param1[v3]->unk_80.unk_58 = v2[v3].unk_04;
            param1[v3]->unk_80.unk_60.unk_00 = SaveData_CalculateChecksum(param0->saveData, &param1[v3]->unk_80, sizeof(UnkStruct_ov61_0222BED8_sub1) - (sizeof(UnkStruct_ov62_02239DA4_sub1)) - sizeof(v2[v3].unk_04));
        }
    }

    for (; v3 < param2; v3++) {
        param1[v3] = NULL;
    }

    return v4;
}

int ov61_0222BEB8(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222B960 *param1) {
    UnkStruct_ov61_0222BEB8 *v0;
    int v1 = 0;

    switch (param1->unk_02) {
    case 0:
        v0 = (UnkStruct_ov61_0222BEB8 *)(param1->unk_04);
        v1 = 1;
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
    default:
        break;
    }

    return v1;
}

int ov61_0222BED8(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222BED8 **param1) {
    UnkStruct_ov61_0222B960 *v0 = ov61_0222DE80();
    UnkStruct_ov61_0222BEB8 *v1 = (UnkStruct_ov61_0222BEB8 *)(v0->unk_04);

    *param1 = &v1->unk_0C;

    if (v1->unk_04 != v1->unk_0C.unk_80.unk_58) {
        v1->unk_0C.unk_80.unk_58 = v1->unk_04;
        (*param1)->unk_80.unk_60.unk_00 = SaveData_CalculateChecksum(param0->saveData, &(*param1)->unk_80, sizeof(UnkStruct_ov61_0222BED8_sub1) - (sizeof(UnkStruct_ov62_02239DA4_sub1)) - sizeof(v1->unk_04));
    }

    return v1->unk_04;
}

int ov61_0222BF24(UnkStruct_ov62_022349A8 *param0, UnkStruct_ov61_0222B960 *param1) {
    int v0 = 0;

    switch (param1->unk_02) {
    case 0:
        v0 = 1;
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
    default:
        break;
    }

    return v0;
}
