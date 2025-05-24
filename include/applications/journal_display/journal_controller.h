#ifndef POKEPLATINUM_JOURNAL_CONTROLLER_H
#define POKEPLATINUM_JOURNAL_CONTROLLER_H

#include "bg_window.h"
#include "journal.h"
#include "message.h"
#include "overlay_manager.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"

enum JournalState {
    JOURNAL_STATE_OPEN = 0,
    JOURNAL_STATE_HANDLE_INPUT,
    JOURNAL_STATE_TURN_LEFT,
    JOURNAL_STATE_TURN_RIGHT,
    JOURNAL_STATE_CLOSE,
};

typedef struct JournalManager {
    BgConfig *bgConfig;
    Window window[4];
    JournalEntry *journalEntry;
    TrainerInfo *trainerInfo;
    SaveData *saveData;
    MessageLoader *loader;
    StringTemplate *template;
    Strbuf *strbuf;
    u16 tilemapBuffer_5C[1024];
    u16 tilemapBuffer_85C[1024];
    s8 page;
    u8 padding_105D;
    s8 state;
    s8 unk_105F;
    s8 unk_1060;
    u8 bgLayer1;
    u8 bgLayer2;
    u8 bgLayer3;
    u8 bgLayer4;
    u8 unused[3];
} JournalManager;

int JournalController_Init(ApplicationManager *appMan, int *state);
int JournalController_Main(ApplicationManager *appMan, int *state);
int JournalController_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_JOURNAL_CONTROLLER_H
