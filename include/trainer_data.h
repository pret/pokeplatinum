#ifndef POKEPLATINUM_TRAINER_DATA_H
#define POKEPLATINUM_TRAINER_DATA_H

#include "constants/trainer.h"

#include "strbuf.h"
#include "struct_defs/trainer_data.h"
#include "unk_020244AC.h"
#include "overlay006/battle_params.h"

enum TrainerDataParam {
    TRDATA_TYPE = 0,
    TRDATA_CLASS,
    TRDATA_SPRITE,
    TRDATA_PARTY_SIZE,
    TRDATA_ITEM_1,
    TRDATA_ITEM_2,
    TRDATA_ITEM_3,
    TRDATA_ITEM_4,
    TRDATA_AI_MASK,
    TRDATA_BATTLE_TYPE,
};

/**
 * @brief Initialize the TrainerData structs within the BattleParams struct.
 * 
 * This routine is responsible for loading the name of a trainer and building
 * their party from the data archives.
 * 
 * @param battleParams  The parent BattleParams struct for the encounter.
 * @param save          Save data; used to pull out the rival's name, if needed.
 * @param heapID        Heap on which to allocate message bank access.
 */
void TrainerData_Encounter(BattleParams *battleParams, const SaveData *save, int heapID);

/**
 * @brief Get a parameter for the given trainer ID from the data archive.
 * 
 * @param trainerID     ID of the trainer whose data should be retrieved.
 * @param paramID       ID of the data field to be retrieved.
 * @return Value of the trainer's data field in the archive.
 */
u32 TrainerData_LoadParam(int trainerID, enum TrainerDataParam paramID);

/**
 * @brief Check if the given trainer has a message of the specified type.
 * 
 * @param trainerID     ID of the trainer being queried.
 * @param msgType       The type of message for which we are looking. 
 * @param heapID        Heap on which to allocate archive access.
 * @return TRUE if the trainer has a message of the given type; FALSE if not.
 */
BOOL TrainerData_HasMessageType(int trainerID, enum TrainerMessageType msgType, int heapID);

/**
 * @brief Load the trainer's message of a given type into the provided Strbuf.
 * 
 * If no such message exists, then the Strbuf will be cleared.
 * 
 * @param trainerID     ID of the trainer being queried.
 * @param msgType       The type of message for which we are looking. 
 * @param[out] strbuf   Strbuf which will contain the result message.
 * @param heapID        Heap on which to allocate archive access.
 */
void TrainerData_LoadMessage(int trainerID, enum TrainerMessageType msgType, Strbuf *strbuf, int heapID);

/**
 * @brief Load data for the requested trainer.
 * 
 * @param trainerID     ID of the trainer to be loaded.
 * @param[out] trdata   Struct which will contain the loaded trainer data.
 */
void TrainerData_Load(int trainerID, TrainerData *trdata);

/**
 * @brief Load data for the requested trainer's party.
 * 
 * The struct pointer passed to this function will determine exactly how much
 * data is loaded; see the definitions of the various TrainerMon... structs in
 * struct_defs/trainer_data.h for exact specifications.
 * 
 * @param trainerID     ID of the trainer whose party is to be loaded.
 * @param[out] trparty  Struct which will contain the loaded trainer party data.
 */
void TrainerData_LoadParty(int trainerID, void *trparty);

/**
 * @brief Get the gender for a particular trainer class.
 * 
 * @param trclass       Class of the trainer.
 * @return Gender identifier for the trainer class; see: enum Gender.
 */
u8 TrainerClass_Gender(int trclass);

#endif // POKEPLATINUM_TRAINER_DATA_H
