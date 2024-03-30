#include <nitro.h>
#include <string.h>

#include "pokemon.h"
#include "savedata.h"

#include "savedata.h"
#include "poketch_data.h"
#include "pokemon_icon.h"
#include "savedata/save_table.h"

int Poketch_SaveSize(void)
{
    return sizeof(PoketchData);
}

static const struct {
        u8 x;
        u8 y;
} sDefaultMapMarkers[POKETCH_MAPMARKER_COUNT] = {
    {104, 152},
    {120, 152},
    {136, 152},
    {152, 152},
    {168, 152},
    {184, 152}
};

void Poketch_Init(PoketchData *poketchData)
{
    int i;

    for (i = 0; i < POKETCH_REGISTRY_SIZE; i++) {
        poketchData->appRegistry[i] = 0;
    }

    poketchData->appCount = 0;
    poketchData->appIndex = 0;
    poketchData->poketchEnabled = 0;
    poketchData->screenColor = 0;
    poketchData->pedometerEnabled = 0;
    poketchData->pedometer = 0;
    poketchData->alarmSet = 0;
    poketchData->alarmHour = 0;
    poketchData->alarmMinute = 0;
    poketchData->calendarMonth = 1;
    poketchData->calendarMarkBitmap = 0;

    for (i = 0; i < POKETCH_MAPMARKER_COUNT; i++) {
        poketchData->markMapPositions[i].x = sDefaultMapMarkers[i].x;
        poketchData->markMapPositions[i].y = sDefaultMapMarkers[i].y;
    }

    for (i = 0; i < POKETCH_POKEMONHISTORY_MAX; i++) {
        poketchData->pokemonHistory[i].species = 0;
        poketchData->pokemonHistory[i].icon = 0;
        poketchData->pokemonHistory[i].form = 0;
    }

    poketchData->dotArtModifiedByPlayer = 0;
    PoketchData_RegisterApp(poketchData, POKETCH_APPID_DIGITALWATCH);
}

void PoketchData_SetEnabled(PoketchData *poketchData)
{
    poketchData->poketchEnabled = 1;
}

BOOL PoketchData_Enabled(PoketchData *poketchData)
{
    return poketchData->poketchEnabled;
}

BOOL PoketchData_CheckAppRegistered(PoketchData *poketchData, enum PoketchAppID appID)
{
    return poketchData->appRegistry[appID];
}

BOOL PoketchData_RegisterApp(PoketchData *poketchData, enum PoketchAppID appID)
{
    BOOL appRegistered = FALSE;

    GF_ASSERT(appID >= 0 && appID < POKETCH_APPID_MAX);

    if (poketchData->appCount < POKETCH_APPID_MAX && poketchData->appRegistry[appID] == 0) {
        poketchData->appRegistry[appID] = 1;
        poketchData->appCount++;

        if (appID == POKETCH_APPID_PEDOMETER) {
            poketchData->pedometerEnabled = 1;
        }

        appRegistered = TRUE;
    }    

    return appRegistered;
}

enum PoketchAppID PoketchData_CurrentAppID(const PoketchData *poketchData)
{
    return poketchData->appIndex;
}

int PoketchData_IncrementAppID(PoketchData *poketchData)
{
    int nextIndex = poketchData->appIndex;

    while (TRUE) {
        if (++nextIndex >= POKETCH_APPID_MAX) {
            nextIndex = 0;
        }

        if (nextIndex == poketchData->appIndex) {
            break;
        }

        if (poketchData->appRegistry[nextIndex]) {
            break;
        }
    }

    poketchData->appIndex = nextIndex;

    return poketchData->appIndex;
}

int PoketchData_DecrementAppID(PoketchData *poketchData)
{
    int prevIndex = poketchData->appIndex;

    while (TRUE) {
        if (--prevIndex < 0) {
            prevIndex = POKETCH_APPID_MAX - 1;
        }

        if (prevIndex == poketchData->appIndex) {
            break;
        }

        if (poketchData->appRegistry[prevIndex]) {
            break;
        }
    }

    poketchData->appIndex = prevIndex;

    return poketchData->appIndex;
}

u32 PoketchData_CurrentScreenColor(const PoketchData *poketchData)
{
    GF_ASSERT(poketchData);
    return poketchData->screenColor;
}

void PoketchData_SetScreenColor(PoketchData *poketchData, u32 screenColor)
{
    GF_ASSERT(poketchData);
    GF_ASSERT(screenColor < POKETCH_SCREEN_COLOR_MAX);

    poketchData->screenColor = screenColor;
}

u32 PoketchData_PedometerValue(const PoketchData *poketchData)
{
    return poketchData->pedometer;
}

void PoketchData_SetPedometerValue(PoketchData *poketchData, u32 value)
{
    if (poketchData->pedometerEnabled) {
        poketchData->pedometer = value;
    }
}

BOOL PoketchData_IsAlarmSet(const PoketchData *poketchData)
{
    return poketchData->alarmSet;
}

void PoketchData_AlarmTime(const PoketchData *poketchData, u32 *hour, u32 *minute)
{
    *hour = poketchData->alarmHour;
    *minute = poketchData->alarmMinute;
}

void PoketchData_SetAlarm(PoketchData *poketchData, BOOL enable, u32 hour, u32 minute)
{
    poketchData->alarmSet = enable;
    poketchData->alarmHour = hour;
    poketchData->alarmMinute = minute;
}

void PoketchData_SetCalendarMark(PoketchData *poketchData, u32 month, u32 day)
{
    if (poketchData->calendarMonth == month) {
        poketchData->calendarMarkBitmap |= (1 << (day - 1));
    } else {
        poketchData->calendarMonth = month;
        poketchData->calendarMarkBitmap = (1 << (day - 1));
    }
}

void PoketchData_ClearCalendarMark(PoketchData *poketchData, u32 month, u32 day)
{
    if (poketchData->calendarMonth == month) {
        poketchData->calendarMarkBitmap &= ~(1 << (day - 1));
    } else {
        poketchData->calendarMonth = month;
        poketchData->calendarMarkBitmap = 0;
    }
}

BOOL PoketchData_CalendarMarked(const PoketchData *poketchData, u32 month, u32 day)
{
    if (poketchData->calendarMonth == month) {
        return (poketchData->calendarMarkBitmap >> (day - 1)) & 1;
    }

    return FALSE;
}

void PoketchData_SetMapMarker(PoketchData *poketchData, int index, u8 x, u8 y)
{
    GF_ASSERT(index < POKETCH_MAPMARKER_COUNT);

    poketchData->markMapPositions[index].x = x;
    poketchData->markMapPositions[index].y = y;
}

void PoketchData_MapMarkerPos(const PoketchData *poketchData, int index, u8 *x, u8 *y)
{
    GF_ASSERT(index < POKETCH_MAPMARKER_COUNT);

    *x = poketchData->markMapPositions[index].x;
    *y = poketchData->markMapPositions[index].y;
}

BOOL PoketchData_DotArtModified(const PoketchData *poketchData)
{
    return poketchData->dotArtModifiedByPlayer;
}

void PoketchData_DotArtData(const PoketchData *poketchData, u8 *dotArtData)
{
    if (poketchData->dotArtModifiedByPlayer) {
        MI_CpuCopy8(poketchData->dotArtData, dotArtData, POKETCH_DOTART_SIZE_BYTES);
    }
}

void PoketchData_SetDotArtData(PoketchData *poketchData, const u8 *dotArtData)
{
    MI_CpuCopy8(dotArtData, poketchData->dotArtData, POKETCH_DOTART_SIZE_BYTES);
    poketchData->dotArtModifiedByPlayer = TRUE;
}

void PoketchData_PokemonHistoryAddEntry(PoketchData *poketchData, const BoxPokemon * boxPokemon)
{
    int new_pokemon_index = PoketchData_PokemonHistorySize(poketchData);

    // Shift all entries one index up
    if (new_pokemon_index >= POKETCH_POKEMONHISTORY_MAX) {

        for (int i = 0; i < (POKETCH_POKEMONHISTORY_MAX - 1); i++) {
            poketchData->pokemonHistory[i] = poketchData->pokemonHistory[i + 1];
        }

        new_pokemon_index = POKETCH_POKEMONHISTORY_MAX - 1;
    }

    // Add new entry to end of the list
    poketchData->pokemonHistory[new_pokemon_index].species = BoxPokemon_GetValue((BoxPokemon *)boxPokemon, MON_DATA_SPECIES, NULL);
    poketchData->pokemonHistory[new_pokemon_index].icon = BoxPokemon_IconFormOffset(boxPokemon);
    poketchData->pokemonHistory[new_pokemon_index].form = BoxPokemon_GetValue((BoxPokemon *)boxPokemon, MON_DATA_FORM, NULL);
}

int PoketchData_PokemonHistorySize(const PoketchData *poketchData)
{
    int size;

    for (size = 0; size < POKETCH_POKEMONHISTORY_MAX; size++) {
        if (poketchData->pokemonHistory[size].species == 0) {
            return size;
        }
    }

    return size;
}

void PoketchData_PokemonHistorySpeciesAndIcon(const PoketchData *poketchData, int index, int *species, int *icon)
{
    GF_ASSERT(index < POKETCH_POKEMONHISTORY_MAX);
    GF_ASSERT(poketchData->pokemonHistory[index].species);

    *species = poketchData->pokemonHistory[index].species;
    *icon = poketchData->pokemonHistory[index].icon;
}

u32 PoketchData_PokemonHistoryForm(const PoketchData *poketchData, int index)
{
    GF_ASSERT(index < POKETCH_POKEMONHISTORY_MAX);
    GF_ASSERT(poketchData->pokemonHistory[index].species);

    return poketchData->pokemonHistory[index].form;
}

PoketchData* SaveData_PoketchData(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_POKETCH);
}
