#ifndef POKEPLATINUM_SAVEDATA_LOAD_HELPERS_H
#define POKEPLATINUM_SAVEDATA_LOAD_HELPERS_H

#include "struct_defs/struct_0202440C.h"
#include "struct_decls/struct_0202442C_decl.h"
#include "struct_decls/struct_02024440_decl.h"
#include "struct_defs/struct_0202DF8C.h"
#include "struct_defs/struct_0202F264.h"
#include "struct_decls/struct_020308A0_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#define SAVE_PAGE_MAX       32
#define SAVE_SECTOR_SIZE    (0x1000)

typedef int (*SaveEntrySizeFunc)(void);
typedef void (*SaveEntryInitFunc)(void*);

typedef struct SaveTableEntry {
    int dataID; //< Canonical ID for the entry. Used by external functions to retrieve it from the table.
    u32 blockID; //< Block ID for the entry. Specifies what block of the save data the entry is stored in.
    SaveEntrySizeFunc sizeFunc; //< Function for determining how large the entry is.
    SaveEntryInitFunc initFunc; //< Function for initializing an empty entry.
} SaveTableEntry;

enum SaveBlockID {
    SAVE_BLOCK_ID_NORMAL = 0,
    SAVE_BLOCK_ID_BOXES,

    SAVE_BLOCK_ID_MAX
};

enum SaveTableEntryID {
    SAVE_TABLE_ENTRY_SYSTEM = 0,
    SAVE_TABLE_ENTRY_PLAYER,
    SAVE_TABLE_ENTRY_PARTY,
    SAVE_TABLE_ENTRY_BAG,
    SAVE_TABLE_ENTRY_EVENTS,
    SAVE_TABLE_ENTRY_POKETCH,
    SAVE_TABLE_ENTRY_FIELD_PLAYER_STATE,
    SAVE_TABLE_ENTRY_POKEDEX,
    SAVE_TABLE_ENTRY_DAYCARE,
    SAVE_TABLE_ENTRY_PAL_PAD,
    SAVE_TABLE_ENTRY_MISC,
    SAVE_TABLE_ENTRY_FIELD_OVERWORLD_STATE,
    SAVE_TABLE_ENTRY_UNDERGROUND,
    SAVE_TABLE_ENTRY_REGULATION_BATTLES,
    SAVE_TABLE_ENTRY_IMAGE_CLIPS,
    SAVE_TABLE_ENTRY_MAIL,
    SAVE_TABLE_ENTRY_POFFINS,
    SAVE_TABLE_ENTRY_RANDOM_GROUP,
    SAVE_TABLE_ENTRY_JOURNAL,
    SAVE_TABLE_ENTRY_TRAINER_CARD,
    SAVE_TABLE_ENTRY_GAME_RECORDS,
    SAVE_TABLE_ENTRY_BALL_SEALS,
    SAVE_TABLE_ENTRY_CHATOT,
    SAVE_TABLE_ENTRY_FRONTIER,
    SAVE_TABLE_ENTRY_RIBBONS,
    SAVE_TABLE_ENTRY_ENCOUNTERS,
    SAVE_TABLE_ENTRY_GLOBAL_TRADE,
    SAVE_TABLE_ENTRY_TV_BROADCAST,
    SAVE_TABLE_ENTRY_RANKINGS,
    SAVE_TABLE_ENTRY_WIFI_LIST,
    SAVE_TABLE_ENTRY_WIFI_HISTORY,
    SAVE_TABLE_ENTRY_MYSTERY_GIFT,
    SAVE_TABLE_ENTRY_PAL_PARK_TRANSFER,
    SAVE_TABLE_ENTRY_CONTESTS,
    SAVE_TABLE_ENTRY_SENTENCE,
    SAVE_TABLE_ENTRY_EMAIL,
    SAVE_TABLE_ENTRY_WIFI_QUESTIONS,
    SAVE_TABLE_ENTRY_PC_BOXES,

    SAVE_TABLE_ENTRY_MAX
};

enum ExtraSaveTableEntryID {
    EXTRA_SAVE_TABLE_ENTRY_HALL_OF_FAME = 0,
    EXTRA_SAVE_TABLE_ENTRY_FRONTIER,
    EXTRA_SAVE_TABLE_ENTRY_MY_RECORDINGS,
    EXTRA_SAVE_TABLE_ENTRY_DL_RECORDINGS_0,
    EXTRA_SAVE_TABLE_ENTRY_DL_RECORDINGS_1,
    EXTRA_SAVE_TABLE_ENTRY_DL_RECORDINGS_2,

    EXTRA_SAVE_TABLE_ENTRY_MAX
};

extern const SaveTableEntry gSaveTable[];
extern const int gSaveTableSize;
extern const SaveTableEntry gExtraSaveTable[];
extern const int gExtraSaveTableSize;

/**
 * @brief Loads the TVBroadcast sector of the save data.
 * 
 * This routine also performs a standard CRC of the sector before loading it.
 * 
 * @param save 
 * @return Address of the TVBroadcast sector of the save data.
 */
TVBroadcast* SaveData_TVBroadcast(SaveData *save);

/**
 * @brief Loads the PCBoxes sector of the save data.
 * 
 * This routine does NOT perform any CRC on the sectors before loading them.
 * 
 * @param save 
 * @return Address of the PCBoxes sector of the save data.
 */
PCBoxes* SaveData_PCBoxes(SaveData *save);

/**
 * @brief Loads the MysteryGift sector of the save data.
 * 
 * This routine also performs a standard CRC of the sector before loading it.
 * 
 * @param save 
 * @return Address of the MysteryGift sector of the save data.
 */
MysteryGift* SaveData_MysteryGift(SaveData *save);

/**
 * @brief Loads the PalParkTransfer sector of the save data.
 * 
 * This routine does NOT perform any CRC on the sectors before loading them.
 * 
 * @param save 
 * @return Address of the PalParkTransfer sector of the save data.
 */
PalParkTransfer* SaveData_PalParkTransfer(SaveData *save);

/**
 * @brief Loads the HallOfFame sector from the extended save data.
 * 
 * @param save          The save data.
 * @param heapID        Heap on which to allocate the HallOfFame sector.
 * @param resultCode    Load-result opcode output.
 * @return Address of the allocated HallOfFame data.
 */
HallOfFame* SaveData_HallOfFame(SaveData *save, int heapID, int *resultCode);

/**
 * @brief Saves a mirror of the given HallOfFame data into the extended save.
 * 
 * @param save          The save data.
 * @param hof           The hall-of-fame data to save.
 * @return Save-result opcode.
 */
int SaveData_SaveHallOfFame(SaveData *save, HallOfFame *hof);

/**
 * @brief Loads the BattleRecording sector from the extended save data.
 * 
 * @param save          The save data.
 * @param heapID        Heap on which to allocate the BattleRecording sector.
 * @param resultCode    Load-result opcode output.
 * @param recNum        Which recording slot to load.
 * @return Address of the allocated BattleRecording data.
 */
BattleRecording* SaveData_BattleRecording(SaveData *save, int heapID, int *resultCode, int recNum);

/**
 * @brief Saves a mirror of the given BattleRecording data into the extended save.
 * 
 * @param save          The save data.
 * @param rec           The battle recording data to save.
 * @param recNum        Which recording slot to save.
 * @return Save-result opcode.
 */
int SaveData_SaveBattleRecording(SaveData *save, BattleRecording *rec, int recNum);

/**
 * @brief Loads the BattleFrontierStage sector from the extended save data.
 * 
 * @param save          The save data.
 * @param heapID        Heap on which to allocate the BattleRecording sector.
 * @param resultCode    Load-result opcode output.
 * @return Address of the allocated BattleFrontierStage data.
 */
BattleFrontierStage* SaveData_BattleFrontierStage(SaveData *save, int heapID, int *resultCode);

/**
 * @brief Saves a mirror of the given BattleRecording data into the extended save.
 * 
 * @param save          The save data.
 * @param frontier      The battle frontier data to save.
 * @return Save-result opcode.
 */
int SaveData_SaveBattleFrontierStage(SaveData *save, BattleFrontierStage *frontier);

#endif // POKEPLATINUM_SAVEDATA_LOAD_HELPERS_H
