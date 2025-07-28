#ifndef POKEPLATINUM_STRUCT_TRAINERCARD_SCREEN_H
#define POKEPLATINUM_STRUCT_TRAINERCARD_SCREEN_H

#include <nnsys.h>

#include "badges.h"
#include "bg_window.h"
#include "sound.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "trainer_card.h"

enum TrainerCardWindows {
    TRAINER_CARD_WINDOW_ID,
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
    TRAINER_CARD_WINDOW_COUNT
};

typedef struct BadgePolishingState {
    s8 previousXDirection;
    s8 previousYDirection;
    s8 currentXDirection;
    s8 currentYDirection;
    u8 soundEffectIndex;
} BadgePolishingState;

typedef struct TrainerCardBadgeChimeState {
    u8 badgeChimePlayers[NUM_SE_PLAYERS][2];
} TrainerCardBadgeChimeState;

typedef struct TrainerCardSpriteData {
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    SpriteResourceCollection *spriteResourceCollection[4];
    SpriteResource *spriteResources[2][4];
    Sprite *sprites[MAX_BADGES * 3 + 1];
    void *badgePaletteBuffers[MAX_BADGES];
    NNSG2dPaletteData *badgePalettes[MAX_BADGES];
} TrainerCardSpriteData;

typedef struct TrainerCardScreen {
    BgConfig *bgConfig;
    Window windows[TRAINER_CARD_WINDOW_COUNT];
    TrainerCard *trainerCard;
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
    TrainerCardSpriteData spriteData;
    int cardScalingSpeed;
    int unused;
    BOOL badgeCaseButtonPushed;
    TrainerCardBadgeChimeState badgeChimeState;
    void *trainerScreenDataNSCRBuffer;
    NNSG2dScreenData *trainerScreenData;
    BadgePolishingState badgePolishingState;
    Strbuf *unusedStrbuf;
    Strbuf *colonStrbuf;
    u8 polishingProgress[MAX_BADGES];
    u8 badgeCaseOpenState;
    u8 badgeCaseTransitionIndex;
    u8 subState;
    u8 badgeCaseButtonAnimTimer;
    u8 badgeCaseButtonAnimIndex;
    u8 badgeCaseButtonState;
    u8 timer;
} TrainerCardScreen;

#endif // POKEPLATINUM_STRUCT_TRAINERCARD_SCREEN_H
