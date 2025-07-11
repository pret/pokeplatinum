#include <nitro.h>
#include <string.h>

#include "constdata/const_020F6824.h"

FS_EXTERN_OVERLAY(overlay73);

int RowanIntroManager_Init(ApplicationManager *appMan, int *param1);
int ov73_021D0E20(ApplicationManager *appMan, int *param1);
int ov73_021D0F7C(ApplicationManager *appMan, int *param1);

const ApplicationManagerTemplate Unk_020F6824 = {
    RowanIntroManager_Init,
    ov73_021D0E20,
    ov73_021D0F7C,
    FS_OVERLAY_ID(overlay73),
};
