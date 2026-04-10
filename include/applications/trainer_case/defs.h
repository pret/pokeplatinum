#ifndef POKEPLATINUM_APPLICATIONS_TRAINER_CASE_DEFS_H
#define POKEPLATINUM_APPLICATIONS_TRAINER_CASE_DEFS_H

#include <nnsys.h>

#include "badges.h"
#include "bg_window.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "trainer_case.h"

enum TrainerCardWindow {
    TRAINER_CARD_WINDOW_ID = 0,
    TRAINER_CARD_WINDOW_NAME,
    TRAINER_CARD_WINDOW_MONEY,
    TRAINER_CARD_WINDOW_POKEDEX,
    TRAINER_CARD_WINDOW_SCORE,
    TRAINER_CARD_WINDOW_TIME,
    TRAINER_CARD_WINDOW_ADVENTURE_STARTED,
    TRAINER_CARD_WINDOW_HOF_DEBUT,
    TRAINER_CARD_WINDOW_TIMES_LINKED,
    TRAINER_CARD_WINDOW_LINK_BATTLES,
    TRAINER_CARD_WINDOW_LINK_TRADES,
    TRAINER_CARD_WINDOW_COUNT,
};

enum BadgePolishLevel {
    BADGE_POLISH_LEVEL_FILTHY = 0,
    BADGE_POLISH_LEVEL_DIRTY,
    BADGE_POLISH_LEVEL_NORMAL,
    BADGE_POLISH_LEVEL_2_SPARKLES,
    BADGE_POLISH_LEVEL_4_SPARKLES,
    BADGE_POLISH_LEVEL_COUNT,
};

enum BadgeCaseSpriteAnims {
    BADGE_CASE_ANIM_COAL_BADGE = 0,
    BADGE_CASE_ANIM_FOREST_BADGE,
    BADGE_CASE_ANIM_COBBLE_BADGE,
    BADGE_CASE_ANIM_FEN_BADGE,
    BADGE_CASE_ANIM_RELIC_BADGE,
    BADGE_CASE_ANIM_MINE_BADGE,
    BADGE_CASE_ANIM_ICICLE_BADGE,
    BADGE_CASE_ANIM_BEACON_BADGE,
    BADGE_CASE_ANIM_TWO_SPARKLES,
    BADGE_CASE_ANIM_FOUR_SPARKLES,
    BADGE_CASE_ANIM_BUTTON_PRESS_EFFECT,
};

typedef struct BadgePolishingState {
    s8 previousXDirection;
    s8 previousYDirection;
    s8 currentXDirection;
    s8 currentYDirection;
    u8 soundEffectIndex;
} BadgePolishingState;

typedef struct BadgeChimeState {
    u8 badgeChimePlayers[NUM_SE_PLAYERS][2];
} BadgeChimeState;

typedef struct TrainerCaseSpriteData {
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *spriteResourceCollection[MAX_SPRITE_RESOURCE_GEN4];
    SpriteResource *spriteResources[MAX_SPRITE_RESOURCE_GEN4];
    u8 padding[16];
    Sprite *sprites[MAX_BADGES * 3 + 1];
    void *badgePaletteBuffers[MAX_BADGES];
    NNSG2dPaletteData *badgePalettes[MAX_BADGES];
} TrainerCaseSpriteData;

typedef struct TrainerCaseApp {
    BgConfig *bgConfig;
    Window windows[TRAINER_CARD_WINDOW_COUNT];
    TrainerCase *trainerCase;
    u8 signature[SIGNATURE_WIDTH * SIGNATURE_HEIGHT * TILE_SIZE_8BPP];
    void *trainerSprite;
    NNSG2dCharacterData *trainerCharacterData;
    BOOL viewingBack;
    BOOL polishingEnabled;
    fx32 cardXScale;
    fx32 cardYScale;
    fx32 badgeCaseCoverYScale;
    int touchedRectangleIndex;
    BOOL badgeCaseCoverMoving;
    int lastTouchedX;
    int lastTouchedY;
    TrainerCaseSpriteData spriteData;
    int cardScalingSpeed;
    u8 padding[4];
    BOOL badgeCaseButtonPushed;
    BadgeChimeState badgeChimeState;
    void *trainerScreenDataNSCRBuffer;
    NNSG2dScreenData *trainerScreenData;
    BadgePolishingState badgePolishingState;
    String *unusedString;
    String *colonString;
    u8 polishingProgress[MAX_BADGES];
    u8 badgeCaseOpenState;
    u8 badgeCaseTransitionIndex;
    u8 subState;
    u8 badgeCaseButtonAnimTimer;
    u8 badgeCaseButtonAnimIndex;
    u8 badgeCaseButtonState;
    u8 timer;
} TrainerCaseApp;

#endif // POKEPLATINUM_APPLICATIONS_TRAINER_CASE_DEFS_H
