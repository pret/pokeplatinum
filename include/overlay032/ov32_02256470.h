#ifndef POKEPLATINUM_OV32_02256470_H
#define POKEPLATINUM_OV32_02256470_H

#include "constants/pokemon.h"

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

#include "overlay032/struct_ov32_02256470_decl.h"

#include "bg_window.h"

BOOL ov32_02256470(UnkStruct_ov32_02256470 **param0, const PlayerPartyStatus *param1, BgConfig *param2);
void ov32_02256508(UnkStruct_ov32_02256470 *param0);
void PartyStatus_StartTaskById(UnkStruct_ov32_02256470 *appData, u32 taskId);
BOOL PartyStatus_TaskIsNotActive(UnkStruct_ov32_02256470 *appData, u32 taskId);
BOOL PartyStatus_AllTasksDone(UnkStruct_ov32_02256470 *param0);
u32 PoketchPartyStatus_CheckTouchingPartySlot(u32 touchX, u32 touchY, u32 partyCount);

#endif // POKEPLATINUM_OV32_02256470_H
