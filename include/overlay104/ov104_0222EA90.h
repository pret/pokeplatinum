#ifndef POKEPLATINUM_OV104_0222EA90_H
#define POKEPLATINUM_OV104_0222EA90_H

#include "overlay104/struct_ov104_0223C4CC_decl.h"

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

int GetFrontierSceneValue(int scene, enum FrontierSceneParam sceneParam);
void ov104_0222EB8C(UnkStruct_ov104_0223C4CC *param0, void **param1, int param2);
void ov104_0222EBA4(UnkStruct_ov104_0223C4CC *param0, void **param1, int param2);

#endif // POKEPLATINUM_OV104_0222EA90_H
