#include <nitro.h>
#include <string.h>

#include "overlay006/struct_ov6_02242634.h"

#include "map_header_data.h"
#include "overlay006/ov6_02243218.h"

static const u32 Unk_ov6_02249090[22] = {
    0x156,
    0x157,
    0x158,
    0x15E,
    0x161,
    0x162,
    0x164,
    0x17C,
    0x17E,
    0x181,
    0x184,
    0x188,
    0x18B,
    0x18F,
    0x190,
    0x1D5,
    0x193,
    0x196,
    0x197,
    0x1D7,
    0xC8,
    0xCB
};

u32 ov6_02243218 (const u32 param0)
{
    return Unk_ov6_02249090[param0 % 22];
}

void ov6_0224322C (const u32 param0, u16 * param1, u16 * param2)
{
    UnkStruct_ov6_02242634 v0;
    u32 v1;

    v1 = Unk_ov6_02249090[(param0 % 22)];
    MapHeaderData_LoadWildEncounters(&v0, v1);

    (*param2) = v0.unk_40[0];
    (*param1) = v1;
}
