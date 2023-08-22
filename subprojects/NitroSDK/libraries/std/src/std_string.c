#include <nitro.h>

char * STD_CopyString (char *destp, const char *srcp)
{
    char * retval = destp;

    SDK_ASSERT(destp && srcp);

    while (*srcp)
    {
        *destp++ = (char)*srcp++;
    }
    *destp = '\0';

    return retval;
}

int STD_CopyLStringZeroFill (char *destp, const char *srcp, int n)
{
    int i;
    const char *s = srcp;

    SDK_ASSERT(destp && srcp && n >= 0);

    for (i = 0; i < n - 1; i++)
    {
        destp[i] = (char)*s;
        if (*s)
        {
            s++;
        }
    }
    destp[i] = '\0';

    return STD_GetStringLength(srcp);
}

int STD_CopyLString (char *destp, const char *srcp, int siz)
{
    int i;
    const char *s = srcp;

    SDK_ASSERT(destp && srcp && siz >= 0);

    for (i = 0; i < siz - 1; i++)
    {
        destp[i] = (char)*s;
        if (*s)
        {
            s++;
        }
        else
        {
            break;
        }
    }

    if ((i >= siz - 1) && (siz != 0))
    {
        destp[i] = '\0';
    }

    return STD_GetStringLength(srcp);
}

char * STD_SearchString (const char *srcp, const char *str)
{
    int i;
    int n;

    SDK_ASSERT(srcp && str);

    for (i = 0; srcp[i]; i++)
    {
        n = 0;
        while (str[n] && srcp[i + n] == str[n])
        {
            n++;
        }

        if (str[n] == '\0')
        {
            return (char *)&srcp[i];
        }
    }

    return NULL;
}

int STD_GetStringLength (const char *str)
{
    int     n = 0;
    while (str[n])
    {
        n++;
    }
    return n;
}

char * STD_ConcatenateString (char *str1, const char *str2)
{
    int     n = STD_GetStringLength(str1);
    (void)STD_CopyString(&str1[n], str2);
    return str1;
}

int STD_CompareString (const char *str1, const char *str2)
{
    while (*str1 == *str2 && *str1)
    {
        str1++;
        str2++;
    }
    return (*str1 - *str2);
}

int STD_CompareNString (const char *str1, const char *str2, int len)
{
    if (len)
    {
        int i;
        for (i = 0; i < len; ++i)
        {
            int     c = (int)(MI_ReadByte(str1 + i));
            int     d = (int)(MI_ReadByte(str2 + i));
            if (c != d)
            {
                return (int)(c - d);
            }
        }
    }
    return 0;
}

int STD_CompareLString (const char *str1, const char *str2)
{
    return STD_CompareNString(str1, str2, STD_GetStringLength(str2));
}

SDK_WEAK_SYMBOL int STD_TSScanf (const char *src, const char *fmt, ...)
{
    int ret;
    va_list va;
    va_start(va, fmt);
    ret = STD_TVSScanf(src, fmt, va);
    va_end(va);
    return ret;
}

static BOOL STDi_IsSpace (int c)
{
    return (c == '\f') || (c == '\n') || (c == '\r') || (c == '\t') || (c == '\v') || (c == ' ');
}

inline static u32 STDi_GetBitset (const u32 *bitset, u32 i)
{
    const u32 pos = (u32)(i >> 5UL);
    const u32 bit = (u32)(i & 31UL);
    return ((bitset[pos] >> bit) & 1UL);
}

inline static void STDi_SetBitset (u32 *bitset, u32 i)
{
    const u32 pos = (i >> 5UL);
    const u32 bit = (i & 31UL);
    bitset[pos] |= (1UL << bit);
}

static void STDi_FillBitset (u32 *bitset, u32 a, u32 b)
{
    while (a < b)
    {
        const u32 pos = (u32)(a >> 5UL);
        const u32 bit = (u32)(a & 31UL);
        u32     mask = (~0UL << bit);
        a = (pos + 1UL) * 32UL;
        if (a > b)
        {
            mask &= (u32)((1UL << (b & 31UL)) - 1UL);
        }
        bitset[pos] |= mask;
    }
}

SDK_WEAK_SYMBOL int STD_TVSScanf (const char *src, const char *fmt, va_list vlist)
{
    const char *src_base = src;
    BOOL matched = FALSE;
    int stored = 0;

    while (*fmt)
    {
        char c = *fmt;

        if (STDi_IsSpace(c))
        {
            while (STDi_IsSpace(*fmt))
            {
                ++fmt;
            }
            while (STDi_IsSpace(*src))
            {
                ++src;
            }
            continue;
        }

        else if (c != '%')
        {
            if (c != *src)
            {
                break;
            }

            if ((unsigned int)(((unsigned char)c ^ 0x20) - 0xA1) < 0x3C)
            {
                if (c != *++src)
                {
                    break;
                }
            }
            ++src;
            ++fmt;
        }

        else if (fmt[1] == '%')
        {
            if (c != *src)
            {
                break;
            }
            fmt += 2;
        }

        else
        {
            enum
            {
                flag_plus = 000002,
                flag_minus = 000010,
                flag_l1 = 000040,
                flag_h1 = 000100,
                flag_l2 = 000200,
                flag_h2 = 000400,
                flag_unsigned = 010000,
                flag_ignored = 020000,
                flag_end
            };
            u64     val = 0;
            int     flag = 0, width = 0, radix = 10;
            int     digit;

            c = *++fmt;
            if (c == '*')
            {
                flag |= flag_ignored;
                c = *++fmt;
            }

            while ((c >= '0') && (c <= '9'))
            {
                width = (width * 10) + c - '0';
                c = *++fmt;
            }

            switch (c)
            {
            case 'h':
                c = *++fmt;
                if (c != 'h')
                {
                    flag |= flag_h1;
                }
                else
                    flag |= flag_h2, c = *++fmt;
                break;
            case 'l':
                c = *++fmt;
                if (c != 'l')
                    flag |= flag_l1;
                else
                    flag |= flag_l2, c = *++fmt;
                break;
            }

            switch (c) {
            case 'd':
                radix = 10;
                goto get_integer;
            case 'i':
                radix = -1;
                goto get_integer;
            case 'o':
                radix = 8;
                goto get_integer;
            case 'u':
                radix = 10;
                flag |= flag_unsigned;
                goto get_integer;
            case 'X':
            case 'x':
            case 'p':
                radix = 16;
                flag |= flag_unsigned;
                goto get_integer;
            case 's':
            case 'c':
                goto store_string;
            case '[':
                goto store_char_class;
            case 'n':
                if (!(flag & flag_ignored))
                {
                    --stored;
                }
                val = src - src_base;
                c = *++fmt;
                goto store_integer;
            }

          invalid:
            break;

          get_integer:
            ++fmt;
            c = *src;

            while (STDi_IsSpace(c))
            {
                c = *++src;
            }

            for (;; c = *++src)
            {
                if (c == '+')
                {
                    flag |= flag_plus;
                }
                else if (c == '-')
                {
                    if ((flag & flag_unsigned) != 0)
                    {

                    }
                    flag |= flag_minus;
                }
                else
                {
                    break;
                }
            }

            if (radix == -1)
            {
                if (c != '0')
                {
                    radix = 10;
                }
                else if ((src[1] == 'x') || (src[1] == 'X'))
                {
                    radix = 16;
                }
                else
                {
                    radix = 8;
                }
            }

            if ((radix == 16) && (c == '0') && ((src[1] == 'x') || (src[1] == 'X')))
            {
                src += 2;
                c = *src;
            }

            if (width == 0)
            {
                width = 0x7FFFFFFF;
            }
            for (digit = 0; digit < width; ++digit)
            {
                u32     d = (u32)(c - '0');
                if (d >= 10)
                {
                    d -= (u32)('a' - '0');
                    if (d < 6)
                    {
                        d += 10;
                    }
                    else
                    {
                        d -= (u32)('A' - 'a');
                        if (d < 6)
                        {
                            d += 10;
                        }
                    }
                }
                if (d >= radix)
                {
                    break;
                }
                c = *++src;
                val = val * radix + d;
            }

            if (digit == 0)
            {
                break;
            }

            if (flag & flag_minus)
            {
                val = (u64)(val * -1);
            }

            matched = TRUE;
          store_integer:

            if (!(flag & flag_ignored))
            {
                ++stored;
                if (flag & flag_h2)
                {
                    *va_arg(vlist, u8 *) = (u8)val;
                }
                else if (flag & flag_h1)
                {
                    *va_arg(vlist, u16 *) = (u16)val;
                }
                else if (flag & flag_l2)
                {
                    *va_arg(vlist, u64 *) = (u64)val;
                }
                else
                {
                    *va_arg(vlist, u32 *) = (u32)val;
                }
            }
            continue;

          store_string:
            {
                char *dst = NULL;
                ++fmt;

                matched = TRUE;
                if (!(flag & flag_ignored))
                {
                    ++stored;
                    dst = va_arg(vlist, char *);
                }

                if (c == 's')
                {
                    if (width == 0)
                    {
                        width = 0x7FFFFFFF;
                    }
                    for (c = *src; STDi_IsSpace(c); c = *++src)
                    {
                    }
                    for (; c && !STDi_IsSpace(c) && (width > 0); --width, c = *++src)
                    {
                        if (dst)
                        {
                            *dst++ = c;
                        }
                    }
                    if (dst)
                    {
                        *dst++ = '\0';
                    }
                }
                else
                {
                    if (width == 0)
                    {
                        width = 1;
                    }
                    for (c = *src; c && (width > 0); --width, c = *++src)
                    {
                        if (dst)
                        {
                            *dst++ = c;
                        }
                    }
                    if (dst && (width > 0))
                    {
                        *dst++ = '\0';
                    }
                }
            }
            continue;

          store_char_class:
            ++fmt;

            {
                char   *dst = NULL;

                u32     bitset[256 / (8 * sizeof(u32))];
                u32     matchcond = 1;
                u32     from = 0;
                BOOL    in_range = FALSE;
                MI_CpuFill32(bitset, 0x00000000UL, sizeof(bitset));
                if (*fmt == '^')
                {
                    matchcond = 0;
                    ++fmt;
                }

                if (*fmt == ']')
                {
                    STDi_SetBitset(bitset, (u8)*fmt);
                    ++fmt;
                }

                for (;; ++fmt)
                {
                    if (!*fmt || (*fmt == ']'))
                    {
                        if (in_range)
                        {
                            STDi_SetBitset(bitset, from);
                            STDi_SetBitset(bitset, (u32)'-');
                        }
                        if (*fmt == ']')
                        {
                            ++fmt;
                        }
                        break;
                    }

                    else if (!in_range)
                    {
                        if ((from != 0) && (*fmt == '-'))
                        {
                            in_range = TRUE;
                        }
                        else
                        {
                            STDi_SetBitset(bitset, (u8)*fmt);
                            from = (u8)*fmt;
                        }
                    }

                    else
                    {
                        u32 to = (u8)*fmt;

                        if (from > to)
                        {
                            STDi_SetBitset(bitset, from);
                            STDi_SetBitset(bitset, (u32)'-');
                            STDi_SetBitset(bitset, to);
                        }

                        else
                        {
                            STDi_FillBitset(bitset, from, to + 1UL);
                        }
                        in_range = FALSE;
                        from = 0;
                    }
                }

                matched = TRUE;
                if (!(flag & flag_ignored))
                {
                    ++stored;
                    dst = va_arg(vlist, char *);
                }
                if (width == 0)
                {
                    width = 0x7FFFFFFF;
                }
                for (c = *src; c && (width > 0); --width, c = *++src)
                {
                    if (STDi_GetBitset(bitset, (u8)c) != matchcond)
                    {
                        break;
                    }
                    if (dst)
                    {
                        *dst++ = c;
                    }
                }
                if (dst)
                {
                    *dst++ = '\0';
                }
            }
            continue;

        }
    }

    return (*src || matched) ? stored : -1;
}
