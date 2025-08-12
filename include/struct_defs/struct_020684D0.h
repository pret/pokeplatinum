#ifndef POKEPLATINUM_STRUCT_020684D0_H
#define POKEPLATINUM_STRUCT_020684D0_H

#include "struct_decls/struct_0205E884_decl.h"

#include "field/field_system_decl.h"

typedef struct {
    int mapHeaderID;
    BOOL hasPartner;
    int playerState;
    u16 facingTileBehavior; // behavior of the tile the player is facing
    u16 currTileBehavior;
    u16 unk_10;
    u8 padding_12[2];
    PlayerAvatar *playerAvatar;
    FieldSystem *fieldSystem;
} PlayerContextInMap;

#endif // POKEPLATINUM_STRUCT_020684D0_H
