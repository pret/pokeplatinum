#ifndef POKEPLATINUM_TRAINER_INFO_H
#define POKEPLATINUM_TRAINER_INFO_H

#include "constants/string.h"

#include "strbuf.h"

typedef struct TrainerInfo {
    charcode_t name[TRAINER_NAME_LEN + 1];
    u32 id;
    u32 money;
    u8 gender;
    u8 regionCode;
    u8 badgeMask;
    u8 appearance;
    u8 gameCode;
    u8 isMainStoryCleared : 1;
    u8 hasNationalDex : 1;
    u8 : 6;
} TrainerInfo;

/**
 * @brief Get the size of a TrainerInfo struct.
 * 
 * @return Size of the struct.
 */
int TrainerInfo_Size(void);

/**
 * @brief Create a new TrainerInfo struct and initialize it.
 * 
 * @see TrainerInfo_Init
 * 
 * @param heapID    Heap on which to allocate the new struct.
 * @return Address of the new struct.
 */
TrainerInfo* TrainerInfo_New(u32 heapID);

/**
 * @brief Copy a source TrainerInfo struct into a destination struct, byte-for-byte.
 * 
 * @param src   The source struct.
 * @param dst   The destination struct.
 */
void TrainerInfo_Copy(const TrainerInfo *src, TrainerInfo *dst);

/**
 * @brief Initialize an allocated TrainerInfo struct to the base state.
 * 
 * Zeroes out all data within the given struct and resets the region
 * code and version to be those specified for the ROM.
 * 
 * @param info  The struct to be initialized.
 */
void TrainerInfo_Init(TrainerInfo *info);

/**
 * @brief Check if the trainer has no name.
 * 
 * @param info  The trainer info.
 * @return TRUE if the trainer's name is empty; FALSE if it contains any data.
 */
BOOL TrainerInfo_HasNoName(const TrainerInfo *info);

/**
 * @brief Set the trainer's name.
 * 
 * @param info  The trainer info.
 * @param name  Player's new name, as a character buffer.
 */
void TrainerInfo_SetName(TrainerInfo *info, const charcode_t *name);

/**
 * @brief Set the trainer's name.
 * 
 * @param info  The trainer info.
 * @param name  Player's new name, as a Strbuf struct.
 */
void TrainerInfo_SetNameFromStrbuf(TrainerInfo *info, const Strbuf *name);

/**
 * @brief Get the trainer's name.
 * 
 * @param info  The trainer info.
 * @return The trainer's name, as a character buffer.
 */
const charcode_t* TrainerInfo_Name(const TrainerInfo *info);

/**
 * @brief Get the trainer's name.
 * 
 * @param info  The trainer info.
 * @param name  Pre-allocated Strbuf struct to receive the trainer's name.
 */
void TrainerInfo_NameStrbuf(const TrainerInfo *info, Strbuf *name);

/**
 * @brief Get the trainer's name.
 * 
 * @param info      The trainer info.
 * @param heapID    Heap on which to allocate the new Strbuf struct.
 * @return The trainer's name, as a Strbuf struct.
 */
Strbuf* TrainerInfo_NameNewStrbuf(const TrainerInfo *info, int heapID);

/**
 * @brief Set the trainer's ID.
 * 
 * @param info  The trainer info.
 * @param id    New trainer ID.
 */
void TrainerInfo_SetID(TrainerInfo *info, u32 id);

/**
 * @brief Get the trainer's ID.
 * 
 * Note that this is the complete 32-byte ID; it includes both the visible
 * trainer ID and the invisible "secret ID."
 * 
 * @param info  The trainer info.
 * @return The trainer's ID.
 */
u32 TrainerInfo_ID(const TrainerInfo *info);

/**
 * @brief Get the lower half of the trainer's ID.
 * 
 * This constitutes only the visible trainer ID.
 * 
 * @param info  The trainer info.
 * @return The lower half of the trainer's ID.
 */
u16 TrainerInfo_ID_LowHalf(const TrainerInfo *info);

/**
 * @brief Set the trainer's gender.
 * 
 * @param info      The trainer info.
 * @param gender    New trainer gender.
 */
void TrainerInfo_SetGender(TrainerInfo *info, int gender);

/**
 * @brief Get the trainer's gender.
 * 
 * @param info  The trainer info.
 * @return The trainer's gender.
 */
u32 TrainerInfo_Gender(const TrainerInfo *info);

/**
 * @brief Check if the trainer has a certain badge.
 * 
 * @param info      The trainer info.
 * @param badgeNum  Number of the badge to check, 0-indexed.
 * @return TRUE if the trainer has the badge, FALSE otherwise.
 */
BOOL TrainerInfo_HasBadge(const TrainerInfo *info, int badgeNum);

/**
 * @brief Set the flag denoting possession of a given badge.
 * 
 * @param info      The trainer info.
 * @param badgeNum  Number of the badge to set.
 */
void TrainerInfo_SetBadge(TrainerInfo *info, int badgeNum);

/**
 * @brief Get the number of badges owned by the trainer.
 * 
 * @param info  The trainer info.
 * @return Number of badges acquired.
 */
int TrainerInfo_BadgeCount(const TrainerInfo *info);

/**
 * @brief Get the trainer's current money.
 * 
 * @param info  The trainer info.
 * @return How much money the trainer has.
 */
u32 TrainerInfo_Money(const TrainerInfo *info);

/**
 * @brief Set the trainer's current money.
 * 
 * @param info  The trainer info.
 * @param money How much money the trainer should have.
 * @return The trainer's new current money.
 */
u32 TrainerInfo_SetMoney(TrainerInfo *info, u32 money);

/**
 * @brief Get the trainer's appearance in the Union Room.
 * 
 * @param info
 * @return The trainer's Union Room apperance.
 */
u8 TrainerInfo_Appearance(const TrainerInfo *info);

/**
 * @brief Set the trainer's appearance in the Union Room.
 * 
 * @param info          The trainer info.
 * @param appearance    New appearance setting.
 */
void TrainerInfo_SetAppearance(TrainerInfo *info, u8 appearance);

/**
 * @brief Give the trainer a specified amount of money.
 * 
 * @param info  The trainer info.
 * @param money The amount of money to give the trainer.
 * @return The trainer's new current money.
 */
u32 TrainerInfo_GiveMoney(TrainerInfo *info, u32 money);

/**
 * @brief Take a specified amount of money from the trainer.
 * 
 * @param info  The trainer info.
 * @param money The amount of money to take from the trainer.
 * @return The trainer's new current money.
 */
u32 TrainerInfo_TakeMoney(TrainerInfo *info, u32 money);

/**
 * @brief Get the trainer's game code.
 * 
 * @param info  The trainer info.
 * @return The trainer's game code.
 */
u8 TrainerInfo_GameCode(const TrainerInfo *info);

/**
 * @brief Set the trainer's game code.
 * 
 * @param info      The trainer info.
 * @param gameCode  New game code.
 */
void TrainerInfo_SetGameCode(TrainerInfo *info, u8 gameCode);

/**
 * @brief Get the game code for interfacing with Diamond and Pearl.
 * 
 * @return 0
 */
u8 TrainerInfo_DPGameCode(void);

/**
 * @brief Get the trainer's region code.
 * 
 * @param info  The trainer info.
 * @return The trainer's region code.
 */
u8 TrainerInfo_RegionCode(const TrainerInfo *info);

/**
 * @brief Set the trainer's region code.
 * 
 * @param info          The trainer info.
 * @param regionCode    New region code.
 */
void TrainerInfo_SetRegionCode(TrainerInfo *info, u8 regionCode);

/**
 * @brief Set the "game cleared" flag for the trainer.
 * 
 * @param info  The trainer info.
 */
void TrainerInfo_SetMainStoryCleared(TrainerInfo *info);

/**
 * @brief Check if the trainer has cleared the main game.
 * 
 * @param info  The trainer info.
 * @return TRUE if the trainer has cleared the main game; FALSE otherwise.
 */
BOOL TrainerInfo_IsMainStoryCleared(TrainerInfo *info);

/**
 * @brief Set the "has the National Dex" flag for the trainer.
 * 
 * @param info  The trainer info.
 */
void TrainerInfo_GiveNationalDex(TrainerInfo *info);

/**
 * @brief Check if the trainer has the National Dex.
 * 
 * @param info  The trainer info.
 * @return TRUE if the trainer has the National Dex; FALSE otherwise.
 */
BOOL TrainerInfo_HasNationalDex(TrainerInfo *info);

/**
 * @brief Compare two trainer states for equality
 * 
 * Two trainer states are deemed to be equal if:
 *  1. They have the same name.
 *  2. They have the same 32-byte ID.
 * 
 * @param info1 The first trainer info.
 * @param info2 The second trainer info.
 * @return TRUE if the trainer states are deemed equal; FALSE if not.
 */
BOOL TrainerInfo_Equals(const TrainerInfo *info1, const TrainerInfo *info2);

#endif // POKEPLATINUM_TRAINER_INFO_H
