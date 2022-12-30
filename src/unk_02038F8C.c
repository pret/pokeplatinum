#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0202C878_decl.h"

#include "unk_02025E68.h"
#include "unk_0202C858.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_02038F8C.h"

void sub_02038F8C (UnkStruct_0202C878 * param0)
{
    int v0;
    int v1, v2, v3;
    UnkStruct_02025E6C * v4;
    int v5 = sub_02035E18();

    if (sub_02032EE8(0) == NULL) {
        return;
    }

    for (v0 = 0; v0 < v5; v0++) {
        if (sub_0203608C() != v0) {
            v1 = sub_02032F78(v0);
            v2 = sub_02032F9C(v0);
            v4 = sub_02032EE8(v0);
            v3 = sub_02025FD8(v4);

            sub_02038FDC(param0, v1, v2, v3);
        }
    }
}

void sub_02038FDC (UnkStruct_0202C878 * param0, int param1, int param2, int param3)
{
    if (sub_0202C8C8(param0, param1, param2) == 0) {
        sub_0202C918(param0, param1, param2, 1);
    }
}
