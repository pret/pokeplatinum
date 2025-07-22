#include "overlay115/ov115_02265A18.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"

#include "overlay115/ov115_02265A24.h"

static const CommCmdTable Unk_ov115_0226664C[] = {
    { ov115_02265A44, ov115_02265A40, NULL },
    { ov115_02265A50, ov115_02265A40, NULL },
    { ov115_02265A5C, ov115_02265AD0, NULL },
    { ov115_02265A84, ov115_02265AD8, NULL },
    { ov115_02265A94, ov115_02265AD4, NULL },
    { ov115_02265AC0, ov115_02265ADC, NULL },
    { ov115_02265AA4, ov115_02265AD8, NULL },
    { ov115_02265AB4, ov115_02265A40, NULL },
};

const CommCmdTable *ov115_02265A18(void) {
    return Unk_ov115_0226664C;
}

int ov115_02265A20(void) {
    return sizeof(Unk_ov115_0226664C) / sizeof(CommCmdTable);
}
