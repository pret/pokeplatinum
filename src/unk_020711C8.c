#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_020711C8.h"

#include "heap.h"
#include "unk_020711C8.h"
#include "unk_02079FEC.h"

UnkStruct_020711C8 * sub_020711C8 (const int param0, const u8 param1, UnkStruct_021C0794 * param2)
{
    UnkStruct_020711C8 * v0;

    v0 = AllocFromHeapAtEnd(param0, sizeof(UnkStruct_020711C8));
    v0->unk_00 = sub_0207A0FC(sub_0207A268(param2), param1);
    v0->unk_04 = NULL;

    return v0;
}
