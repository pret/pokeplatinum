#ifndef POKEPLATINUM_OV21_021D1FA4_H
#define POKEPLATINUM_OV21_021D1FA4_H

#include <nitro/gx.h>
#include <nnsys.h>

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02006C24_decl.h"

#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D22F8.h"
#include "overlay021/struct_ov21_021D23F8.h"
#include "overlay021/struct_ov21_021D2584.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021D4EE4_decl.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "sprite_resource.h"

void ov21_021D1FA4(UnkStruct_ov21_021D13FC *param0, int param1);
void ov21_021D2098(UnkStruct_ov21_021D13FC *param0);
void ov21_021D2124(UnkStruct_ov21_021D13FC *param0);
void ov21_021D214C(UnkStruct_ov21_021D13FC *param0);
void ov21_021D2164(UnkStruct_ov21_021D13FC *param0, int param1, int param2);
Sprite *ov21_021D2170(const UnkStruct_ov21_021D13FC *param0);
void ov21_021D217C(const UnkStruct_ov21_021D13FC *param0, BOOL param1);
void ov21_021D2188(UnkStruct_ov21_021D13FC *param0, int param1, int param2, int param3, int param4, u8 param5, u32 param6, int param7, int param8, int param9);
void ov21_021D222C(UnkStruct_ov21_021D13FC *param0, int param1, int param2, int param3);
void ov21_021D2250(UnkStruct_ov21_021D13FC *param0, int *param1, int *param2, int param3);
Sprite *ov21_021D2274(const UnkStruct_ov21_021D13FC *param0, int param1);
void ov21_021D2280(const UnkStruct_ov21_021D13FC *param0, BOOL param1, int param2);
CellActor *ov21_021D22A8(const UnkStruct_ov21_021D13FC *param0);
CellActor *ov21_021D22C4(const UnkStruct_ov21_021D13FC *param0);
void ov21_021D22E0(UnkStruct_ov21_021D13FC *param0, UnkStruct_ov21_021D4CB8 *param1, int param2, int param3, u32 param4);
void ov21_021D22F8(UnkStruct_ov21_021D22F8 *param0, UnkStruct_ov21_021D4CB8 *param1, int param2, int param3, u32 param4);
SpriteResource *ov21_021D2344(const UnkStruct_ov21_021D13FC *param0, int param1);
void ov21_021D2360(const UnkStruct_ov21_021D13FC *param0, GXOamMode param1);
void ov21_021D238C(const UnkStruct_ov21_021D13FC *param0, int param1);
void ov21_021D23C0(const UnkStruct_ov21_021D13FC *param0, BOOL param1);
void ov21_021D23F8(UnkStruct_ov21_021D23F8 *param0, u8 param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8);
BOOL ov21_021D2424(UnkStruct_ov21_021D23F8 *param0);
int ov21_021D2484(UnkStruct_ov21_021D23F8 *param0);
int ov21_021D24B8(UnkStruct_ov21_021D23F8 *param0);
BOOL ov21_021D24EC(UnkStruct_ov21_021D23F8 *param0);
void ov21_021D24FC(const UnkStruct_ov21_021D13FC *param0, UnkStruct_ov21_021D23F8 *param1);
void ov21_021D251C(const UnkStruct_ov21_021D13FC *param0, UnkStruct_ov21_021D23F8 *param1, int param2);
void ov21_021D2544(const UnkStruct_ov21_021D4EE4 *param0, UnkStruct_ov21_021D13FC *param1);
void ov21_021D2574(UnkStruct_ov21_021D13FC *param0, int param1, int param2, int param3, int param4);
void ov21_021D2584(UnkStruct_ov21_021D2584 *param0, int param1);
BOOL ov21_021D25A0(UnkStruct_ov21_021D2584 *param0);
void ov21_021D25AC(UnkStruct_ov21_021D2584 *param0, BOOL param1);
void ov21_021D25B8(const UnkStruct_ov21_021D4EE4 *param0, UnkStruct_ov21_021D13FC *param1);
void ov21_021D25E8(UnkStruct_ov21_021D13FC *param0, int param1, int param2, int param3, int param4);
void ov21_021D2648(UnkStruct_ov21_021D2648 *param0, int param1, int param2, int param3, int param4, int param5);
BOOL ov21_021D2664(UnkStruct_ov21_021D2648 *param0);
NARC *ov21_021D26E0(UnkStruct_ov21_021D13FC *param0);
void *ov21_021D26E8(UnkStruct_ov21_021D13FC *param0, u32 param1, BOOL param2, u32 param3);
u32 ov21_021D2724(UnkStruct_ov21_021D13FC *param0, u32 param1, BGL *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 param7);
void ov21_021D276C(UnkStruct_ov21_021D13FC *param0, u32 param1, int param2, u32 param3, u32 param4, u32 param5);
void *ov21_021D27B8(UnkStruct_ov21_021D13FC *param0, u32 param1, BOOL param2, NNSG2dScreenData **param3, u32 param4);
void *ov21_021D27E0(UnkStruct_ov21_021D13FC *param0, u32 param1, NNSG2dPaletteData **param2, u32 param3);
void *ov21_021D2808(UnkStruct_ov21_021D13FC *param0, u32 param1, BOOL param2, NNSG2dCharacterData **param3, u32 param4);
void ov21_021D2B88(UnkStruct_ov21_021D22F8 *param0, SpriteResourceCollection **param1, int param2, NARC *param3);
void ov21_021D2C58(UnkStruct_ov21_021D22F8 *param0, SpriteResourceCollection **param1);
void ov21_021D2D88(UnkStruct_ov21_021D22F8 *param0, CellActorCollection *param1, SpriteResourceCollection **param2, int param3, int param4);
void ov21_021D2E1C(UnkStruct_ov21_021D22F8 *param0);
void ov21_021D2E44(UnkStruct_ov21_021D22F8 *param0, BOOL param1);

#endif // POKEPLATINUM_OV21_021D1FA4_H
