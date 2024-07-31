#ifndef SPL_TEXTURE_H
#define SPL_TEXTURE_H

#include <nitro/types.h>


typedef union SPLTextureParam {
    u32 val1;
    struct {
        u32 val2_00_0 : 4;
        u32 s : 4;
        u32 t : 4;
        u32 val2_01_4 : 2;
        u32 val2_01_6 : 2;
        u32 val2_02_0 : 1;
        u32 val2_02_1 : 1;
        u32 val2_02_2 : 8;
        u32 val2_03_2 : 6;
    };
} SPLTextureParam;

typedef struct SPLTextureResource {
    u32 unk_00;
    SPLTextureParam param;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    u32 unk_18;
    u32 resourceSize; // size of the texture data
} SPLTextureResource;

typedef struct SPLTexture {
    const void * resource;
    u32 unk_04;
    u32 unk_08;
    SPLTextureParam param;
    u16 width;
    u16 height;
} SPLTexture;

#endif // SPL_TEXTURE_H
