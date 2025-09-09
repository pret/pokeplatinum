#ifndef POKEPLATINUM_SOFTWARE_SPRITE_H
#define POKEPLATINUM_SOFTWARE_SPRITE_H

#include <nitro/gx.h>
#include <nnsys.h>

typedef struct SoftwareSpriteChars SoftwareSpriteChars;
typedef struct SoftwareSpritePalette SoftwareSpritePalette;
typedef struct SoftwareSprite SoftwareSprite;
typedef struct SoftwareSpriteManager SoftwareSpriteManager;

typedef struct SoftwareSpriteManagerTemplate {
    int unk_00;
    int unk_04;
    int unk_08;
    int heapID;
} SoftwareSpriteManagerTemplate;

typedef struct SoftwareSpriteCharsTemplate {
    SoftwareSpriteManager *unk_00;
    NNSG2dCharacterData *unk_04;
} SoftwareSpriteCharsTemplate;

typedef struct SoftwareSpritePaletteTemplate {
    SoftwareSpriteManager *unk_00;
    NNSG2dPaletteData *unk_04;
    u32 unk_08;
} SoftwareSpritePaletteTemplate;

typedef struct SoftwareSpriteTemplate {
    SoftwareSpriteManager *unk_00;
    SoftwareSpriteChars *unk_04;
    SoftwareSpritePalette *unk_08;
    s16 unk_0C;
    s16 unk_0E;
    u16 unk_10;
    u8 padding_12[2];
    fx32 unk_14;
    int unk_18;
    u16 unk_1C;
    u8 padding_1E[2];
} SoftwareSpriteTemplate;

SoftwareSpriteManager *sub_02015064(const SoftwareSpriteManagerTemplate *param0);
void sub_020150A8(SoftwareSpriteManager *param0);
void sub_020150EC(SoftwareSpriteManager *param0);
SoftwareSpriteChars *sub_02015128(const SoftwareSpriteCharsTemplate *param0);
void sub_02015164(SoftwareSpriteChars *param0);
void sub_0201517C(SoftwareSpriteManager *param0);
SoftwareSpritePalette *sub_020151A4(const SoftwareSpritePaletteTemplate *param0);
void sub_020151D4(SoftwareSpritePalette *param0);
void sub_020151EC(SoftwareSpriteManager *param0);
SoftwareSprite *sub_02015214(const SoftwareSpriteTemplate *param0);
void sub_02015238(SoftwareSprite *param0);
void sub_02015240(SoftwareSprite *param0, BOOL param1);
void sub_02015254(SoftwareSprite *param0, s16 param1, s16 param2);
NNSG2dSVec2 sub_0201525C(SoftwareSprite *param0);
void sub_02015268(SoftwareSprite *param0, s16 param1, s16 param2);
void sub_02015270(SoftwareSprite *param0, fx32 param1, fx32 param2);
void sub_02015278(SoftwareSprite *param0, int param1, int param2);
NNSG2dSVec2 sub_02015280(SoftwareSprite *param0);
void sub_0201528C(SoftwareSprite *param0, int param1);
int sub_02015290(SoftwareSprite *param0);
void sub_02015294(SoftwareSprite *param0, u8 param1);
void sub_0201529C(SoftwareSprite *param0, GXRgb param1);
void sub_020152A0(SoftwareSprite *param0, NNSG2dImageAttr *param1);
void sub_020152A4(SoftwareSprite *param0, u32 param1);
void sub_020152A8(SoftwareSprite *param0, u32 param1);
void sub_020152AC(SoftwareSprite *param0, u32 param1);
void sub_020152B0(SoftwareSprite *param0, int param1, BOOL param2);
void sub_020152BC(SoftwareSprite *param0, u16 param1);

#endif // POKEPLATINUM_SOFTWARE_SPRITE_H
