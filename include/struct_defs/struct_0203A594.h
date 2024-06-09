#ifndef POKEPLATINUM_STRUCT_0203A594_H
#define POKEPLATINUM_STRUCT_0203A594_H

typedef struct BgEvent {
    u16 script;
    u16 type;
    int x;
    int z;
    int y;
    u16 playerFacingDir;
    u8 padding[2];
} BgEvent;

#endif // POKEPLATINUM_STRUCT_0203A594_H
