#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "unk_020244AC.h"
#include "unk_0202D778.h"

int Ribbons_SaveSize (void)
{
    return 14;
}

void Ribbons_Init (u8 * param0)
{
    memset(param0, 0, 14);
}

u8 * sub_0202D79C (SaveData * param0)
{
    return SaveData_Get(param0, 24);
}
