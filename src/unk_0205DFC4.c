#include "unk_0205DFC4.h"

#include <nitro.h>

#include "struct_decls/map_object.h"

#include "field/field_system.h"

#include "field_task.h"
#include "heap.h"
#include "map_object.h"
#include "math_util.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "savedata.h"

#include "res/text/bank/pokedex_ratings.h"

typedef struct MapObjectShakeData {
    MapObject *mapObj;
    fx32 xOffset;
    fx32 zOffset;
    u16 times;
    u16 degrees;
    u16 speed;
} MapObjectShakeData;

typedef struct MapObjectFlickerData {
    MapObject *mapObj;
    u16 times;
    u16 delay;
    u8 timer;
    u8 hiddenFlag;
} MapObjectFlickerData;

static u8 GetPartnerGameCode(void);
u8 sub_0205E6D8(SaveData *saveData);

u16 GetNumberDigitCount(u32 number)
{
    if (number / 10 == 0) {
        return 1;
    } else if (number / 100 == 0) {
        return 2;
    } else if (number / 1000 == 0) {
        return 3;
    } else if (number / 10000 == 0) {
        return 4;
    } else if (number / 100000 == 0) {
        return 5;
    } else if (number / 1000000 == 0) {
        return 6;
    } else if (number / 10000000 == 0) {
        return 7;
    } else if (number / 100000000 == 0) {
        return 8;
    }

    return 1;
}

u16 Item_IsTMHM(u16 item)
{
    if (item >= ITEM_TM01 && item <= ITEM_HM08) {
        return TRUE;
    }

    return FALSE;
}

u16 Pokedex_GetRatingMessageID_Local(u16 pokemonSeen, u16 reachedEternaCity)
{
    if (pokemonSeen <= 15) {
        return PokedexRatings_Text_RowanPokemonSeenUpTo15;
    }

    if (pokemonSeen <= 30) {
        return PokedexRatings_Text_RowanPokemonSeenOver15;
    }

    if (pokemonSeen <= 45) {
        return PokedexRatings_Text_RowanPokemonSeenOver30;
    }

    if (pokemonSeen <= 60) {
        return PokedexRatings_Text_RowanPokemonSeenOver45;
    }

    if (pokemonSeen <= 80) {
        return PokedexRatings_Text_RowanPokemonSeenOver60;
    }

    if (pokemonSeen <= 100) {
        return PokedexRatings_Text_RowanPokemonSeenOver80;
    }

    if (pokemonSeen <= 120) {
        return PokedexRatings_Text_RowanPokemonSeenOver100;
    }

    if (pokemonSeen <= 140) {
        return PokedexRatings_Text_RowanPokemonSeenOver120;
    }

    if (pokemonSeen <= 160) {
        return PokedexRatings_Text_RowanPokemonSeenOver140;
    }

    if (pokemonSeen <= 180) {
        return PokedexRatings_Text_RowanPokemonSeenOver160;
    }

    if (pokemonSeen <= 200) {
        return PokedexRatings_Text_RowanPokemonSeenOver180;
    }

    if (pokemonSeen <= LOCAL_DEX_GOAL_SUB_1) {
        return PokedexRatings_Text_RowanPokemonSeenOver200;
    }

    if (reachedEternaCity) {
        return PokedexRatings_Text_RowanCompleteLocalDex;
    } else {
        return PokedexRatings_Text_RowanCompleteLocalDex_TooEarly;
    }
}

u16 Pokedex_GetRatingMessageID_National(u16 pokemonCaught, u16 playerGender)
{
    if (pokemonCaught <= 39) {
        return PokedexRatings_Text_OakPokemonCaughtUnder40;
    }

    if (pokemonCaught <= 59) {
        return PokedexRatings_Text_OakPokemonCaught40;
    }

    if (pokemonCaught <= 89) {
        return PokedexRatings_Text_OakPokemonCaught60;
    }

    if (pokemonCaught <= 119) {
        return PokedexRatings_Text_OakPokemonCaught90;
    }

    if (pokemonCaught <= 149) {
        return PokedexRatings_Text_OakPokemonCaught120;
    }

    if (pokemonCaught <= 189) {
        return PokedexRatings_Text_OakPokemonCaught150;
    }

    if (pokemonCaught <= 229) {
        return PokedexRatings_Text_OakPokemonCaught190;
    }

    if (pokemonCaught <= 269) {
        return PokedexRatings_Text_OakPokemonCaught230;
    }

    if (pokemonCaught <= 309) {
        return PokedexRatings_Text_OakPokemonCaught270;
    }

    if (pokemonCaught <= 349) {
        return PokedexRatings_Text_OakPokemonCaught310;
    }

    if (pokemonCaught <= 379) {
        return PokedexRatings_Text_OakPokemonCaught350;
    }

    if (pokemonCaught <= 409) {
        return PokedexRatings_Text_OakPokemonCaught380;
    }

    if (pokemonCaught <= 429) {
        if (playerGender) {
            return PokedexRatings_Text_OakPokemonCaught410_Female;
        } else {
            return PokedexRatings_Text_OakPokemonCaught410_Male;
        }
    }

    if (pokemonCaught <= 449) {
        return PokedexRatings_Text_OakPokemonCaught430;
    }

    if (pokemonCaught <= 459) {
        return PokedexRatings_Text_OakPokemonCaught450;
    }

    if (pokemonCaught <= 469) {
        return PokedexRatings_Text_OakPokemonCaught460;
    }

    if (pokemonCaught <= 475) {
        return PokedexRatings_Text_OakPokemonCaught470;
    }

    if (pokemonCaught <= 481) {
        return PokedexRatings_Text_OakPokemonCaught476;
    }

    if (playerGender) {
        return PokedexRatings_Text_OakCompleteNationalDex_Female;
    } else {
        return PokedexRatings_Text_OakCompleteNationalDex_Male;
    }
}

u16 SaveData_GetFirstNonEggInParty(SaveData *saveData)
{
    u16 i, partyCount = Party_GetCurrentCount(SaveData_GetParty(saveData));

    for (i = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(saveData), i);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
            return i;
        }
    }

    return 0;
}

BOOL HasAllLegendaryTitansInParty(SaveData *saveData)
{
    int i, j, titansInParty = 0;
    static const u16 titans[] = { SPECIES_REGIROCK, SPECIES_REGICE, SPECIES_REGISTEEL };
    u16 partySpecies[MAX_PARTY_SIZE];

    Party *party = SaveData_GetParty(saveData);
    int partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < partyCount; i++) {
        partySpecies[i] = Pokemon_GetValue(Party_GetPokemonBySlotIndex(party, i), MON_DATA_SPECIES, NULL);
    }

    for (i = 0; i < 3; i++) {
        for (j = 0; j < partyCount; j++) {
            if (partySpecies[j] == titans[i]) {
                ++titansInParty;
                break;
            }
        }
    }

    if (titansInParty == 3) {
        return TRUE;
    }

    return FALSE;
}

static BOOL Task_ShakeMapObject(FieldTask *task)
{
    VecFx32 pos;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapObjectShakeData *shakeData = FieldTask_GetEnv(task);

    pos.x = FX32_CONST(8);
    pos.z = FX32_CONST(8);
    pos.x = FX_Mul(CalcSineDegrees(shakeData->degrees), shakeData->xOffset);
    pos.z = FX_Mul(CalcSineDegrees(shakeData->degrees), shakeData->zOffset);
    pos.y = 0;

    MapObject_SetSpritePosOffset(shakeData->mapObj, &pos);

    shakeData->degrees += shakeData->speed;

    if (shakeData->degrees >= 360) {
        shakeData->degrees = 0;
        shakeData->times--;
    }

    if (shakeData->times == 0) {
        pos.x = pos.y = pos.z = 0;
        MapObject_SetSpritePosOffset(shakeData->mapObj, &pos);
        Heap_Free(shakeData);
        return TRUE;
    }

    return FALSE;
}

void MapObject_Shake(FieldTask *task, MapObject *mapObj, u16 times, u16 speed, u16 xOffset, u16 zOffset)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapObjectShakeData *shakeData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapObjectShakeData));

    MI_CpuClear8(shakeData, sizeof(MapObjectShakeData));

    shakeData->xOffset = FX32_CONST(xOffset);
    shakeData->zOffset = FX32_CONST(zOffset);
    shakeData->times = times;
    shakeData->speed = speed;
    shakeData->mapObj = mapObj;

    FieldTask_InitCall(fieldSystem->task, Task_ShakeMapObject, shakeData);
}

static BOOL Task_FlickerMapObject(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapObjectFlickerData *flickerData = FieldTask_GetEnv(task);

    MapObject_SetHidden(flickerData->mapObj, flickerData->hiddenFlag);

    if (flickerData->timer++ >= flickerData->delay) {
        flickerData->hiddenFlag ^= 1;
        flickerData->timer = 0;

        if (flickerData->times-- == 0) {
            Heap_Free(flickerData);
            return TRUE;
        }
    }

    return FALSE;
}

void MapObject_Flicker(FieldTask *task, MapObject *mapObj, u16 times, u16 delay)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    MapObjectFlickerData *flickerData = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(MapObjectFlickerData));

    MI_CpuClear8(flickerData, sizeof(MapObjectFlickerData));

    flickerData->times = times;
    flickerData->delay = delay;
    flickerData->mapObj = mapObj;
    flickerData->hiddenFlag = 0;

    FieldTask_InitCall(fieldSystem->task, Task_FlickerMapObject, flickerData);
}
