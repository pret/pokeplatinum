#ifndef NITRO_SND_COMMON_DATA_H_
#define NITRO_SND_COMMON_DATA_H_

#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct SNDBinaryFileHeader {
    char signature[4];
    u16 byteOrder;
    u16 version;
    u32 fileSize;
    u16 headerSize;
    u16 dataBlocks;
} SNDBinaryFileHeader;

typedef struct SNDBinaryBlockHeader {
    u32 kind;
    u32 size;
} SNDBinaryBlockHeader;

#ifdef __cplusplus
}
#endif

#endif
