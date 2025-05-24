#ifndef POKEPLATINUM_OV95_02246C20_H
#define POKEPLATINUM_OV95_02246C20_H

#include <nnsys.h>

#include "overlay095/struct_ov95_02247004_decl.h"
#include "overlay095/struct_ov95_022472C4_decl.h"
#include "overlay095/struct_ov95_02247568.h"
#include "overlay095/struct_ov95_02247628_decl.h"

#include "bg_window.h"
#include "message.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "sprite.h"
#include "string_template.h"

int ov95_02246C20(ApplicationManager *appMan, int *param1);
int ov95_02246E1C(ApplicationManager *appMan, int *param1);
int ov95_02246E7C(ApplicationManager *appMan, int *param1);
UnkStruct_ov95_02247004 *ov95_02246F30(BOOL *param0, int param1);
void ov95_02247004(UnkStruct_ov95_02247004 *param0);
void ov95_02247018(UnkStruct_ov95_02247004 *param0);
UnkStruct_ov95_022472C4 *ov95_022472C4(BgConfig *param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, int param5, volatile BOOL *param6);
void ov95_022473E8(UnkStruct_ov95_02247628 *param0, int param1, u32 param2, u32 param3, BOOL param4);
void ov95_022474D4(UnkStruct_ov95_02247628 *param0, int param1, u32 param2, u32 param3, u32 param4, u32 param5);
void ov95_02247568(UnkStruct_ov95_02247568 *param0, u32 param1, u32 param2, u32 param3);
void ov95_022475A0(UnkStruct_ov95_02247568 *param0);
void ov95_022475C4(SpriteResourcesHeader *param0, UnkStruct_ov95_02247568 *param1, NNSG2dImageProxy *param2, NNSG2dImagePaletteProxy *param3, u32 param4);
Sprite *ov95_022475E4(UnkStruct_ov95_02247628 *param0, SpriteResourcesHeader *param1, u32 param2, u32 param3, u32 param4, int param5);
BgConfig *ov95_02247628(UnkStruct_ov95_02247628 *param0);
StringTemplate *ov95_0224762C(UnkStruct_ov95_02247628 *param0);
MessageLoader *ov95_02247630(UnkStruct_ov95_02247628 *param0);
const BoxPokemon *ov95_02247634(UnkStruct_ov95_02247628 *param0);
const BoxPokemon *ov95_0224763C(UnkStruct_ov95_02247628 *param0);
u32 ov95_02247644(UnkStruct_ov95_02247628 *param0);
u16 ov95_0224764C(UnkStruct_ov95_02247628 *param0);
u16 ov95_02247654(UnkStruct_ov95_02247628 *param0);
u16 ov95_02247660(UnkStruct_ov95_02247628 *param0);
u16 ov95_02247668(UnkStruct_ov95_02247628 *param0);
int ov95_02247674(UnkStruct_ov95_02247628 *param0);
int ov95_02247680(UnkStruct_ov95_02247628 *param0);
void ov95_022476C8(void *param0);

#endif // POKEPLATINUM_OV95_02246C20_H
