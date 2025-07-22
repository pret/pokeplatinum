#include "unk_0202D778.h"

#include <nitro.h>
#include <string.h>

#include "savedata.h"

int Ribbons_SaveSize(void) {
    return 14;
}

void Ribbons_Init(u8 *param0) {
    memset(param0, 0, 14);
}

u8 *sub_0202D79C(SaveData *saveData) {
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_RIBBONS);
}
