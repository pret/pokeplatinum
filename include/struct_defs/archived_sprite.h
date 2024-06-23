#ifndef POKEPLATINUM_STRUCT_ARCHIVED_SPRITE_H
#define POKEPLATINUM_STRUCT_ARCHIVED_SPRITE_H

typedef struct ArchivedSprite {
    u16 archive; //< ID of the sprite archive
    u16 character; //< File index to pull from the archive for the character data (tiles)
    u16 palette; //< File index to pull from the archive for the palette data
    u16 spindaSpots; //< Simple flag denoting whether the rendered sprite should be pseudo-randomized with splotches (only for Spinda's front-sprite).

    u8 dummy; //< Dummy value; never used or set to anything other than 0.

    u32 personality; //< Cached personality value for Pokemon front-sprites. Specifically used for Spinda spots.
} ArchivedSprite;

#endif // POKEPLATINUM_STRUCT_ARCHIVED_SPRITE_H
