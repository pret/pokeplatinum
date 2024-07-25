#ifndef POKEPLATINUM_POKETCH_DATA_H
#define POKEPLATINUM_POKETCH_DATA_H

#include "consts/poketch.h"

#include "pokemon.h"
#include "savedata.h"

#define POKETCH_MAPMARKER_COUNT    6
#define POKETCH_POKEMONHISTORY_MAX 12
#define POKETCH_REGISTRY_SIZE      32
#define POKETCH_DOTART_SIZE_BYTES  120

/** Poketch Screen colors, used in PoketchData_SetScreenColor */
enum PoketchScreenColor {
    POKETCH_SCREEN_COLOR_GREEN = 0,
    POKETCH_SCREEN_COLOR_YELLOW,
    POKETCH_SCREEN_COLOR_ORANGE,
    POKETCH_SCREEN_COLOR_RED,
    POKETCH_SCREEN_COLOR_PURPLE,
    POKETCH_SCREEN_COLOR_BLUE,
    POKETCH_SCREEN_COLOR_TEAL,
    POKETCH_SCREEN_COLOR_WHITE,

    POKETCH_SCREEN_COLOR_MAX,
};

/**
 * @brief All of the Poketch's internally tracked data including settings, registered apps, and the data for some apps (eg. pedometer, alarm clock).
 */
typedef struct PoketchData {
    u8 poketchEnabled : 1;
    u8 pedometerEnabled : 1; //!< Whether or not the pedometer is registered and will take step count updates.
    u8 dotArtModifiedByPlayer : 1; //!< Whether or not the dot art data has ever been modified by the user. This flag can never be set to FALSE.
    u8 screenColor : 3; //!< Screen palette color (see PoketchScreenColor enum above)
    // u8 padding : 2;

    s8 appCount; //!< Number of currently registered apps
    s8 appIndex; //!< Currently selected app
    u8 appRegistry[POKETCH_REGISTRY_SIZE]; //!< Registration status of all apps. Indices 0-24 correspond to the App IDs in poketch_data.h. Indices 25-31 are unused.

    u32 stepCount;

    u16 alarmSet : 1;
    u16 alarmHour : 5;
    u16 alarmMinute : 6;
    // u16 padding : 4;

    u8 dotArtData[POKETCH_DOTART_SIZE_BYTES]; //!< All pixel information for the Dot Art app

    u32 calendarMarkBitmap; //!< Bitmap for every day in the calendar month and whether it's been marked
    u8 calendarMonth;

    /**
     * @brief XY coordinates of a single Map Marker in the Marking Map app
     */
    struct {
        u8 x;
        u8 y;
    } markMapPositions[POKETCH_MAPMARKER_COUNT];

    /**
     * @brief Relevant data for Pokemon History app
     */
    struct {
        u16 species;
        u16 icon;
        u32 form;
    } pokemonHistoryQueue[POKETCH_POKEMONHISTORY_MAX]; //!< The pokemon to display in the Pokemon History app
} PoketchData;

int Poketch_SaveSize(void);

void Poketch_Init(PoketchData *poketchData);

void PoketchData_Enable(PoketchData *poketchData);

BOOL PoketchData_IsEnabled(PoketchData *poketchData);

BOOL PoketchData_IsAppRegistered(PoketchData *poketchData, enum PoketchAppID appID);

BOOL PoketchData_RegisterApp(PoketchData *poketchData, enum PoketchAppID appID);

enum PoketchAppID PoketchData_CurrentAppID(const PoketchData *poketchData);

/**
 * Sets the current Poketch app to the next registered app, skipping unregistered App IDs and wrapping around if necessary.
 */
int PoketchData_IncrementAppID(PoketchData *poketchData);

/**
 * Sets the current Poketch app to the previous registered app, skipping unregistered App IDs and wrapping around if necessary.
 */
int PoketchData_DecrementAppID(PoketchData *poketchData);

u32 PoketchData_CurrentScreenColor(const PoketchData *poketchData);

/**
 * Sets the Poketch's color setting with values from the PoketchScreenColor enum above.
 * This function asserts that the given value is less than POKETCH_SCREEN_COLOR_MAX.
 */
void PoketchData_SetScreenColor(PoketchData *poketchData, u32 screenColor);

u32 PoketchData_StepCount(const PoketchData *poketchData);

/**
 * Overwrites the current step count. This function will not do anything unless the Pedometer app is registered.
 */
void PoketchData_SetStepCount(PoketchData *poketchData, u32 value);

BOOL PoketchData_IsAlarmSet(const PoketchData *poketchData);

void PoketchData_AlarmTime(const PoketchData *poketchData, u32 *hour, u32 *minute);

void PoketchData_SetAlarm(PoketchData *poketchData, BOOL enabled, u32 hour, u32 minute);

/**
 * Marks the given date on the Calendar app as highlighted.
 * Passing this function a new month will change the month on the calendar and clear all days except the given one.
 */
void PoketchData_SetCalendarMark(PoketchData *poketchData, u32 month, u32 day);

/**
 * Clears the mark on the given date on the Calendar app.
 * Passing this function a new month will change the month on the calendar and clear every day.
 */
void PoketchData_ClearCalendarMark(PoketchData *poketchData, u32 month, u32 day);

BOOL PoketchData_CalendarMarked(const PoketchData *poketchData, u32 month, u32 day);

/**
 * Sets the location of a map marker. Asserts that index is less than POKETCH_MAPMARKER_COUNT.
 */
void PoketchData_SetMapMarker(PoketchData *poketchData, int index, u8 x, u8 y);

/**
 * Gets the location of a map marker. Asserts that index is less than POKETCH_MAPMARKER_COUNT.
 */
void PoketchData_MapMarkerPos(const PoketchData *poketchData, int index, u8 *x, u8 *y);

/**
 * Checks whether or not the Dot Art data has been modified at any point.
 * This will return FALSE until PoketchData_ModifyDotArtData is called, at which point it will always return TRUE.
 */
BOOL PoketchData_DotArtModified(const PoketchData *poketchData);

void PoketchData_CopyDotArtData(const PoketchData *poketchData, u8 *dst);

void PoketchData_ModifyDotArtData(PoketchData *poketchData, const u8 *src);

/**
 * Adds a new Pokemon to the end of the Pokemon History list.
 */
void PoketchData_PokemonHistoryEnqueue(PoketchData *poketchData, const BoxPokemon *boxPokemon);

int PoketchData_PokemonHistorySize(const PoketchData *poketchData);

/**
 * Gets the species and icon info of a given index in the Pokemon History.
 * This function asserts that index is less than POKETCH_POKEMONHISTORY_MAX.
 */
void PoketchData_PokemonHistorySpeciesAndIcon(const PoketchData *poketchData, int index, int *species, int *icon);

/**
 * Gets the form info of a given index in the pokemon history.
 * This function asserts that index is less than POKETCH_POKEMONHISTORY_MAX.
 */
u32 PoketchData_PokemonHistoryForm(const PoketchData *poketchData, int index);

PoketchData *SaveData_PoketchData(SaveData *saveData);

#endif // POKEPLATINUM_POKETCH_DATA_H
