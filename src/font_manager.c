#include "font_manager.h"

#include <nitro.h>
#include <string.h>

#include "charcode.h"
#include "heap.h"
#include "narc.h"
#include "render_text.h"
#include "unk_0201D670.h"

static void sub_02023350(FontManager *param0, u32 param1, u32 param2, BOOL param3, u32 param4);
static void sub_02023408(FontManager *param0);
static void sub_02023424(FontManager *param0, int param1, u32 param2);
static void sub_0202343C(FontManager *param0, u32 param1);
static void sub_0202346C(FontManager *param0, u32 param1);
static void sub_02023478(FontManager *param0);
static void sub_0202348C(FontManager *param0);
static void sub_0202349C(FontManager *param0);
static void sub_020234BC(const FontManager *param0, u16 param1, TextGlyph *param2);
static void sub_02023564(const FontManager *param0, u16 param1, TextGlyph *param2);
static u8 sub_020236B0(const FontManager *param0, u32 param1);
static u8 sub_020236C8(const FontManager *param0, u32 param1);

FontManager *FontManager_New(u32 param0, u32 param1, int param2, BOOL param3, u32 param4)
{
    FontManager *v0 = Heap_AllocFromHeap(param4, sizeof(FontManager));

    if (v0) {
        sub_02023350(v0, param0, param1, param3, param4);
        sub_02023424(v0, param2, param4);
    }

    return v0;
}

void FontManager_Delete(FontManager *param0)
{
    sub_02023478(param0);
    sub_02023408(param0);
    Heap_FreeToHeap(param0);
}

void FontManager_SwitchGlyphAccessMode(FontManager *param0, int param1, u32 param2)
{
    if (param0->glyphAccessMode != param1) {
        sub_02023478(param0);
        sub_02023424(param0, param1, param2);
    }
}

static void sub_02023350(FontManager *param0, u32 param1, u32 param2, BOOL param3, u32 param4)
{
    param0->narc = NARC_ctor(param1, param4);

    if (param0->narc) {
        NARC_ReadFromMember(param0->narc, param2, 0, sizeof(FontHeader), &(param0->header));

        param0->isMonospace = param3;

        if (param3) {
            param0->glyphWidths = NULL;
            param0->glyphWidthFunc = sub_020236C8;
        } else {
            GF_ASSERT(param0->header.widthTableOffset);

            param0->glyphWidths = Heap_AllocFromHeap(param4, param0->header.numGlyphs);
            param0->glyphWidthFunc = sub_020236B0;

            NARC_ReadFromMember(param0->narc, param2, param0->header.widthTableOffset, param0->header.numGlyphs, (void *)(param0->glyphWidths));
        }

        {
            static const u8 v0[2][2] = {
                { 0x0, 0x1 },
                { 0x2, 0x3 }
            };

            GF_ASSERT(param0->header.glyphWidth <= 2 && param0->header.glyphHeight <= 2);

            param0->glyphShape = v0[param0->header.glyphWidth - 1][param0->header.glyphHeight - 1];
            param0->glyphSize = 16 * param0->header.glyphWidth * param0->header.glyphHeight;
        }

        param0->arcFileIdx = param2;
    }
}

static void sub_02023408(FontManager *param0)
{
    if (param0->glyphWidths) {
        Heap_FreeToHeap(param0->glyphWidths);
    }

    if (param0->narc) {
        NARC_dtor(param0->narc);
    }
}

static void sub_02023424(FontManager *param0, int param1, u32 param2)
{
    static void (*const v0[])(FontManager *, u32) = {
        sub_0202343C,
        sub_0202346C,
    };

    param0->glyphAccessMode = param1;
    v0[param1](param0, param2);
}

static void sub_0202343C(FontManager *param0, u32 param1)
{
    u32 v0 = param0->glyphSize * param0->header.numGlyphs;

    param0->narcBuf = Heap_AllocFromHeap(param1, v0);
    param0->glyphBitmapFunc = sub_020234BC;

    NARC_ReadFromMember(param0->narc, param0->arcFileIdx, param0->header.size, v0, param0->narcBuf);
}

static void sub_0202346C(FontManager *param0, u32 param1)
{
    param0->glyphBitmapFunc = sub_02023564;
}

static void sub_02023478(FontManager *param0)
{
    static void (*const v0[])(FontManager *) = {
        sub_0202348C,
        sub_0202349C
    };

    v0[param0->glyphAccessMode](param0);
}

static void sub_0202348C(FontManager *param0)
{
    Heap_FreeToHeap(param0->narcBuf);
    param0->narcBuf = NULL;
}

static void sub_0202349C(FontManager *param0)
{
    (void)0;
}

void FontManager_TryLoadGlyph(const FontManager *param0, u16 param1, TextGlyph *param2)
{
    if (param1 <= param0->header.numGlyphs) {
        param1--;
    } else {
        param1 = 0x1ac - 1;
    }

    param0->glyphBitmapFunc(param0, param1, param2);
}

static void sub_020234BC(const FontManager *param0, u16 param1, TextGlyph *param2)
{
    u32 v0;

    v0 = (u32)(&param0->narcBuf[param1 * param0->glyphSize]);

    switch (param0->glyphShape) {
    case 0:
        sub_0201DAA0(v0 + 0x10 * 0, ((u32)param2->gfx) + 0x20 * 0);
        break;
    case 1:
        sub_0201DAA0(v0 + 0x10 * 0, ((u32)param2->gfx) + 0x20 * 0);
        sub_0201DAA0(v0 + 0x10 * 1, ((u32)param2->gfx) + 0x20 * 2);
        break;
    case 2:
        sub_0201DAA0(v0 + 0x10 * 0, ((u32)param2->gfx) + 0x20 * 0);
        sub_0201DAA0(v0 + 0x10 * 1, ((u32)param2->gfx) + 0x20 * 1);
        break;
    case 3:
        sub_0201DAA0(v0 + 0x10 * 0, ((u32)param2->gfx) + 0x20 * 0);
        sub_0201DAA0(v0 + 0x10 * 1, ((u32)param2->gfx) + 0x20 * 1);
        sub_0201DAA0(v0 + 0x10 * 2, ((u32)param2->gfx) + 0x20 * 2);
        sub_0201DAA0(v0 + 0x10 * 3, ((u32)param2->gfx) + 0x20 * 3);
        break;
    }

    param2->width = param0->glyphWidthFunc(param0, param1);
    param2->height = param0->header.maxHeight;
}

static void sub_02023564(const FontManager *param0, u16 param1, TextGlyph *param2)
{
    u32 v0;

    NARC_ReadFromMember(param0->narc, param0->arcFileIdx, param0->header.size + param1 * param0->glyphSize, param0->glyphSize, (void *)(param0->glyphBuf));

    switch (param0->glyphShape) {
    case 0:
        sub_0201DAA0((u32)(&(param0->glyphBuf[0x10 * 0])), ((u32)param2->gfx) + 0x20 * 0);
        break;
    case 1:
        sub_0201DAA0((u32)(&(param0->glyphBuf[0x10 * 0])), ((u32)param2->gfx) + 0x20 * 0);
        sub_0201DAA0((u32)(&(param0->glyphBuf[0x10 * 1])), ((u32)param2->gfx) + 0x20 * 2);
        break;
    case 2:
        sub_0201DAA0((u32)(&(param0->glyphBuf[0x10 * 0])), ((u32)param2->gfx) + 0x20 * 0);
        sub_0201DAA0((u32)(&(param0->glyphBuf[0x10 * 1])), ((u32)param2->gfx) + 0x20 * 1);
        break;
    case 3:
        sub_0201DAA0((u32)(&(param0->glyphBuf[0x10 * 0])), ((u32)param2->gfx) + 0x20 * 0);
        sub_0201DAA0((u32)(&(param0->glyphBuf[0x10 * 1])), ((u32)param2->gfx) + 0x20 * 1);
        sub_0201DAA0((u32)(&(param0->glyphBuf[0x10 * 2])), ((u32)param2->gfx) + 0x20 * 2);
        sub_0201DAA0((u32)(&(param0->glyphBuf[0x10 * 3])), ((u32)param2->gfx) + 0x20 * 3);
        break;
    }

    param2->width = param0->glyphWidthFunc(param0, param1);
    param2->height = param0->header.maxHeight;
}

u32 FontManager_CalcStringWidth(const FontManager *param0, const u16 *param1, u32 param2)
{
    u32 v0 = 0;

    while (*param1 != 0xffff) {
        if (*param1 == 0xfffe) {
            param1 = CharCode_SkipFormatArg(param1);

            if (*param1 == 0xffff) {
                break;
            }
        }

        v0 += (param0->glyphWidthFunc(param0, (*param1) - 1) + param2);
        param1++;
    }

    return v0 - param2;
}

BOOL FontManager_AreAllCharsValid(const FontManager *param0, const u16 *param1)
{
    while (*param1 != 0xffff) {
        if (*param1 == 0xfffe) {
            param1 = CharCode_SkipFormatArg(param1);

            if (*param1 == 0xffff) {
                return 1;
            }
        }

        if (((*param1) - 1) >= param0->header.numGlyphs) {
            return 0;
        }

        param1++;
    }

    return 1;
}

static u8 sub_020236B0(const FontManager *param0, u32 param1)
{
    if (param1 < param0->header.numGlyphs) {
        return param0->glyphWidths[param1];
    } else {
        return param0->glyphWidths[0x1ac - 1];
    }
}

static u8 sub_020236C8(const FontManager *param0, u32 param1)
{
    return param0->header.maxWidth;
}

u32 FontManager_CalcMaxLineWidth(const FontManager *param0, const u16 *param1, u32 param2)
{
    u32 v0 = 0, v1 = 0;

    while (*param1 != 0xffff) {
        if (*param1 == 0xfffe) {
            param1 = CharCode_SkipFormatArg(param1);
            continue;
        } else if (*param1 == 0xe000) {
            v1 -= param2;

            if (v0 < v1) {
                v0 = v1;
            }

            v1 = 0;
            param1++;

            continue;
        }

        v1 += (param0->glyphWidthFunc(param0, (*param1) - 1) + param2);
        param1++;
    }

    v1 -= param2;

    if (v0 < v1) {
        v0 = v1;
    }

    return v0;
}

u32 FontManager_CalcStringWidthWithCursorControl(const FontManager *param0, const u16 *param1)
{
    u32 v0 = 0;

    while (*param1 != 0xffff) {
        if (*param1 == 0xfffe) {
            if (CharCode_FormatArgType(param1) == 0x203) {
                v0 = CharCode_FormatArgParam(param1, 0) - 12;
            }

            param1 = CharCode_SkipFormatArg(param1);
            continue;
        }

        v0 += param0->glyphWidthFunc(param0, (*param1) - 1);
        param1++;
    }

    return v0;
}
