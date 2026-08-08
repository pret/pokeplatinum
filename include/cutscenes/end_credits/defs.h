#ifndef POKEPLATINUM_END_CREDITS_DEFS_H
#define POKEPLATINUM_END_CREDITS_DEFS_H

#include "struct_defs/clear_game_player_info.h"

#include "bg_window.h"
#include "camera.h"
#include "easy3d_object.h"
#include "g3d_pipeline.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

enum EndCreditsScene {
    END_CREDITS_SCENE_BIKE_MORNING = 0,
    END_CREDITS_SCENE_MEMORIES_1,
    END_CREDITS_SCENE_BIKE_DAY,
    END_CREDITS_SCENE_MEMORIES_2,
    END_CREDITS_SCENE_BIKE_NIGHT,
    END_CREDITS_SCENE_TWINLEAF,
    END_CREDITS_SCENE_FIN,

    END_CREDITS_SCENE_COUNT
};

enum EndCreditsManagedSpriteType {
    END_CREDITS_SPRITE_MORNING_PLAYER = 0,
    END_CREDITS_SPRITE_MORNING_SCARF,
    END_CREDITS_SPRITE_MORNING_DRIFLOON_1,
    END_CREDITS_SPRITE_MORNING_DRIFLOON_2,
    END_CREDITS_SPRITE_MORNING_DRIFLOON_3,

    END_CREDITS_SPRITE_DAY_PLAYER = 0,
    END_CREDITS_SPRITE_DAY_SCARF,
    END_CREDITS_SPRITE_DAY_WINGULL_1,
    END_CREDITS_SPRITE_DAY_WINGULL_2,
    END_CREDITS_SPRITE_DAY_WINGULL_3,

    END_CREDITS_SPRITE_NIGHT_PLAYER = 0,
    END_CREDITS_SPRITE_NIGHT_SCARF,
    END_CREDITS_SPRITE_NIGHT_MAGNEZONE,
    END_CREDITS_SPRITE_NIGHT_METEOR_1,
    END_CREDITS_SPRITE_NIGHT_METEOR_2,

    END_CREDITS_SPRITE_COUNT
};

enum EndCreditsSkipState {
    END_CREDITS_SKIP_STATE_NOT_SKIPPED = 0,
    END_CREDITS_SKIP_STATE_SKIPPING,
    END_CREDITS_SKIP_STATE_SKIPPED,
};

enum EndCreditsMemory {
    END_CREDITS_MEMORY_ROUTE_201_STARTER = 0,
    END_CREDITS_MEMORY_ROWANS_LAB,
    END_CREDITS_MEMORY_POKEMON_CENTER,
    END_CREDITS_MEMORY_VALLEY_WINDWORKS,
    END_CREDITS_MEMORY_ROUTE_210_PSYDUCK,
    END_CREDITS_MEMORY_ETERNA_FOREST,
    END_CREDITS_MEMORY_PASTORIA_GREAT_MARSH,

    END_CREDITS_MEMORY_CANALAVE_BARRY,
    END_CREDITS_MEMORY_LAKE_ACUITY,
    END_CREDITS_MEMORY_SPEAR_PILLAR,

    END_CREDITS_MEMORY_COUNT
};

typedef struct Bg3DModelAnim {
    s16 modelCount;
    s16 speed;
    fx32 startXPos;
    fx32 xOffset;
    fx32 startYPos;
    fx32 yOffset;
    fx32 startZPos;
    fx32 zOffset;
} Bg3DModelAnim;

typedef struct EndCredits3DModelManager {
    Bg3DModelAnim bg3DModels[2];
} EndCredits3DModelManager;

typedef struct DrifloonState {
    fx32 xPos;
    fx32 yPos;
    fx32 degrees;
    s32 frame;
    s16 scaleTimer;
    s8 scaleDirection;
} DrifloonState;

typedef struct EndCreditsMorningSceneData {
    fx32 bgXPos;
    fx32 unused_04;
    DrifloonState drifloonStates[3];
} EndCreditsMorningSceneData;

typedef struct WingullState {
    fx32 xPos;
    fx32 yPos;
    fx32 unused_08;
    fx32 unused_0C;
    fx32 degrees;
    fx32 xDegrees;
    fx32 yDegrees;
    fx32 flyInOutSpeed;
    fx32 xSpeed;
    fx32 ySpeed;
    fx32 xOffset;
    fx32 yOffset;
    s32 unused_30;
    s16 startTimer;
    s16 rotateTimer;
    s8 rotateDirection;
    u8 phase;
} WingullState;

typedef struct EndCreditsDaySceneData {
    fx32 unused_00;
    fx32 bgYPos;
    u16 bgPaletteBuffers[4][16];
    int currentTransitionFrame;
    int fraction;
    int animDirection;
    WingullState wingullStates[2];
} EndCreditsDaySceneData;

typedef struct MagnezoneState {
    fx32 xPos;
    fx32 yPos;
    fx32 degrees;
    s16 rotateTimer;
    s8 rotateDirection;
} MagnezoneState;

typedef struct EndCreditsNightSceneData {
    fx32 unused_00;
    fx32 unused_04;
    u16 bgPaletteBuffers[8][16];
    int currentTransitionFrame;
    int fraction;
    int unused_110;
    int backgroundState;
    u32 frames;
    u8 meteorLoaded;
    u8 meteorScreen;
    s8 ev1;
    s8 ev2;
    s32 modelToRender;
    MagnezoneState magnezoneStates[1];
} EndCreditsNightSceneData;

typedef struct EndCreditsMemoriesSceneData {
    u32 framesElapsed;
} EndCreditsMemoriesSceneData;

typedef struct EndCreditsTwinleafSceneData {
    u32 framesElapsed;
    u8 currentImage;
    s8 ev1;
    s8 ev2;
    u32 plane1;
} EndCreditsTwinleafSceneData;

typedef struct EndCreditsFinSceneData {
    u32 unused_00;
} EndCreditsFinSceneData;

typedef struct EndCreditsSceneManager {
    int state;
    s16 memoryCooldown;
    s16 unused_06;
    union {
        EndCreditsMorningSceneData morningSceneData;
        EndCreditsDaySceneData daySceneData;
        EndCreditsNightSceneData nightSceneData;
        EndCreditsMemoriesSceneData memoriesSceneData;
        EndCreditsTwinleafSceneData twinleafSceneData;
        EndCreditsFinSceneData finSceneData;
    };
} EndCreditsSceneManager;

typedef struct EndCreditsStringsManager {
    int topY;
    int bottomY;
    int bgLayer;
    int entryToDraw;
    int entryToErase;
    BOOL unused_14;
    BOOL reloadWindow;
    int state;
    BgConfig *bgConfig;
    Window *window;
    Window *window2;
    MessageLoader *messageLoader;
    String *string;
    SysTask *sysTask;
} EndCreditsStringsManager;

typedef struct EndCreditsPlayerAnimManager {
    s16 blinkFrames;
    s16 blinkState;
    s16 animCount;
    s16 blinkCount;
} EndCreditsPlayerAnimManager;

typedef struct EndCreditsApp {
    ClearGamePlayerInfo *clearGamePlayerInfo;
    BOOL unused_04;
    BgConfig *bgConfig;
    PaletteData *paletteData;
    G3DPipelineBuffers *g3dPipeline;
    SysTask *sysTask;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    MessageLoader *messageLoader;
    Window *window;
    Camera *camera;
    Easy3DModel bg3DModels[4];
    Easy3DObject bg3DObjects[2][16];
    EndCredits3DModelManager modelManager;
    EndCreditsSceneManager sceneManager;
    ManagedSprite *managedSprites[END_CREDITS_SPRITE_COUNT];
    u8 *eyeCharData;
    NARC *narc;
    u32 framesElapsed;
    u8 creditsSkipState;
    u8 currentScene;
    u8 sceneLoaded;
    u8 bg3DModelLoaded;
    u8 bg3DModelRows;
    u8 currentMemory;
    EndCreditsStringsManager *subScreenStringsManager;
    EndCreditsStringsManager *mainScreenStringsManager;
    BOOL creditsScrollDone;
    EndCreditsPlayerAnimManager playerAnimManager;
} EndCreditsApp;

#endif // POKEPLATINUM_END_CREDITS_DEFS_H
