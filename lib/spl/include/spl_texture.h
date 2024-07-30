#ifndef SPL_TEXTURE_H
#define SPL_TEXTURE_H

#include <nitro/types.h>


typedef union {
    u32 val1;
    struct {
        u32 val2_00_0 : 4;
        u32 val2_00_4 : 4;
        u32 val2_01_0 : 4;
        u32 val2_01_4 : 2;
        u32 val2_01_6 : 2;
        u32 val2_02_0 : 1;
        u32 val2_02_1 : 1;
        u32 val2_02_2 : 8;
        u32 val2_03_2 : 6;
    };
} UnkSPLUnion5;

typedef struct UnkSPLStruct15_t {
    u32 unk_00;
    UnkSPLUnion5 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    u32 unk_18;
    u32 unk_1C;
} UnkSPLStruct15;

typedef struct UnkSPLStruct5_t {
    const void * unk_00;
    u32 unk_04;
    u32 unk_08;
    UnkSPLUnion5 unk_0C;
    u16 unk_10;
    u16 unk_12;
} UnkSPLStruct5;

#endif // SPL_TEXTURE_H
