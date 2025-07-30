#include <nitro.h>

#include "applications/rowan_intro/main.h"

#include "overlay_manager.h"

FS_EXTERN_OVERLAY(rowan_intro);

const ApplicationManagerTemplate gRowanIntroAppTemplate = {
    .init = RowanIntro_Init,
    .main = RowanIntro_Main,
    .exit = RowanIntro_Exit,
    .overlayID = FS_OVERLAY_ID(rowan_intro),
};
