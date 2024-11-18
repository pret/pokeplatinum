#ifndef POKEPLATINUM_FIELD_TRANSITION_H
#define POKEPLATINUM_FIELD_TRANSITION_H

#include "field_task.h"

void FieldTransition_StartEncounterEffect(FieldTask *task, int encEffectID, int battleBGM);
void FieldTransition_FinishMap(FieldTask *task);
void FieldTransition_StartMap(FieldTask *task);
void FieldTransition_FadeOut(FieldTask *task);
void FieldTransition_FadeIn(FieldTask *task);
void FieldTransition_FadeOutAndFinishMap(FieldTask *task);
void FieldTransition_StartMapAndFadeIn(FieldTask *task);

#endif // POKEPLATINUM_FIELD_TRANSITION_H
