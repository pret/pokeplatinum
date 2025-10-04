#ifndef POKEPLATINUM_POKETCH_FRIENDSHIP_CHECKER_GRAPHICS_H
#define POKEPLATINUM_POKETCH_FRIENDSHIP_CHECKER_GRAPHICS_H

#include "constants/pokemon.h"

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_task.h"

#include "bg_window.h"
#include "sys_task_manager.h"

#define FRIENDSHIP_CHECKER_TASK_SLOTS 8

#define FRIENDSHIP_LIKE    0
#define FRIENDSHIP_HATE    1
#define FRIENDSHIP_NEUTRAL 2

enum TapState {
    TAP_STATE_IDLE = 0,
    TAP_STATE_FIRST_TAP,
    TAP_STATE_HELD_TOO_LONG,
    TAP_STATE_FIRST_RELEASE,
    TAP_STATE_DOUBLE_TAP,
};

enum FriendshipCheckerGraphicsTask {
    FRIENDSHIP_CHECKER_GRAPHICS_INIT = 0,
    FRIENDSHIP_CHECKER_GRAPHICS_FREE,
};

typedef struct FriendshipCheckerData {
    int monCount;
    struct {
        u32 spriteIdx;
        u16 species;
        u16 unused;
        u16 form;
        u8 friendship;
        u8 intensity;
    } party[MAX_PARTY_SIZE];
    u16 screenHeld;
    u16 screenTapped;
    u32 touchX;
    u32 touchY;
} FriendshipCheckerData;

typedef struct PokemonGraphic {
    PoketchAnimation_AnimatedSpriteData *iconSprite;
    PoketchAnimation_AnimatedSpriteData *actionSprite;
    VecFx32 velocity;
    VecFx32 position;
    VecFx32 iconOffset;
    u8 action;
    u8 unused[2];
    u8 collisionCooldown;
    u8 flipSprite;
    u8 unused2;
    u8 bumpedFromRest;
    union {
        u32 jumpState;
        struct {
            u8 jumpStarted;
            u8 jumpProgress;
            u8 jumpPhase;
        };
    };
} PokemonGraphic;

typedef struct FriendshipCheckerGraphics {
    const FriendshipCheckerData *friendshipData;
    BgConfig *bgConfig;
    u32 activeTasks[POKETCH_TASK_SLOT_BASE + FRIENDSHIP_CHECKER_TASK_SLOTS];
    PoketchAnimation_AnimationManager *animMan;
    PoketchAnimation_SpriteData monAnimData;
    PoketchAnimation_SpriteData heartAnimData;
    VecFx32 plannedPosition[MAX_PARTY_SIZE];
    VecFx32 offsetPosition;
    SysTask *updateTask;
    u32 unused[12];
    enum TapState tapState;
    u32 tapStateCounter;
    u32 touchedMonIdx;
    u32 prevTouchedMonIdx;
    u32 unused2;
    BOOL touchingMonIcon;
    BOOL tappedOnMonIcon;
    u32 jumpingMons;
    u32 unused3[12];
    PokemonGraphic pokemon[MAX_PARTY_SIZE];
    u32 touchX;
    u32 touchY;
} FriendshipCheckerGraphics;

BOOL PoketchFriendshipCheckerGraphics_New(FriendshipCheckerGraphics **dest, const FriendshipCheckerData *appState, BgConfig *bgConfig);
void PoketchFriendshipCheckerGraphics_Free(FriendshipCheckerGraphics *graphics);
void PoketchFriendshipCheckerGraphics_StartTask(FriendshipCheckerGraphics *graphics, enum FriendshipCheckerGraphicsTask taskID);
BOOL PoketchFriendshipCheckerGraphics_TaskIsNotActive(FriendshipCheckerGraphics *graphics, enum FriendshipCheckerGraphicsTask taskID);
BOOL PoketchFriendshipCheckerGraphics_NoActiveTasks(FriendshipCheckerGraphics *graphics);

#endif // POKEPLATINUM_POKETCH_FRIENDSHIP_CHECKER_GRAPHICS_H
