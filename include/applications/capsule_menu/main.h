#ifndef POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_MAIN_H
#define POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_MAIN_H

#include "constants/pokemon.h"

#include "field_task.h"
#include "game_options.h"
#include "pokemon.h"
#include "savedata.h"

#define CAPSULE_MENU_ATTACH_CAPSULE_STATE_ID 4
#define CAPSULE_MENU_FREE_STATE_ID           6
#define CAPSULE_MENU_GO_TO_FIELD             0
#define CAPSULE_MENU_GO_TO_PARTY_MENU        1
#define CAPSULE_MENU_SWITCH_ACTION_STATE_ID  2
#define CAPSULE_MENU_INIT_STATE_ID           0
#define CAPSULE_MENU_PARTY_MENU_STATE_ID     3
#define CAPSULE_MENU_RUN_APP_STATE_ID        1
#define CAPSULE_MENU_START_MAP_STATE_ID      5

typedef struct {
    int partySize;
    Pokemon *pokemon[MAX_PARTY_SIZE];
    Party *party;
    SealCase *sealCase;
    Options *options;
    SaveData *saveData;
    u8 capsuleIndex;
    u8 action;
    u8 unused[2];
} CapsuleAppData;

Pokemon *CapsuleMenu_GetPokemonIndex(CapsuleAppData *appData, int index);
u8 CapsuleMenu_GetCapsuleIndex(CapsuleAppData *appData);
void CapsuleMenu_SetCapsuleIndex(CapsuleAppData *appData, u8 value);
u8 CapsuleMenu_GetAction(CapsuleAppData *appData);
void CapsuleMenu_SetAction(CapsuleAppData *appData, u8 value);
void CapsuleMenu_StartFieldTask(FieldTask *task, SaveData *saveData);
int CapsuleMenu_GetSealMemberIdx(u8 index);
int CapsuleMenu_GetSealNameIndex(u8 index);
int CapsuleMenu_GetSealParticleIndex(u8 index);
int CapsuleMenu_IsAlphabetSeal(u8 index);
int CapsuleMenu_GetSealPrice(u8 index);
int CapsuleMenu_GetSealNonAlphabetIndex(u8 index);

#endif // POKEPLATINUM_APPLICATIONS_CAPSULE_MENU_MAIN_H
