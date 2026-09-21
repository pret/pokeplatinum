#ifndef POKEPLATINUM_OV100_021D46C8_H
#define POKEPLATINUM_OV100_021D46C8_H

#include <nnsys.h>

#include "struct_defs/struct_020985E4.h"

#include "overlay100/struct_ov100_021D46C8.h"
#include "overlay100/struct_ov100_021D4890.h"
#include "overlay100/struct_ov100_021D49B4.h"
#include "overlay100/struct_ov100_021D4DD8.h"

#include "narc.h"

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

#endif // POKEPLATINUM_OV100_021D46C8_H
