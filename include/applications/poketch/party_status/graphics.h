#ifndef POKEPLATINUM_POKETCH_PARTY_STATUS_GRAPHICS_H
#define POKEPLATINUM_POKETCH_PARTY_STATUS_GRAPHICS_H

#include "constants/pokemon.h"

#include "applications/poketch/poketch_animation.h"

#include "bg_window.h"
#include "sys_task_manager.h"

typedef struct PartyStatus {
    int partyCount;
    struct {
        u32 iconSpriteIndex;
        u16 species;
        u16 currentHp;
        u16 maxHp;
        u16 heldItem;
        u16 hasStatus;
        u8 isEgg;
        u8 form;
    } mons[MAX_PARTY_SIZE];
    u16 screenTouched;
    u16 screenTapped;
    u32 touchX;
    u32 touchY;
} PartyStatus;

typedef struct PartyStatusGraphics PartyStatusGraphics;

typedef struct MonIconBounceAnim {
    PartyStatusGraphics *graphics;
    const PartyStatus *partyData;
    u8 taskState;
    u8 timer;
    u8 monSlot;
    u8 numCompleted;
    u8 bounceWait;
    u8 minBounces;
    int spriteOffset;
} MonIconBounceAnim;

struct PartyStatusGraphics {
    const PartyStatus *partyData;
    BgConfig *bgConfig;
    PoketchAnimation_AnimationManager *animMan;
    u32 activeTaskIds[10];
    u32 hpBarBaseTile;
    u32 partyCount;
    Window hpBarWindows[MAX_PARTY_SIZE];
    PoketchAnimation_AnimatedSpriteData *monSprites[MAX_PARTY_SIZE];
    PoketchAnimation_AnimatedSpriteData *itemSprites[MAX_PARTY_SIZE];
    PoketchAnimation_SpriteData monAnimData;
    PoketchAnimation_SpriteData itemSpriteData;
    SysTask *bounceTask;
    MonIconBounceAnim bounceData;
    u8 iconSpriteBuffer[640];
};

enum PartyStatusTask {
    PARTY_STATUS_GRAPHICS_INIT = 0,
    PARTY_STATUS_GRAPHICS_FREE,
    PARTY_STATUS_GRAPHICS_REFRESH,
};

#include "bg_window.h"

BOOL PartyStatusGraphics_New(PartyStatusGraphics **dest, const PartyStatus *playerParty, BgConfig *bgConfig);
void PartyStatusGraphics_Free(PartyStatusGraphics *graphics);
void PartyStatusGraphics_StartTask(PartyStatusGraphics *graphics, enum PartyStatusTask taskId);
BOOL PartyStatusGraphics_TaskIsNotActive(PartyStatusGraphics *graphics, enum PartyStatusTask taskId);
BOOL PartyStatusGraphics_NoActiveTasks(PartyStatusGraphics *graphics);
u32 PoketchPartyStatusGraphics_CheckTouchingMon(u32 touchX, u32 touchY, u32 partyCount);

#endif // POKEPLATINUM_POKETCH_PARTY_STATUS_GRAPHICS_H
