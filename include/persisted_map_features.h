#ifndef POKEPLATINUM_PERSISTED_MAP_FEATURES_H
#define POKEPLATINUM_PERSISTED_MAP_FEATURES_H

#include <nitro/types.h>

#define PERSISTED_MAP_FEATURES_BUFFER_SIZE 32

typedef struct PersistedMapFeatures {
    int id;
    u8 buffer[PERSISTED_MAP_FEATURES_BUFFER_SIZE];
} PersistedMapFeatures;

void PersistedMapFeatures_Init(PersistedMapFeatures *persistedMapFeatures);
void *PersistedMapFeatures_InitWithID(PersistedMapFeatures *persistedMapFeatures, int id);
void *PersistedMapFeatures_GetBuffer(PersistedMapFeatures *persistedMapFeatures, int id);
int PersistedMapFeatures_GetID(const PersistedMapFeatures *persistedMapFeatures);

#endif // POKEPLATINUM_PERSISTED_MAP_FEATURES_H
