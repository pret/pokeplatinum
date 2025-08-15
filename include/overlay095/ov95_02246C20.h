#ifndef POKEPLATINUM_OV95_02246C20_H
#define POKEPLATINUM_OV95_02246C20_H

#include <nnsys.h>

#include "overlay006/struct_npc_trade_animation_template.h"
#include "overlay095/struct_ov95_02247004_decl.h"
#include "overlay095/struct_ov95_022472C4_decl.h"
#include "overlay095/struct_ov95_02247568.h"

#include "bg_window.h"
#include "message.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "sprite.h"
#include "string_template.h"
#include "sys_task_manager.h"

typedef struct TradeSequenceData {
    const TradeAnimationTemplate *animationConfig;
    int unk_04;
    BgConfig *unk_08;
    StringTemplate *unk_0C;
    MessageLoader *unk_10;
    Strbuf *unk_14;
    SpriteList *unk_18;
    G2dRenderer unk_1C;
    SysTask *unk_1A8;
    BOOL unk_1AC;
    u16 unk_1B0;
    u16 unk_1B2;
    u16 unk_1B4;
    u16 unk_1B6;
    void *unk_1B8;
} TradeSequenceData;

int TradeSequence_Init(ApplicationManager *appMan, int *param1);
int TradeSequence_Exit(ApplicationManager *appMan, int *param1);
int TradeSequence_Main(ApplicationManager *appMan, int *param1);
UnkStruct_ov95_02247004 *ov95_02246F30(BOOL *param0, int param1);
void ov95_02247004(UnkStruct_ov95_02247004 *param0);
void ov95_02247018(UnkStruct_ov95_02247004 *param0);
UnkStruct_ov95_022472C4 *ov95_022472C4(BgConfig *param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, int param5, volatile BOOL *param6);
void ov95_022473E8(TradeSequenceData *param0, int param1, u32 param2, u32 param3, BOOL param4);
void ov95_022474D4(TradeSequenceData *param0, int param1, u32 param2, u32 param3, u32 param4, u32 param5);
void ov95_02247568(UnkStruct_ov95_02247568 *param0, u32 param1, u32 param2, u32 param3);
void ov95_022475A0(UnkStruct_ov95_02247568 *param0);
void ov95_022475C4(SpriteResourcesHeader *param0, UnkStruct_ov95_02247568 *param1, NNSG2dImageProxy *param2, NNSG2dImagePaletteProxy *param3, u32 param4);
Sprite *ov95_022475E4(TradeSequenceData *param0, SpriteResourcesHeader *param1, u32 param2, u32 param3, u32 param4, int param5);
BgConfig *ov95_02247628(TradeSequenceData *param0);
StringTemplate *ov95_0224762C(TradeSequenceData *param0);
MessageLoader *ov95_02247630(TradeSequenceData *param0);
const BoxPokemon *TradeSequence_GetSendingPokemon(TradeSequenceData *tradeSequence);
const BoxPokemon *TradeSequence_GetReceivingPokemon(TradeSequenceData *tradeSequence);
enum TradeBackground TradeSequence_GetBackground(TradeSequenceData *tradeSequence);
u16 ov95_0224764C(TradeSequenceData *param0);
u16 ov95_02247654(TradeSequenceData *param0);
u16 ov95_02247660(TradeSequenceData *param0);
u16 ov95_02247668(TradeSequenceData *param0);
int ov95_02247674(TradeSequenceData *param0);
enum TradeType TradeSequence_GetTradeType(TradeSequenceData *tradeSequence);
void ov95_022476C8(void *param0);

#endif // POKEPLATINUM_OV95_02246C20_H
