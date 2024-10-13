#include "font.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023350_decl.h"

#include "heap.h"
#include "render_text.h"
#include "strbuf.h"
#include "unk_02006E3C.h"
#include "unk_0201D670.h"
#include "unk_020232E0.h"

typedef struct {
    TextGlyph curGlyph;
    void *data[4];
    UnkStruct_02023350 *unk_94[4];
} FontWork;

static const struct {
    u16 arcFileIdx;
    u16 unk_02;
} sFontArchiveData[FONT_MAX] = {
    [FONT_SYSTEM] = {
        .arcFileIdx = 0,
    },
    [FONT_MESSAGE] = {
        .arcFileIdx = 1,
    },
    [FONT_SUBSCREEN] = {
        .arcFileIdx = 2,
    },
    [FONT_UNK] = {
        .arcFileIdx = 3,
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
    [FONT_UNK] = {
        .maxLetterWidth = 11,
        .maxLetterHeight = 16,
        .letterSpacing = 0,
        .lineSpacing = 0,
        .fgColor = 1,
        .bgColor = 15,
        .shadowColor = 2,
    },
};

static FontWork *sFontWork = NULL;

void sub_02002B7C(void)
{
    u32 v0;
    static FontWork work;

    sFontWork = &work;

    for (v0 = 0; v0 < NELEMS(sFontArchiveData); v0++) {
        sFontWork->data[v0] = NULL;
        sFontWork->unk_94[v0] = NULL;
    }

    SetFontAttributesPtr(sFontAttributes);
}

void sub_02002BB8(int param0, u32 param1)
{
    sFontWork->unk_94[param0] = sub_020232E0(14, sFontArchiveData[param0].arcFileIdx, 1, sFontArchiveData[param0].unk_02, param1);
}

void sub_02002BEC(int param0, u32 param1)
{
    GF_ASSERT(param0 < 4);
    GF_ASSERT(sFontWork->unk_94[param0]);

    sub_02023330(sFontWork->unk_94[param0], 0, param1);
}

void sub_02002C28(int param0)
{
    GF_ASSERT(param0 < 4);
    GF_ASSERT(sFontWork->unk_94[param0]);

    sub_02023330(sFontWork->unk_94[param0], 1, 0);
}

void sub_02002C60(int param0)
{
    GF_ASSERT(param0 < 4);

    if (sFontWork->data[param0] != NULL) {
        int v0;

        for (v0 = 0; v0 < NELEMS(sFontArchiveData); v0++) {
            if (v0 == param0) {
                continue;
            }

            if ((sFontArchiveData[v0].arcFileIdx == sFontArchiveData[param0].arcFileIdx) && (sFontWork->unk_94[v0] != NULL)) {
                sFontWork->data[v0] = sFontWork->data[param0];
                break;
            }
        }

        if (v0 == NELEMS(sFontArchiveData)) {
            Heap_FreeToHeap(sFontWork->data[param0]);
            sFontWork->data[param0] = NULL;
        }
    }

    if (sFontWork->unk_94[param0] != NULL) {
        sub_02023318(sFontWork->unk_94[param0]);
        sFontWork->unk_94[param0] = NULL;
    }
}

const TextGlyph *sub_02002CFC(int param0, u16 param1)
{
    sub_020234A0(sFontWork->unk_94[param0], param1, &sFontWork->curGlyph);
    return &(sFontWork->curGlyph);
}

int sub_02002D18(int param0, TextPrinter *param1)
{
    TextPrinterSubstruct *v0;

    v0 = (TextPrinterSubstruct *)&(param1->substruct[0]);

    if (!v0->fontIDSet) {
        v0->fontID = param0;
        v0->fontIDSet = 1;
    }

    return RenderText(param1);
}

u32 sub_02002D48(int param0, const u16 *param1, u32 param2)
{
    GF_ASSERT(sFontWork->unk_94[param0] != NULL);
    return sub_02023620(sFontWork->unk_94[param0], param1, param2);
}

u32 sub_02002D7C(int param0, const Strbuf *param1, u32 param2)
{
    GF_ASSERT(sFontWork->unk_94[param0] != NULL);
    return sub_02023620(sFontWork->unk_94[param0], Strbuf_GetData(param1), param2);
}

u32 sub_02002DB4(int param0, Strbuf *param1, Strbuf *param2)
{
    GF_ASSERT(sFontWork->unk_94[param0] != NULL);

    Strbuf_Clear(param2);
    Strbuf_ConcatTrainerName(param2, param1);

    return sub_0202366C(sFontWork->unk_94[param0], Strbuf_GetData(param2));
}

u8 Font_GetAttribute(u8 param0, u8 param1)
{
    u8 v0 = 0;

    switch (param1) {
    case 0:
        v0 = sFontAttributes[param0].maxLetterWidth;
        break;
    case 1:
        v0 = sFontAttributes[param0].maxLetterHeight;
        break;
    case 2:
        v0 = sFontAttributes[param0].letterSpacing;
        break;
    case 3:
        v0 = sFontAttributes[param0].lineSpacing;
        break;
    case 4:
        v0 = sFontAttributes[param0].dummy;
        break;
    case 5:
        v0 = sFontAttributes[param0].fgColor;
        break;
    case 6:
        v0 = sFontAttributes[param0].bgColor;
        break;
    case 7:
        v0 = sFontAttributes[param0].shadowColor;
        break;
    }

    return v0;
}

void sub_02002E7C(u32 param0, u32 param1, u32 param2)
{
    sub_02006E84(14, 6, (int)param0, param1, 0x20, param2);
}

void sub_02002E98(u32 param0, u32 param1, u32 param2)
{
    sub_02006E84(14, 7, (int)param0, param1, 0x20, param2);
}

u32 sub_02002EB4(int param0, const Strbuf *param1, u32 param2)
{
    GF_ASSERT(sFontWork->unk_94[param0] != NULL);
    return sub_020236D0(sFontWork->unk_94[param0], Strbuf_GetData(param1), param2);
}

u32 sub_02002EEC(int param0, const Strbuf *param1, u32 param2, u32 param3)
{
    u32 v0 = sub_02002D7C(param0, param1, param2);

    return (v0 < param3) ? (param3 - v0) / 2 : 0;
}

u32 sub_02002F04(int param0, const Strbuf *param1)
{
    GF_ASSERT(sFontWork->unk_94[param0] != NULL);
    return sub_02023738(sFontWork->unk_94[param0], Strbuf_GetData(param1));
}
