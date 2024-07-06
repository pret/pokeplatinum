#include "unk_0202D778.h"

#include <nitro.h>
#include <string.h>

#include "savedata.h"

int Ribbons_SaveSize(void)
{
    return 14;
}

void Ribbons_Init(u8 *param0)
{
    memset(param0, 0, 14);
}

u8 *sub_0202D79C(SaveData *param0)
{
    return SaveData_SaveTable(param0, 24);
}
