#ifndef POKEPLATINUM_STRUCT_IMAGE_CLIPS_H
#define POKEPLATINUM_STRUCT_IMAGE_CLIPS_H

#include "struct_defs/dress_up_photo.h"
#include "struct_defs/fashion_case.h"
#include "struct_defs/struct_02029C88.h"

#define SAVED_PHOTOS_COUNT 11

typedef struct ImageClips {
    DressUpPhoto savedPhotos[SAVED_PHOTOS_COUNT];
    UnkStruct_02029C88 unk_4C8[5];
    FashionCase fashionCase;
} ImageClips;

#endif // POKEPLATINUM_STRUCT_IMAGE_CLIPS_H
