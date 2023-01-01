#include <nitro.h>
#include <string.h>

#include "overlay097/struct_ov97_0223635C.h"

#include "overlay097/ov97_02235D18.h"
#include "overlay097/ov97_0223635C.h"

u32 ov97_0223635C (void)
{
    UnkStruct_ov97_0223635C * v0 = ov97_02236350();
    return v0->unk_0A[3] << 24 | v0->unk_0A[2] << 16 | v0->unk_0A[1] << 8 | v0->unk_0A[0];
}

u8 * ov97_02236378 (void)
{
    UnkStruct_ov97_0223635C * v0 = ov97_02236350();
    return v0->unk_00;
}
