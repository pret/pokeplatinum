#ifndef POKEPLATINUM_STRUCT_OV25_02255810_H
#define POKEPLATINUM_STRUCT_OV25_02255810_H

#include <nnsys.h>

typedef struct {
    NNSG2dFVec2 translation;
    u16 animIdx;
    u8 flip;
    u8 oamPriority;
    u8 unk_0C;
    u8 hasAffineTransform;
} ov25_AnimationData;

#endif // POKEPLATINUM_STRUCT_OV25_02255810_H
