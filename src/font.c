#include "font.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "charcode.h"
#include "font_manager.h"
#include "heap.h"
#include "render_text.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02006E3C.h"

typedef struct {
    TextGlyph curGlyph;
    void *data[FONT_MAX];
    FontManager *fontManagers[FONT_MAX];
} FontWork;

static const struct {
    u16 arcFileIdx;
    u16 isMonospace;
} sFontArchiveData[FONT_MAX] = {
    [FONT_SYSTEM] = {
        .arcFileIdx = 0,
        .isMonospace = FALSE,
    },
    [FONT_MESSAGE] = {
        .arcFileIdx = 1,
        .isMonospace = FALSE,
    },
    [FONT_SUBSCREEN] = {
        .arcFileIdx = 2,
        .isMonospace = FALSE,
    },
    [FONT_UNOWN] = {
        .arcFileIdx = 3,
        .isMonospace = FALSE,
    },
};

static const FontAttributes sFontAttributes[FONT_MAX + 1] = {
    [FONT_SYSTEM] = {
        .maxLetterWidth = 11,
        .maxLetterHeight = 16,
        .letterSpacing = 0,
        .lineSpacing = 0,
        .fgColor = 1,
        .bgColor = 15,
        .shadowColor = 2,
    },
    [FONT_MESSAGE] = {
        .maxLetterWidth = 11,
        .maxLetterHeight = 16,
        .letterSpacing = 0,
        .lineSpacing = 0,
        .fgColor = 1,
        .bgColor = 15,
        .shadowColor = 2,
    },
    [FONT_SUBSCREEN] = {
        .maxLetterWidth = 11,
        .maxLetterHeight = 16,
        .letterSpacing = 0,
        .lineSpacing = 0,
        .fgColor = 1,
        .bgColor = 15,
        .shadowColor = 2,
    },
    [FONT_UNOWN] = {
        .maxLetterWidth = 11,
        .maxLetterHeight = 16,
        .letterSpacing = 0,
        .lineSpacing = 0,
        .fgColor = 1,
        .bgColor = 15,
        .shadowColor = 2,
    },
};

static FontWork work;
static FontWork *sFontWork = NULL;

void Fonts_Init(void)
{
    sFontWork = &work;

    for (int i = 0; i < NELEMS(sFontArchiveData); i++) {
        sFontWork->data[i] = NULL;
        sFontWork->fontManagers[i] = NULL;
    }

    Text_SetFontAttributesPtr(sFontAttributes);
}

void Font_InitManager(enum Font font, u32 heapID)
{
    sFontWork->fontManagers[font] = FontManager_New(NARC_INDEX_GRAPHIC__PL_FONT,
        sFontArchiveData[font].arcFileIdx,
        GLYPH_ACCESS_MODE_LAZY,
        sFontArchiveData[font].isMonospace,
        heapID);
}

void Font_UseImmediateGlyphAccess(enum Font font, u32 heapID)
{
    GF_ASSERT(font < FONT_MAX);
    GF_ASSERT(sFontWork->fontManagers[font]);

    FontManager_SwitchGlyphAccessMode(sFontWork->fontManagers[font], GLYPH_ACCESS_MODE_IMMEDIATE, heapID);
}

void Font_UseLazyGlyphAccess(enum Font font)
{
    GF_ASSERT(font < FONT_MAX);
    GF_ASSERT(sFontWork->fontManagers[font]);

    FontManager_SwitchGlyphAccessMode(sFontWork->fontManagers[font], GLYPH_ACCESS_MODE_LAZY, 0);
}

void Font_Free(enum Font font)
{
    GF_ASSERT(font < FONT_MAX);

    if (sFontWork->data[font] != NULL) {
        int i;
        for (i = 0; i < NELEMS(sFontArchiveData); i++) {
            if (i != font
                && sFontArchiveData[i].arcFileIdx == sFontArchiveData[font].arcFileIdx
                && sFontWork->fontManagers[i] != NULL) {
                sFontWork->data[i] = sFontWork->data[font];
                break;
            }
        }

        if (i == NELEMS(sFontArchiveData)) {
            Heap_FreeToHeap(sFontWork->data[font]);
            sFontWork->data[font] = NULL;
        }
    }

    if (sFontWork->fontManagers[font] != NULL) {
        FontManager_Delete(sFontWork->fontManagers[font]);
        sFontWork->fontManagers[font] = NULL;
    }
}

const TextGlyph *Font_TryLoadGlyph(enum Font font, charcode_t c)
{
    FontManager_TryLoadGlyph(sFontWork->fontManagers[font], c, &sFontWork->curGlyph);
    return &sFontWork->curGlyph;
}

enum RenderResult Font_RenderText(enum Font font, TextPrinter *printer)
{
    TextPrinterSubstruct *substruct = (TextPrinterSubstruct *)printer->substruct;

    if (!substruct->fontIDSet) {
        substruct->fontID = font;
        substruct->fontIDSet = TRUE;
    }

    return RenderText(printer);
}

u32 Font_CalcStringWidth(enum Font font, const charcode_t *str, u32 letterSpacing)
{
    GF_ASSERT(sFontWork->fontManagers[font] != NULL);
    return FontManager_CalcStringWidth(sFontWork->fontManagers[font], str, letterSpacing);
}

u32 Font_CalcStrbufWidth(enum Font font, const Strbuf *strbuf, u32 letterSpacing)
{
    GF_ASSERT(sFontWork->fontManagers[font] != NULL);
    return FontManager_CalcStringWidth(sFontWork->fontManagers[font], Strbuf_GetData(strbuf), letterSpacing);
}

u32 Font_AreAllCharsValid(enum Font font, Strbuf *strbuf, Strbuf *tmpbuf)
{
    GF_ASSERT(sFontWork->fontManagers[font] != NULL);

    Strbuf_Clear(tmpbuf);
    Strbuf_ConcatTrainerName(tmpbuf, strbuf);

    return FontManager_AreAllCharsValid(sFontWork->fontManagers[font], Strbuf_GetData(tmpbuf));
}

u8 Font_GetAttribute(u8 font, u8 attribute)
{
    u8 result = 0;

    switch (attribute) {
    case FONTATTR_MAX_LETTER_WIDTH:
        result = sFontAttributes[font].maxLetterWidth;
        break;

    case FONTATTR_MAX_LETTER_HEIGHT:
        result = sFontAttributes[font].maxLetterHeight;
        break;

    case FONTATTR_LETTER_SPACING:
        result = sFontAttributes[font].letterSpacing;
        break;

    case FONTATTR_LINE_SPACING:
        result = sFontAttributes[font].lineSpacing;
        break;

    case FONTATTR_DUMMY:
        result = sFontAttributes[font].dummy;
        break;

    case FONTATTR_FG_COLOR:
        result = sFontAttributes[font].fgColor;
        break;

    case FONTATTR_BG_COLOR:
        result = sFontAttributes[font].bgColor;
        break;

    case FONTATTR_SHADOW_COLOR:
        result = sFontAttributes[font].shadowColor;
        break;
    }

    return result;
}

void Font_LoadTextPalette(int palLocation, u32 palSlotOffset, u32 heapID)
{
    sub_02006E84(NARC_INDEX_GRAPHIC__PL_FONT, 6, palLocation, palSlotOffset, 0x20, heapID);
}

void Font_LoadScreenIndicatorsPalette(int palLocation, u32 palSlotOffset, u32 heapID)
{
    sub_02006E84(NARC_INDEX_GRAPHIC__PL_FONT, 7, palLocation, palSlotOffset, 0x20, heapID);
}

u32 Font_CalcMaxLineWidth(enum Font font, const Strbuf *strbuf, u32 letterSpacing)
{
    GF_ASSERT(sFontWork->fontManagers[font] != NULL);
    return FontManager_CalcMaxLineWidth(sFontWork->fontManagers[font], Strbuf_GetData(strbuf), letterSpacing);
}

u32 Font_CalcCenterAlignment(enum Font font, const Strbuf *strbuf, u32 letterSpacing, u32 windowWidth)
{
    u32 width = Font_CalcStrbufWidth(font, strbuf, letterSpacing);

    return width < windowWidth ? (windowWidth - width) / 2 : 0;
}

u32 Font_CalcStringWidthWithCursorControl(enum Font font, const Strbuf *strbuf)
{
    GF_ASSERT(sFontWork->fontManagers[font] != NULL);
    return FontManager_CalcStringWidthWithCursorControl(sFontWork->fontManagers[font], Strbuf_GetData(strbuf));
}
