#include "unk_0207DFAC.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0207DFAC.h"

#include "unk_020366A0.h"

BOOL sub_0207DFAC(int param0)
{
    int v0;
    int v1;
    UnkStruct_0207DFAC *v2 = sub_020388E8();

    v0 = v2->unk_00.unk_1B;
    v1 = v2->unk_24[param0].unk_1B;

    if ((v0 == 12) && (v1 == 5)) {
        return 1;
    } else if ((v0 == 13) && (v1 == 6)) {
        return 1;
    } else if ((v0 == 14) && (v1 == 7)) {
        return 1;
    } else if ((v0 == 9) && (v1 == 2)) {
        return 1;
    } else if ((v0 == 10) && (v1 == 3)) {
        return 1;
    } else if ((v0 == 11) && (v1 == 4)) {
        return 1;
    } else if ((v0 == 15) && (v1 == 8)) {
        return 1;
    } else if ((v0 == 19) && (v1 == 18)) {
        return 1;
    } else if ((v0 == 21) && (v1 == 20)) {
        return 1;
    } else if ((v0 == 23) && (v1 == 22)) {
        return 1;
    } else if ((v0 == 25) && (v1 == 24)) {
        return 1;
    } else if ((v0 == 27) && (v1 == 26)) {
        return 1;
    } else if ((v0 == 16) && (v1 == 1)) {
        return 1;
    }

    return 0;
}
