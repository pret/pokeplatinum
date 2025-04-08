#include "unk_0202F108.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202F10C.h"

#include "savedata.h"

int Contest_SaveSize(void)
{
    return sizeof(UnkStruct_0202F10C);
}

void Contest_Init(UnkStruct_0202F10C *param0)
{
    int v0, v1;

    for (v1 = 0; v1 < 5; v1++) {
        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_00[v1][v0] = 0;
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_CONTESTS);
}

void sub_0202F134(SaveData *saveData, int param1, int param2)
{
    UnkStruct_0202F10C *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_CONTESTS);

    if (v0->unk_00[param1][param2] < 9999) {
        v0->unk_00[param1][param2]++;
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_CONTESTS);
}

u16 sub_0202F160(SaveData *saveData, int param1, int param2)
{
    UnkStruct_0202F10C *v0 = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_CONTESTS);
    SaveData_Checksum(SAVE_TABLE_ENTRY_CONTESTS);

    return v0->unk_00[param1][param2];
}
