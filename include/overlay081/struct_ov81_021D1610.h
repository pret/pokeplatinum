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
    BGL *unk_00;
    Window unk_04[4];
    Journal *unk_44;
    TrainerInfo *unk_48;
    SaveData *unk_4C;
    MessageLoader *unk_50;
    StringTemplate *unk_54;
    Strbuf *unk_58;
    u16 unk_5C[1024];
    u16 unk_85C[1024];
    s8 unk_105C;
    u8 padding_105D;
    s8 unk_105E;
    s8 unk_105F;
    s8 unk_1060;
    u8 unk_1061;
    u8 unk_1062;
    u8 unk_1063;
    u8 unk_1064;
    u8 unk_1065[3];
} UnkStruct_ov81_021D1610;

#endif // POKEPLATINUM_STRUCT_OV81_021D1610_H
