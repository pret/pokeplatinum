#ifndef POKEPLATINUM_POKETCH_DATA_H
#define POKEPLATINUM_POKETCH_DATA_H

#include "pokemon.h"
#include "savedata.h"

/** Poketch app IDs, used to register and switch between apps in the Poketch */
enum PoketchAppID {
    POKETCH_APPID_DIGITALWATCH = 0,
    POKETCH_APPID_CALCULATOR,
    POKETCH_APPID_MEMOPAD,
    POKETCH_APPID_PEDOMETER,
    POKETCH_APPID_PARTYSTATUS,
    POKETCH_APPID_FRIENDSHIPCHECKER,
    POKETCH_APPID_DOWSINGMACHINE,
    POKETCH_APPID_BERRYSEARCHER,
    POKETCH_APPID_DAYCARECHECKER,
    POKETCH_APPID_POKEMONHISTORY,
    POKETCH_APPID_COUNTER,
    POKETCH_APPID_ANALOGWATCH,
    POKETCH_APPID_MARKINGMAP,
    POKETCH_APPID_LINKSEARCHER,
    POKETCH_APPID_COINTOSS,
    POKETCH_APPID_MOVETESTER,
    POKETCH_APPID_CALENDAR,
    POKETCH_APPID_DOTART,
    POKETCH_APPID_ROULETTE,
    POKETCH_APPID_RADARCHAINCOUNTER,
    POKETCH_APPID_KITCHENTIMER,
    POKETCH_APPID_COLORCHANGER,
    POKETCH_APPID_MATCHUPCHECKER,
    POKETCH_APPID_STOPWATCH,            // unused
    POKETCH_APPID_ALARMCLOCK,           // unused

    POKETCH_APPID_MAX
};

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

enum {
    POKETCH_MAPMARKER_COUNT = 6,        //!< Number of map markers in the Mark Map app
    POKETCH_POKEMONHISTORY_MAX = 12,    //!< Max number of pokemon that can be displayed in the Pokemon History app
    POKETCH_REGISTRY_SIZE = 32,         //!< Size of the Poketch Registry.
    POKETCH_DOTART_SIZE_BYTES = 120     //!< Size of the Dot Art data in bytes (24x20 grid, 2 bits per position)
};

/**
 * @brief All of the Poketch's internally tracked data including settings, registered apps, and the data for some apps (eg. pedometer, alarm clock).
 */
typedef struct PoketchData {
    u8 poketchEnabled : 1;
    u8 pedometerEnabled : 1;        //!< Whether or not the pedometer is registered and will take step count updates.
    u8 dotArtModifiedByPlayer : 1;  //!< Whether or not the dot art data has ever been modified by the user. This flag can never be set to FALSE.
    u8 screenColor : 3;             //!< Screen palette color (see PoketchScreenColor enum above)
    // u8 padding : 2;

    s8 appCount;                                //!< Number of currently registered apps
    s8 appIndex;                                //!< Currently selected app
    u8 appRegistry[POKETCH_REGISTRY_SIZE];      //!< Registration status of all apps. Indices 0-24 correspond to the App IDs in poketch_data.h. Indices 25-31 are unused.
    
    u32 pedometer;         //!< Step counter

    u16 alarmSet : 1;      //!< Whether or not the alarm is currently enabled.
    u16 alarmHour : 5;     //!< Current Hour setting on the alarm clock.
    u16 alarmMinute : 6;   //!< Current Minute setting on the alarm clock.
    // u16 padding : 4;

    u8 dotArtData[POKETCH_DOTART_SIZE_BYTES];   //!< All pixel information for the Dot Art app

    u32 calendarMarkBitmap;     //!< Bitmap for every day in the calendar month and whether it's been marked
    u8 calendarMonth;           //!< Current calendar month

    /**
    * @brief XY coordinates of a single Map Marker in the Marking Map app
    */
    struct {
        u8 x;                                       //!< X coordinate of map marker
        u8 y;                                       //!< Y coordinate of map marker
    } markMapPositions[POKETCH_MAPMARKER_COUNT];    //!< Map markers

    /**
    * @brief Relevant data for Pokemon History app
    */
    struct {
        u16 species;                                //!< Species ID
        u16 icon;                                   //!< Icon ID
        u32 form;                                   //!< Form ID
    } pokemonHistory[POKETCH_POKEMONHISTORY_MAX];   //!< The (up to) 12 pokemon to display in the Pokemon History app
} PoketchData;

/**
 * Returns the size of the PoketchData object.
 *
 * @return the size of the PoketchData object.
 */
int Poketch_SaveSize(void);

/**
 * Initializes the given PoketchData object.
 *
 * @param poketchData:      The PoketchData to initialize.
 */
void Poketch_Init(PoketchData *poketchData);

/**
 * Sets the PoketchData's Enabled flag to TRUE.
 *
 * @param poketchData:      The PoketchData to update.
 */
void PoketchData_SetEnabled(PoketchData *poketchData);

/**
 * Returns whether or not the given PoketchData is enabled.
 *
 * @param poketchData:      The PoketchData to check.
 * 
 * @return TRUE if the Enabled flag is set to TRUE, FALSE if FALSE.
 */
BOOL PoketchData_Enabled(PoketchData *poketchData);

/**
 * Checks whether or not the given AppID is already registered in the Poketch.
 * Valid apps are in the range 0-24.
 *
 * @param poketchData:      The Poketch data to check.
 * @param appID:            The App ID to check for.
 *
 * @return TRUE if the app is registered, FALSE if not.
 */
BOOL PoketchData_CheckAppRegistered(PoketchData *poketchData, enum PoketchAppID appID);

/**
 * Registers the app with the given ID, making it accessible to the player.
 *
 * @param poketchData:      The Poketch data to check.
 * @param appID:            The ID of the app to register. This function asserts that the value is in the range [0, POKETCH_APPID_MAX).
 *
 * @return TRUE if the was successfully registered, FALSE if it was already registered.
 */
BOOL PoketchData_RegisterApp(PoketchData *poketchData, enum PoketchAppID appID);

/**
 * Gets the currently active Poketch app.
 *
 * @param poketchData:      The Poketch data to check.
 *
 * @return The ID of the current app.
 */
enum PoketchAppID PoketchData_CurrentAppID(const PoketchData *poketchData);

/**
 * Sets the current Poketch app to the next registered app, skipping unregistered App IDs and wrapping around if necessary.
 *
 * @param poketchData:      The Poketch data to update.
 *
 * @return The new current app ID.
 */
int PoketchData_IncrementAppID(PoketchData *poketchData);

/**
 * Sets the current Poketch app to the previous registered app, skipping unregistered App IDs and wrapping around if necessary.
 *
 * @param poketchData:      The Poketch data to update.
 *
 * @return The new current app ID.
 */
int PoketchData_DecrementAppID(PoketchData *poketchData);

/**
 * Gets the current Poketch's color setting.
 *
 * @param poketchData:      The Poketch data to check.
 *
 * @return The Poketch's color setting.
 */
u32 PoketchData_CurrentScreenColor(const PoketchData *poketchData);

/**
 * Sets the Poketch's color setting.
 *
 * @param poketchData:      The Poketch data to update. This function assert checks this pointer.
 * @param screenColor:      The color to set (see PoketchScreenColor enum above). This function asserts that the value is less than POKETCH_SCREEN_COLOR_MAX.
 */
void PoketchData_SetScreenColor(PoketchData *poketchData, u32 screenColor);

/**
 * Gets the Pedometer's current step count value.
 *
 * @param poketchData:      The Poketch data to check.
 *
 * @return pedometer's step count.
 */
u32  PoketchData_PedometerValue(const PoketchData *poketchData);

/**
 * Sets the Poketch's pedometer value.
 *
 * @param poketchData:      The Poketch data to update.
 * @param value:            The step value to set.
 */
void PoketchData_SetPedometerValue(PoketchData *poketchData, u32 value);

/**
 * Returns whether or not the Poketch Alarm Clock app's alarm is set.
 *
 * @param poketchData:      The Poketch data to check.
 *
 * @return TRUE if the alarm is currently set, FALSE if not.
 */
BOOL PoketchData_IsAlarmSet(const PoketchData *poketchData);

/**
 * Gets the currently stored time on the Alarm Clock app.
 *
 * @param poketchData:      The Poketch data to check.
 * @param hour:             Where the currently set hour value will be stored.
 * @param minute:           Where the currently set minute value will be stored.
 */
void PoketchData_AlarmTime(const PoketchData *poketchData, u32 *hour, u32 *minute);

/**
 * Configures all the Alarm Clock settings, including whether the alarm is set.
 *
 * @param poketchData:      The Poketch data to update.
 * @param enabled:          Whether the alarm is set. TRUE means the alarm will go off at the given hour and minute.
 * @param hour:             The hour value of the alarm clock.
 * @param minute:           The minute value of the alarm clock.
 */
void PoketchData_SetAlarm(PoketchData *poketchData, BOOL enabled, u32 hour, u32 minute);

/**
 * Marks the given date on the Calendar app as highlighted.
 *
 * @param poketchData:      The Poketch data to update.
 * @param month:            The month of the date to mark. If this month does not match the currently stored month, 
 *                          the month will update to this value and clear all marks on the calendar (except the one on the passed in day).
 * @param day:              The day of the date to mark.
 */
void PoketchData_SetCalendarMark(PoketchData *poketchData, u32 month, u32 day);

/**
 * Clears the mark on the given date on the Calendar app.
 *
 * @param poketchData:      The Poketch data to update.
 * @param month:            The month of the date to clear. If this month does not match the currently stored month, 
 *                          the month will update to this value and clear all marks on the calendar.
 * @param day:              The day of the date to clear.
 */
void PoketchData_ClearCalendarMark(PoketchData *poketchData, u32 month, u32 day);

/**
 * Checks whether the given date is currently marked on the calendar.
 *
 * @param poketchData:      The Poketch data to check.
 * @param month:            The month of the date to check.
 * @param day:              The day of the date to check.
 * 
 * @param return TRUE if the date is marked, FALSE if not. If the given month is not the currently stored month, returns FALSE.
 */
BOOL PoketchData_CalendarMarked(const PoketchData *poketchData, u32 month, u32 day);

/**
 * Sets the location of a map marker.
 *
 * @param poketchData:      The Poketch data to update.
 * @param index:            The Map Marker to set. This function asserts that the index is less than POKETCH_MAPMARKER_COUNT.
 * @param x:                The x coordinate for the map marker.
 * @param y:                The y coordinate for the map marker.
 */
void PoketchData_SetMapMarker(PoketchData *poketchData, int index, u8 x, u8 y);

/**
 * Gets the location of a map marker.
 *
 * @param poketchData:      The Poketch data to update.
 * @param index:            The Map Marker to check. This function asserts that the index is less than POKETCH_MAPMARKER_COUNT.
 * @param x:                The int where the x coordinate will be stored.
 * @param y:                The int where the y coordinate will be stored.
 */
void PoketchData_MapMarkerPos(const PoketchData *poketchData, int index, u8 *x, u8 *y);

/**
 * Checks whether or not the Dot Art data has been modified at any point. 
 * This will return FALSE until PoketchData_SetDotArtData is called, at which point it will always return TRUE.
 *
 * @param poketchData:      The Poketch data to check.
 * 
 * @return TRUE if the dot art data has been modified, FALSE if not.
 */
BOOL PoketchData_DotArtModified(const PoketchData *poketchData);

/**
 * Gets the current dot art data and copies it to the given dotArtData. This function will write 
 * POKETCH_DOTART_SIZE_BYTES bytes at this pointer.
 *
 * @param poketchData:      The Poketch data to check.
 * @param dotArtData:       The dot art data to copy into.
 */
void PoketchData_DotArtData(const PoketchData *poketchData, u8 *dotArtData);

/**
 * Updates the PoketchData's stored dotArt data and marks the Modified flag as TRUE. 
 * The function will copy POKETCH_DOTART_SIZE_BYTES bytes of data at the given pointer.
 *
 * @param poketchData:      The Poketch data to update.
 * @param dotArtData:       The dot art data to copy.
 */
void PoketchData_SetDotArtData(PoketchData *poketchData, const u8 *dotArtData);

/**
 * Adds a new Pokemon to the end of the Pokemon History list.
 *
 * @param poketchData:      The Poketch data to update.
 * @param boxPokemon:       The new Pokemon to add.
 */
void PoketchData_PokemonHistoryAddEntry(PoketchData *poketchData, const BoxPokemon *boxPokemon);

/**
 * Gets the number of pokemon in the Pokemon History.
 *
 * @param poketchData:      The Poketch data to Check.
 * 
 * @return The current size of the pokemon history.
 */
int PoketchData_PokemonHistorySize(const PoketchData *poketchData);

/**
 * Gets the species and icon info of a given index in the Pokemon History.
 *
 * @param poketchData:      The Poketch data to check.
 * @param index:            The History entry to check. This function asserts that the index is less than POKETCH_POKEMONHISTORY_MAX.
 * @param species:          The int where the pokemon's species ID will be stored.
 * @param icon:             The int where the pokemon's icon ID will be stored.
 */
void PoketchData_PokemonHistorySpeciesAndIcon(const PoketchData *poketchData, int index, int *species, int *icon);

/**
 * Gets the form info of a given index in the pokemon history.
 *
 * @param poketchData:      The Poketch data to check.
 * @param index:            The History entry to check. This function asserts that the index is less than POKETCH_POKEMONHISTORY_MAX.
 * 
 * @return The form ID of the pokemon.
 */
u32 PoketchData_PokemonHistoryForm(const PoketchData *poketchData, int index);

/**
 * Retrieves the PoketchData from the given SaveData.
 *
 * @param SaveData:         The SaveData to read from.
 *
 * @return The PoketchData.
 */
PoketchData* SaveData_PoketchData(SaveData *saveData);

#endif // POKEPLATINUM_POKETCH_DATA_H
