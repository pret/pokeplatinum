#include "ribbon_save_data.h"

#include <nitro.h>
#include <string.h>

#include "savedata.h"

#define RIBBONS_SAVE_SIZE 14

int Ribbons_SaveSize(void)
{
    return RIBBONS_SAVE_SIZE;
}

void Ribbons_Init(u8 *ribbons)
{
    memset(ribbons, 0, RIBBONS_SAVE_SIZE);
}

u8 *SaveData_GetRibbons(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_RIBBONS);
}
