#ifndef POKEPLATINUM_OV25_02254560_H
#define POKEPLATINUM_OV25_02254560_H

#include <nnsys.h>

#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_02254560_1.h"
#include "overlay025/struct_ov25_02254560_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"

#include "bg_window.h"

BOOL ov25_02254560(UnkStruct_ov25_02254560 **param0, const UnkStruct_ov25_02254560_1 *param1, NNSG2dOamManagerInstance *param2, PoketchSystem *poketchSys);
UnkStruct_ov25_022555E8 *ov25_02254664(void);
BgConfig *Poketch_GetBgConfig(void);
void Poketch_LoadActivePalette(u32 bgOffset, u32 objOffset);
void Poketch_LoadActiveBacklightPalette(u32 unused_1, u32 unused_2);
void Poketch_CopyActivePalette(u16 *dest);
void ov25_02254754(UnkStruct_ov25_02254560 *param0);
void ov25_022547D0(UnkStruct_ov25_02254560 *param0, u32 param1);
BOOL ov25_022547F4(UnkStruct_ov25_02254560 *param0, u32 param1);
BOOL ov25_02254800(UnkStruct_ov25_02254560 *param0);

#endif // POKEPLATINUM_OV25_02254560_H
