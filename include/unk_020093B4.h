#ifndef POKEPLATINUM_UNK_020093B4_H
#define POKEPLATINUM_UNK_020093B4_H

#include <nitro/gx.h>

#include "cell_actor.h"
#include "sprite_renderer.h"
#include "sprite_resource.h"

void CellActorResourceData_Init(CellActorResourceData *param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, SpriteResourceCollection *param9, SpriteResourceCollection *param10, SpriteResourceCollection *param11, SpriteResourceCollection *param12, SpriteResourceCollection *param13, SpriteResourceCollection *param14);
void sub_020094F0(CellActorResourceData *param0);
CellActorResourceDataList *CellActorResourceDataList_FromTemplate(const SpriteTemplateTableEntry *param0, int param1, SpriteResourceCollection *param2, SpriteResourceCollection *param3, SpriteResourceCollection *param4, SpriteResourceCollection *param5, SpriteResourceCollection *param6, SpriteResourceCollection *param7);
void sub_020095A8(CellActorResourceDataList *param0);
CellActorCollection *sub_020095C4(int param0, GF_G2dRenderer *param1, int param2);
void sub_0200962C(GF_G2dRenderer *param0, fx32 param1, fx32 param2);
void sub_0200964C(GF_G2dRenderer *param0, fx32 param1, fx32 param2);
void sub_0200966C(u32 param0, GXOBJVRamModeChar param1);
void sub_02009704(u32 param0);

#endif // POKEPLATINUM_UNK_020093B4_H
