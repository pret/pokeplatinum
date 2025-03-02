#ifndef POKEPLATINUM_STRUCT_OV97_0223635C_H
#define POKEPLATINUM_STRUCT_OV97_0223635C_H

#include "constants/gba/global.h"

// These fields are present at the beginning of RSE's and FRLG's SaveBlock2
typedef struct {
    u8 playerName[GBA_PLAYER_NAME_LEN + 1];
    u8 playerGender;
    u8 specialSaveWarpFlags;
    u8 playerTrainerId[GBA_TRAINER_ID_LEN];
    u16 playTimeHours;
    u8 playTimeMinutes;
    u8 playTimeSeconds;
    u8 playTimeVBlanks;
    u8 optionsButtonMode;
    u16 optionsTextSpeed : 3;
    u16 optionsWindowFrameType : 5;
    u16 optionsSound : 1;
    u16 optionsBattleStyle : 1;
    u16 optionsBattleSceneOff : 1;
    u16 regionMapZoom : 1;
    u16 padding : 4;
} GBASaveBlock2;

#endif // POKEPLATINUM_STRUCT_OV97_0223635C_H
