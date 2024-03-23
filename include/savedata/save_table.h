#ifndef POKEPLATINUM_SAVEDATA_LOAD_HELPERS_H
#define POKEPLATINUM_SAVEDATA_LOAD_HELPERS_H

#include "struct_defs/struct_0202440C.h"
#include "struct_decls/struct_0202442C_decl.h"
#include "struct_decls/struct_02024440_decl.h"
#include "struct_defs/struct_0202DF8C.h"
#include "struct_defs/struct_0202F264.h"
#include "struct_decls/struct_020308A0_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "unk_020244AC.h"
#include "constants/savedata/save_table.h"

typedef int (*SaveEntrySizeFunc)(void);
typedef void (*SaveEntryInitFunc)(void*);

typedef struct SaveTableEntry {
    int dataID; //< Canonical ID for the entry. Used by external functions to retrieve it from the table.
    u32 blockID; //< Block ID for the entry. Specifies what block of the save data the entry is stored in.
    SaveEntrySizeFunc sizeFunc; //< Function for determining how large the entry is.
    SaveEntryInitFunc initFunc; //< Function for initializing an empty entry.
} SaveTableEntry;

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
