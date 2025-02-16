#ifndef POKEPLATINUM_POKEDEX_MAIN_H
#define POKEPLATINUM_POKEDEX_MAIN_H

#include <nnsys.h>

#include "struct_decls/pokedexdata_decl.h"

#include "overlay021/pokedex_sort_data.h"
#include "overlay021/struct_ov21_021D0F60_decl.h"
#include "overlay021/struct_ov21_021D13FC.h"
#include "overlay021/struct_ov21_021D22F8.h"
#include "overlay021/struct_ov21_021D3FE0_decl.h"
#include "overlay021/struct_ov21_021D423C_decl.h"
#include "overlay021/struct_ov21_021D4C0C_decl.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021E68F4.h"

#include "bg_window.h"
#include "heap.h"
#include "overlay_manager.h"
#include "pokedex_memory.h"
#include "sprite.h"
#include "strbuf.h"
#include "touch_screen.h"
#include "trainer_info.h"

typedef struct PokedexLoadingScreen {
    BgConfig *bgConfig;
    NNSG2dScreenData *screenData;
    int layer;
    int topStart;
    int bottomStart;
    int topDist;
    int bottomDist;
    int counter;
    int duration;
} PokedexLoadingScreen;

typedef struct {
    const Pokedex *pokedex;
    const TrainerInfo *trainerInfo;
    int timeOfDay;
    BOOL fullmoonIslandVisible;
    BOOL newmoonIslandVisible;
    BOOL springPathVisible;
    BOOL seabreakPathVisible;
    PokedexMemory *pokedexMemory;
} PokedexOverlayArgs;

int PokedexMain_Init(OverlayManager *overlayMan, int *state);
int PokedexMain_Main(OverlayManager *overlayMan, int *state);
int PokedexMain_Exit(OverlayManager *overlayMan, int *state);
PokedexApp *PokedexMain_NewPokedexApp(enum HeapId heapID, const PokedexOverlayArgs *pokedexOverlayArgs);
BOOL ov21_021D10B8(PokedexApp *pokedexApp);
void PokedexMain_InitGX(enum HeapId heapID);
void PokedexMain_FreeGraphics(void);
void ov21_021D12D8(PokedexApp *pokedexApp);
UnkStruct_ov21_021D3FE0 *ov21_021D12EC(PokedexApp *pokedexApp);
UnkStruct_ov21_021D3FE0 *ov21_021D1300(PokedexApp *pokedexApp);
UnkStruct_ov21_021D3FE0 *ov21_021D1314(PokedexApp *pokedexApp);
UnkStruct_ov21_021D3FE0 *ov21_021D1328(PokedexApp *pokedexApp);
UnkStruct_ov21_021D423C *ov21_021D133C(PokedexApp *pokedexApp);
UnkStruct_ov21_021D423C *ov21_021D1350(PokedexApp *pokedexApp);
UnkStruct_ov21_021D423C *ov21_021D1364(PokedexApp *pokedexApp);
UnkStruct_ov21_021D423C *ov21_021D1378(PokedexApp *pokedexApp);
int *ov21_021D138C(PokedexApp *pokedexApp);
int *ov21_021D13A0(PokedexApp *pokedexApp);
int *ov21_021D13B4(PokedexApp *pokedexApp);
int *ov21_021D13C8(PokedexApp *pokedexApp);
BOOL *ov21_021D13DC(PokedexApp *pokedexApp);
PokedexSortData *ov21_021D13EC(PokedexApp *pokedexApp);
PokedexGraphicData *ov21_021D13FC(PokedexApp *pokedexApp);
UnkStruct_ov21_021E68F4 *ov21_021D1410(PokedexApp *pokedexApp, int param1);
UnkStruct_ov21_021E68F4 *ov21_021D1430(PokedexApp *pokedexApp, int param1);
void ov21_021D144C(Sprite *param0, int param1);
void ov21_021D1498(Sprite *param0, UnkStruct_ov21_021D4CA0 *param1, int param2);
void ov21_021D1524(Sprite *param0, UnkStruct_ov21_021D4CA0 *param1, int param2, int param3, int param4);
void ov21_021D154C(TouchScreenHitTable *hitTable, int param1, int param2, int param3, int param4);
void PokedexMain_SetLoadingScreenParams(PokedexLoadingScreen *pokedexLoadingScreen, BgConfig *bgConfig, int layer, NNSG2dScreenData *screenData, int topStart, int topEnd, int bottomStart, int bottomEnd, int duration);
BOOL PokedexMain_LoadingScreenMove(PokedexLoadingScreen *pokedexLoadingScreen);
void PokedexMain_DisplayNameNumberText(Window *window, int dexNumber, int species, int heapID);
Window *PokedexMain_DisplayNameNumber(PokedexGraphicData *pokedexgraphicData, const PokedexSortData *pokedexSortData, int heapID, int species);
Window *PokedexMain_DisplayNameNumberNational(UnkStruct_ov21_021D4C0C *param0, int heapID, int species);
Window *PokedexMain_DisplayNameNumberLocal(UnkStruct_ov21_021D4C0C *param0, int heapID, int species);
void PokedexMain_EntryNameNumber(PokedexGraphicData *param0, const PokedexSortData *pokedexSortData, int heapID, int statusIndex, fx32 x, fx32 y);
void ov21_021D1848(PokedexGraphicData *pokedexGraphicData, int param1, int param2);
void ov21_021D1858(UnkStruct_ov21_021D22F8 *param0, int param1, int param2);
void PokedexMain_DisplayPokemonSprite(PokedexGraphicData *pokedexGraphicData, PokedexSortData *pokedexSortData, int species, int face, int param4, int param5);
u32 PokedexMain_DisplaySpeciesSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int species, int face, int param4, int param5, int formIndex, int param7);
u32 PokedexMain_DisplayUnownSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int param3, int param4, int formIndex, int param6);
u32 PokedexMain_DisplayShellosSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int param3, int param4, int formIndex, int param6);
u32 PokedexMain_DisplayGastrodonSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int param3, int param4, int formIndex, int param6);
u32 PokedexMain_DisplayBurmySprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int param3, int param4, int formIndex, int param6);
u32 PokedexMain_DisplayWormadamSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int param3, int param4, int formIndex, int param6);
u32 PokedexMain_DisplayDeoxysSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int param3, int param4, int formIndex, int param6);
u32 PokedexMain_DisplayShayminSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int param3, int param4, int formIndex, int param6);
u32 PokedexMain_DisplayGiratinaSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int param3, int param4, int formIndex, int param6);
u32 PokedexMain_DisplayRotomSprite(PokedexGraphicData *pokedexGraphicData, const PokedexSortData *pokedexSortData, int face, int param3, int param4, int formIndex, int param6);
Strbuf *PokedexMain_GetMessage(int entryID, enum HeapId heapID);

#endif // POKEPLATINUM_POKEDEX_MAIN_H
