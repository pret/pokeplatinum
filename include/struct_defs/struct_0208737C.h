#ifndef POKEPLATINUM_STRUCT_0208737C_H
#define POKEPLATINUM_STRUCT_0208737C_H

#include "struct_decls/pc_boxes_decl.h"

#include "game_options.h"
#include "strbuf.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    Strbuf *textInputStr;
    u16 unk_1C[20];
    int unk_44;
    PCBoxes *pcBoxes;
    Options *options;
} UnkStruct_0208737C;

#endif // POKEPLATINUM_STRUCT_0208737C_H
