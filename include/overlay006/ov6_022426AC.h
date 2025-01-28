#ifndef POKEPLATINUM_OV6_022426AC_H
#define POKEPLATINUM_OV6_022426AC_H

#include "struct_defs/archived_sprite.h"
#include "struct_defs/struct_0200C738.h"

#include "cell_actor.h"
#include "sprite_resource.h"

typedef struct GreatMarshLookout_SpriteResources {
    SpriteResourceCollection *unk_00[4];
    SpriteResource *unk_10[4];
    void *unk_20;
    void *unk_24;
    ArchivedSprite unk_28;
    CellActorCollection *unk_38;
    UnkStruct_0200C738 unk_3C;
    CellActor *unk_1C8;
    BOOL unk_1CC;
    BOOL unk_1D0;
} GreatMarshLookout_SpriteResources;

GreatMarshLookout_SpriteResources *GreatMarshLookout_AllocSpriteResources(const int heapId);
void GreatMarshLookout_FreeSpriteResources(GreatMarshLookout_SpriteResources *resources);
void GreatMarshLookout_CreateLookoutMonSprite(GreatMarshLookout_SpriteResources *resources, const int species);
void ov6_022427F4(GreatMarshLookout_SpriteResources *param0);
void ov6_02242814(GreatMarshLookout_SpriteResources *param0);
BOOL ov6_02242820(GreatMarshLookout_SpriteResources *param0);
void ov6_02242828(GreatMarshLookout_SpriteResources *param0);

#endif // POKEPLATINUM_OV6_022426AC_H
