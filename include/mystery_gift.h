#ifndef POKEPLATINUM_MYSTERY_GIFT_H
#define POKEPLATINUM_MYSTERY_GIFT_H

#include "generated/items.h"
#include "generated/poketch_apps.h"
#include "generated/species.h"

#include "struct_defs/pokemon.h"
#include "struct_defs/struct_0202610C.h"

#include "savedata.h"

typedef struct MysteryGiftPokemonData {
    BOOL hasCustomOT;
    Pokemon pokemon;
    u8 specialRibbonsDescIDs[10];
    u8 padding_FA[6];
} MysteryGiftPokemonData;

typedef struct MysteryGiftItemData {
    enum Item item;
    BOOL unk_04;
} MysteryGiftItemData;

enum MysteryGiftCosmeticsType {
    MG_COSMETICS_SEAL = 1,
    MG_COSMETICS_ACCESSORY,
    MG_COSMETICS_BACKDROP,
};

typedef struct MysteryGiftCosmeticsData {
    enum MysteryGiftCosmeticsType type;
    int id;
} MysteryGiftCosmeticsData;

typedef union GiftData {
    MysteryGiftPokemonData pokemonGiftData;
    MysteryGiftItemData itemGiftData;
    int decorationGoodID;
    MysteryGiftCosmeticsData cosmeticGiftData;
    enum PoketchAppID poketchAppID;
    BattleRegulation battleReg;
} GiftData;

typedef struct PGT {
    u16 type;
    u16 wondercardSlot : 2;
    u16 : 14;
    GiftData data;
} PGT;

typedef struct WonderCardMetadata {
    u16 title[36];
    u32 validGames; //!< A bit field of the games the WonderCard can be received on.
    u16 id;
    u8 unique : 1;
    u8 unk_4E_1 : 1;
    u8 saveWonderCard : 1; //!< If FALSE, savePgt is ignored and treated as TRUE.
    u8 savePgt : 1;
    u8 redistributable : 1;
    u8 isRedistribution : 1; //!< Whether or not the wonder card was obtained from another player redistributing it
    u8 : 2;
    u8 padding_4F;
} WonderCardMetadata;

typedef struct WonderCard {
    PGT pgt;
    WonderCardMetadata metadata;
    u16 description[250];
    u8 redistributionsLeft;
    u8 padding_349;
    u16 spritesSpecies[3];
    u8 redistributionCount;
    u8 padding_351[3];
    s32 receivedDate;
} WonderCard;

enum MYSTERY_GIFT_TYPE {
    MYST_GIFT_NONE = 0,
    MYST_GIFT_POKEMON,
    MYST_GIFT_EGG,
    MYST_GIFT_ITEM,
    MYST_GIFT_BATTLE_REG,
    MYST_GIFT_DECORATION_GOOD,
    MYST_GIFT_COSMETICS,
    MYST_GIFT_MANAPHY_EGG,
    MYST_GIFT_MEMBER_CARD,
    MYST_GIFT_OAKS_LETTER,
    MYST_GIFT_AZURE_FLUTE,
    MYST_GIFT_POKETCH_APP,
    MYST_GIFT_SECRET_KEY,
    MYST_GIFT_UNKNOWN,
    MYST_GIFT_TYPE_MAX = 14,
};

#define WONDERCARD_ID_MAX    2048
#define NUM_PGT_SLOTS        8
#define NUM_WONDERCARD_SLOTS 3

typedef struct MysteryGift {
    u8 received[WONDERCARD_ID_MAX / 8];
    PGT pgts[NUM_PGT_SLOTS];
    WonderCard wonderCards[NUM_WONDERCARD_SLOTS];
} MysteryGift;

int MysteryGift_SaveSize(void);
void MysteryGift_Init(MysteryGift *mysteryGift);
WonderCard *MysteryGift_TryGetWonderCard(MysteryGift *mysteryGift, int wcSlot);
BOOL MysteryGift_TrySavePgt(MysteryGift *mysteryGift, const PGT *pgt, int wondercardSlot);
BOOL MysteryGift_TrySaveWondercard(MysteryGift *mysteryGift, const WonderCard *wonderCard);
BOOL MysteryGift_FreeWcErasePgt(MysteryGift *mysteryGift, int wondercardSlot);
BOOL MysteryGift_FreeWcSlot(MysteryGift *mysteryGift, int wondercardSlot);
BOOL MysteryGift_CheckFreePgtSlotExists(MysteryGift *mysteryGift);
BOOL MysteryGift_CheckFreeWcSlotExists(MysteryGift *mysteryGift);
BOOL MysteryGift_CheckIsWcSlotOccupied(const MysteryGift *mysteryGift, int wondercardSlot);
BOOL MysteryGift_CheckHasWonderCards(const MysteryGift *mysteryGift);
BOOL MysteryGift_CheckWcHasPgtSaved(const MysteryGift *mysteryGift, int wondercardSlot);
BOOL MysteryGift_GetWcIDReceived(MysteryGift *mysteryGift, int wondercardID);
void MysteryGift_SetWcIDReceived(MysteryGift *mysteryGift, int wondercardID);
BOOL MysteryGift_GetLastWcIDReceived(MysteryGift *mysteryGift);
void MysteryGift_SetLastWcIDReceived(MysteryGift *mysteryGift);
void MysteryGift_Load(SaveData *saveData, int unused);
void MysteryGift_Unload(SaveData *saveData, int unused);
int MysteryGift_TryGetFirstValidPgtSlot(void);
int MysteryGift_TryGetPgtType(int pgtSlot);
GiftData *MysteryGift_TryGetPgtData(int pgtSlot);
void MysteryGift_FreePgtSlot(int pgtSlot);

#endif // POKEPLATINUM_MYSTERY_GIFT_H
