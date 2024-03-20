#ifndef POKEPLATINUM_UNK_02056720_H
#define POKEPLATINUM_UNK_02056720_H

#include "struct_decls/struct_02056B24_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_021C0794_decl.h"

#define POKETCH_SCREEN_COLOR_GREEN      0
#define POKETCH_SCREEN_COLOR_YELLOW     1
#define POKETCH_SCREEN_COLOR_ORANGE     2
#define POKETCH_SCREEN_COLOR_RED        3
#define POKETCH_SCREEN_COLOR_PURPLE     4
#define POKETCH_SCREEN_COLOR_BLUE       5
#define POKETCH_SCREEN_COLOR_TEAL       6
#define POKETCH_SCREEN_COLOR_WHITE      7

/*
 * Returns the size of the PoketchData object.
 *
 * @returns: size of the PoketchData object.
 */
int Poketch_SaveSize(void);

/*
 * Initializes the given PoketchData object.
 *
 * @param heapID:           The PoketchData to initialize.
 */
void Poketch_Init(PoketchData * poketchData);


void sub_020567D0(PoketchData * poketchData);


BOOL sub_020567E0(PoketchData * poketchData);

/*
 * Whether or not the given AppID is already registered in the Poketch.
 * Valid apps are in the range 0-24.
 *
 * @param poketchData:      The Poketch data to check.
 * @param appID:            the App ID to check for.
 *
 * @returns: TRUE if the app is registered, FALSE if not.
 */
BOOL PoketchData_CheckAppRegistered(PoketchData * poketchData, int appID);

/*
 * Registers the app with the given ID, making it accessible to the player.
 *
 * @param poketchData:      The Poketch data to check.
 * @param appID:            the ID of the app to register. This function asserts that appID is less than 25.
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
 * Sets the current Poketch app to the next registered app (ie. if on index 3 and the next registered index is 12, the value will be set to 12).
 *
 * @param poketchData:      The Poketch data to update.
 *
 * @returns: The new current app ID.
 */
int PoketchData_IncrementAppID(PoketchData * poketchData);

/*
 * Sets the current Poketch app to the previous registered app (ie. if on app 12 and the previous registered app is 3, the value will be set to 3).
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
 * @param screenColor:      The color to set (see defines in poketch_data.h). This function asserts that the value is 8 or less.
 */
void PoketchData_SetScreenColor(PoketchData * poketchData, u32 screenColor);


u32  sub_020568C8(const PoketchData * poketchData);


void sub_020568CC(PoketchData * poketchData, u32 param1);


BOOL PoketchData_IsAlarmSet(const PoketchData * poketchData);


void PoketchData_GetAlarmTime(const PoketchData * poketchData, u32 * hour, u32 * minute);


void PoketchData_SetAlarm(PoketchData * poketchData, BOOL enabled, u32 hour, u32 minute);


void sub_02056934(PoketchData * poketchData, u32 param1, u32 param2);


void sub_02056970(PoketchData * poketchData, u32 param1, u32 param2);


BOOL sub_020569A8(const PoketchData * poketchData, u32 param1, u32 param2);


void PoketchData_SetMapMarker(PoketchData * poketchData, int index, u8 x, u8 y);


void PoketchData_GetMapMarkerPos(const PoketchData * poketchData, int index, u8 * x, u8 * y);


BOOL sub_02056A10(const PoketchData * poketchData);


void sub_02056A18(const PoketchData * poketchData, u8 * param1);


void sub_02056A2C(PoketchData * poketchData, const u8 * param1);


void sub_02056A48(PoketchData * poketchData, const BoxPokemon * param1);


int sub_02056AAC(const PoketchData * poketchData);


void sub_02056AC8(const PoketchData * poketchData, int param1, int * param2, int * param3);


u32 sub_02056AFC(const PoketchData * poketchData, int param1);


PoketchData * sub_02056B24(SaveData * saveData);

#endif // POKEPLATINUM_UNK_02056720_H
