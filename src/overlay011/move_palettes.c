#include "overlay011/move_palettes.h"

#include "constants/graphics.h"
#include "generated/pokemon_types.h"

ALIGN_4 static const u16 sMovePaletteNormal[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(23, 22, 26),
    RGB(21, 19, 25),
    RGB(19, 17, 24),
    RGB(15, 12, 20),
    RGB(13, 11, 17),
    RGB(12, 10, 14),
    RGB(10, 9, 11),
    RGB(25, 24, 28),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0)
};

ALIGN_4 static const u16 sMovePaletteFighting[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(31, 22, 14),
    RGB(31, 20, 10),
    RGB(31, 18, 6),
    RGB(28, 12, 0),
    RGB(25, 10, 0),
    RGB(20, 8, 1),
    RGB(15, 6, 0),
    RGB(31, 25, 17),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0)
};

ALIGN_4 static const u16 sMovePaletteFlying[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(15, 21, 31),
    RGB(10, 18, 31),
    RGB(6, 15, 31),
    RGB(0, 10, 28),
    RGB(1, 8, 23),
    RGB(2, 7, 18),
    RGB(3, 6, 13),
    RGB(19, 23, 31),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0)
};

ALIGN_4 static const u16 sMovePalettePoison[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(26, 16, 31),
    RGB(26, 11, 31),
    RGB(26, 6, 31),
    RGB(22, 0, 28),
    RGB(18, 1, 24),
    RGB(15, 2, 19),
    RGB(11, 4, 15),
    RGB(28, 19, 31),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0)
};

ALIGN_4 static const u16 sMovePaletteGround[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(30, 22, 12),
    RGB(28, 20, 8),
    RGB(26, 17, 4),
    RGB(24, 14, 0),
    RGB(21, 12, 0),
    RGB(17, 9, 0),
    RGB(13, 7, 1),
    RGB(31, 24, 15),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteRock[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(22, 19, 16),
    RGB(21, 17, 13),
    RGB(20, 16, 11),
    RGB(16, 12, 6),
    RGB(15, 10, 5),
    RGB(12, 8, 5),
    RGB(10, 6, 4),
    RGB(26, 21, 18),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteBug[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(26, 25, 13),
    RGB(25, 23, 9),
    RGB(24, 21, 4),
    RGB(22, 18, 0),
    RGB(18, 15, 0),
    RGB(15, 13, 0),
    RGB(11, 10, 1),
    RGB(28, 27, 15),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteGhost[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(25, 6, 20),
    RGB(21, 6, 18),
    RGB(18, 6, 15),
    RGB(14, 7, 12),
    RGB(13, 6, 12),
    RGB(11, 5, 9),
    RGB(9, 5, 8),
    RGB(26, 11, 22),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteSteel[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(28, 28, 26),
    RGB(25, 25, 24),
    RGB(22, 22, 22),
    RGB(18, 18, 19),
    RGB(16, 16, 16),
    RGB(13, 13, 12),
    RGB(11, 11, 9),
    RGB(29, 29, 27),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteMystery[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(26, 19, 22),
    RGB(23, 16, 19),
    RGB(21, 13, 17),
    RGB(18, 11, 15),
    RGB(16, 9, 12),
    RGB(13, 7, 10),
    RGB(11, 6, 8),
    RGB(27, 23, 25),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteFire[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(31, 17, 14),
    RGB(30, 12, 10),
    RGB(29, 7, 6),
    RGB(28, 3, 2),
    RGB(24, 3, 3),
    RGB(19, 4, 5),
    RGB(14, 5, 7),
    RGB(31, 20, 17),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteWater[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(18, 28, 29),
    RGB(12, 24, 28),
    RGB(6, 20, 26),
    RGB(0, 16, 24),
    RGB(0, 13, 20),
    RGB(0, 9, 15),
    RGB(1, 6, 10),
    RGB(22, 29, 29),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteGrass[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(15, 29, 8),
    RGB(12, 27, 6),
    RGB(9, 24, 3),
    RGB(6, 22, 0),
    RGB(6, 19, 1),
    RGB(6, 15, 2),
    RGB(6, 12, 3),
    RGB(21, 30, 14),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteElectric[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(31, 29, 13),
    RGB(31, 28, 10),
    RGB(28, 25, 6),
    RGB(26, 23, 0),
    RGB(23, 20, 0),
    RGB(20, 16, 0),
    RGB(16, 13, 1),
    RGB(31, 30, 19),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePalettePsychic[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(31, 15, 31),
    RGB(31, 12, 28),
    RGB(30, 9, 24),
    RGB(29, 7, 20),
    RGB(25, 5, 18),
    RGB(20, 3, 17),
    RGB(15, 2, 15),
    RGB(31, 22, 31),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteIce[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(20, 28, 31),
    RGB(17, 26, 30),
    RGB(13, 24, 29),
    RGB(10, 21, 28),
    RGB(9, 17, 24),
    RGB(9, 13, 19),
    RGB(8, 12, 17),
    RGB(23, 31, 31),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteDragon[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(18, 15, 27),
    RGB(15, 13, 27),
    RGB(13, 11, 26),
    RGB(10, 9, 25),
    RGB(8, 7, 23),
    RGB(7, 5, 20),
    RGB(6, 4, 17),
    RGB(18, 18, 29),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteDark[] = {
    RGB(13, 14, 29),
    RGB(31, 31, 31),
    RGB(21, 14, 15),
    RGB(18, 13, 13),
    RGB(15, 11, 12),
    RGB(12, 10, 10),
    RGB(11, 8, 8),
    RGB(11, 6, 7),
    RGB(10, 5, 6),
    RGB(23, 16, 17),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 sMovePaletteNone[] = {
    RGB(13, 14, 29),
    RGB(25, 25, 29),
    RGB(13, 13, 18),
    RGB(12, 12, 15),
    RGB(10, 11, 13),
    RGB(9, 9, 10),
    RGB(8, 8, 8),
    RGB(7, 7, 7),
    RGB(6, 6, 6),
    RGB(15, 15, 20),
    RGB(6, 6, 6),
    RGB(0, 0, 0),
    RGB(12, 12, 12),
    RGB(28, 26, 13),
    RGB(30, 29, 21),
    RGB(0, 0, 0),
};

ALIGN_4 static const u16 Unk_ov11_0221FBAC[] = {
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
    RGB(19, 1, 0),
};

ALIGN_4 static const u16 *const sMovePaletteTable[] = {
    sMovePaletteNormal,
    sMovePaletteFighting,
    sMovePaletteFlying,
    sMovePalettePoison,
    sMovePaletteGround,
    sMovePaletteRock,
    sMovePaletteBug,
    sMovePaletteGhost,
    sMovePaletteSteel,
    sMovePaletteMystery,
    sMovePaletteFire,
    sMovePaletteWater,
    sMovePaletteGrass,
    sMovePaletteElectric,
    sMovePalettePsychic,
    sMovePaletteIce,
    sMovePaletteDragon,
    sMovePaletteDark
};

void include_unk_ov11_0221FBAC();

void include_unk_ov11_0221FBAC()
{
    Unk_ov11_0221FBAC[0];
}

const u16 *GetMoveTypePalette(int moveType)
{
    const u16 *paletteSourceAdr;

    if (moveType != -1) {
        paletteSourceAdr = sMovePaletteTable[moveType];
    } else {
        paletteSourceAdr = sMovePaletteNone;
    }

    return paletteSourceAdr;
}

void LoadMoveSelectPltt(PaletteData *paletteSys, enum PokemonType moveType, int unused, enum PaletteBufferID bufferID, enum Palette paletteDest)
{
    const u16 *paletteSource = GetMoveTypePalette(moveType);
    PaletteData_LoadBuffer(paletteSys, paletteSource, bufferID, PLTT_DEST(paletteDest), PALETTE_SIZE_BYTES);
}
