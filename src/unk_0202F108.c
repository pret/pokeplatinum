#include <nitro.h>
#include <string.h>

#include "savedata.h"

#include "struct_defs/struct_0202F10C.h"

#include "savedata.h"
#include "unk_0202F108.h"

int Contest_SaveSize (void)
{
    return sizeof(UnkStruct_0202F10C);
}

void Contest_Init (UnkStruct_0202F10C * param0)
{
    int v0, v1;

    for (v1 = 0; v1 < 5; v1++) {
        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_00[v1][v0] = 0;
        }
    }

    SaveData_SetChecksum(33);
}

void sub_0202F134 (SaveData * param0, int param1, int param2)
{
    UnkStruct_0202F10C * v0;

    v0 = SaveData_SaveTable(param0, 33);

    if (v0->unk_00[param1][param2] < 9999) {
        v0->unk_00[param1][param2]++;
    }

    SaveData_SetChecksum(33);
}

u16 sub_0202F160 (SaveData * param0, int param1, int param2)
{
    UnkStruct_0202F10C * v0;

    v0 = SaveData_SaveTable(param0, 33);
    SaveData_Checksum(33);

    return v0->unk_00[param1][param2];
}
