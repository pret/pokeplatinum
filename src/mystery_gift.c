#include "mystery_gift.h"

#include <nitro.h>
#include <string.h>

#include "constants/savedata/save_table.h"

#include "savedata/save_table.h"

#include "savedata.h"

static PGT *MysteryGift_TryGetPgt(MysteryGift *mysteryGift, int pgtSlot);
static BOOL MysteryGift_FreePgtSlotInternal(MysteryGift *mysteryGift, int pgtSlot);
static BOOL MysteryGift_CheckIsPgtSlotOccupied(const MysteryGift *mysteryGift, int pgtSlot);
static void MysteryGift_FreePgtSlotForWc(MysteryGift *mysteryGift, int wondercardSlot);
static void MysteryGift_UnsetWcIDReceived(MysteryGift *mysteryGift, int wonderCardID);

int MysteryGift_SaveSize(void) {
    return sizeof(MysteryGift);
}

void MysteryGift_Init(MysteryGift *mysteryGift) {
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_MYSTERY_GIFT);
}

static BOOL CheckIsValidWcType(u16 type) {
    return type > MYST_GIFT_NONE && type < MYST_GIFT_TYPE_MAX;
}

static PGT *MysteryGift_TryGetPgt(MysteryGift *mysteryGift, int pgtSlot) {
    if (pgtSlot >= 0 && pgtSlot < NUM_PGT_SLOTS && CheckIsValidWcType(mysteryGift->pgts[pgtSlot].type)) {
        return &mysteryGift->pgts[pgtSlot];
    }

    return NULL;
}

WonderCard *MysteryGift_TryGetWonderCard(MysteryGift *mysteryGift, int wcSlot) {
    if (wcSlot >= 0 && wcSlot < NUM_WONDERCARD_SLOTS && CheckIsValidWcType(mysteryGift->wonderCards[wcSlot].pgt.type)) {
        return &mysteryGift->wonderCards[wcSlot];
    }

    return NULL;
}

BOOL MysteryGift_TrySavePgt(MysteryGift *mysteryGift, const PGT *pgt, int wondercardSlot) {
    BOOL saved = FALSE;

    if (MysteryGift_CheckFreePgtSlotExists(mysteryGift) == FALSE) {
        return FALSE;
    }

    for (int pgtSlot = 0; pgtSlot < NUM_PGT_SLOTS; pgtSlot++) {
        if (!CheckIsValidWcType(mysteryGift->pgts[pgtSlot].type)) {
            MI_CpuCopy8(pgt, &mysteryGift->pgts[pgtSlot], sizeof(PGT));
            mysteryGift->pgts[pgtSlot].wondercardSlot = wondercardSlot;
            saved = TRUE;
            break;
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_MYSTERY_GIFT);

    return saved;
}

BOOL MysteryGift_TrySaveWondercard(MysteryGift *mysteryGift, const WonderCard *wonderCard) {
    BOOL saved = FALSE;

    if (MysteryGift_CheckFreeWcSlotExists(mysteryGift) == FALSE) {
        return FALSE;
    }

    if (wonderCard->eventHeader.savePgt == TRUE && MysteryGift_CheckFreePgtSlotExists(mysteryGift) == FALSE) {
        return FALSE;
    }

    for (int wondercardSlot = 0; wondercardSlot < NUM_WONDERCARD_SLOTS; wondercardSlot++) {
        if (!CheckIsValidWcType(mysteryGift->wonderCards[wondercardSlot].pgt.type)) {
            MI_CpuCopy8(wonderCard, &mysteryGift->wonderCards[wondercardSlot], sizeof(WonderCard));

            if (wonderCard->eventHeader.savePgt == TRUE) {
                MysteryGift_TrySavePgt(mysteryGift, &wonderCard->pgt, wondercardSlot);
            }

            saved = TRUE;
            break;
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_MYSTERY_GIFT);

    return saved;
}

static BOOL MysteryGift_FreePgtSlotInternal(MysteryGift *mysteryGift, int pgtSlot) {
    GF_ASSERT(pgtSlot < NUM_PGT_SLOTS);

    mysteryGift->pgts[pgtSlot].type = MYST_GIFT_NONE;
    mysteryGift->pgts[pgtSlot].wondercardSlot = 0;

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_MYSTERY_GIFT);

    return TRUE;
}

BOOL MysteryGift_FreeWcErasePgt(MysteryGift *mysteryGift, int wondercardSlot) {
    GF_ASSERT(wondercardSlot < NUM_WONDERCARD_SLOTS);

    mysteryGift->wonderCards[wondercardSlot].pgt.type = MYST_GIFT_NONE;

    MysteryGift_UnsetWcIDReceived(mysteryGift, mysteryGift->wonderCards[wondercardSlot].eventHeader.id);
    MysteryGift_FreePgtSlotForWc(mysteryGift, wondercardSlot);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_MYSTERY_GIFT);

    return TRUE;
}

BOOL MysteryGift_FreeWcSlot(MysteryGift *mysteryGift, int wondercardSlot) {
    GF_ASSERT(wondercardSlot < NUM_WONDERCARD_SLOTS);

    mysteryGift->wonderCards[wondercardSlot].pgt.type = MYST_GIFT_NONE;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_MYSTERY_GIFT);

    return TRUE;
}

BOOL MysteryGift_CheckFreePgtSlotExists(MysteryGift *mysteryGift) {
    for (int pgtSlot = 0; pgtSlot < NUM_PGT_SLOTS; pgtSlot++) {
        if (!CheckIsValidWcType(mysteryGift->pgts[pgtSlot].type)) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL MysteryGift_CheckFreeWcSlotExists(MysteryGift *mysteryGift) {
    for (int wondercardSlot = 0; wondercardSlot < NUM_WONDERCARD_SLOTS; wondercardSlot++) {
        if (!CheckIsValidWcType(mysteryGift->wonderCards[wondercardSlot].pgt.type)) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL MysteryGift_CheckIsPgtSlotOccupied(const MysteryGift *mysteryGift, int pgtSlot) {
    GF_ASSERT(pgtSlot < NUM_PGT_SLOTS);

    if (CheckIsValidWcType(mysteryGift->pgts[pgtSlot].type)) { // explicit branch required to match
        return TRUE;
    }

    return FALSE;
}

BOOL MysteryGift_CheckIsWcSlotOccupied(const MysteryGift *mysteryGift, int wondercardSlot) {
    GF_ASSERT(wondercardSlot < NUM_WONDERCARD_SLOTS);

    if (CheckIsValidWcType(mysteryGift->wonderCards[wondercardSlot].pgt.type)) { // explicit branch required to match
        return TRUE;
    }

    return FALSE;
}

BOOL MysteryGift_CheckHasWonderCards(const MysteryGift *mysteryGift) {
    for (int wondercardSlot = 0; wondercardSlot < NUM_WONDERCARD_SLOTS; wondercardSlot++) {
        if (MysteryGift_CheckIsWcSlotOccupied(mysteryGift, wondercardSlot) == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL MysteryGift_CheckWcHasPgtSaved(const MysteryGift *mysteryGift, int wondercardSlot) {
    for (int pgtSlot = 0; pgtSlot < NUM_PGT_SLOTS; pgtSlot++) {
        if (CheckIsValidWcType(mysteryGift->pgts[pgtSlot].type) && mysteryGift->pgts[pgtSlot].wondercardSlot == wondercardSlot) {
            return TRUE;
        }
    }

    return FALSE;
}

static void MysteryGift_FreePgtSlotForWc(MysteryGift *mysteryGift, int wondercardSlot) {
    for (int pgtSlot = 0; pgtSlot < NUM_PGT_SLOTS; pgtSlot++) {
        if (CheckIsValidWcType(mysteryGift->pgts[pgtSlot].type) && mysteryGift->pgts[pgtSlot].wondercardSlot == wondercardSlot) {
            MysteryGift_FreePgtSlotInternal(mysteryGift, pgtSlot);
            break;
        }
    }
}

BOOL MysteryGift_GetWcIDReceived(MysteryGift *mysteryGift, int wondercardID) {
    GF_ASSERT(wondercardID < NUM_WONDERCARD_FLAGS);
    return !!(mysteryGift->received[wondercardID / 8] & (1 << (wondercardID & 7)));
}

void MysteryGift_SetWcIDReceived(MysteryGift *mysteryGift, int wonderCardID) {
    GF_ASSERT(wonderCardID < NUM_WONDERCARD_FLAGS);

    mysteryGift->received[wonderCardID / 8] |= 1 << (wonderCardID & 7);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_MYSTERY_GIFT);
}

static void MysteryGift_UnsetWcIDReceived(MysteryGift *mysteryGift, int wondercardID) {
    u8 mask = (u8) ~(1 << (wondercardID & 7));

    GF_ASSERT(wondercardID < NUM_WONDERCARD_FLAGS);

    mysteryGift->received[wondercardID / 8] &= mask;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_MYSTERY_GIFT);
}

BOOL MysteryGift_GetMysteryGiftUnlockedFlag(MysteryGift *mysteryGift) {
    return MysteryGift_GetWcIDReceived(mysteryGift, NUM_WONDERCARD_FLAGS - 1);
}

void MysteryGift_SetMysteryGiftUnlockedFlag(MysteryGift *mysteryGift) {
    MysteryGift_SetWcIDReceived(mysteryGift, NUM_WONDERCARD_FLAGS - 1);
}

static MysteryGift *sMysteryGift = NULL;

void MysteryGift_Load(SaveData *saveData, int unused) {
    if (sMysteryGift == NULL) {
        sMysteryGift = SaveData_GetMysteryGift(saveData);
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_MYSTERY_GIFT);
}

void MysteryGift_Unload(SaveData *saveData, int unused) {
    if (sMysteryGift) {
        sMysteryGift = NULL;
    }
}

int MysteryGift_TryGetFirstValidPgtSlot(void) {
    for (int pgtSlot = 0; pgtSlot < NUM_PGT_SLOTS; pgtSlot++) {
        if (MysteryGift_CheckIsPgtSlotOccupied(sMysteryGift, pgtSlot) == TRUE) {
            return pgtSlot;
        }
    }

    return -1;
}

int MysteryGift_TryGetPgtType(int pgtSlot) {
    PGT *pgt = MysteryGift_TryGetPgt(sMysteryGift, pgtSlot);

    if (pgt) {
        return pgt->type;
    }

    return MYST_GIFT_NONE;
}

GiftData *MysteryGift_TryGetPgtData(int pgtSlot) {
    PGT *pgt = MysteryGift_TryGetPgt(sMysteryGift, pgtSlot);

    if (pgt) {
        return &pgt->data;
    }

    return NULL;
}

void MysteryGift_FreePgtSlot(int pgtSlot) {
    MysteryGift_FreePgtSlotInternal(sMysteryGift, pgtSlot);
}
