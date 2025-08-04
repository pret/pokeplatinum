#include "overlay097/gba_convert_string.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

// Japanese, International
static const u16 sGBACharToDSChars[][2] = {
    { CHAR_WIDE_SPACE, CHAR_WIDE_SPACE },
    { 0x3, 0x3 },
    { 0x5, 0x5 },
    { 0x7, 0x7 },
    { 0x9, 0x9 },
    { 0xB, 0xB },
    { 0xC, 0xC },
    { 0xE, 0xE },
    { 0x10, 0x10 },
    { 0x12, 0x12 },
    { 0x14, 0x14 },
    { 0x16, 0x16 },
    { 0x18, 0x18 },
    { 0x1A, 0x1A },
    { 0x1C, 0x1C },
    { 0x1E, 0x1E },
    { 0x20, 0x20 },
    { 0x22, 0x22 },
    { 0x25, 0x25 },
    { 0x27, 0x27 },
    { 0x29, 0x29 },
    { 0x2B, 0x2B },
    { 0x2C, 0x2C },
    { 0x2D, 0x2D },
    { 0x2E, 0x2E },
    { 0x2f, 0x2f },
    { 0x30, 0x30 },
    { 0x33, 0x33 },
    { 0x36, 0x36 },
    { 0x39, 0x39 },
    { 0x3C, 0x3C },
    { 0x3f, 0x3f },
    { 0x40, 0x40 },
    { 0x41, 0x41 },
    { 0x42, 0x42 },
    { 0x43, 0x43 },
    { 0x45, 0x45 },
    { 0x47, 0x47 },
    { 0x49, 0x49 },
    { 0x4A, 0x4A },
    { 0x4B, 0x4B },
    { 0x4C, 0x4C },
    { 0x4D, 0x4D },
    { 0x4E, 0x4E },
    { 0x4f, 0x4f },
    { 0x50, 0x50 },
    { 0x51, 0x51 },
    { 0x2, 0x2 },
    { 0x4, 0x4 },
    { 0x6, 0x6 },
    { 0x8, 0x8 },
    { 0xA, 0xA },
    { 0x44, 0x44 },
    { 0x46, 0x46 },
    { 0x48, 0x48 },
    { 0xD, 0xD },
    { 0xf, 0xf },
    { 0x11, 0x11 },
    { 0x13, 0x13 },
    { 0x15, 0x15 },
    { 0x17, 0x17 },
    { 0x19, 0x19 },
    { 0x1B, 0x1B },
    { 0x1D, 0x1D },
    { 0x1f, 0x1f },
    { 0x21, 0x21 },
    { 0x23, 0x23 },
    { 0x26, 0x26 },
    { 0x28, 0x28 },
    { 0x2A, 0x2A },
    { 0x31, 0x31 },
    { 0x34, 0x34 },
    { 0x37, 0x37 },
    { 0x3A, 0x3A },
    { 0x3D, 0x3D },
    { 0x32, 0x32 },
    { 0x35, 0x35 },
    { 0x38, 0x38 },
    { 0x3B, 0x3B },
    { 0x3E, 0x3E },
    { 0x24, 0x24 },
    { 0x53, 0x53 },
    { 0x55, 0x55 },
    { 0x57, 0x57 },
    { 0x59, 0x59 },
    { 0x5B, 0x5B },
    { 0x5C, 0x5C },
    { 0x5E, 0x5E },
    { 0x60, 0x60 },
    { 0x62, 0x62 },
    { 0x64, 0x64 },
    { 0x66, 0x66 },
    { 0x68, 0x68 },
    { 0x6A, 0x6A },
    { 0x6C, 0x6C },
    { 0x6E, 0x6E },
    { 0x70, 0x70 },
    { 0x72, 0x72 },
    { 0x75, 0x75 },
    { 0x77, 0x77 },
    { 0x79, 0x79 },
    { 0x7B, 0x7B },
    { 0x7C, 0x7C },
    { 0x7D, 0x7D },
    { 0x7E, 0x7E },
    { 0x7f, 0x7f },
    { 0x80, 0x80 },
    { 0x83, 0x83 },
    { 0x86, 0x86 },
    { 0x89, 0x89 },
    { 0x8C, 0x8C },
    { 0x8f, 0x8f },
    { 0x90, 0x90 },
    { 0x91, 0x91 },
    { 0x92, 0x92 },
    { 0x93, 0x93 },
    { 0x95, 0x95 },
    { 0x97, 0x97 },
    { 0x99, 0x99 },
    { 0x9A, 0x9A },
    { 0x9B, 0x9B },
    { 0x9C, 0x9C },
    { 0x9D, 0x9D },
    { 0x9E, 0x9E },
    { 0x9f, 0x9f },
    { 0xA0, 0xA0 },
    { 0xA1, 0xA1 },
    { 0x52, 0x52 },
    { 0x54, 0x54 },
    { 0x56, 0x56 },
    { 0x58, 0x58 },
    { 0x5A, 0x5A },
    { 0x94, 0x94 },
    { 0x96, 0x96 },
    { 0x98, 0x98 },
    { 0x5D, 0x5D },
    { 0x5f, 0x5f },
    { 0x61, 0x61 },
    { 0x63, 0x63 },
    { 0x65, 0x65 },
    { 0x67, 0x67 },
    { 0x69, 0x69 },
    { 0x6B, 0x6B },
    { 0x6D, 0x6D },
    { 0x6f, 0x6f },
    { 0x71, 0x71 },
    { 0x73, 0x73 },
    { 0x76, 0x76 },
    { 0x78, 0x78 },
    { 0x7A, 0x7A },
    { 0x81, 0x81 },
    { 0x84, 0x84 },
    { 0x87, 0x87 },
    { 0x8A, 0x8A },
    { 0x8D, 0x8D },
    { 0x82, 0x82 },
    { 0x85, 0x85 },
    { 0x88, 0x88 },
    { 0x8B, 0x8B },
    { 0x8E, 0x8E },
    { 0x74, 0x74 },
    { CHAR_WIDE_0, CHAR_0 },
    { CHAR_WIDE_1, CHAR_1 },
    { CHAR_WIDE_2, CHAR_2 },
    { CHAR_WIDE_3, CHAR_3 },
    { CHAR_WIDE_4, CHAR_4 },
    { CHAR_WIDE_5, CHAR_5 },
    { CHAR_WIDE_6, CHAR_6 },
    { CHAR_WIDE_7, CHAR_7 },
    { CHAR_WIDE_8, CHAR_8 },
    { CHAR_WIDE_9, CHAR_9 },
    { CHAR_WIDE_EXCLAMATION, CHAR_EXCLAMATION },
    { CHAR_WIDE_QUESTION, CHAR_QUESTION },
    { CHAR_JP_PERIOD, CHAR_PERIOD },
    { CHAR_WIDE_MINUS, CHAR_MINUS },
    { CHAR_JP_DOT, CHAR_DOT },
    { CHAR_JP_ELLIPSIS, CHAR_ELLIPSIS },
    { CHAR_JP_DOUBLE_QUOTE_OPEN, CHAR_JP_DOUBLE_QUOTE_OPEN },
    { CHAR_JP_DOUBLE_QUOTE_CLOSE, CHAR_JP_DOUBLE_QUOTE_CLOSE },
    { CHAR_JP_SINGLE_QUOTE_OPEN, CHAR_SINGLE_QUOTE_OPEN },
    { CHAR_JP_SINGLE_QUOTE_CLOSE, CHAR_SINGLE_QUOTE_CLOSE },
    { CHAR_WIDE_MALE, CHAR_MALE },
    { CHAR_WIDE_FEMALE, CHAR_FEMALE },
    { CHAR_YEN, CHAR_YEN },
    { CHAR_JP_COMMA, CHAR_COMMA },
    { CHAR_WIDE_MULTIPLY, CHAR_MULTIPLY },
    { CHAR_WIDE_SLASH, CHAR_SLASH },
    { CHAR_WIDE_A, CHAR_A },
    { CHAR_WIDE_B, CHAR_B },
    { CHAR_WIDE_C, CHAR_C },
    { CHAR_WIDE_D, CHAR_D },
    { CHAR_WIDE_E, CHAR_E },
    { CHAR_WIDE_F, CHAR_F },
    { CHAR_WIDE_G, CHAR_G },
    { CHAR_WIDE_H, CHAR_H },
    { CHAR_WIDE_I, CHAR_I },
    { CHAR_WIDE_J, CHAR_J },
    { CHAR_WIDE_K, CHAR_K },
    { CHAR_WIDE_L, CHAR_L },
    { CHAR_WIDE_M, CHAR_M },
    { CHAR_WIDE_N, CHAR_N },
    { CHAR_WIDE_O, CHAR_O },
    { CHAR_WIDE_P, CHAR_P },
    { CHAR_WIDE_Q, CHAR_Q },
    { CHAR_WIDE_R, CHAR_R },
    { CHAR_WIDE_S, CHAR_S },
    { CHAR_WIDE_T, CHAR_T },
    { CHAR_WIDE_U, CHAR_U },
    { CHAR_WIDE_V, CHAR_V },
    { CHAR_WIDE_W, CHAR_W },
    { CHAR_WIDE_X, CHAR_X },
    { CHAR_WIDE_Y, CHAR_Y },
    { CHAR_WIDE_Z, CHAR_Z },
    { CHAR_WIDE_a, CHAR_a },
    { CHAR_WIDE_b, CHAR_b },
    { CHAR_WIDE_c, CHAR_c },
    { CHAR_WIDE_d, CHAR_d },
    { CHAR_WIDE_e, CHAR_e },
    { CHAR_WIDE_f, CHAR_f },
    { CHAR_WIDE_g, CHAR_g },
    { CHAR_WIDE_h, CHAR_h },
    { CHAR_WIDE_i, CHAR_i },
    { CHAR_WIDE_j, CHAR_j },
    { CHAR_WIDE_k, CHAR_k },
    { CHAR_WIDE_l, CHAR_l },
    { CHAR_WIDE_m, CHAR_m },
    { CHAR_WIDE_n, CHAR_n },
    { CHAR_WIDE_o, CHAR_o },
    { CHAR_WIDE_p, CHAR_p },
    { CHAR_WIDE_q, CHAR_q },
    { CHAR_WIDE_r, CHAR_r },
    { CHAR_WIDE_s, CHAR_s },
    { CHAR_WIDE_t, CHAR_t },
    { CHAR_WIDE_u, CHAR_u },
    { CHAR_WIDE_v, CHAR_v },
    { CHAR_WIDE_w, CHAR_w },
    { CHAR_WIDE_x, CHAR_x },
    { CHAR_WIDE_y, CHAR_y },
    { CHAR_WIDE_z, CHAR_z },
    { CHAR_ARROW_MENU, CHAR_ARROW_MENU },
    { CHAR_WIDE_COLON, CHAR_COLON },
    { CHAR_A_DIERESIS, CHAR_A_DIERESIS },
    { CHAR_O_DIERSIS, CHAR_O_DIERSIS },
    { CHAR_U_DIERESIS, CHAR_U_DIERESIS },
    { CHAR_a_DIERESIS, CHAR_a_DIERESIS },
    { CHAR_o_DIERSIS, CHAR_o_DIERSIS },
    { CHAR_u_DIERESIS, CHAR_u_DIERESIS }
};

static u16 GetSpaceChar(u32 language)
{
    return (language == JAPANESE) ? CHAR_WIDE_SPACE : CHAR_SPACE;
}

static u16 GetDoubleQuoteOpenChar(u32 language)
{
    switch (language) {
    case JAPANESE:
    default:
        return CHAR_JP_DOUBLE_QUOTE_OPEN;
    case ENGLISH:
    case ITALIAN:
    case SPANISH:
        return CHAR_DOUBLE_QUOTE_OPEN;
    case FRENCH:
        return CHAR_DOUBLE_PAREN_OPEN;
    case GERMAN:
        return CHAR_DOUBLE_QUOTE_CLOSE_INVERTED;
    }
}

static u16 GetDoubleQuoteCloseChar(u32 language)
{
    switch (language) {
    case JAPANESE:
    default:
        return CHAR_JP_DOUBLE_QUOTE_CLOSE;
    case ENGLISH:
    case ITALIAN:
    case SPANISH:
        return CHAR_DOUBLE_QUOTE_CLOSE;
    case FRENCH:
        return CHAR_DOUBLE_PAREN_CLOSE;
    case GERMAN:
        return CHAR_DOUBLE_QUOTE_OPEN;
    }
}

BOOL GBAStringToDSString(const u8 *src, u16 *dst, u32 length, u32 language)
{
    u32 i, nonJap;

    nonJap = (language != JAPANESE);

    for (i = 0; i < (length - 1); i++) {
        if (src[i] == 0xff) {
            break;
        }

        if (src[i] >= NELEMS(sGBACharToDSChars)) {
            int j, v3;

            v3 = ((length - 1) < 10) ? (length - 1) : 10;

            for (j = 0; j < v3; j++) {
                dst[j] = CHAR_QUESTION;
            }

            dst[j] = CHAR_EOS;
            return FALSE;
        }

        switch (sGBACharToDSChars[src[i]][nonJap]) {
        case CHAR_WIDE_SPACE:
            dst[i] = GetSpaceChar(language);
            break;
        case CHAR_JP_DOUBLE_QUOTE_OPEN:
            dst[i] = GetDoubleQuoteOpenChar(language);
            break;
        case CHAR_JP_DOUBLE_QUOTE_CLOSE:
            dst[i] = GetDoubleQuoteCloseChar(language);
            break;
        default:
            dst[i] = sGBACharToDSChars[src[i]][nonJap];
            break;
        }
    }

    dst[i] = CHAR_EOS;
    return TRUE;
}
