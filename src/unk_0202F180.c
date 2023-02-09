#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02026324_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_02073C74_sub1_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "unk_0202631C.h"
#include "unk_0202CD50.h"
#include "unk_0202F180.h"
#include "unk_02056720.h"
#include "unk_02073C2C.h"

void sub_0202F180 (UnkStruct_021C0794 * param0, const Pokemon * param1)
{
    if (sub_02074470((Pokemon *)param1, 76, NULL) == 0) {
        UnkStruct_02026324 * v0 = sub_02027560(param0);

        sub_0202D040(sub_0202CD88(param0), v0, sub_02074470((Pokemon *)param1, 5, NULL));
        sub_0202736C(v0, (Pokemon *)param1);
        sub_02056A48(sub_02056B24(param0), (const BoxPokemon *)param1);
    }
}
