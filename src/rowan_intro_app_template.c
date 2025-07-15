#include <nitro.h>

#include "overlay_manager.h"
#include "applications/rowan_intro/main.h"

FS_EXTERN_OVERLAY(rowan_intro);

const ApplicationManagerTemplate gRowanIntroAppTemplate = {
    RowanIntro_Init,
    RowanIntro_Main,
    RowanIntro_Exit,
    FS_OVERLAY_ID(rowan_intro),
};
