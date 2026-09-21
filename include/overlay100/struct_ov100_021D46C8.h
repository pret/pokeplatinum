#ifndef POKEPLATINUM_STRUCT_OV100_021D46C8_H
#define POKEPLATINUM_STRUCT_OV100_021D46C8_H

#include <nitro/fx/fx.h>
#include <nnsys.h>

#include "overlay100/struct_ov100_021D36CC.h"
#include "overlay100/struct_ov100_021D46C8_sub1.h"
#include "overlay100/struct_ov100_021D4890.h"
#include "overlay100/struct_ov100_021D4F9C_decl.h"

#include "bg_window.h"
#include "camera.h"
#include "g3d_pipeline.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"

typedef struct CutsceneGraphics {
    NARC *narc;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    BgConfig *bgConfig;
    PaletteData *paletteData;
    G3DPipelineBuffers *g3dPipeline;
    Camera *camera;
    NNSFndAllocator allocator;
    MessageLoader *messageLoader;
    Window messageWindow;
    int messagePrinter;
    VecFx32 cameraTarget;
    BlendColor tint;
    ScreenCapture *screenCapture;
    CameraPan cameraPan;
    CameraShakeTask cameraShake;
    u8 flashState;
    u8 flashIntensity;
    u8 flashTimer;
} CutsceneGraphics;

#endif // POKEPLATINUM_STRUCT_OV100_021D46C8_H
