#ifndef POKEPLATINUM_FIELD_BGM_H
#define POKEPLATINUM_FIELD_BGM_H

#include "generated/map_headers.h"
#include "generated/sdat.h"
#include "generated/trainers.h"

#include "field/field_system_decl.h"

void FieldBGM_Stop(void);
void FieldBGM_SetOverride(FieldSystem *fieldSystem, u16 bgmID);
u16 FieldBGM_GetOverride(FieldSystem *fieldSystem);
void FieldBGM_ClearOverride(FieldSystem *fieldSystem);
u16 FieldBGM_GetEffective(FieldSystem *fieldSystem, enum MapHeaderID mapHeaderID);
u16 FieldBGM_GetForMapHeader(FieldSystem *fieldSystem, enum MapHeaderID mapHeaderID);
BOOL FieldBGM_TryFadeOut(FieldSystem *fieldSystem, u16 bgmID, int mode);
u16 FieldBGM_GetEyesMeetForTrainer(enum TrainerID trainerID);
void FieldBGM_TryFadeIn(FieldSystem *fieldSystem, enum MapHeaderID mapHeaderID);
void FieldBGM_PlayForMapHeader(FieldSystem *fieldSystem, enum MapHeaderID mapHeaderID);
void FieldBGM_PlayEffectiveForMapHeader(FieldSystem *fieldSystem, enum MapHeaderID mapHeaderID);

#endif // POKEPLATINUM_FIELD_BGM_H
