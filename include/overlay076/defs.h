#ifndef POKEPLATINUM_OV76_DEFS_H
#define POKEPLATINUM_OV76_DEFS_H

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02012744_decl.h"

#include "battle_anim/struct_ball_rotation_decl.h"
#include "battle_anim/struct_ov12_02235FE0_decl.h"
#include "contants/pokemon.h"
#include "overlay022/struct_ov22_02258A48.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "g3d_pipeline.h"
#include "menu.h"
#include "palette.h"
#include "pokemon_anim.h"
#include "pokemon_sprite.h"
#include "sprite_system.h"
#include "string_list.h"
#include "touch_screen.h"
#include "touch_screen_actions.h"
#include "yes_no_touch_menu.h"

typedef struct {
    BOOL shouldRender;
    u8 type;
    u8 x;
    u8 y;
    u8 unused;
    ManagedSprite *sprite;
    TouchScreenRect *touchScreenRect;
} SealRenderInfo;

typedef struct {
    int index;
    int animIdx;
    ManagedSprite *sprite;
} CapsuleSprites;

typedef struct {
    ManagedSprite *sprites[13];
} CapsuleActiveSprites;

typedef struct {
    int page;
    int maxPage;
    u8 sealIDs[SEALS_PER_PAGE];
} SealPages;

typedef struct {
    int index;
    BOOL selectedCapsule;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    BgConfig *bgConfig;
    PaletteData *palleteData;
    Window windows[WINDOW_NUM];
    StringList *stringList;
    Menu *menu;
    PokemonSpriteManager *monSpriteManager;
    PokemonSprite *monSprite;
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
    BOOL unk_184; // rendered?
    PokemonAnimManager *pokemonAnimManager;
    BOOL unk_18C;
} SealGraphicsManager;

typedef struct {
    SealAppData *appData;
    UnkStruct_ov76_0223DD88_sub1 capsules[CAPSULE_NUM];
    SealCounts *sealCount;
    BallCapsule activeCapsule;
    u8 sealCounts[SEAL_ID_MAX];
    u8 unused1[3];
    SealGraphicsManager graphicsMan;
    CapsuleSprites capsuleSprites[CAPSULE_NUM];
    ManagedSprite *cursor[2];
    ManagedSprite *pokemonSprites[MAX_PARTY_SIZE];
    ManagedSprite *selectionIndicator[CAPSULE_SELECTION_ARROWS];
    SealRenderInfo sealRenderInfo[SEALS_PER_CAPSULE];
    int unk_3A4[SEALS_PER_CAPSULE];
    int capsuleIndex[2];
    int unk_3CC; // index for Unk_ov76_0223EE04
    u8 unused2[4];
    int stateID; // these should all be different stateIDs
    int unk_3D8;
    int unk_3DC;
    int unk_3E0;
    capsuleActiveSprites capsuleActiveSprites;
    SealPages sealPages;
    Pokemon *pokemon;
    NARC *narc;
} SealAppManager;

#endif // POKEPLATINUM_OV76_DEFS_H
