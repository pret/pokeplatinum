#include "overlay061/ov61_0222AE60.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_defs/struct_02030A80.h"

#include "overlay061/struct_ov61_0222AE80.h"
#include "overlay061/struct_ov61_0222AFC0.h"
#include "overlay061/struct_ov61_0222AFCC.h"
#include "overlay062/struct_ov62_02239DA4.h"
#include "overlay062/struct_ov62_02239DA4_sub1.h"

#include "pc_boxes.h"
#include "savedata.h"
#include "strbuf.h"
#include "unk_020298BC.h"

void ov61_0222AE60(SaveData *saveData, const UnkStruct_02029C68 *param1, UnkStruct_ov61_0222AE80 *param2)
{
    sub_0202A75C(param1, param2);
    param2->unk_5C.unk_00 = SaveData_CalculateChecksum(saveData, param2, sizeof(UnkStruct_ov61_0222AE80) - (sizeof(UnkStruct_ov62_02239DA4_sub1)));
}

void ov61_0222AE80(const UnkStruct_ov61_0222AE80 *param0, UnkStruct_02029C68 *param1)
{
    sub_0202A824(param0, param1);
}

void ov61_0222AE88(SaveData *saveData, const PCBoxes *pcBoxes, int boxID, UnkStruct_ov62_02239DA4 *param3, int heapID)
{
    Strbuf *v0;
    int v1;

    MI_CpuClear8(param3, sizeof(UnkStruct_ov62_02239DA4));

    v0 = Strbuf_Init(20 * 3, heapID);
    PCBoxes_BufferBoxName(pcBoxes, boxID, v0);
    Strbuf_ToChars(v0, param3->unk_00, 20);
    Strbuf_Free(v0);

    for (v1 = 0; v1 < 30; v1++) {
        param3->unk_28[v1] = PCBoxes_GetBoxMonData(pcBoxes, boxID, v1, MON_DATA_SPECIES, NULL);
        param3->unk_64[v1] = PCBoxes_GetBoxMonData(pcBoxes, boxID, v1, MON_DATA_PERSONALITY, NULL);
        param3->unk_DC[v1] = PCBoxes_GetBoxMonData(pcBoxes, boxID, v1, MON_DATA_OT_ID, NULL);

        if (PCBoxes_GetBoxMonData(pcBoxes, boxID, v1, MON_DATA_SPECIES_OR_EGG, NULL) == SPECIES_EGG) {
            param3->unk_154 |= 1 << v1;
        }

        param3->unk_158[v1] = PCBoxes_GetBoxMonData(pcBoxes, boxID, v1, MON_DATA_FORM, NULL);
    }

    param3->unk_176 = PCBoxes_GetWallpaper(pcBoxes, boxID);
    param3->unk_177 = 0;
    param3->unk_198.unk_00 = SaveData_CalculateChecksum(saveData, param3, sizeof(UnkStruct_ov62_02239DA4) - (sizeof(UnkStruct_ov62_02239DA4_sub1)));
}

void ov61_0222AF88(SaveData *saveData, UnkStruct_ov62_02239DA4 *param1, int param2)
{
    param1->unk_177 = param2;
    param1->unk_198.unk_00 = SaveData_CalculateChecksum(saveData, param1, sizeof(UnkStruct_ov62_02239DA4) - (sizeof(UnkStruct_ov62_02239DA4_sub1)));
}

void ov61_0222AFA4(SaveData *saveData, const UnkStruct_02030A80 *param1, UnkStruct_ov61_0222AFC0 *param2)
{
    GF_ASSERT(sizeof(UnkStruct_ov61_0222AFC0) == sizeof(UnkStruct_02030A80));
    MI_CpuClear8(param2, sizeof(UnkStruct_ov61_0222AFC0));
    MI_CpuCopy8(param1, param2, sizeof(UnkStruct_ov61_0222AFC0));
}

void ov61_0222AFC0(const UnkStruct_ov61_0222AFC0 *param0, UnkStruct_02030A80 *param1)
{
    GF_ASSERT(sizeof(UnkStruct_ov61_0222AFC0) == sizeof(UnkStruct_02030A80));
    MI_CpuCopy8(param0, param1, sizeof(UnkStruct_ov61_0222AFC0));
}

void ov61_0222AFCC(SaveData *saveData, const UnkStruct_02030A80 *param1, UnkStruct_ov61_0222AFCC *param2)
{
    MI_CpuClear8(param2, sizeof(UnkStruct_ov61_0222AFCC));

    param2->unk_00 = param1->unk_19;
    param2->unk_01 = param1->unk_1A;
    param2->unk_02 = param1->unk_15;
    param2->unk_03 = param1->unk_16;
    param2->unk_04 = param1->unk_1C;
    param2->unk_06_0 = param1->unk_1B_0;
}
