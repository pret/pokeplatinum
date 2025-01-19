#ifndef POKEPLATINUM_ENCOUNTER_H
#define POKEPLATINUM_ENCOUNTER_H

#include "party.h"

#include "field/field_system_decl.h"

#include "field_battle_data_transfer.h"
#include "field_task.h"

void Encounter_NewVsWild(FieldSystem *fieldSystem, FieldBattleDTO *dto);
void Encounter_StartVsWild(FieldSystem *fieldSystem, FieldTask *task, FieldBattleDTO *dto);
void Encounter_NewVsHoneyTree(FieldTask *task, int *resultMaskPtr);
void Encounter_NewVsSpeciesAtLevel(FieldTask *task, u16 species, u8 level, int *resultMaskPtr, BOOL isLegendary);
void Encounter_NewFatefulVsSpeciesAtLevel(FieldTask *taskMan, u16 species, u8 level, int *resultMaskPtr, BOOL isLegendary);
void Encounter_NewVsPalParkTransfer(FieldSystem *fieldSystem, FieldBattleDTO *dto);
void Encounter_NewVsFirstBattle(FieldTask *task, int trainerID, int heapID, int *resultMaskPtr);
void Encounter_NewCatchingTutorial(FieldTask *task);
void Encounter_NewVsTrainer(FieldTask *taskMan, int enemyTrainer1ID, int enemyTrainer2ID, int partnerTrainerID, int heapID, int *resultMaskPtr);
void Encounter_NewVsLink(FieldTask *task, const u8 *partyOrder, int battleType);
void Encounter_NewVsWiFi(FieldTask *task, int param1, int normalizedLevel, int wifiBattleType);
void Encounter_NewVsLinkWithRecording(FieldSystem *fieldSystem, const u8 *partyOrder, int battleType);
void Encounter_NewVsLinkWithRecordingAndParty(FieldSystem *fieldSystem, const Party *party, int battleType);
void Encounter_NewVsGiratinaOrigin(FieldTask *task, u16 species, u8 level, int *resultMaskPtr, BOOL isLegendary);

#endif // POKEPLATINUM_ENCOUNTER_H
