#ifndef POKEPLATINUM_OV32_02256470_H
#define POKEPLATINUM_OV32_02256470_H

#include "constants/pokemon.h"

#include "applications/poketch/poketch_animation.h"

#include "bg_window.h"
#include "sys_task.h"

typedef struct PlayerPartyStatus {
    int partyCount;
    struct {
        u32 iconSpriteIndex;
        u16 species;
        u16 currentHp;
        u16 maxHp;
        u16 heldItem;
        u16 status;
        u8 isEgg;
        u8 form;
    } mons[MAX_PARTY_SIZE];
    u16 isTouchingPoketch;
    u16 screenTapped;
    u32 touchX;
    u32 touchY;
} PlayerPartyStatus;

typedef struct PoketchPartyStatusGraphics PoketchPartyStatusGraphics;

typedef struct MonIconBounceAnim {
    PoketchPartyStatusGraphics *graphicsDataPtr;
    const PlayerPartyStatus *partyDataPtr;
    u8 taskState;
    u8 bounceWaitTimer;
    u8 partySlot;
    u8 bouncesDone;
    u8 bounceWait;
    u8 numBounces;
    int spriteOffset;
} MonIconBounceAnim;

struct PoketchPartyStatusGraphics {
    const PlayerPartyStatus *playerParty;
    BgConfig *bgConfig;
    PoketchAnimation_AnimationManager *unk_08;
    u32 activeTaskIds[10];
    u32 hpBarBaseTile;
    u32 partyCount;
    Window hpBarWindows[MAX_PARTY_SIZE];
    PoketchAnimation_AnimatedSpriteData *unk_9C[MAX_PARTY_SIZE]; // mon icons?
    PoketchAnimation_AnimatedSpriteData *unk_B4[MAX_PARTY_SIZE]; // held item icons?
    PoketchAnimation_SpriteData unk_CC;
    PoketchAnimation_SpriteData unk_E0;
    SysTask *bounceAnimTask;
    MonIconBounceAnim bounceAnimData;
    u8 iconSpriteBuffer[640];
};

enum PartyStatusTask {
    TASK_DRAW_SCREEN = 0,
    TASK_UNLOAD_AND_FREE,
    TASK_REDRAW_ON_TAP,
};

#include "bg_window.h"

BOOL PartyStatusGraphics_New(PoketchPartyStatusGraphics **dest, const PlayerPartyStatus *playerParty, BgConfig *bgConfig);
void PartyStatusGraphics_UnloadAndFree(PoketchPartyStatusGraphics *param0);
void PartyStatus_StartTaskById(PoketchPartyStatusGraphics *appData, enum PartyStatusTask taskId);
BOOL PartyStatus_TaskIsNotActive(PoketchPartyStatusGraphics *appData, u32 taskId);
BOOL PartyStatus_AllTasksDone(PoketchPartyStatusGraphics *appData);
u32 PoketchPartyStatus_CheckTouchingPartySlot(u32 touchX, u32 touchY, u32 partyCount);

#endif // POKEPLATINUM_OV32_02256470_H
