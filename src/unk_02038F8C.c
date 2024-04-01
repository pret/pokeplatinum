#include <nitro.h>
#include <string.h>

#include "trainer_info.h"
#include "struct_decls/struct_0202C878_decl.h"

#include "trainer_info.h"
#include "unk_0202C858.h"
#include "communication_information.h"
#include "communication_system.h"
#include "unk_02038F8C.h"

void sub_02038F8C (UnkStruct_0202C878 * param0)
{
    int v0;
    int v1, v2, v3;
    TrainerInfo * v4;
    int v5 = sub_02035E18();

    if (CommInfo_GetTrainerInformation(0) == NULL) {
        return;
    }

    for (v0 = 0; v0 < v5; v0++) {
        if (CommSys_GetCurNetId() != v0) {
            v1 = CommInfo_PlayerCountry(v0);
            v2 = CommInfo_PlayerRegion(v0);
            v4 = CommInfo_GetTrainerInformation(v0);
            v3 = TrainerInfo_RegionCode(v4);

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
