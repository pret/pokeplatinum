#ifndef POKEPLATINUM_MYSTERY_GIFT_H
#define POKEPLATINUM_MYSTERY_GIFT_H

#include "generated/items.h"
#include "generated/poketch_apps.h"
#include "generated/species.h"

#include "struct_defs/pokemon.h"

#include "battle_regulation.h"
#include "savedata.h"

#define WONDERCARD_TITLE_LENGTH       36
#define WONDERCARD_DESCRIPTION_LENGTH 250
#define NUM_WONDERCARD_SPRITES        3

#define NUM_WONDERCARD_FLAGS 2048
#define WONDERCARD_ID_MAX    (NUM_WONDERCARD_FLAGS - 1) // Last flag indicates whether or not mystery gifts are unlocked. Updated on the main menu.
#define NUM_PGT_SLOTS        8
#define NUM_WONDERCARD_SLOTS 3

typedef struct MysteryGiftPokemonData {
    BOOL hasCustomOT;
    Pokemon pokemon;
    u8 specialRibbonsDescIDs[10];
    u8 padding_FA[6];
} MysteryGiftPokemonData;

typedef struct MysteryGiftItemData {
    enum Item item;
    BOOL shouldPlayAnimation;
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

typedef struct MysteryGiftEventHeader {
    u16 title[WONDERCARD_TITLE_LENGTH];
    u32 validGames; //!< A bit field of the games the Mystery Gift can be received on.
    u16 id;
    u8 unique : 1;
    u8 unk_4E_1 : 1;
    u8 hasWonderCard : 1; //!< If FALSE, savePgt is ignored and treated as TRUE.
    u8 savePgt : 1;
    u8 shareable : 1;
    u8 fromSharing : 1; //!< Whether or not the Mystery Gift was obtained from another player sharing it
    u8 : 2;
    u8 padding_4F;
} MysteryGiftEventHeader;

typedef struct WonderCard {
    PGT pgt;
    MysteryGiftEventHeader eventHeader;
    u16 description[WONDERCARD_DESCRIPTION_LENGTH];
    u8 sharesLeft;
    u8 padding_349;
    u16 spritesSpecies[NUM_WONDERCARD_SPRITES];
    u8 timesShared;
    u8 padding_351[3];
    s32 receivedDate;
} WonderCard;

enum MysteryGiftType {
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
    MYST_GIFT_TYPE_MAX,
};

typedef struct MysteryGift {
    u8 received[(NUM_WONDERCARD_FLAGS + 7) / 8]; // Last flag indicates whether or not mystery gifts are unlocked. Updated on the main menu.
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
BOOL MysteryGift_GetMysteryGiftUnlockedFlag(MysteryGift *mysteryGift);
void MysteryGift_SetMysteryGiftUnlockedFlag(MysteryGift *mysteryGift);
void MysteryGift_Load(SaveData *saveData, int unused);
void MysteryGift_Unload(SaveData *saveData, int unused);
int MysteryGift_TryGetFirstValidPgtSlot(void);
int MysteryGift_TryGetPgtType(int pgtSlot);
GiftData *MysteryGift_TryGetPgtData(int pgtSlot);
void MysteryGift_FreePgtSlot(int pgtSlot);

#endif // POKEPLATINUM_MYSTERY_GIFT_H
