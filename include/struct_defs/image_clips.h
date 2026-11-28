#ifndef POKEPLATINUM_STRUCT_IMAGE_CLIPS_H
#define POKEPLATINUM_STRUCT_IMAGE_CLIPS_H

#include "generated/pokemon_contest_types.h"

#include "struct_defs/contest_photo.h"
#include "struct_defs/dress_up_photo.h"
#include "struct_defs/fashion_case.h"

#define SAVED_PHOTOS_COUNT 11

typedef struct ImageClips {
    DressUpPhoto savedPhotos[SAVED_PHOTOS_COUNT];
    ContestPhoto contestPhotos[CONTEST_TYPE_MAX];
    FashionCase fashionCase;
} ImageClips;

#endif // POKEPLATINUM_STRUCT_IMAGE_CLIPS_H
