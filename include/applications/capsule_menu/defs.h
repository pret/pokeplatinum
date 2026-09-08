#ifndef POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_DEFS_H
#define POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_DEFS_H

#include "constants/pokemon.h"

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012744_decl.h"

#include "applications/capsule_menu/main.h"
#include "battle_anim/struct_ball_rotation_decl.h"
#include "battle_anim/struct_ov12_02235FE0_decl.h"
#include "overlay022/struct_ov22_02258A48.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "g3d_pipeline.h"
#include "menu.h"
#include "palette.h"
#include "pokemon.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "sprite_system.h"
#include "string_list.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "yes_no_touch_menu.h"

#define SEALS_PER_PAGE                8
#define CAPSULE_TOUCH_RECTS           21
#define CAPSULE_SELECTION_ARROWS      4
#define CAPSULE_MENU_WINDOW_NUM       11
#define CAPSULE_MENU_EMPTY_CAPSULE    0
#define CAPSULE_MENU_HAS_SEALS        1
#define CAPSULE_MENU_HAS_POKEMON      2
#define CAPSULE_MENU_UNREACHABLE_CASE 3

typedef struct SealListMenuEntry {
    int index;
    void *func;
} SealListMenuEntry;

extern const SealListMenuEntry gSealListMenuEntries[5];

typedef struct SealRenderInfo {
    BOOL shouldRender;
    u8 type;
    u8 x;
    u8 y;
    u8 unused;
    ManagedSprite *sprite;
    TouchScreenRect *touchScreenRect;
} SealRenderInfo;

typedef struct IndexedCapsule {
    int pokemonIndex;
    BallCapsule *capsule;
} IndexedCapsule;

typedef struct CapsuleSprites {
    int pokemonIndex;
    int animIdx;
    ManagedSprite *sprite;
} CapsuleSprites;

typedef struct CapsulePageSprites {
    ManagedSprite *sprites[13];
} CapsulePageSprites;

typedef struct SealPages {
    int page;
    int maxPage;
    u8 sealIDs[SEALS_PER_PAGE];
} SealPages;

typedef struct CapsuleGraphicsManager {
    int index;
    BOOL selectedCapsule;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    BgConfig *bgConfig;
    PaletteData *paletteData;
    Window windows[CAPSULE_MENU_WINDOW_NUM];
    StringList *stringList;
    Menu *menu;
    PokemonSpriteManager *pokemonSpriteManager;
    PokemonSprite *pokemonSprite;
    int pokemonYOffset;
    UnkStruct_ov22_02258A48 unk_DC;
    TouchScreenActions *touchScreenActions;
    TouchScreenRect touchScreenRects[CAPSULE_TOUCH_RECTS];
    YesNoTouchMenu *yesNoTouchMenu;
    BallCapsuleSealEffect *sealEffect;
    BallRotation *ballRotation;
    G3DPipelineBuffers *pipelineBuffers;
    UnkStruct_02012744 *fontOAMManager;
    FontOAM *fontOAM[2];
    CharTransferAllocation charTransfer[2];
    BOOL graphicsTaskResult;
    PokemonAnimManager *pokemonAnimManager;
    BOOL sealsChanged;
} CapsuleGraphicsManager;

typedef struct CapsuleAppManager {
    CapsuleAppData *appData;
    IndexedCapsule capsules[CAPSULE_NUM];
    SealCounts *sealCount;
    BallCapsule activeCapsule;
    u8 sealCounts[SEAL_ID_MAX];
    u8 unused1[3];
    CapsuleGraphicsManager graphicsMan;
    CapsuleSprites capsuleSprites[CAPSULE_NUM];
    ManagedSprite *cursor[2];
    ManagedSprite *pokemonSprites[MAX_PARTY_SIZE];
    ManagedSprite *selectionIndicator[CAPSULE_SELECTION_ARROWS];
    SealRenderInfo sealRenderInfo[SEALS_PER_CAPSULE];
    int unk_3A4[SEALS_PER_CAPSULE];
    int capsuleIndex[2];
    int funcIndex;
    u8 unused2[4];
    int stateID;
    int alternateState;
    union {
        int throwStateID;
        int cancelStateID;
    };
    union {
        int yesNoResult;
        int frameCounter;
    };
    CapsulePageSprites pageSprites;
    SealPages sealPages;
    Pokemon *pokemon;
    NARC *narc;
} CapsuleAppManager;

#endif // POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_DEFS_H
