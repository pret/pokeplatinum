#ifndef POKEPLATINUM_STRUCT_OV76_0223BF74_H
#define POKEPLATINUM_STRUCT_OV76_0223BF74_H

typedef struct {
    int unk_00;
    #ifdef SDK_BUILD_ARM
    u32 unk_04;
    #else
    u64 unk_04;
    #endif
} UnkStruct_ov76_0223BF74;

#endif // POKEPLATINUM_STRUCT_OV76_0223BF74_H
