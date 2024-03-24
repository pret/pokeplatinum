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
    POKETCH_MAPMARKER_COUNT = 6,
    POKETCH_REGISTRY_SIZE = 32
};

/**
 * @brief All of the Poketch's internally tracked data including settings, registered apps, and the data for some apps (eg. pedometer, alarm clock).
 */
typedef struct PoketchData {
    u8 unk_00_0 : 1;
    u8 pedometerEnabled : 1;    //!< Whether or not the pedometer is registered and will take step count updates.
    u8 unk_00_2 : 1;
    u8 screenColor : 3;         //!< Screen palette color (see PoketchScreenColor enum above)
    u8 unk_00_6 : 2;            //!< unused; bitfield padding

    s8 appCount;                                //!< Number of currently registered apps
    s8 appIndex;                                //!< Currently selected app
    u8 appRegistry[POKETCH_REGISTRY_SIZE];      //!< Registration status of all apps. Indices 0-24 correspond to the App IDs in poketch_data.h. Indices 25-31 are unused.
    
    u32 pedometer;         //!< Step counter

    u16 alarmSet : 1;      //!< Whether or not the alarm is currently enabled.
    u16 alarmHour : 5;     //!< Current Hour setting on the alarm clock.
    u16 alarmMinute : 6;   //!< Current Minute setting on the alarm clock.
    u16 unk_28_12 : 4;     //!< unused; bitfield padding

    u8 unk_2A[120];

    u32 calendarMarkBitmap;     //!< Bitmap for every day in the calendar month and whether it's been marked
    u8 calendarMonth;      //!< Current calendar month

    /**
    * @brief XY coordinates of a single Map Marker in the Marking Map app
    */
    struct {
        u8 x;                                       //!< X coordinate of map marker
        u8 y;                                       //!< Y coordinate of map marker
    } markMapPositions[POKETCH_MAPMARKER_COUNT];    //!< Map markers

    struct {
        u16 unk_00;
        u16 unk_02;
        u32 unk_04;
    } unk_B8[12];
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

void sub_020567D0(PoketchData *poketchData);
BOOL sub_020567E0(PoketchData *poketchData);

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

BOOL sub_02056A10(const PoketchData *poketchData);
void sub_02056A18(const PoketchData *poketchData, u8 *param1);
void sub_02056A2C(PoketchData *poketchData, const u8 *param1);
void sub_02056A48(PoketchData *poketchData, const BoxPokemon *param1);
int sub_02056AAC(const PoketchData *poketchData);
void sub_02056AC8(const PoketchData *poketchData, int param1, int *param2, int *param3);
u32 sub_02056AFC(const PoketchData *poketchData, int param1);

/**
 * Retrieves the PoketchData from the given SaveData.
 *
 * @param SaveData:         The SaveData to read from.
 *
 * @return The PoketchData.
 */
PoketchData* SaveData_PoketchData(SaveData *saveData);

#endif // POKEPLATINUM_POKETCH_DATA_H
