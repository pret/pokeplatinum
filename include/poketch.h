#ifndef POKEPLATINUM_POKETCH_H
#define POKEPLATINUM_POKETCH_H

#include "generated/poketch_apps.h"

#include "pokemon.h"
#include "savedata.h"

#define POKETCH_MAPMARKER_COUNT    6
#define POKETCH_POKEMONHISTORY_MAX 12
#define POKETCH_REGISTRY_SIZE      32
#define POKETCH_DOTART_SIZE_BYTES  120

/** Poketch Screen colors, used in Poketch_SetScreenColor */
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
typedef struct Poketch {
    u8 poketchEnabled : 1;
    u8 pedometerEnabled : 1; //!< Whether or not the pedometer is registered and will take step count updates.
    u8 dotArtModifiedByPlayer : 1; //!< Whether or not the dot art data has ever been modified by the user. This flag can never be set to FALSE.
    u8 screenColor : 3; //!< Screen palette color (see PoketchScreenColor enum above)
    // u8 padding : 2;

    s8 appCount; //!< Number of currently registered apps
    s8 appIndex; //!< Currently selected app
    u8 appRegistry[POKETCH_REGISTRY_SIZE]; //!< Registration status of all apps. Indices 0-24 correspond to the App IDs in poketch.h. Indices 25-31 are unused.

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
} Poketch;

int Poketch_SaveSize(void);

void Poketch_Init(Poketch *poketch);

void Poketch_Enable(Poketch *poketch);

BOOL Poketch_IsEnabled(Poketch *poketch);

BOOL Poketch_IsAppRegistered(Poketch *poketch, enum PoketchAppID appID);

BOOL Poketch_RegisterApp(Poketch *poketch, enum PoketchAppID appID);

enum PoketchAppID Poketch_CurrentAppID(const Poketch *poketch);

/**
 * Sets the current Poketch app to the next registered app, skipping unregistered App IDs and wrapping around if necessary.
 */
int Poketch_IncrementAppID(Poketch *poketch);

/**
 * Sets the current Poketch app to the previous registered app, skipping unregistered App IDs and wrapping around if necessary.
 */
int Poketch_DecrementAppID(Poketch *poketch);

u32 Poketch_CurrentScreenColor(const Poketch *poketch);

/**
 * Sets the Poketch's color setting with values from the PoketchScreenColor enum above.
 * This function asserts that the given value is less than POKETCH_SCREEN_COLOR_MAX.
 */
void Poketch_SetScreenColor(Poketch *poketch, u32 screenColor);

u32 Poketch_StepCount(const Poketch *poketch);

/**
 * Overwrites the current step count. This function will not do anything unless the Pedometer app is registered.
 */
void Poketch_SetStepCount(Poketch *poketch, u32 value);

BOOL Poketch_IsAlarmSet(const Poketch *poketch);

void Poketch_AlarmTime(const Poketch *poketch, u32 *hour, u32 *minute);

void Poketch_SetAlarm(Poketch *poketch, BOOL enabled, u32 hour, u32 minute);

/**
 * Marks the given date on the Calendar app as highlighted.
 * Passing this function a new month will change the month on the calendar and clear all days except the given one.
 */
void Poketch_SetCalendarMark(Poketch *poketch, u32 month, u32 day);

/**
 * Clears the mark on the given date on the Calendar app.
 * Passing this function a new month will change the month on the calendar and clear every day.
 */
void Poketch_ClearCalendarMark(Poketch *poketch, u32 month, u32 day);

BOOL Poketch_CalendarMarked(const Poketch *poketch, u32 month, u32 day);

/**
 * Sets the location of a map marker. Asserts that index is less than POKETCH_MAPMARKER_COUNT.
 */
void Poketch_SetMapMarker(Poketch *poketch, int index, u8 x, u8 y);

/**
 * Gets the location of a map marker. Asserts that index is less than POKETCH_MAPMARKER_COUNT.
 */
void Poketch_MapMarkerPos(const Poketch *poketch, int index, u8 *x, u8 *y);

/**
 * Checks whether or not the Dot Art data has been modified at any point.
 * This will return FALSE until Poketch_ModifyDotArtData is called, at which point it will always return TRUE.
 */
BOOL Poketch_DotArtModified(const Poketch *poketch);

void Poketch_CopyDotArtData(const Poketch *poketch, u8 *dst);

void Poketch_ModifyDotArtData(Poketch *poketch, const u8 *src);

/**
 * Adds a new Pokemon to the end of the Pokemon History list.
 */
void Poketch_PokemonHistoryEnqueue(Poketch *poketch, const BoxPokemon *boxPokemon);

int Poketch_PokemonHistorySize(const Poketch *poketch);

/**
 * Gets the species and icon info of a given index in the Pokemon History.
 * This function asserts that index is less than POKETCH_POKEMONHISTORY_MAX.
 */
void Poketch_PokemonHistorySpeciesAndIcon(const Poketch *poketch, int index, int *species, int *icon);

/**
 * Gets the form info of a given index in the pokemon history.
 * This function asserts that index is less than POKETCH_POKEMONHISTORY_MAX.
 */
u32 Poketch_PokemonHistoryForm(const Poketch *poketch, int index);

Poketch *SaveData_GetPoketch(SaveData *saveData);

#endif // POKEPLATINUM_POKETCH_H
