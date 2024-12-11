#ifndef POKEPLATINUM_STRUCT_OV81_021D1610_H
#define POKEPLATINUM_STRUCT_OV81_021D1610_H

#include "bg_window.h"
#include "journal.h"
#include "message.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"

typedef struct {
    BgConfig *bgConfig;
    Window window[4];
    JournalEntry *journalEntry;
    TrainerInfo *trainerInfo;
    SaveData *saveData;
    MessageLoader *loader;
    StringTemplate *template;
    Strbuf *strbuf;
    u16 unk_5C[1024];
    u16 unk_85C[1024];
    s8 page;
    u8 padding_105D;
    s8 state;
    s8 unk_105F;
    s8 unk_1060;
    u8 bgLayer1;
    u8 bgLayer2;
    u8 bgLayer3;
    u8 bgLayer4;
    u8 unused[3];
} UnkStruct_ov81_021D1610;

#endif // POKEPLATINUM_STRUCT_OV81_021D1610_H
