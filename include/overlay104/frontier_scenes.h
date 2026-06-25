#ifndef POKEPLATINUM_FRONTIER_SCENES_H
#define POKEPLATINUM_FRONTIER_SCENES_H

#include "constants/battle_frontier.h"

#include "overlay104/frontier_graphics.h"

enum FrontierSceneParam {
    FR_SCENE_BGMODE = 0,
    FR_SCENE_SCRIPT_ID,
    FR_SCENE_BANK_ID,
    FR_SCENE_BGM_ID,
    FR_SCENE_SCREEN_SIZE,
    FR_SCENE_NARC_ID,
    FR_SCENE_TILEMAP_IDX,
    FR_SCENE_TILES_IDX,
    FR_SCENE_PLTT_IDX,
    FR_SCENE_SUB_TILEMAP_IDX,
    FR_SCENE_SUB_TILES_IDX,
    FR_SCENE_SUB_PLTT_IDX,
    FR_SCENE_FLAG_1,
    FR_SCENE_FLAG_2,
};

int FrontierScene_GetParam(enum BattleFrontierScene sceneID, enum FrontierSceneParam sceneParam);
void FrontierScene_CallSetupFunc(FrontierGraphics *graphics, void **sceneData, enum BattleFrontierScene sceneID);
void FrontierScene_CallDestroyFunc(FrontierGraphics *graphics, void **sceneData, enum BattleFrontierScene sceneID);

#endif // POKEPLATINUM_FRONTIER_SCENES_H
