#include <nitro.h>
#include <string.h>

#include "constdata/const_020F6824.h"

FS_EXTERN_OVERLAY(overlay73);

int RowanIntroManager_Init(ApplicationManager *appMan, int *state);
int RowanIntroManager_Main(ApplicationManager *appMan, int *state);
int RowanIntroManager_Exit(ApplicationManager *appMan, int *state);

const ApplicationManagerTemplate ApplicationManagerTemplate_RowanIntroManager = {
    RowanIntroManager_Init,
    RowanIntroManager_Main,
    RowanIntroManager_Exit,
    FS_OVERLAY_ID(overlay73),
};
