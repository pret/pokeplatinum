#ifndef POKEPLATINUM_STRUCT_02061D3C_H
#define POKEPLATINUM_STRUCT_02061D3C_H

typedef struct UnkStruct_02061D3C_t {
    u32 status;
    u32 unk_04;
    u8 localID;
    u8 movementType;
    s8 movementRangeX;
    s8 movementRangeZ;
    s8 initialDir;
    s8 facingDir;
    s8 movingDir;
    u8 padding_0F;
    u16 unk_10;
    u16 graphicsID;
    u16 trainerType;
    u16 flag;
    u16 script;
    s16 unk_1A;
    s16 unk_1C;
    s16 unk_1E;
    s16 xInitial;
    s16 yInitial;
    s16 zInitial;
    s16 x;
    s16 y;
    s16 z;
    fx32 unk_2C;
    u8 unk_30[16];
    u8 unk_40[16];
} MapObjectSave;

#endif // POKEPLATINUM_STRUCT_02061D3C_H
