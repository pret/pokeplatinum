#ifndef POKEPLATINUM_OV21_021D1FA4_H
#define POKEPLATINUM_OV21_021D1FA4_H

#include <nitro/gx.h>
#include <nnsys.h>

#include "applications/pokedex/pokedex_graphic_data.h"
#include "applications/pokedex/pokedex_panel.h"
#include "applications/pokedex/pokedex_text_manager.h"
#include "applications/pokedex/struct_ov21_021D22F8.h"
#include "applications/pokedex/struct_ov21_021D23F8.h"
#include "applications/pokedex/struct_ov21_021D2584.h"
#include "applications/pokedex/struct_ov21_021D2648.h"

#include "bg_window.h"
#include "narc.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_resource.h"

void ov21_021D1FA4(PokedexGraphicData *param0, int heapID);
void ov21_021D2098(PokedexGraphicData *param0);
void ov21_021D2124(PokedexGraphicData *param0);
void ov21_021D214C(PokedexGraphicData *param0);
void ov21_021D2164(PokedexGraphicData *param0, int param1, int param2);
PokemonSprite *ov21_021D2170(const PokedexGraphicData *param0);
void ov21_021D217C(const PokedexGraphicData *param0, BOOL param1);
void Pokedex_LoadPokemonSprite(PokedexGraphicData *param0, int species, int gender, int face, int shiny, u8 form, u32 personality, int param7, int param8, int param9);
void ov21_021D222C(PokedexGraphicData *param0, int param1, int param2, int param3);
void ov21_021D2250(PokedexGraphicData *param0, int *param1, int *param2, int param3);
PokemonSprite *ov21_021D2274(const PokedexGraphicData *param0, int param1);
void ov21_021D2280(const PokedexGraphicData *param0, BOOL param1, int param2);
Sprite *ov21_021D22A8(const PokedexGraphicData *param0);
Sprite *ov21_021D22C4(const PokedexGraphicData *param0);
void ov21_021D22E0(PokedexGraphicData *param0, PokedexDisplayBox *displayBox, int param2, int param3, u32 param4);
void ov21_021D22F8(UnkStruct_ov21_021D22F8 *param0, PokedexDisplayBox *displayBox, int param2, int param3, u32 param4);
SpriteResource *ov21_021D2344(const PokedexGraphicData *param0, int param1);
void ov21_021D2360(const PokedexGraphicData *param0, GXOamMode param1);
void ov21_021D238C(const PokedexGraphicData *param0, int param1);
void ov21_021D23C0(const PokedexGraphicData *param0, BOOL param1);
void ov21_021D23F8(UnkStruct_ov21_021D23F8 *param0, u8 param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8);
BOOL ov21_021D2424(UnkStruct_ov21_021D23F8 *param0);
int ov21_021D2484(UnkStruct_ov21_021D23F8 *param0);
int ov21_021D24B8(UnkStruct_ov21_021D23F8 *param0);
BOOL ov21_021D24EC(UnkStruct_ov21_021D23F8 *param0);
void ov21_021D24FC(const PokedexGraphicData *param0, UnkStruct_ov21_021D23F8 *param1);
void ov21_021D251C(const PokedexGraphicData *param0, UnkStruct_ov21_021D23F8 *param1, int param2);
void ov21_021D2544(const PokedexPanelData *param0, PokedexGraphicData *param1);
void ov21_021D2574(PokedexGraphicData *param0, int param1, int param2, int param3, int param4);
void ov21_021D2584(UnkStruct_ov21_021D2584 *param0, int param1);
BOOL ov21_021D25A0(UnkStruct_ov21_021D2584 *param0);
void ov21_021D25AC(UnkStruct_ov21_021D2584 *param0, BOOL param1);
void ov21_021D25B8(const PokedexPanelData *param0, PokedexGraphicData *param1);
void ov21_021D25E8(PokedexGraphicData *param0, int param1, int param2, int param3, int param4);
void ov21_021D2648(UnkStruct_ov21_021D2648 *param0, int param1, int param2, int param3, int param4, int param5);
BOOL ov21_021D2664(UnkStruct_ov21_021D2648 *param0);
NARC *ov21_021D26E0(PokedexGraphicData *param0);
u32 ov21_021D2724(PokedexGraphicData *param0, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 heapID);
void ov21_021D276C(PokedexGraphicData *param0, u32 param1, int param2, u32 param3, u32 param4, u32 heapID);
void *ov21_021D27B8(PokedexGraphicData *param0, u32 param1, BOOL param2, NNSG2dScreenData **param3, u32 heapID);
void *ov21_021D27E0(PokedexGraphicData *param0, u32 param1, NNSG2dPaletteData **param2, u32 heapID);
void *ov21_021D2808(PokedexGraphicData *param0, u32 param1, BOOL param2, NNSG2dCharacterData **param3, u32 heapID);
void ov21_021D2B88(UnkStruct_ov21_021D22F8 *param0, SpriteResourceCollection **param1, int param2, NARC *param3);
void ov21_021D2C58(UnkStruct_ov21_021D22F8 *param0, SpriteResourceCollection **param1);
void ov21_021D2D88(UnkStruct_ov21_021D22F8 *param0, SpriteList *param1, SpriteResourceCollection **param2, int param3, int param4);
void ov21_021D2E1C(UnkStruct_ov21_021D22F8 *param0);
void ov21_021D2E44(UnkStruct_ov21_021D22F8 *param0, BOOL param1);

#endif // POKEPLATINUM_OV21_021D1FA4_H
