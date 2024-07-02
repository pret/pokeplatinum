#ifndef POKEPLATINUM_STRUCT_02009CFC_H
#define POKEPLATINUM_STRUCT_02009CFC_H

#include "struct_decls/struct_02009DC8_decl.h"

// A fixed length, non-owning list of Sprite Resources.
typedef struct {
    SpriteResource **resources;
    int capacity;
    int count;
} SpriteResourceList;

#endif // POKEPLATINUM_STRUCT_02009CFC_H
