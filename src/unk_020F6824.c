#include <nitro.h>
#include <string.h>

#include "constdata/const_020F6824.h"

FS_EXTERN_OVERLAY(overlay73);

int RowanIntro_Init(ApplicationManager *appMan, int *state);
int RowanIntro_Main(ApplicationManager *appMan, int *state);
int RowanIntro_Exit(ApplicationManager *appMan, int *state);

const ApplicationManagerTemplate ApplicationManagerTemplate_RowanIntro = {
    RowanIntro_Init,
    RowanIntro_Main,
    RowanIntro_Exit,
    FS_OVERLAY_ID(overlay73),
};
