#ifndef POKEPLATINUM_STRUCT_MAP_LOAD_MODE_H
#define POKEPLATINUM_STRUCT_MAP_LOAD_MODE_H

typedef struct MapLoadMode {
    u32 fieldBottomScreen : 4;
    u32 unk_00_4 : 4;
    u32 unk_00_8 : 4;
    u32 unk_00_12 : 4;
    u32 unk_00_16 : 4;
    u32 unk_00_20 : 4;
    u32 unk_00_24 : 8;
    u32 unk_04;
} MapLoadMode;

#endif // POKEPLATINUM_STRUCT_MAP_LOAD_MODE_H
