#include "poketch.h"

#include <nitro.h>
#include <string.h>

#include "savedata/save_table.h"

#include "pokemon.h"
#include "pokemon_icon.h"
#include "savedata.h"

int Poketch_SaveSize(void)
{
    return sizeof(Poketch);
}

static const struct {
    u8 x;
    u8 y;
} sDefaultMapMarkers[POKETCH_MAPMARKER_COUNT] = {
    { 104, 152 },
    { 120, 152 },
    { 136, 152 },
    { 152, 152 },
    { 168, 152 },
    { 184, 152 }
};

void Poketch_Init(Poketch *poketch)
{
    int i;

    for (i = 0; i < POKETCH_REGISTRY_SIZE; i++) {
        poketch->appRegistry[i] = 0;
    }

    poketch->appCount = 0;
    poketch->appIndex = 0;
    poketch->poketchEnabled = 0;
    poketch->screenColor = 0;
    poketch->pedometerEnabled = 0;
    poketch->stepCount = 0;
    poketch->alarmSet = 0;
    poketch->alarmHour = 0;
    poketch->alarmMinute = 0;
    poketch->calendarMonth = 1;
    poketch->calendarMarkBitmap = 0;

    for (i = 0; i < POKETCH_MAPMARKER_COUNT; i++) {
        poketch->markMapPositions[i].x = sDefaultMapMarkers[i].x;
        poketch->markMapPositions[i].y = sDefaultMapMarkers[i].y;
    }

    for (i = 0; i < POKETCH_POKEMONHISTORY_MAX; i++) {
        poketch->pokemonHistoryQueue[i].species = 0;
        poketch->pokemonHistoryQueue[i].icon = 0;
        poketch->pokemonHistoryQueue[i].form = 0;
    }

    poketch->dotArtModifiedByPlayer = 0;
    Poketch_RegisterApp(poketch, POKETCH_APPID_DIGITALWATCH);
}

void Poketch_Enable(Poketch *poketch)
{
    poketch->poketchEnabled = 1;
}

BOOL Poketch_IsEnabled(Poketch *poketch)
{
    return poketch->poketchEnabled;
}

BOOL Poketch_IsAppRegistered(Poketch *poketch, enum PoketchAppID appID)
{
    return poketch->appRegistry[appID];
}

BOOL Poketch_RegisterApp(Poketch *poketch, enum PoketchAppID appID)
{
    BOOL appRegistered = FALSE;

    GF_ASSERT(appID >= 0 && appID < POKETCH_APPID_MAX);

    if (poketch->appCount < POKETCH_APPID_MAX && poketch->appRegistry[appID] == 0) {
        poketch->appRegistry[appID] = 1;
        poketch->appCount++;

        if (appID == POKETCH_APPID_PEDOMETER) {
            poketch->pedometerEnabled = 1;
        }

        appRegistered = TRUE;
    }

    return appRegistered;
}

enum PoketchAppID Poketch_CurrentAppID(const Poketch *poketch)
{
    return poketch->appIndex;
}

int Poketch_IncrementAppID(Poketch *poketch)
{
    int nextIndex = poketch->appIndex;

    while (TRUE) {
        if (++nextIndex >= POKETCH_APPID_MAX) {
            nextIndex = 0;
        }

        if (nextIndex == poketch->appIndex) {
            break;
        }

        if (poketch->appRegistry[nextIndex]) {
            break;
        }
    }

    poketch->appIndex = nextIndex;

    return poketch->appIndex;
}

int Poketch_DecrementAppID(Poketch *poketch)
{
    int prevIndex = poketch->appIndex;

    while (TRUE) {
        if (--prevIndex < 0) {
            prevIndex = POKETCH_APPID_MAX - 1;
        }

        if (prevIndex == poketch->appIndex) {
            break;
        }

        if (poketch->appRegistry[prevIndex]) {
            break;
        }
    }

    poketch->appIndex = prevIndex;

    return poketch->appIndex;
}

u32 Poketch_CurrentScreenColor(const Poketch *poketch)
{
    GF_ASSERT(poketch);
    return poketch->screenColor;
}

void Poketch_SetScreenColor(Poketch *poketch, u32 screenColor)
{
    GF_ASSERT(poketch);
    GF_ASSERT(screenColor < POKETCH_SCREEN_COLOR_MAX);

    poketch->screenColor = screenColor;
}

u32 Poketch_StepCount(const Poketch *poketch)
{
    return poketch->stepCount;
}

void Poketch_SetStepCount(Poketch *poketch, u32 value)
{
    if (poketch->pedometerEnabled) {
        poketch->stepCount = value;
    }
}

BOOL Poketch_IsAlarmSet(const Poketch *poketch)
{
    return poketch->alarmSet;
}

void Poketch_AlarmTime(const Poketch *poketch, u32 *hour, u32 *minute)
{
    *hour = poketch->alarmHour;
    *minute = poketch->alarmMinute;
}

void Poketch_SetAlarm(Poketch *poketch, BOOL enable, u32 hour, u32 minute)
{
    poketch->alarmSet = enable;
    poketch->alarmHour = hour;
    poketch->alarmMinute = minute;
}

void Poketch_SetCalendarMark(Poketch *poketch, u32 month, u32 day)
{
    if (poketch->calendarMonth == month) {
        poketch->calendarMarkBitmap |= (1 << (day - 1));
    } else {
        poketch->calendarMonth = month;
        poketch->calendarMarkBitmap = (1 << (day - 1));
    }
}

void Poketch_ClearCalendarMark(Poketch *poketch, u32 month, u32 day)
{
    if (poketch->calendarMonth == month) {
        poketch->calendarMarkBitmap &= ~(1 << (day - 1));
    } else {
        poketch->calendarMonth = month;
        poketch->calendarMarkBitmap = 0;
    }
}

BOOL Poketch_CalendarMarked(const Poketch *poketch, u32 month, u32 day)
{
    if (poketch->calendarMonth == month) {
        return (poketch->calendarMarkBitmap >> (day - 1)) & 1;
    }

    return FALSE;
}

void Poketch_SetMapMarker(Poketch *poketch, int index, u8 x, u8 y)
{
    GF_ASSERT(index < POKETCH_MAPMARKER_COUNT);

    poketch->markMapPositions[index].x = x;
    poketch->markMapPositions[index].y = y;
}

void Poketch_MapMarkerPos(const Poketch *poketch, int index, u8 *x, u8 *y)
{
    GF_ASSERT(index < POKETCH_MAPMARKER_COUNT);

    *x = poketch->markMapPositions[index].x;
    *y = poketch->markMapPositions[index].y;
}

BOOL Poketch_DotArtModified(const Poketch *poketch)
{
    return poketch->dotArtModifiedByPlayer;
}

void Poketch_CopyDotArtData(const Poketch *poketch, u8 *dst)
{
    if (poketch->dotArtModifiedByPlayer) {
        MI_CpuCopy8(poketch->dotArtData, dst, POKETCH_DOTART_SIZE_BYTES);
    }
}

void Poketch_ModifyDotArtData(Poketch *poketch, const u8 *src)
{
    MI_CpuCopy8(src, poketch->dotArtData, POKETCH_DOTART_SIZE_BYTES);
    poketch->dotArtModifiedByPlayer = TRUE;
}

void Poketch_PokemonHistoryEnqueue(Poketch *poketch, const BoxPokemon *boxPokemon)
{
    int index = Poketch_PokemonHistorySize(poketch);

    // Shift all entries one index up
    if (index >= POKETCH_POKEMONHISTORY_MAX) {

        for (int i = 0; i < (POKETCH_POKEMONHISTORY_MAX - 1); i++) {
            poketch->pokemonHistoryQueue[i] = poketch->pokemonHistoryQueue[i + 1];
        }

        index = POKETCH_POKEMONHISTORY_MAX - 1;
    }

    // Add new entry to end of the list
    poketch->pokemonHistoryQueue[index].species = BoxPokemon_GetValue((BoxPokemon *)boxPokemon, MON_DATA_SPECIES, NULL);
    poketch->pokemonHistoryQueue[index].icon = BoxPokemon_IconFormOffset(boxPokemon);
    poketch->pokemonHistoryQueue[index].form = BoxPokemon_GetValue((BoxPokemon *)boxPokemon, MON_DATA_FORM, NULL);
}

int Poketch_PokemonHistorySize(const Poketch *poketch)
{
    int size;

    for (size = 0; size < POKETCH_POKEMONHISTORY_MAX; size++) {
        if (poketch->pokemonHistoryQueue[size].species == 0) {
            return size;
        }
    }

    return size;
}

void Poketch_PokemonHistorySpeciesAndIcon(const Poketch *poketch, int index, int *species, int *icon)
{
    GF_ASSERT(index < POKETCH_POKEMONHISTORY_MAX);
    GF_ASSERT(poketch->pokemonHistoryQueue[index].species);

    *species = poketch->pokemonHistoryQueue[index].species;
    *icon = poketch->pokemonHistoryQueue[index].icon;
}

u32 Poketch_PokemonHistoryForm(const Poketch *poketch, int index)
{
    GF_ASSERT(index < POKETCH_POKEMONHISTORY_MAX);
    GF_ASSERT(poketch->pokemonHistoryQueue[index].species);

    return poketch->pokemonHistoryQueue[index].form;
}

Poketch *SaveData_PoketchData(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_POKETCH);
}
