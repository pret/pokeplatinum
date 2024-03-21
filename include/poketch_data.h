#ifndef POKEPLATINUM_UNK_02056720_H
#define POKEPLATINUM_UNK_02056720_H

#include "struct_decls/struct_02056B24_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_021C0794_decl.h"

/* Poketch Screen colors, used in PoketchData_SetScreenColor */
#define POKETCH_SCREEN_COLOR_GREEN      0
#define POKETCH_SCREEN_COLOR_YELLOW     1
#define POKETCH_SCREEN_COLOR_ORANGE     2
#define POKETCH_SCREEN_COLOR_RED        3
#define POKETCH_SCREEN_COLOR_PURPLE     4
#define POKETCH_SCREEN_COLOR_BLUE       5
#define POKETCH_SCREEN_COLOR_TEAL       6
#define POKETCH_SCREEN_COLOR_WHITE      7
#define POKETCH_SCREEN_COLOR_MAX        8

/* Poketch app IDs. */
#define POKETCH_APPID_DIGITALWATCH          0
#define POKETCH_APPID_CALCULATOR            1
#define POKETCH_APPID_MEMOPAD               2
#define POKETCH_APPID_PEDOMETER             3
#define POKETCH_APPID_PARTYSTATUS           4
#define POKETCH_APPID_FRIENDSHIPCHECKER     5
#define POKETCH_APPID_DOWSINGMACHINE        6
#define POKETCH_APPID_BERRYSEARCHER         7
#define POKETCH_APPID_DAYCARECHECKER        8
#define POKETCH_APPID_POKEMONHISTORY        9
#define POKETCH_APPID_COUNTER               10
#define POKETCH_APPID_ANALOGWATCH           11
#define POKETCH_APPID_MARKINGMAP            12
#define POKETCH_APPID_LINKSEARCHER          13
#define POKETCH_APPID_COINTOSS              14
#define POKETCH_APPID_MOVETESTER            15
#define POKETCH_APPID_CALENDAR              16
#define POKETCH_APPID_DOTART                17
#define POKETCH_APPID_ROULETTE              18
#define POKETCH_APPID_RADARCHAINCOUNTER     19
#define POKETCH_APPID_KITCHENTIMER          20
#define POKETCH_APPID_COLORCHANGER          21
#define POKETCH_APPID_MATCHUPCHECKER        22
#define POKETCH_APPID_STOPWATCH             23
#define POKETCH_APPID_ALARMCLOCK            24
#define POKETCH_APPID_MAX                   25

/* Max number of Map Markers. */
#define POKETCH_MAPMARKER_COUNT             6

/*
 * Returns the size of the PoketchData object.
 *
 * @returns: the size of the PoketchData object.
 */
int Poketch_SaveSize(void);

/*
 * Initializes the given PoketchData object.
 *
 * @param poketchData:      The PoketchData to initialize.
 */
void Poketch_Init(PoketchData * poketchData);

void sub_020567D0(PoketchData * poketchData);
BOOL sub_020567E0(PoketchData * poketchData);

/*
 * Checks whether or not the given AppID is already registered in the Poketch.
 * Valid apps are in the range 0-24.
 *
 * @param poketchData:      The Poketch data to check.
 * @param appID:            The App ID to check for.
 *
 * @returns: TRUE if the app is registered, FALSE if not.
 */
BOOL PoketchData_CheckAppRegistered(PoketchData * poketchData, int appID);

/*
 * Registers the app with the given ID, making it accessible to the player.
 *
 * @param poketchData:      The Poketch data to check.
 * @param appID:            The ID of the app to register (see defines above). This function asserts that the value is less than POKETCH_APPID_MAX.
 *
 * @returns: TRUE if the was successfully registered, FALSE if it was already registered.
 */
BOOL PoketchData_RegisterApp(PoketchData * poketchData, int appID);

/*
 * Gets the currently active Poketch app.
 *
 * @param poketchData:      The Poketch data to check.
 *
 * @returns: The index of the current app.
 */
int PoketchData_GetCurrentAppID(const PoketchData * poketchData);

/*
 * Sets the current Poketch app to the next registered app, skipping unregistered App IDs and wrapping around if necessary.
 *
 * @param poketchData:      The Poketch data to update.
 *
 * @returns: The new current app ID.
 */
int PoketchData_IncrementAppID(PoketchData * poketchData);

/*
 * Sets the current Poketch app to the previous registered app, skipping unregistered App IDs and wrapping around if necessary.
 *
 * @param poketchData:      The Poketch data to update.
 *
 * @returns: The new current app ID.
 */
int PoketchData_DecrementAppID(PoketchData * poketchData);

/*
 * Gets the current Poketch's color setting.
 *
 * @param poketchData:      The Poketch data to check.
 *
 * @returns: The Poketch's color setting.
 */
u32 PoketchData_GetCurrentScreenColor(const PoketchData * poketchData);

/*
 * Sets the Poketch's color setting.
 *
 * @param poketchData:      The Poketch data to update. This function assert checks this pointer.
 * @param screenColor:      The color to set (see defines above). This function asserts that the value is less than POKETCH_SCREEN_COLOR_MAX.
 */
void PoketchData_SetScreenColor(PoketchData * poketchData, u32 screenColor);

/*
 * Gets the Pedometer's current step count value.
 *
 * @param poketchData:      The Poketch data to check.
 *
 * @returns: pedometer's step count.
 */
u32  PoketchData_GetPedometerValue(const PoketchData * poketchData);

/*
 * Sets the Poketch's pedometer value.
 *
 * @param poketchData:      The Poketch data to update.
 * @param value:            The step value to set.
 */
void PoketchData_SetPedometerValue(PoketchData * poketchData, u32 value);

/*
 * Returns whether or not the Poketch Alarm Clock app's alarm is set.
 *
 * @param poketchData:      The Poketch data to check.
 *
 * @returns: TRUE if the alarm is currently set, FALSE if not.
 */
BOOL PoketchData_IsAlarmSet(const PoketchData * poketchData);

/*
 * Gets the currently stored time on the Alarm Clock app.
 *
 * @param poketchData:      The Poketch data to check.
 * @param hour:             Where the currently set hour value will be stored.
 * @param minute:           Where the currently set minute value will be stored.
 */
void PoketchData_GetAlarmTime(const PoketchData * poketchData, u32 * hour, u32 * minute);

/*
 * Configures all the Alarm Clock settings, including whether the alarm is set.
 *
 * @param poketchData:      The Poketch data to update.
 * @param enabled:          Whether the alarm is set. TRUE means the alarm will go off at the given hour and minute.
 * @param hour:             The hour value of the alarm clock.
 * @param minute:           The minute value of the alarm clock.
 */
void PoketchData_SetAlarm(PoketchData * poketchData, BOOL enabled, u32 hour, u32 minute);

void sub_02056934(PoketchData * poketchData, u32 param1, u32 param2);
void sub_02056970(PoketchData * poketchData, u32 param1, u32 param2);
BOOL sub_020569A8(const PoketchData * poketchData, u32 param1, u32 param2);

/*
 * Sets the location of a map marker.
 *
 * @param poketchData:      The Poketch data to update.
 * @param index:            The Map Marker to set. This function asserts that the index is less than POKETCH_MAPMARKER_COUNT.
 * @param x:                The x coordinate for the map marker.
 * @param y:                The y coordinate for the map marker.
 */
void PoketchData_SetMapMarker(PoketchData * poketchData, int index, u8 x, u8 y);

/*
 * Gets the location of a map marker.
 *
 * @param poketchData:      The Poketch data to update.
 * @param index:            The Map Marker to check. This function asserts that the index is less than POKETCH_MAPMARKER_COUNT.
 * @param x:                The int where the x coordinate will be stored.
 * @param y:                The int where the y coordinate will be stored.
 */
void PoketchData_GetMapMarkerPos(const PoketchData * poketchData, int index, u8 * x, u8 * y);

BOOL sub_02056A10(const PoketchData * poketchData);
void sub_02056A18(const PoketchData * poketchData, u8 * param1);
void sub_02056A2C(PoketchData * poketchData, const u8 * param1);
void sub_02056A48(PoketchData * poketchData, const BoxPokemon * param1);
int sub_02056AAC(const PoketchData * poketchData);
void sub_02056AC8(const PoketchData * poketchData, int param1, int * param2, int * param3);
u32 sub_02056AFC(const PoketchData * poketchData, int param1);

/*
 * Retrieves the PoketchData from the given SaveData.
 *
 * @param SaveData:         The SaveData to read from.
 *
 * @returns: The PoketchData.
 */
PoketchData * SaveData_GetPoketchData(SaveData * saveData);

#endif // POKEPLATINUM_UNK_02056720_H
