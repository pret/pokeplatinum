#ifndef POKEPLATINUM_STRUCT_OV71_0223B620_H
#define POKEPLATINUM_STRUCT_OV71_0223B620_H

#include <nnsys.h>

#include "overlay071/struct_ov71_0223C444.h"
#include "overlay071/struct_ov71_0223D238.h"
#include "overlay071/struct_ov71_0223D324.h"

#include "bg_window.h"
#include "strbuf.h"
#include "trainer_card.h"

enum TrainerCardWindows {
    TRAINER_CARD_WINDOW_ID,
    TRAINER_CARD_WINDOW_NAME,
    TRAINER_CARD_WINDOW_MONEY,
    TRAINER_CARD_WINDOW_POKEDEX,
    TRAINER_CARD_WINDOW_SCORE,
    TRAINER_CARD_WINDOW_TIME,
    TRAINER_CARD_WINDOW_ADVENTURE_STARTED,
    TRAINER_CARD_WINDOW_HOF_DEBUT,
    TRAINER_CARD_WINDOW_TIMES_LINKED,
    TRAINER_CARD_WINDOW_LINK_BATTLES,
    TRAINER_CARD_WINDOW_LINK_TRADES,
    TRAINER_CARD_WINDOW_COUNT
};

typedef struct {
    BgConfig *bgConfig;
    Window windows[TRAINER_CARD_WINDOW_COUNT];
    TrainerCard *trainerCard;
    u8 unk_B8[12288];
    void *unk_30B8;
    NNSG2dCharacterData *unk_30BC;
    BOOL unk_30C0;
    BOOL unk_30C4;
    fx32 unk_30C8;
    fx32 unk_30CC;
    fx32 unk_30D0;
    int unk_30D4;
    BOOL unk_30D8;
    int unk_30DC;
    int unk_30E0;
    UnkStruct_ov71_0223D238 unk_30E4;
    int unk_3348;
    int unk_334C;
    BOOL unk_3350;
    UnkStruct_ov71_0223D324 unk_3354;
    void *unk_335C;
    NNSG2dScreenData *unk_3360;
    UnkStruct_ov71_0223C444 unk_3364;
    Strbuf *unusedStrbuf;
    Strbuf *colonStrbuf;
    u8 unk_3374[8];
    u8 unk_337C;
    u8 unk_337D;
    u8 unk_337E;
    u8 unk_337F;
    u8 unk_3380;
    u8 unk_3381;
    u8 unk_3382;
    u8 unk_3383;
} UnkStruct_ov71_0223B620;

#endif // POKEPLATINUM_STRUCT_OV71_0223B620_H
