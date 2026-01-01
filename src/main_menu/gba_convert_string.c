#include "main_menu/gba_convert_string.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "charcode.h"

#define GBA_EOS 0xFF

// Japanese, International
static const charcode_t sGBACharToDSChars[][2] = {
    { CHAR_JP_SPACE, CHAR_JP_SPACE },
    { CHAR_JP_HIRA_A, CHAR_JP_HIRA_A },
    { CHAR_JP_HIRA_I, CHAR_JP_HIRA_I },
    { CHAR_JP_HIRA_U, CHAR_JP_HIRA_U },
    { CHAR_JP_HIRA_E, CHAR_JP_HIRA_E },
    { CHAR_JP_HIRA_O, CHAR_JP_HIRA_O },
    { CHAR_JP_HIRA_KA, CHAR_JP_HIRA_KA },
    { CHAR_JP_HIRA_KI, CHAR_JP_HIRA_KI },
    { CHAR_JP_HIRA_KU, CHAR_JP_HIRA_KU },
    { CHAR_JP_HIRA_KE, CHAR_JP_HIRA_KE },
    { CHAR_JP_HIRA_KO, CHAR_JP_HIRA_KO },
    { CHAR_JP_HIRA_SA, CHAR_JP_HIRA_SA },
    { CHAR_JP_HIRA_SHI, CHAR_JP_HIRA_SHI },
    { CHAR_JP_HIRA_SU, CHAR_JP_HIRA_SU },
    { CHAR_JP_HIRA_SE, CHAR_JP_HIRA_SE },
    { CHAR_JP_HIRA_SO, CHAR_JP_HIRA_SO },
    { CHAR_JP_HIRA_TA, CHAR_JP_HIRA_TA },
    { CHAR_JP_HIRA_CHI, CHAR_JP_HIRA_CHI },
    { CHAR_JP_HIRA_TSU, CHAR_JP_HIRA_TSU },
    { CHAR_JP_HIRA_TE, CHAR_JP_HIRA_TE },
    { CHAR_JP_HIRA_TO, CHAR_JP_HIRA_TO },
    { CHAR_JP_HIRA_NA, CHAR_JP_HIRA_NA },
    { CHAR_JP_HIRA_NI, CHAR_JP_HIRA_NI },
    { CHAR_JP_HIRA_NU, CHAR_JP_HIRA_NU },
    { CHAR_JP_HIRA_NE, CHAR_JP_HIRA_NE },
    { CHAR_JP_HIRA_NO, CHAR_JP_HIRA_NO },
    { CHAR_JP_HIRA_HA, CHAR_JP_HIRA_HA },
    { CHAR_JP_HIRA_HI, CHAR_JP_HIRA_HI },
    { CHAR_JP_HIRA_FU, CHAR_JP_HIRA_FU },
    { CHAR_JP_HIRA_HE, CHAR_JP_HIRA_HE },
    { CHAR_JP_HIRA_HO, CHAR_JP_HIRA_HO },
    { CHAR_JP_HIRA_MA, CHAR_JP_HIRA_MA },
    { CHAR_JP_HIRA_MI, CHAR_JP_HIRA_MI },
    { CHAR_JP_HIRA_MU, CHAR_JP_HIRA_MU },
    { CHAR_JP_HIRA_ME, CHAR_JP_HIRA_ME },
    { CHAR_JP_HIRA_MO, CHAR_JP_HIRA_MO },
    { CHAR_JP_HIRA_YA, CHAR_JP_HIRA_YA },
    { CHAR_JP_HIRA_YU, CHAR_JP_HIRA_YU },
    { CHAR_JP_HIRA_YO, CHAR_JP_HIRA_YO },
    { CHAR_JP_HIRA_RA, CHAR_JP_HIRA_RA },
    { CHAR_JP_HIRA_RI, CHAR_JP_HIRA_RI },
    { CHAR_JP_HIRA_RU, CHAR_JP_HIRA_RU },
    { CHAR_JP_HIRA_RE, CHAR_JP_HIRA_RE },
    { CHAR_JP_HIRA_RO, CHAR_JP_HIRA_RO },
    { CHAR_JP_HIRA_WA, CHAR_JP_HIRA_WA },
    { CHAR_JP_HIRA_WO, CHAR_JP_HIRA_WO },
    { CHAR_JP_HIRA_N, CHAR_JP_HIRA_N },
    { CHAR_JP_HIRA_A_SMALL, CHAR_JP_HIRA_A_SMALL },
    { CHAR_JP_HIRA_I_SMALL, CHAR_JP_HIRA_I_SMALL },
    { CHAR_JP_HIRA_U_SMALL, CHAR_JP_HIRA_U_SMALL },
    { CHAR_JP_HIRA_E_SMALL, CHAR_JP_HIRA_E_SMALL },
    { CHAR_JP_HIRA_O_SMALL, CHAR_JP_HIRA_O_SMALL },
    { CHAR_JP_HIRA_YA_SMALL, CHAR_JP_HIRA_YA_SMALL },
    { CHAR_JP_HIRA_YU_SMALL, CHAR_JP_HIRA_YU_SMALL },
    { CHAR_JP_HIRA_YO_SMALL, CHAR_JP_HIRA_YO_SMALL },
    { CHAR_JP_HIRA_GA, CHAR_JP_HIRA_GA },
    { CHAR_JP_HIRA_GI, CHAR_JP_HIRA_GI },
    { CHAR_JP_HIRA_GU, CHAR_JP_HIRA_GU },
    { CHAR_JP_HIRA_GE, CHAR_JP_HIRA_GE },
    { CHAR_JP_HIRA_GO, CHAR_JP_HIRA_GO },
    { CHAR_JP_HIRA_ZA, CHAR_JP_HIRA_ZA },
    { CHAR_JP_HIRA_JI, CHAR_JP_HIRA_JI },
    { CHAR_JP_HIRA_ZU, CHAR_JP_HIRA_ZU },
    { CHAR_JP_HIRA_ZE, CHAR_JP_HIRA_ZE },
    { CHAR_JP_HIRA_ZO, CHAR_JP_HIRA_ZO },
    { CHAR_JP_HIRA_DA, CHAR_JP_HIRA_DA },
    { CHAR_JP_HIRA_DJI, CHAR_JP_HIRA_DJI },
    { CHAR_JP_HIRA_DZU, CHAR_JP_HIRA_DZU },
    { CHAR_JP_HIRA_DE, CHAR_JP_HIRA_DE },
    { CHAR_JP_HIRA_DO, CHAR_JP_HIRA_DO },
    { CHAR_JP_HIRA_BA, CHAR_JP_HIRA_BA },
    { CHAR_JP_HIRA_BI, CHAR_JP_HIRA_BI },
    { CHAR_JP_HIRA_BU, CHAR_JP_HIRA_BU },
    { CHAR_JP_HIRA_BE, CHAR_JP_HIRA_BE },
    { CHAR_JP_HIRA_BO, CHAR_JP_HIRA_BO },
    { CHAR_JP_HIRA_PA, CHAR_JP_HIRA_PA },
    { CHAR_JP_HIRA_PI, CHAR_JP_HIRA_PI },
    { CHAR_JP_HIRA_PU, CHAR_JP_HIRA_PU },
    { CHAR_JP_HIRA_PE, CHAR_JP_HIRA_PE },
    { CHAR_JP_HIRA_PO, CHAR_JP_HIRA_PO },
    { CHAR_JP_HIRA_SOKUON, CHAR_JP_HIRA_SOKUON },
    { CHAR_JP_KATA_A, CHAR_JP_KATA_A },
    { CHAR_JP_KATA_I, CHAR_JP_KATA_I },
    { CHAR_JP_KATA_U, CHAR_JP_KATA_U },
    { CHAR_JP_KATA_E, CHAR_JP_KATA_E },
    { CHAR_JP_KATA_O, CHAR_JP_KATA_O },
    { CHAR_JP_KATA_KA, CHAR_JP_KATA_KA },
    { CHAR_JP_KATA_KI, CHAR_JP_KATA_KI },
    { CHAR_JP_KATA_KU, CHAR_JP_KATA_KU },
    { CHAR_JP_KATA_KE, CHAR_JP_KATA_KE },
    { CHAR_JP_KATA_KO, CHAR_JP_KATA_KO },
    { CHAR_JP_KATA_SA, CHAR_JP_KATA_SA },
    { CHAR_JP_KATA_SHI, CHAR_JP_KATA_SHI },
    { CHAR_JP_KATA_SU, CHAR_JP_KATA_SU },
    { CHAR_JP_KATA_SE, CHAR_JP_KATA_SE },
    { CHAR_JP_KATA_SO, CHAR_JP_KATA_SO },
    { CHAR_JP_KATA_TA, CHAR_JP_KATA_TA },
    { CHAR_JP_KATA_CHI, CHAR_JP_KATA_CHI },
    { CHAR_JP_KATA_TSU, CHAR_JP_KATA_TSU },
    { CHAR_JP_KATA_TE, CHAR_JP_KATA_TE },
    { CHAR_JP_KATA_TO, CHAR_JP_KATA_TO },
    { CHAR_JP_KATA_NA, CHAR_JP_KATA_NA },
    { CHAR_JP_KATA_NI, CHAR_JP_KATA_NI },
    { CHAR_JP_KATA_NU, CHAR_JP_KATA_NU },
    { CHAR_JP_KATA_NE, CHAR_JP_KATA_NE },
    { CHAR_JP_KATA_NO, CHAR_JP_KATA_NO },
    { CHAR_JP_KATA_HA, CHAR_JP_KATA_HA },
    { CHAR_JP_KATA_HI, CHAR_JP_KATA_HI },
    { CHAR_JP_KATA_FU, CHAR_JP_KATA_FU },
    { CHAR_JP_KATA_HE, CHAR_JP_KATA_HE },
    { CHAR_JP_KATA_HO, CHAR_JP_KATA_HO },
    { CHAR_JP_KATA_MA, CHAR_JP_KATA_MA },
    { CHAR_JP_KATA_MI, CHAR_JP_KATA_MI },
    { CHAR_JP_KATA_MU, CHAR_JP_KATA_MU },
    { CHAR_JP_KATA_ME, CHAR_JP_KATA_ME },
    { CHAR_JP_KATA_MO, CHAR_JP_KATA_MO },
    { CHAR_JP_KATA_YA, CHAR_JP_KATA_YA },
    { CHAR_JP_KATA_YU, CHAR_JP_KATA_YU },
    { CHAR_JP_KATA_YO, CHAR_JP_KATA_YO },
    { CHAR_JP_KATA_RA, CHAR_JP_KATA_RA },
    { CHAR_JP_KATA_RI, CHAR_JP_KATA_RI },
    { CHAR_JP_KATA_RU, CHAR_JP_KATA_RU },
    { CHAR_JP_KATA_RE, CHAR_JP_KATA_RE },
    { CHAR_JP_KATA_RO, CHAR_JP_KATA_RO },
    { CHAR_JP_KATA_WA, CHAR_JP_KATA_WA },
    { CHAR_JP_KATA_WO, CHAR_JP_KATA_WO },
    { CHAR_JP_KATA_N, CHAR_JP_KATA_N },
    { CHAR_JP_KATA_A_SMALL, CHAR_JP_KATA_A_SMALL },
    { CHAR_JP_KATA_I_SMALL, CHAR_JP_KATA_I_SMALL },
    { CHAR_JP_KATA_U_SMALL, CHAR_JP_KATA_U_SMALL },
    { CHAR_JP_KATA_E_SMALL, CHAR_JP_KATA_E_SMALL },
    { CHAR_JP_KATA_O_SMALL, CHAR_JP_KATA_O_SMALL },
    { CHAR_JP_KATA_YA_SMALL, CHAR_JP_KATA_YA_SMALL },
    { CHAR_JP_KATA_YU_SMALL, CHAR_JP_KATA_YU_SMALL },
    { CHAR_JP_KATA_YO_SMALL, CHAR_JP_KATA_YO_SMALL },
    { CHAR_JP_KATA_GA, CHAR_JP_KATA_GA },
    { CHAR_JP_KATA_GI, CHAR_JP_KATA_GI },
    { CHAR_JP_KATA_GU, CHAR_JP_KATA_GU },
    { CHAR_JP_KATA_GE, CHAR_JP_KATA_GE },
    { CHAR_JP_KATA_GO, CHAR_JP_KATA_GO },
    { CHAR_JP_KATA_ZA, CHAR_JP_KATA_ZA },
    { CHAR_JP_KATA_JI, CHAR_JP_KATA_JI },
    { CHAR_JP_KATA_ZU, CHAR_JP_KATA_ZU },
    { CHAR_JP_KATA_ZE, CHAR_JP_KATA_ZE },
    { CHAR_JP_KATA_ZO, CHAR_JP_KATA_ZO },
    { CHAR_JP_KATA_DA, CHAR_JP_KATA_DA },
    { CHAR_JP_KATA_DJI, CHAR_JP_KATA_DJI },
    { CHAR_JP_KATA_DZU, CHAR_JP_KATA_DZU },
    { CHAR_JP_KATA_DE, CHAR_JP_KATA_DE },
    { CHAR_JP_KATA_DO, CHAR_JP_KATA_DO },
    { CHAR_JP_KATA_BA, CHAR_JP_KATA_BA },
    { CHAR_JP_KATA_BI, CHAR_JP_KATA_BI },
    { CHAR_JP_KATA_BU, CHAR_JP_KATA_BU },
    { CHAR_JP_KATA_BE, CHAR_JP_KATA_BE },
    { CHAR_JP_KATA_BO, CHAR_JP_KATA_BO },
    { CHAR_JP_KATA_PA, CHAR_JP_KATA_PA },
    { CHAR_JP_KATA_PI, CHAR_JP_KATA_PI },
    { CHAR_JP_KATA_PU, CHAR_JP_KATA_PU },
    { CHAR_JP_KATA_PE, CHAR_JP_KATA_PE },
    { CHAR_JP_KATA_PO, CHAR_JP_KATA_PO },
    { CHAR_JP_KATA_SOKUON, CHAR_JP_KATA_SOKUON },
    { CHAR_JP_0, CHAR_0 },
    { CHAR_JP_1, CHAR_1 },
    { CHAR_JP_2, CHAR_2 },
    { CHAR_JP_3, CHAR_3 },
    { CHAR_JP_4, CHAR_4 },
    { CHAR_JP_5, CHAR_5 },
    { CHAR_JP_6, CHAR_6 },
    { CHAR_JP_7, CHAR_7 },
    { CHAR_JP_8, CHAR_8 },
    { CHAR_JP_9, CHAR_9 },
    { CHAR_JP_EMARK, CHAR_EMARK },
    { CHAR_JP_QMARK, CHAR_QMARK },
    { CHAR_JP_FULL_STOP, CHAR_PERIOD },
    { CHAR_JP_MINUS, CHAR_MINUS },
    { CHAR_JP_DOT, CHAR_DOT },
    { CHAR_JP_ELLIPSIS, CHAR_ELLIPSIS },
    { CHAR_JP_DOUBLE_QUOTE_OPEN, CHAR_JP_DOUBLE_QUOTE_OPEN },
    { CHAR_JP_DOUBLE_QUOTE_CLOSE, CHAR_JP_DOUBLE_QUOTE_CLOSE },
    { CHAR_JP_SINGLE_QUOTE_OPEN, CHAR_SINGLE_QUOTE_OPEN },
    { CHAR_JP_SINGLE_QUOTE_CLOSE, CHAR_SINGLE_QUOTE_CLOSE },
    { CHAR_JP_MALE, CHAR_MALE },
    { CHAR_JP_FEMALE, CHAR_FEMALE },
    { CHAR_JP_CURRENCY, CHAR_JP_CURRENCY },
    { CHAR_JP_COMMA, CHAR_COMMA },
    { CHAR_JP_MULTIPLY, CHAR_MULTIPLY },
    { CHAR_JP_SLASH, CHAR_SLASH },
    { CHAR_JP_A, CHAR_A },
    { CHAR_JP_B, CHAR_B },
    { CHAR_JP_C, CHAR_C },
    { CHAR_JP_D, CHAR_D },
    { CHAR_JP_E, CHAR_E },
    { CHAR_JP_F, CHAR_F },
    { CHAR_JP_G, CHAR_G },
    { CHAR_JP_H, CHAR_H },
    { CHAR_JP_I, CHAR_I },
    { CHAR_JP_J, CHAR_J },
    { CHAR_JP_K, CHAR_K },
    { CHAR_JP_L, CHAR_L },
    { CHAR_JP_M, CHAR_M },
    { CHAR_JP_N, CHAR_N },
    { CHAR_JP_O, CHAR_O },
    { CHAR_JP_P, CHAR_P },
    { CHAR_JP_Q, CHAR_Q },
    { CHAR_JP_R, CHAR_R },
    { CHAR_JP_S, CHAR_S },
    { CHAR_JP_T, CHAR_T },
    { CHAR_JP_U, CHAR_U },
    { CHAR_JP_V, CHAR_V },
    { CHAR_JP_W, CHAR_W },
    { CHAR_JP_X, CHAR_X },
    { CHAR_JP_Y, CHAR_Y },
    { CHAR_JP_Z, CHAR_Z },
    { CHAR_JP_a, CHAR_a },
    { CHAR_JP_b, CHAR_b },
    { CHAR_JP_c, CHAR_c },
    { CHAR_JP_d, CHAR_d },
    { CHAR_JP_e, CHAR_e },
    { CHAR_JP_f, CHAR_f },
    { CHAR_JP_g, CHAR_g },
    { CHAR_JP_h, CHAR_h },
    { CHAR_JP_i, CHAR_i },
    { CHAR_JP_j, CHAR_j },
    { CHAR_JP_k, CHAR_k },
    { CHAR_JP_l, CHAR_l },
    { CHAR_JP_m, CHAR_m },
    { CHAR_JP_n, CHAR_n },
    { CHAR_JP_o, CHAR_o },
    { CHAR_JP_p, CHAR_p },
    { CHAR_JP_q, CHAR_q },
    { CHAR_JP_r, CHAR_r },
    { CHAR_JP_s, CHAR_s },
    { CHAR_JP_t, CHAR_t },
    { CHAR_JP_u, CHAR_u },
    { CHAR_JP_v, CHAR_v },
    { CHAR_JP_w, CHAR_w },
    { CHAR_JP_x, CHAR_x },
    { CHAR_JP_y, CHAR_y },
    { CHAR_JP_z, CHAR_z },
    { CHAR_ARROW_MENU, CHAR_ARROW_MENU },
    { CHAR_JP_HW_COLON, CHAR_COLON },
    { CHAR_A_DIERESIS, CHAR_A_DIERESIS },
    { CHAR_O_DIERESIS, CHAR_O_DIERESIS },
    { CHAR_U_DIERESIS, CHAR_U_DIERESIS },
    { CHAR_a_DIERESIS, CHAR_a_DIERESIS },
    { CHAR_o_DIERESIS, CHAR_o_DIERESIS },
    { CHAR_u_DIERESIS, CHAR_u_DIERESIS }
};

static u16 GetSpaceChar(u32 language)
{
    return (language == JAPANESE) ? CHAR_JP_SPACE : CHAR_SPACE;
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
        return CHAR_ANGLE_QUOTE_OPEN;
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
        return CHAR_ANGLE_QUOTE_CLOSE;
    case GERMAN:
        return CHAR_DOUBLE_QUOTE_OPEN;
    }
}

BOOL GBA_ConvertStringToDS(const u8 *src, charcode_t *dst, u32 length, u32 language)
{
    BOOL nonJa = (language != JAPANESE);

    u32 i;
    for (i = 0; i < (length - 1); i++) {
        if (src[i] == GBA_EOS) {
            break;
        }

        if (src[i] >= NELEMS(sGBACharToDSChars)) {
            int invalidStrLen = min(length - 1, 10);

            int j;
            for (j = 0; j < invalidStrLen; j++) {
                dst[j] = CHAR_QMARK;
            }

            dst[j] = CHAR_EOS;
            return FALSE;
        }

        switch (sGBACharToDSChars[src[i]][nonJa]) {
        case CHAR_JP_SPACE:
            dst[i] = GetSpaceChar(language);
            break;
        case CHAR_JP_DOUBLE_QUOTE_OPEN:
            dst[i] = GetDoubleQuoteOpenChar(language);
            break;
        case CHAR_JP_DOUBLE_QUOTE_CLOSE:
            dst[i] = GetDoubleQuoteCloseChar(language);
            break;
        default:
            dst[i] = sGBACharToDSChars[src[i]][nonJa];
            break;
        }
    }

    dst[i] = CHAR_EOS;
    return TRUE;
}
