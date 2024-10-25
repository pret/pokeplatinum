#ifndef POKEPLATINUM_STRUCT_OV7_0224D008_H
#define POKEPLATINUM_STRUCT_OV7_0224D008_H

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_0200C440_decl.h"

#include "overlay005/struct_ov5_021D30A8.h"

#include "bg_window.h"
#include "camera.h"
#include "cell_actor.h"
#include "game_options.h"
#include "game_records.h"
#include "journal.h"
#include "message.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "trainer_info.h"
#include "vars_flags.h"

typedef struct {
    BgConfig *unk_00;
    void *unk_04;
    Window unk_08[6];
    Window unk_68;
    BmpList *unk_78;
    StringList *unk_7C;
    UIControlData *unk_80;
    StringList *unk_84;
    MessageLoader *unk_88;
    StringTemplate *unk_8C;
    Camera *camera;
    UnkStruct_ov5_021D30A8 unk_94;
    CellActor *unk_25C[4];
    u16 unk_26C[2];
    TrainerInfo *unk_270;
    void *unk_274;
    Options *unk_278;
    Journal *unk_27C;
    GameRecords *records;
    SaveData *unk_284;
    VarsFlags *unk_288;
    BOOL unk_28C;
    u16 *unk_290;
    u8 unk_294;
    u8 unk_295;
    u8 unk_296;
    u8 unk_297;
    Strbuf *unk_298;
    u8 unk_29C[4];
    int unk_2A0;
    u8 unk_2A4;
    u8 unk_2A5;
    u8 unk_2A6;
    u8 unk_2A7;
    u8 unk_2A8;
    u8 unk_2A9;
    u16 unk_2AA;
    s16 unk_2AC;
    u16 unk_2AE;
    u32 unk_2B0;
    UnkStruct_0200C440 *unk_2B4;
} UnkStruct_ov7_0224D008;

#endif // POKEPLATINUM_STRUCT_OV7_0224D008_H
