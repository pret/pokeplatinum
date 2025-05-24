#include "unk_02038ED4.h"

#include <nitro.h>
#include <string.h>

#include "savedata.h"
#include "unk_020363E8.h"

void sub_02038ED4(int *param0)
{
    *param0 = 0;
}

int sub_02038EDC(SaveData *saveData, int param1, int *param2)
{
    int v0;

    switch (*param2) {
    case 0:
        CommTiming_StartSync(111);
        *param2 = 1;
        break;
    case 1:
        if (CommTiming_IsSyncState(111)) {
            SaveData_SaveStateInit(saveData, param1);
            *param2 = 2;
        }
        break;
    case 2:
        v0 = SaveData_SaveStateMain(saveData);

        GF_ASSERT(v0 != 2);
        GF_ASSERT(v0 != 3);

        if (v0 == 1) {
            *param2 = 3;
            CommTiming_StartSync(112);
        }
        break;
    case 3:
        if (CommTiming_IsSyncState(112)) {
            *param2 = 4;
        }
        break;
    case 4:
        v0 = SaveData_SaveStateMain(saveData);

        GF_ASSERT(v0 != 3);
        GF_ASSERT(v0 != 1);

        if (v0 == 2) {
            *param2 = 5;
        }
        break;
    case 5:
        *param2 = 6;
        break;
    case 6:
        return 1;
        break;
    }

    return 0;
}
