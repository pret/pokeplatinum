#ifndef POKEPLATINUM_OV32_02256470_H
#define POKEPLATINUM_OV32_02256470_H

#include "constants/pokemon.h"

#include "sys_task.h"
#include "bg_window.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"

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

typedef struct PoketchPartyStatusGraphics PoketchPartyStatusGraphics; // MonIconBounceAnim and PoketchPartyStatusGraphics contain each other, so this is necessary

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
    UnkStruct_ov25_022555E8 *unk_08;
    u32 activeTaskIds[10];
    u32 hpBarBaseTile;
    u32 partyCount;
    Window hpBarWindows[MAX_PARTY_SIZE];
    UnkStruct_ov25_022558C4 *unk_9C[MAX_PARTY_SIZE]; // mon icons?
    UnkStruct_ov25_022558C4 *unk_B4[MAX_PARTY_SIZE]; // held item icons?
    UnkStruct_ov25_02255958 unk_CC;
    UnkStruct_ov25_02255958 unk_E0;
    SysTask *bounceAnimTask;
    MonIconBounceAnim bounceAnimData;
    u8 iconSpriteBuffer[640];
};

#include "bg_window.h"

BOOL PartyStatusGraphics_New(PoketchPartyStatusGraphics **dest, const PlayerPartyStatus *playerParty, BgConfig *bgConfig);
void PartyStatusGraphics_UnloadAndFree(PoketchPartyStatusGraphics *param0);
void PartyStatus_StartTaskById(PoketchPartyStatusGraphics *appData, u32 taskId);
BOOL PartyStatus_TaskIsNotActive(PoketchPartyStatusGraphics *appData, u32 taskId);
BOOL PartyStatus_AllTasksDone(PoketchPartyStatusGraphics *appData);
u32 PoketchPartyStatus_CheckTouchingPartySlot(u32 touchX, u32 touchY, u32 partyCount);

#endif // POKEPLATINUM_OV32_02256470_H
