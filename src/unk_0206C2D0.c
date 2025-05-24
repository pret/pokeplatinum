#include "unk_0206C2D0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202C834_decl.h"
#include "struct_decls/struct_0202C844_decl.h"

#include "save_player.h"
#include "savedata.h"
#include "trainer_info.h"
#include "unk_0202C7FC.h"

void sub_0206C2D0(SaveData *saveData, const s32 param1)
{
    u8 v0;
    int v1;
    UnkStruct_0202C834 *v2;
    UnkStruct_0202C844 *v3;
    TrainerInfo *v4;

    if (param1 <= 0) {
        return;
    }

    v2 = sub_0202C834(saveData);
    v3 = sub_0202C844(v2);
    v4 = SaveData_GetTrainerInfo(saveData);

    for (v0 = 0; v0 < 8; v0++) {
        if (TrainerInfo_HasBadge(v4, v0) == 0) {
            continue;
        }

        v1 = sub_0202C848(v0, v3);

        if ((0 < v1) && (v1 < 200)) {
            v1 -= (10 * param1);
        } else {
            GF_ASSERT(v1 < 200);
            v1 = 0;
        }

        if (v1 < 0) {
            v1 = 0;
        }

        sub_0202C850(v0, v1, v3);
    }
}
