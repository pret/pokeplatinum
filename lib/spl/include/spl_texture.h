#ifndef SPL_TEXTURE_H
#define SPL_TEXTURE_H

#include <nitro/types.h>


typedef union SPLTextureParam {
    u32 all;
    struct {
        u32 format : 4; // Maps to GXTexFmt
        u32 s : 4;
        u32 t : 4;
        u32 val2_01_4 : 2;
        u32 val2_01_6 : 2;
        u32 val2_02_0 : 1;
        u32 val2_02_1 : 1;
        u32 sharedTexID : 8;
        u32 val2_03_2 : 6;
    };
} SPLTextureParam;

typedef struct SPLTextureResource {
    u32 id;
    SPLTextureParam param;
    u32 textureSize; // size of the texture data
    u32 paletteOffset; // offset to the palette data from the start of the header
    u32 paletteSize; // size of the palette data
    u32 unk_14;
    u32 unk_18;
    u32 resourceSize; // total size of the resource (header + data)
} SPLTextureResource;

static inline const void *SPLTextureResource_GetTexData(const SPLTextureResource *resource)
{
    return (const void *)(resource + 1);
}

typedef struct SPLTexture {
    const void *resource;
    u32 texAddr; // VRAM address of the texture
    u32 palAddr; // VRAM address of the palette
    SPLTextureParam param;
    u16 width;
    u16 height;
} SPLTexture;

#endif // SPL_TEXTURE_H
