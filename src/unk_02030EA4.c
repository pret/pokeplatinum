#include "unk_02030EA4.h"

#include <nitro.h>
#include <string.h>

#include "savedata.h"

typedef struct UnkStruct_02030EC4_t {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_02030EC4;

int WiFiQuestion_SaveSize(void)
{
    return sizeof(UnkStruct_02030EC4);
}

void WiFiQuestion_Init(UnkStruct_02030EC4 *param0)
{
    MI_CpuFill32(param0, 0, WiFiQuestion_SaveSize());
    param0->unk_00 = 0xffffffff;
}

UnkStruct_02030EC4 *sub_02030EC4(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_WIFI_QUESTIONS);
}

u32 sub_02030ED0(const UnkStruct_02030EC4 *param0)
{
    return param0->unk_00;
}

u32 sub_02030ED4(const UnkStruct_02030EC4 *param0)
{
    return param0->unk_04;
}

void sub_02030ED8(UnkStruct_02030EC4 *param0, u32 param1)
{
    param0->unk_00 = param1;
}

void sub_02030EDC(UnkStruct_02030EC4 *param0, u32 param1)
{
    param0->unk_04 = param1;
}
