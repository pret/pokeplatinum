#ifndef POKEPLATINUM_OV5_021E1D20_H
#define POKEPLATINUM_OV5_021E1D20_H

#include "field/field_system.h"

#include "bg_window.h"
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

// ravetodo: SaveInfoWindow
typedef struct UnkStruct_ov5_021E1FF4 {
    FieldSystem *fieldSystem;
    int heapID;
    u8 bgLayer;
    BgConfig *bgConfig;
    Window *window;
    StringTemplate *strTemplate;
    MessageLoader *msgLoader;
    SaveInfo saveInfo;
    int width;
    int height;
} UnkStruct_ov5_021E1FF4;

void ov5_021E1F04(UnkStruct_ov5_021E1FF4 *saveInfoWin);
void ov5_021E1F7C(UnkStruct_ov5_021E1FF4 *saveInfoWin);
UnkStruct_ov5_021E1FF4 *ov5_021E1F98(FieldSystem *fieldSystem, int heapID, u8 bgLayer);
void ov5_021E1FF4(UnkStruct_ov5_021E1FF4 *saveInfoWin);
BOOL ov5_021E200C(FieldSystem *fieldSystem);
void ov5_021E2064(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_OV5_021E1D20_H
