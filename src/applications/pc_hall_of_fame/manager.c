#include "applications/pc_hall_of_fame/manager.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "overlay_manager.h"
#include "string_gf.h"
#include "system.h"

static void PCHallOfFame_HandleTransition(PCHallOfFameMan *pcHallOfFameMan, int transition);
static BOOL PCHallOfFame_LoadLeftEntry(PCHallOfFameMan *pcHallOfFameMan);
static BOOL PCHallOfFame_LoadRightEntry(PCHallOfFameMan *pcHallOfFameMan);
static void PCHallOfFame_LoadFirstEntry(PCHallOfFameScreen *pcHallOfFameScreen, HallOfFame *hallOfFame);
static void PCHallOfFame_FreeNames(PCHallOfFameScreen *pcHallOfFameScreen);
static void PCHallOfFame_LoadEntry(PCHallOfFameScreen *pcHallOfFameScreen, HallOfFame *hallOfFame, int entryIndex);

BOOL PCHallOfFameManager_Init(ApplicationManager *appMan, int *state)
{
    PCHallOfFameMan *pcHallOfFameMan;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_60, 16384);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_PC_HALL_OF_FAME, 114688);

    pcHallOfFameMan = ApplicationManager_NewData(appMan, sizeof(PCHallOfFameMan), HEAP_ID_60);

    if (pcHallOfFameMan) {
        pcHallOfFameMan->hallOfFame = ApplicationManager_Args(appMan);
        pcHallOfFameMan->entryIndex = 0;
        pcHallOfFameMan->storedEntriesCount = HallOfFame_GetStoredEntriesCount(pcHallOfFameMan->hallOfFame);

        PCHallOfFame_LoadFirstEntry(&(pcHallOfFameMan->pcHallOfFameScreen), pcHallOfFameMan->hallOfFame);

        pcHallOfFameMan->pcHallOfFameApp = PCHallOfFame_InitApp(pcHallOfFameMan, &(pcHallOfFameMan->pcHallOfFameScreen));
        pcHallOfFameMan->isTransitioning = PCHallOfFame_DoTransition(pcHallOfFameMan->pcHallOfFameApp, PC_HALL_OF_FAME_TRANSITION_OPEN);
    }

    return TRUE;
}

BOOL PCHallOfFameManager_Exit(ApplicationManager *appMan, int *state)
{
    PCHallOfFameMan *pcHallOfFameMan = ApplicationManager_Data(appMan);

    PCHallOfFame_FreeApp(pcHallOfFameMan->pcHallOfFameApp);
    PCHallOfFame_FreeNames(&(pcHallOfFameMan->pcHallOfFameScreen));
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_PC_HALL_OF_FAME);
    Heap_Destroy(HEAP_ID_60);

    return TRUE;
}

BOOL PCHallOfFameManager_Main(ApplicationManager *appMan, int *state)
{
    PCHallOfFameMan *pcHallOfFameMan = ApplicationManager_Data(appMan);

    if (pcHallOfFameMan->isTransitioning) {
        if (PCHallOfFame_IsTransitionDone(pcHallOfFameMan->pcHallOfFameApp) == FALSE) {
            return FALSE;
        }

        pcHallOfFameMan->isTransitioning = FALSE;
    }

    switch (*state) {
    case 0:
        if (gSystem.pressedKeys & PAD_BUTTON_B) {
            PCHallOfFame_HandleTransition(pcHallOfFameMan, PC_HALL_OF_FAME_TRANSITION_CLOSE);
            (*state)++;
            break;
        }

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            pcHallOfFameMan->pcHallOfFameScreen.textState ^= 1;
            PCHallOfFame_HandleTransition(pcHallOfFameMan, PC_HALL_OF_FAME_TRANSITION_CHANGE_TEXT);
            break;
        }

        if (gSystem.pressedKeys & PAD_KEY_LEFT) {
            if (PCHallOfFame_LoadLeftEntry(pcHallOfFameMan)) {
                PCHallOfFame_HandleTransition(pcHallOfFameMan, PC_HALL_OF_FAME_TRANSITION_CHANGE_ENTRY);
            }
            break;
        }

        if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
            if (PCHallOfFame_LoadRightEntry(pcHallOfFameMan)) {
                PCHallOfFame_HandleTransition(pcHallOfFameMan, PC_HALL_OF_FAME_TRANSITION_CHANGE_ENTRY);
            }
            break;
        }

        if (gSystem.pressedKeys & PAD_KEY_UP) {
            if (--(pcHallOfFameMan->pcHallOfFameScreen.pokemonIndex) < 0) {
                if (PCHallOfFame_LoadLeftEntry(pcHallOfFameMan)) {
                    pcHallOfFameMan->pcHallOfFameScreen.pokemonIndex = pcHallOfFameMan->pcHallOfFameScreen.pokemonCount - 1;
                    PCHallOfFame_HandleTransition(pcHallOfFameMan, PC_HALL_OF_FAME_TRANSITION_CHANGE_ENTRY);
                }
            } else {
                PCHallOfFame_HandleTransition(pcHallOfFameMan, PC_HALL_OF_FAME_TRANSITION_CHANGE_POKEMON);
            }
            break;
        }

        if (gSystem.pressedKeys & PAD_KEY_DOWN) {
            if (++(pcHallOfFameMan->pcHallOfFameScreen.pokemonIndex) >= pcHallOfFameMan->pcHallOfFameScreen.pokemonCount) {
                if (PCHallOfFame_LoadRightEntry(pcHallOfFameMan)) {
                    PCHallOfFame_HandleTransition(pcHallOfFameMan, PC_HALL_OF_FAME_TRANSITION_CHANGE_ENTRY);
                }
            } else {
                PCHallOfFame_HandleTransition(pcHallOfFameMan, PC_HALL_OF_FAME_TRANSITION_CHANGE_POKEMON);
            }
            break;
        }
        break;
    case 1:
        return TRUE;
    }

    return FALSE;
}

static void PCHallOfFame_HandleTransition(PCHallOfFameMan *pcHallOfFameMan, int transition)
{
    pcHallOfFameMan->isTransitioning = PCHallOfFame_DoTransition(pcHallOfFameMan->pcHallOfFameApp, transition);
}

static BOOL PCHallOfFame_LoadLeftEntry(PCHallOfFameMan *pcHallOfFameMan)
{
    if (++(pcHallOfFameMan->entryIndex) >= pcHallOfFameMan->storedEntriesCount) {
        pcHallOfFameMan->entryIndex = 0;
    }

    PCHallOfFame_LoadEntry(&(pcHallOfFameMan->pcHallOfFameScreen), pcHallOfFameMan->hallOfFame, pcHallOfFameMan->entryIndex);

    return TRUE;
}

static BOOL PCHallOfFame_LoadRightEntry(PCHallOfFameMan *pcHallOfFameMan)
{
    if (--(pcHallOfFameMan->entryIndex) < 0) {
        pcHallOfFameMan->entryIndex = pcHallOfFameMan->storedEntriesCount - 1;
    }

    PCHallOfFame_LoadEntry(&(pcHallOfFameMan->pcHallOfFameScreen), pcHallOfFameMan->hallOfFame, pcHallOfFameMan->entryIndex);

    return TRUE;
}

static void PCHallOfFame_LoadFirstEntry(PCHallOfFameScreen *pcHallOfFameScreen, HallOfFame *hallOfFame)
{
    int i;

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        pcHallOfFameScreen->pokemon[i].nickname = String_Init(MON_NAME_LEN + 2, HEAP_ID_60);
        pcHallOfFameScreen->pokemon[i].OTName = String_Init(TRAINER_NAME_LEN + 1, HEAP_ID_60);
    }

    pcHallOfFameScreen->textState = PC_HALL_OF_FAME_TEXT_GENERAL;

    PCHallOfFame_LoadEntry(pcHallOfFameScreen, hallOfFame, 0);
}

static void PCHallOfFame_FreeNames(PCHallOfFameScreen *pcHallOfFameScreen)
{
    int i;

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        String_Free(pcHallOfFameScreen->pokemon[i].nickname);
        String_Free(pcHallOfFameScreen->pokemon[i].OTName);
    }
}

static void PCHallOfFame_LoadEntry(PCHallOfFameScreen *pcHallOfFameScreen, HallOfFame *hallOfFame, int entryIndex)
{
    int i;

    pcHallOfFameScreen->entryNum = HallOfFame_GetEntryNum(hallOfFame, entryIndex);
    pcHallOfFameScreen->pokemonCount = HallOfFame_GetEntryPokemonCount(hallOfFame, entryIndex);

    HallOfFame_GetEntryDate(hallOfFame, entryIndex, &(pcHallOfFameScreen->date));

    for (i = 0; i < pcHallOfFameScreen->pokemonCount; i++) {
        HallOfFame_GetEntryPokemonData(hallOfFame, entryIndex, i, &(pcHallOfFameScreen->pokemon[i]));
    }

    pcHallOfFameScreen->pokemonIndex = 0;
}
