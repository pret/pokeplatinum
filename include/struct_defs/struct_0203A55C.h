#ifndef POKEPLATINUM_STRUCT_0203A55C_H
#define POKEPLATINUM_STRUCT_0203A55C_H

typedef struct WarpEvent {
    u16 x;
    u16 z;
    u16 destHeaderID;
    u16 destWarpID;
    u8 unused[4];
} WarpEvent;

#endif // POKEPLATINUM_STRUCT_0203A55C_H
