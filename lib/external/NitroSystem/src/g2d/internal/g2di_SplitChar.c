#include <nnsys/g2d/g2di_SplitChar.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/g2di_AssertUtil.h>

#define SJIS_LOW_WIDTH 0xBC
#define SJIS_LOW_BASE 0x40
#define SJIS_HIGH_BASE 0x81
#define SHIGH_AREA0_ST 0x81
#define SHIGH_AREA0_ED 0x85
#define SHIGH_AREA1 0x87
#define SHIGH_AREA2_ST 0x88
#define SHIGH_AREA2_ED 0xA0
#define SHIGH_AREA3_ST 0xE0
#define SHIGH_AREA3_ED 0x100
#define ASCII_ST 0x20
#define ASCII_ED 0x80
#define HANKANA_ST 0xA0
#define HANKANA_ED 0xE0

static NNS_G2D_INLINE BOOL IsSjisLeadByte (u8 c) {
    return (((SJIS_HIGH_BASE <= c) && (c < SHIGH_AREA2_ED))
            || (SHIGH_AREA3_ST <= c))
                ? TRUE: FALSE;
}

u16 NNSi_G2dSplitCharUTF16 (const void ** ppChar) {
    u16 c;

    NNS_G2D_POINTER_ASSERT(ppChar);
    NNS_G2D_POINTER_ASSERT(*ppChar);
    NNS_G2D_ALIGN_ASSERT(*ppChar, 2);

    c = *(const unsigned short *)*ppChar;
    ((const unsigned short *)*ppChar)++;

    return c;
}

u16 NNSi_G2dSplitCharUTF8 (const void ** ppChar) {
    const u8 * pChar;
    u16 c;

    NNS_G2D_POINTER_ASSERT(ppChar);
    NNS_G2D_POINTER_ASSERT(*ppChar);
    NNS_G2D_ASSERT((*(const u8 *)*ppChar & 0xC0) != 0x80);

    pChar = (const u8 *)*ppChar;

    if ((*pChar & 0x80) == 0x00) {
        c = *pChar;
        *(u32 *)ppChar += 1;
    } else if ((*pChar & 0xE0) == 0xC0) {
        c = (u16)(((*(pChar + 0) & 0x1F) << 6) |
                  ((*(pChar + 1) & 0x3F) << 0));
        *(u32 *)ppChar += 2;
    } else {
        NNS_G2D_ASSERT((*pChar & 0xF0) == 0xE0);

        c = (u16)(((*(pChar + 0) & 0x1F) << 12) |
                  ((*(pChar + 1) & 0x3F) << 6) |
                  ((*(pChar + 2) & 0x3F) << 0));
        *(u32 *)ppChar += 3;
    }

    return c;
}

u16 NNSi_G2dSplitCharShiftJIS (const void ** ppChar) {
    const u8 * pChar;
    u16 c;

    NNS_G2D_POINTER_ASSERT(ppChar);
    NNS_G2D_POINTER_ASSERT(*ppChar);

    pChar = (const u8 *)*ppChar;

    if (IsSjisLeadByte(*pChar)) {
        c = (u16)(((*pChar) << 8) | (*(pChar + 1)));
        *(u32 *)ppChar += 2;
    } else {
        c = *pChar;
        *(u32 *)ppChar += 1;
    }

    return c;
}

u16 NNSi_G2dSplitChar1Byte (const void ** ppChar) {
    const u8 * pChar;
    u16 c;

    NNS_G2D_POINTER_ASSERT(ppChar);
    NNS_G2D_POINTER_ASSERT(*ppChar);

    pChar = (const u8 *)*ppChar;

    c = *pChar;
    *(u32 *)ppChar += 1;

    return c;
}
