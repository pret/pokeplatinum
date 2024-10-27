#ifndef POKEPLATINUM_SAVE_INFO_WINDOW_H
#define POKEPLATINUM_SAVE_INFO_WINDOW_H

#include "field/field_system.h"

#include "bg_window.h"
#include "heap.h"
#include "message.h"
#include "play_time.h"
#include "string_template.h"
#include "trainer_info.h"

enum SaveInfoText {
    SAVE_INFO_LABEL_MAP_NAME,
    SAVE_INFO_LABEL_PLAYER_NAME,
    SAVE_INFO_LABEL_BADGE_COUNT,
    SAVE_INFO_LABEL_POKEDEX_COUNT,
    SAVE_INFO_LABEL_PLAY_TIME,
    SAVE_INFO_PLAYER_NAME,
    SAVE_INFO_BADGE_COUNT,
    SAVE_INFO_POKEDEX_COUNT,
    SAVE_INFO_PLAY_TIME,
};

#define SAVE_INFO_WINDOW_WIDTH  13
#define SAVE_INFO_WINDOW_HEIGHT 10

typedef struct SaveInfo {
    int pokedexCount;
    int mapLabelTextID;
    TrainerInfo *trainerInfo;
    PlayTime *playTime;
} SaveInfo;

typedef struct SaveInfoWindow {
    FieldSystem *fieldSystem;
    enum HeapId heapID;
    u8 bgLayer;
    BgConfig *bgConfig;
    Window *window;
    StringTemplate *strTemplate;
    MessageLoader *msgLoader;
    SaveInfo saveInfo;
    int width;
    int height;
} SaveInfoWindow;

void SaveInfoWindow_Draw(SaveInfoWindow *saveInfoWin);
void SaveInfoWindow_Erase(SaveInfoWindow *saveInfoWin);
SaveInfoWindow *SaveInfoWindow_New(FieldSystem *fieldSystem, enum HeapId heapID, u8 bgLayer);
void SaveInfoWindow_Free(SaveInfoWindow *saveInfoWin);
BOOL FieldSystem_Save(FieldSystem *fieldSystem);
void FieldSystem_SaveStateIfCommunicationOff(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_SAVE_INFO_WINDOW_H
