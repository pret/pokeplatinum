#ifndef POKEPLATINUM_SPEAR_PILLAR_COMMON_H
#define POKEPLATINUM_SPEAR_PILLAR_COMMON_H

#include "cutscenes/spear_pillar/structs.h"

int SpearPillarCutscene_ShowMessage(CutsceneGraphics *graphics, SpearPillarCutsceneArgs *args, int textId);
void SpearPillarCutscene_ClearMessage(CutsceneGraphics *graphics);
void SpearPillarCutscene_InitLighting(CutsceneGraphics *graphics);
void SpearPillarCutscene_UpdateCamera(CutsceneGraphics *graphics);
void CameraPan_Start(CameraPan *cameraPan);
BOOL CameraPan_Update(CameraPan *cameraPan);
void CutsceneModel_Update(CutsceneModel *model);
void CutsceneModel_ReleaseModel(CutsceneModel *model);
void CutsceneModel_ReleaseAnim(int index, CutsceneModel *model, NNSFndAllocator *allocator);
void CutsceneModel_Release(CutsceneModel *model, NNSFndAllocator *allocator, int animCount);
void CutsceneModel_LoadMesh(CutsceneModel *model, int narcMemberIndex, NARC *narc);
void CutsceneModel_CloneMesh(CutsceneModel *source, CutsceneModel *model, int narcMemberIndex, NARC *narc);
void CutsceneModel_LoadAnim(int index, CutsceneModel *model, int narcMemberIndex, NARC *narc, NNSFndAllocator *allocator);
void CutsceneModel_CloneAnim(int index, CutsceneModel *source, CutsceneModel *model, int narcMemberIndex, NARC *narc, NNSFndAllocator *allocator);
void SpearPillarCutscene_UpdateBackgroundPulse(CutsceneGraphics *graphics);
void SpearPillarCutscene_UpdateGuardianFlash(CutsceneGraphics *graphics, int guardianIndex);
void SpearPillarCutscene_SwapDisplay(int screenIs3D);
void SpearPillarCutscene_SetBrightness(SpearPillarCutsceneData *cutscene, int brightness);

#endif // POKEPLATINUM_SPEAR_PILLAR_COMMON_H
