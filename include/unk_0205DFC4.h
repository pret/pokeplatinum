#ifndef POKEPLATINUM_UNK_0205DFC4_H
#define POKEPLATINUM_UNK_0205DFC4_H

#include "struct_decls/map_object.h"

#include "field_task.h"
#include "savedata.h"

u16 GetNumberDigitCount(u32 number);
u16 Item_IsTMHM(u16 item);
u16 Pokedex_GetRatingMessageID_Local(u16 pokemonSeen, u16 reachedEternaCity);
u16 Pokedex_GetRatingMessageID_National(u16 pokemonCaught, u16 playerGender);
u16 SaveData_GetFirstNonEggInParty(SaveData *saveData);
BOOL HasAllLegendaryTitansInParty(SaveData *saveData);
void MapObject_Shake(FieldTask *task, MapObject *mapObj, u16 times, u16 speed, u16 xOffset, u16 zOffset);
void MapObject_Flicker(FieldTask *task, MapObject *mapObj, u16 times, u16 delay);

#endif // POKEPLATINUM_UNK_0205DFC4_H
