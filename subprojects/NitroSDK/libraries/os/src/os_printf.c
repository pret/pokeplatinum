#include <nitro.h>

#ifdef SDK_LINK_ISD
# pragma warn_extracomma off
# include <isdbglib.h>
# pragma warn_extracomma reset
#else
void ISDPrint(const char *);
#endif

#ifndef SDK_FINALROM
static char common_buffer[256];
#endif

#if !defined(SDK_FINALROM) && defined(SDK_NO_MESSAGE)
#undef OSi_Warning
#undef OSi_TWarning
#undef OSi_Panic
#undef OSi_TPanic
void    OSi_Warning(const char *file, int line, const char *fmt, ...);
void    OSi_TWarning(const char *file, int line, const char *fmt, ...);
void    OSi_Panic(const char *file, int line, const char *fmt, ...);
void    OSi_TPanic(const char *file, int line, const char *fmt, ...);
#endif

#ifndef SDK_FINALROM
SDK_WEAK_SYMBOL void OS_PutChar (char c)
{
	char str[2];

	str[0] = c;
	str[1] = '\0';

	OS_PutString(str);
}
#endif

static void OS_PutStringInit(const char *str);

#ifndef SDK_FINALROM
static void OS_PutStringAris(const char *str);
static void OS_PutStringISD(const char *str);
#ifdef  SDK_ARM7
static void OS_PutStringPrnSrv(const char *str);
#endif
#endif

#ifndef SDK_FINALROM
void (*OS_PutString) (const char *str) = OS_PutStringInit;
#endif

static void OS_PutStringInit (const char *str)
{
#ifndef SDK_FINALROM
	OSIntrMode intr = OS_DisableInterrupts();

#ifdef  SDK_ARM9
	if (OS_IsRunOnEmulator()) {
		OS_PutString = OS_PutStringAris;
	} else
#endif
	{
#ifdef  SDK_ARM7
		OS_PutString = OS_PutStringPrnSrv;
#else
		OS_PutString = OS_PutStringISD;
#endif
	}

	OS_PutString(str);

	(void)OS_RestoreInterrupts(intr);

#else
	(void)str;
#endif
}

#ifndef SDK_FINALROM
#ifdef  SDK_CW_WARNOFF_SAFESTRB
#include <nitro/code32.h>
#endif
static void OS_PutStringAris (const char *str)
{
	char c;

	while ('\0' != (c = *str)) {
		reg_OS_EMU_CONSOLE_OUT = (u8)c;
		str++;
	}
}

#ifdef  SDK_CW_WARNOFF_SAFESTRB
#include <nitro/codereset.h>
#endif
#endif

#ifndef SDK_FINALROM
static void OS_PutStringISD (const char *str)
{
	OS_InitLock();

	OS_PutString = ISDPrint;
	OS_PutString(str);
}
#endif

#ifndef SDK_FINALROM
#if     defined(SDK_ARM9) || defined(SDK_USE_VSNPRINTF)
SDK_WEAK_SYMBOL void OS_VPrintf (const char *fmt, va_list vlist)
{
	(void)vsnprintf(common_buffer, sizeof(common_buffer), fmt, vlist);
	OS_PutString(common_buffer);
}
#else
SDK_WEAK_SYMBOL void OS_VPrintf (const char *fmt, va_list vlist)
{
	OS_TVPrintf(fmt, vlist);
}
#endif
SDK_WEAK_SYMBOL void OS_TVPrintf (const char *fmt, va_list vlist)
{
	(void)OS_VSNPrintf(common_buffer, sizeof(common_buffer), fmt, vlist);
	OS_PutString(common_buffer);
}
SDK_WEAK_SYMBOL void OS_TVPrintfEx (const char *fmt, va_list vlist)
{
	(void)OS_VSNPrintfEx(common_buffer, sizeof(common_buffer), fmt, vlist);
	OS_PutString(common_buffer);
}
#endif

#ifndef SDK_FINALROM
SDK_WEAK_SYMBOL void OS_Printf (const char *fmt, ...)
{
	va_list vlist;

	va_start(vlist, fmt);
	OS_VPrintf(fmt, vlist);
	va_end(vlist);
}

SDK_WEAK_SYMBOL void OS_TPrintf (const char *fmt, ...)
{
	va_list vlist;

	va_start(vlist, fmt);
	OS_TVPrintf(fmt, vlist);
	va_end(vlist);
}

SDK_WEAK_SYMBOL void OS_TPrintfEx (const char *fmt, ...)
{
	va_list vlist;

	va_start(vlist, fmt);
	OS_TVPrintfEx(fmt, vlist);
	va_end(vlist);
}
#endif

#ifndef SDK_FINALROM
SDK_WEAK_SYMBOL void OSi_Warning (const char *file, int line, const char *fmt, ...)
{
	va_list vlist;

	va_start(vlist, fmt);
	OS_Printf("%s:%d Warning:", file, line);
	OS_VPrintf(fmt, vlist);
	OS_Printf("\n");
	va_end(vlist);
}

SDK_WEAK_SYMBOL void OSi_TWarning (const char *file, int line, const char *fmt, ...)
{
	va_list vlist;

	va_start(vlist, fmt);
	OS_TPrintf("%s:%d Warning:", file, line);
	OS_TVPrintf(fmt, vlist);
	OS_TPrintf("\n");
	va_end(vlist);
}
#endif

#ifndef SDK_FINALROM
void (*OSi_FuncTerminate) (void) = OS_Terminate;

SDK_WEAK_SYMBOL void OSi_Panic (const char *file, int line, const char *fmt, ...)
{
	va_list vlist;

	va_start(vlist, fmt);
	(void)OS_DisableInterrupts();
	OS_Printf("%s:%d Panic:", file, line);
	OS_VPrintf(fmt, vlist);
	OS_Printf("\n");
	OSi_FuncTerminate();
}

SDK_WEAK_SYMBOL void OSi_TPanic (const char *file, int line, const char *fmt, ...)
{
	va_list vlist;

	va_start(vlist, fmt);
	(void)OS_DisableInterrupts();
	OS_TPrintf("%s:%d Panic:", file, line);
	OS_TVPrintf(fmt, vlist);
	OS_TPrintf("\n");
	OSi_FuncTerminate();
}
#endif

#ifdef   SDK_ARM9
#ifndef  SDK_FINALROM
void OS_InitPrintServer (void)
{
	OSPrintServerBuffer *p;

	OS_InitArena();
	p = OS_AllocFromSharedArenaHi(sizeof(OSPrintServerBuffer), 4);
	p->in = p->out = 0UL;
	PXI_SetComponentParam((u32)p);
}
#endif
#endif

#ifdef SDK_ARM9
#ifndef  SDK_FINALROM
#include <nitro/code32.h>
void OS_PrintServer (void)
{
	OSPrintServerBuffer *p;
	register OSPrintWChar word;

	u32 in, out;
	int i;

	p = (OSPrintServerBuffer *)PXI_GetComponentParam();

	if (!p) {
		return;
	}

	out = p->out;
	in = p->in;

	while (in != out) {
		i = 0;

		while (in != out && i < sizeof(common_buffer) - 3) {
			word.s = p->buffer[out].s;
			if (word.c[0]) {
				common_buffer[i++] = word.c[0];

				if (word.c[1]) {
					common_buffer[i++] = word.c[1];
				}
			}
			out++;
			if (out >= OS_PRINTSRV_WCHARSIZE)
				out = 0;
		}
		common_buffer[i] = '\0';
		OS_PutString(common_buffer);
	}

	p->out = out;
}

#include <nitro/codereset.h>
#endif
#endif

#ifdef SDK_ARM7
static void OS_PutStringPrnSrv (const char *str)
{
#ifndef SDK_FINALROM
	OSPrintServerBuffer *p;
	register OSPrintWChar word;

	u32 in, in_tmp, out;
	u32 isOdd;

	p = (OSPrintServerBuffer *)PXI_GetComponentParam();
	in = p->in;
	out = p->out;
	isOdd = ((u32)str) & 1;

	while (1) {
		in_tmp = in + 1;
		if (in_tmp >= OS_PRINTSRV_WCHARSIZE)
			in_tmp = 0;
		if (out == in_tmp)
			break;

		if (isOdd) {
			p->buffer[in].s = word.s = (u16)((*(u16 *)(str - 1)) & 0xff00);
			str++;
			isOdd = 0UL;
			if (!word.c[1])
				break;
			in = in_tmp;
		} else {
			p->buffer[in].s = word.s = *(u16 *)str;
			str += 2;
			if (!word.c[0])
				break;
			in = in_tmp;
			if (!word.c[1])
				break;
		}
	}
	p->in = in;
#else
	(void)str;
#endif
}
#endif

#if defined(SDK_CW_WARNOFF_SAFESTRB)
#include <nitro/code32.h>
#endif

typedef struct dst_string_tag {
	size_t len;
	char *cur;
	char *base;
}
dst_string;

static void string_put_char (dst_string *p, char c)
{
	if (p->len > 0)
		*p->cur = c, --p->len;
	++p->cur;
}

static void string_fill_char (dst_string *p, char c, int n)
{
	if (n > 0) {
		size_t i, k = p->len;
		if (k > (size_t) n)
			k = (size_t) n;
		for (i = 0; i < k; ++i)
			p->cur[i] = c;
		p->len -= k;
		p->cur += n;
	}
}

static void string_put_string (dst_string *p, const char *s, int n)
{
	if (n > 0) {
		size_t i, k = p->len;
		if (k > (size_t) n)
			k = (size_t) n;
		for (i = 0; i < k; ++i)
			p->cur[i] = s[i];
		p->len -= k;
		p->cur += n;
	}
}

SDK_WEAK_SYMBOL int OS_SPrintf (char *dst, const char *fmt, ...)
{
	int ret;
	va_list va;
	va_start(va, fmt);
	ret = OS_VSPrintf(dst, fmt, va);
	va_end(va);
	return ret;
}

SDK_WEAK_SYMBOL int OS_VSPrintf (char *dst, const char *fmt, va_list vlist)
{
	return OS_VSNPrintf(dst, 0x7FFFFFFF, fmt, vlist);
}

SDK_WEAK_SYMBOL int OS_SNPrintf (char *dst, size_t len, const char *fmt, ...)
{
	int ret;
	va_list va;
	va_start(va, fmt);
	ret = OS_VSNPrintf(dst, len, fmt, va);
	va_end(va);
	return ret;
}

SDK_WEAK_SYMBOL int OS_VSNPrintf (char *dst, size_t len, const char *fmt, va_list vlist)
{
	return STD_TVSNPrintf(dst, len, fmt, vlist);
}

SDK_WEAK_SYMBOL int OS_VSNPrintfEx (char *dst, size_t len, const char *fmt, va_list vlist)
{
	char buf[24];
	int n_buf;
	char prefix[2];
	int n_prefix;

	const char *s = fmt;

	dst_string str;
	str.len = len, str.cur = str.base = dst;

	while (*s) {
		if ((unsigned int)(((unsigned char)*s ^ 0x20) - 0xA1) < 0x3C) {

			string_put_char(&str, *s++);
			if (*s)
				string_put_char(&str, *s++);
		} else if (*s != '%')   {

			string_put_char(&str, *s++);
		} else {

			enum {
				flag_blank = 000001,
				flag_plus = 000002,
				flag_sharp = 000004,
				flag_minus = 000010,
				flag_zero = 000020,
				flag_l1 = 000040,
				flag_h1 = 000100,
				flag_l2 = 000200,
				flag_h2 = 000400,
				flag_unsigned = 010000,
				flag_binary = 020000,
				flag_colon = 040000,
				flag_end
			};
			int flag = 0, width = 0, precision = -1, radix = 10;
			char hex_char = 'a' - 10;
			const char *p_start = s;

			for (;;) {
				switch (*++s) {
				case '+':
					if (s[-1] != ' ')
						break;
					flag |= flag_plus;
					continue;
				case ' ':
					flag |= flag_blank;
					continue;
				case '-':
					flag |= flag_minus;
					continue;
				case '0':
					flag |= flag_zero;
					continue;
				case ':':
					flag |= flag_colon;
					continue;
				}
				break;
			}

			if (*s == '*') {
				++s, width = va_arg(vlist, int);
				if (width < 0)
					width = -width, flag |= flag_minus;
			} else {
				while ((*s >= '0') && (*s <= '9'))
					width = (width * 10) + *s++ - '0';
			}

			if (*s == '.') {
				++s, precision = 0;
				if (*s == '*') {
					++s, precision = va_arg(vlist, int);
					if (precision < 0)
						precision = -1;
				} else {
					while ((*s >= '0') && (*s <= '9'))
						precision = (precision * 10) + *s++ - '0';
				}
			}

			switch (*s) {
			case 'h':
				if (*++s != 'h')
					flag |= flag_h1;
				else
					++s, flag |= flag_h2;
				break;
			case 'l':
				if (*++s != 'l')
					flag |= flag_l1;
				else
					++s, flag |= flag_l2;
				break;
			}

			switch (*s) {
			case 'd':
			case 'i':
				goto put_integer;
			case 'o':
				radix = 8;
				flag |= flag_unsigned;
				goto put_integer;
			case 'u':
				flag |= flag_unsigned;
				goto put_integer;
			case 'X':
				hex_char = 'A' - 10;
				goto put_hexadecimal;
			case 'x':
				goto put_hexadecimal;
			case 'p':

				flag |= flag_sharp;
				precision = 8;
				goto put_hexadecimal;

			case 'C':
				flag |= flag_l1;
			case 'c':
				if (precision >= 0)
					goto put_invalid;
				{
					int c = va_arg(vlist, int);
					width -= 1;
					if (flag & flag_minus) {
						if (flag & flag_l1) {
							char dst[2];

							if (STD_ConvertCharUnicodeToSjis(dst, (u16)c) == 1) {
								string_put_char(&str, dst[0]);
							} else {
								string_put_string(&str, dst, 2);
							}
						} else {
							string_put_char(&str, (char)c);
						}
						string_fill_char(&str, ' ', width);
					} else {
						char pad = (char)((flag & flag_zero) ? '0' : ' ');
						string_fill_char(&str, pad, width);

						if (flag & flag_l1) {
							char dst[2];

							if (STD_ConvertCharUnicodeToSjis(dst, (u16)c) == 1) {
								string_put_char(&str, dst[0]);
							} else {
								string_put_string(&str, dst, 2);
							}
						} else {
							string_put_char(&str, (char)c);
						}
					}
					++s;
				}
				break;

			case 'S':
				flag |= flag_l1;
			case 's':
			{
				int n_buf = 0;
				const char *p_buf = va_arg(vlist, const char *);

				if (precision < 0) {
					while (p_buf[n_buf]) {
						if (flag & flag_l1) {
							n_buf += 2;
						} else {
							++n_buf;
						}
					}
				} else {
					while ((n_buf < precision) && p_buf[n_buf]) {
						if (flag & flag_l1) {
							n_buf += 2;
						} else {
							++n_buf;
						}
					}
				}
				if (flag & flag_l1) {
					n_buf /= 2;
				}
				width -= n_buf;
				if (flag & flag_minus) {
					if (flag & flag_l1) {
						u16 *w_buf = (u16 *)p_buf;
						char dst[2];

						while (n_buf--) {
							if (STD_ConvertCharUnicodeToSjis(dst, *w_buf) == 1) {
								string_put_char(&str, dst[0]);
							} else {
								string_put_string(&str, dst, 2);
							}
							w_buf++;
						}
					} else {
						string_put_string(&str, p_buf, n_buf);
					}
					string_fill_char(&str, ' ', width);
				} else {
					char pad = (char)((flag & flag_zero) ? '0' : ' ');
					string_fill_char(&str, pad, width);

					if (flag & flag_l1) {
						u16 *w_buf = (u16 *)p_buf;
						char dst[2];

						while (n_buf--) {
							if (STD_ConvertCharUnicodeToSjis(dst, *w_buf) == 1) {
								string_put_char(&str, dst[0]);
							} else {
								string_put_string(&str, dst, 2);
							}
							w_buf++;
						}
					} else {
						string_put_string(&str, p_buf, n_buf);
					}
				}
				++s;
			}
			break;

			case 'B':
				hex_char = 'A' - 10;
			case 'b':
			{
				int n_buf = width;
				int count = 0;
				char c = 0;
				char *p_buf = va_arg(vlist, char *);

				if (n_buf <= 0) {
					n_buf = 1;
				}
				width = 0;

				if (flag & flag_minus) {
					while (1) {

						char left_char, right_char;
						int left = ((p_buf[count] & 0xF0) >> 4);
						int right = (p_buf[count] & 0x0F);

						left_char = (char)((left < 10) ? (left + '0') : (left + hex_char));
						right_char = (char)((right < 10) ? (right + '0') : (right + hex_char));

						string_put_char(&str, left_char);
						string_put_char(&str, right_char);

						count++;

						if (count >= n_buf)
							break;

						if (count == precision) {
							string_put_char(&str, '\n');
						} else if (flag & flag_colon)   {
							string_put_char(&str, ':');
						} else if (flag & flag_blank)   {
							string_put_char(&str, ' ');
						}
					}
					string_fill_char(&str, ' ', width);
				} else {
					char pad = (char)((flag & flag_zero) ? '0' : ' ');
					string_fill_char(&str, pad, width);

					while (1) {
						char left_char, right_char;
						int left = ((p_buf[count] & 0xF0) >> 4);
						int right = (p_buf[count] & 0x0F);

						left_char = (char)((left < 10) ? (left + '0') : (left + hex_char));
						right_char = (char)((right < 10) ? (right + '0') : (right + hex_char));

						string_put_char(&str, left_char);
						string_put_char(&str, right_char);

						count++;

						if (count >= n_buf)
							break;

						if (count == precision) {
							string_put_char(&str, '\n');
						} else if (flag & flag_colon)   {
							string_put_char(&str, ':');
						}
						if (flag & flag_blank) {
							string_put_char(&str, ' ');
						}
					}
				}
				++s;
			}
			break;

			case 'n':
			{
				int pos = str.cur - str.base;
				if (flag & flag_h2)
					;
				else if (flag & flag_h1)
					*va_arg(vlist, signed short *) = (signed short)pos;
				else if (flag & flag_l2)
					*va_arg(vlist, u64 *) = (u64)pos;
				else
					*va_arg(vlist, signed int *) = (signed int)pos;
			}
				++s;
				break;

			case '%':
				if (p_start + 1 != s)
					goto put_invalid;
				string_put_char(&str, *s++);
				break;

			default:
				goto put_invalid;

put_invalid:
				string_put_string(&str, p_start, s - p_start);
				break;

put_hexadecimal:
				radix = 16;
				flag |= flag_unsigned;
put_integer:
				{
					u64 val = 0;
					n_prefix = 0;

					if (flag & flag_minus)
						flag &= ~flag_zero;
					if (precision < 0)
						precision = 1;
					else
						flag &= ~flag_zero;

					if (flag & flag_unsigned) {
						if (flag & flag_h2)
							val = va_arg(vlist, unsigned char);
						else if (flag & flag_h1)
							val = va_arg(vlist, unsigned short);
						else if (flag & flag_l2)
							val = va_arg(vlist, u64);
						else
							val = va_arg(vlist, unsigned long);
						flag &= ~(flag_plus | flag_blank);
						if (flag & flag_sharp) {
							if (radix == 16) {
								if (val != 0) {
									prefix[0] = (char)(hex_char + (10 + 'x' - 'a'));
									prefix[1] = '0';
									n_prefix = 2;
								}
							} else if (radix == 8)   {
								prefix[0] = '0';
								n_prefix = 1;
							}
						}
					} else {
						if (flag & flag_h2)
							val = va_arg(vlist, char);
						else if (flag & flag_h1)
							val = va_arg(vlist, short);
						else if (flag & flag_l2)
							val = va_arg(vlist, u64);
						else
							val = va_arg(vlist, long);
						if ((val >> 32) & 0x80000000) {
							val = ~val + 1;
							prefix[0] = '-';
							n_prefix = 1;
						} else {
							if (val || precision) {
								if (flag & flag_plus) {
									prefix[0] = '+';
									n_prefix = 1;
								} else if (flag & flag_blank)   {
									prefix[0] = ' ';
									n_prefix = 1;
								}
							}
						}
					}
					n_buf = 0;
					switch (radix) {
					case 8:
						while (val != 0) {
							int d = (int)(val & 0x07);
							val >>= 3;
							buf[n_buf++] = (char)(d + '0');
						}
						break;
					case 10:
						if ((val >> 32) == 0) {
#if defined(SDK_CW) || defined(__MWERKS__)
#pragma optimize_for_size off
#endif
							u32 v = (u32)val;
							while (v != 0) {

								u32 r = v / 10;
								int d = (int)(v - (r * 10));
								v = r;
								buf[n_buf++] = (char)(d + '0');
							}
						} else {
							while (val != 0) {
								u64 r = val / 10;
								int d = (int)(val - (r * 10));
								val = r;
								buf[n_buf++] = (char)(d + '0');
							}
						}
						break;
					case 16:
						while (val != 0) {
							int d = (int)(val & 0x0f);
							val >>= 4;
							buf[n_buf++] = (char)((d < 10) ? (d + '0') : (d + hex_char));
						}
						break;
					}
					if ((n_prefix > 0) && (prefix[0] == '0')) {
						n_prefix = 0;
						buf[n_buf++] = '0';
					}
				}
				goto put_to_stream;

put_to_stream:
				{
					int n_pad = precision - n_buf;
					if (flag & flag_zero) {
						if (n_pad < width - n_buf - n_prefix)
							n_pad = width - n_buf - n_prefix;
					}
					if (n_pad > 0)
						width -= n_pad;
					width -= n_prefix + n_buf;
					if (!(flag & flag_minus))
						string_fill_char(&str, ' ', width);
					while (n_prefix > 0)
						string_put_char(&str, prefix[--n_prefix]);
					string_fill_char(&str, '0', n_pad);
					while (n_buf > 0)
						string_put_char(&str, buf[--n_buf]);
					if (flag & flag_minus)
						string_fill_char(&str, ' ', width);
					++s;
				}
				break;
			}
		}
	}

	if (str.len > 0)
		*str.cur = '\0';
	else if (len > 0)
		str.base[len - 1] = '\0';
	return str.cur - str.base;
}

#if defined(SDK_CW_WARNOFF_SAFESTRB)
#include <nitro/codereset.h>
#endif

#ifdef SDK_FINALROM
#ifdef OS_Printf
#undef OS_Printf
#endif
void    OS_Printf(const char *fmt, ...);
void OS_Printf (const char *fmt, ...)
{
#pragma unused( fmt )
}
#endif