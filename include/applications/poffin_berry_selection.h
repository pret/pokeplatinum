#ifndef POKEPLATINUM_POFFIN_BERRY_SELECTION_H
#define POKEPLATINUM_POFFIN_BERRY_SELECTION_H

#include "bag.h"
#include "game_options.h"
#include "journal.h"
#include "overlay_manager.h"
#include "poffin.h"
#include "savedata.h"
#include "trainer_info.h"

enum {
    MAIN_STATE_GET_BERRY_SELECTION,
    MAIN_STATE_LOAD_POFFIN_COOKING_APP,
    MAIN_STATE_RUN_POFFIN_COOKING_APP,
    MAIN_STATE_END,
    MAIN_STATE_EXIT,
};

enum {
    SUB_STATE_LOAD_BAG_APP,
    SUB_STATE_RUN_BAG_APP,
    SUB_STATE_LOAD_BERRY_TAG_APP,
    SUB_STATE_RUN_BERRY_TAG_APP,
    SUB_STATE_LOAD_POFFIN_COOKING_APP,
    SUB_STATE_EXIT,
};

typedef struct PoffinBerrySelectionContext {
    int unused;
    int isInGroup;
    PoffinCase *poffinCase;
    SaveData *saveData;
    TrainerInfo *trainerInfo;
    Bag *bag;
    Options *options;
    JournalEntry *journalEntry;
    BOOL unk_20;
    BOOL voiceChat;
} PoffinBerrySelectionContext;

typedef struct PoffinBerrySelectionData {
    enum HeapID heapID;
    u16 unk_04;
    u16 isInGroup : 8; // yes, it needs to be as such to match
    u16 unused2 : 8;
    int item;
    BagCursor *bagCursor;
    PoffinBerrySelectionContext *ctx;
    int subState;
    void *buffer;
    ApplicationManager *appMan;
    BOOL unk_20;
    s16 unk_24;
    u8 unk_26;
    u8 voiceChat;
} PoffinBerrySelectionData;

BOOL PoffinBerrySelection_RunSubApplication(ApplicationManager **appManPtr);
BOOL PoffinBerrySelection_Init(ApplicationManager *appMan, int *state);
BOOL PoffinBerrySelection_Main(ApplicationManager *appMan, int *state);
BOOL PoffinBerrySelection_Exit(ApplicationManager *appMan, int *state);
int PoffinBerrySelection_GetBerrySelection(PoffinBerrySelectionData *data, int *subState);
int PoffinBerrySelection_LoadPoffinCookingApp(PoffinBerrySelectionData *data, int *subState);
int PoffinBerrySelection_RunPoffinCookingApp(PoffinBerrySelectionData *data, int *subState);
int PoffinBerrySelection_End(PoffinBerrySelectionData *data, int *subState);

#endif // POKEPLATINUM_POFFIN_BERRY_SELECTION_H
