#include "unk_0202C7FC.h"

#include <nitro.h>
#include <string.h>

#include "savedata.h"

typedef struct UnkStruct_0202C844_t {
    int unk_00;
} UnkStruct_0202C844;

typedef struct UnkStruct_0202C834_t {
    UnkStruct_0202C844 unk_00[8];
    u8 signature[1536];
} UnkStruct_0202C834;

int TrainerCardSignature_SaveSize(void)
{
    return sizeof(UnkStruct_0202C834);
}

void TrainerCardSignature_Init(UnkStruct_0202C834 *param0)
{
    memset(param0, 0, sizeof(UnkStruct_0202C834));

    {
        int v0;
        UnkStruct_0202C844 *v1;

        v1 = sub_0202C844(param0);

        for (v0 = 0; v0 < 8; v0++) {
            sub_0202C850(v0, 140, v1);
        }
    }
}

UnkStruct_0202C834 *sub_0202C834(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_TRAINER_CARD_SIGNATURE);
}

u8 *TrainerCardSignature_GetSignature(UnkStruct_0202C834 *param0)
{
    return param0->signature;
}

UnkStruct_0202C844 *sub_0202C844(UnkStruct_0202C834 *param0)
{
    return param0->unk_00;
}

int sub_0202C848(const u8 param0, UnkStruct_0202C844 *param1)
{
    return param1[param0].unk_00;
}

void sub_0202C850(const u8 param0, const int param1, UnkStruct_0202C844 *param2)
{
    param2[param0].unk_00 = param1;
}
