#ifndef _MSL_TIME_API_H
#define _MSL_TIME_API_H

#include <ansi_params.h>
#include <ctime>

_MSL_BEGIN_EXTERN_C

#if _MSL_OS_TIME_SUPPORT

extern const short __msl_month_to_days[2][13];

clock_t __get_clock(void) _MSL_CANT_THROW;
time_t __get_time(void) _MSL_CANT_THROW;
int __isdst(void) _MSL_CANT_THROW;
int __MSL_ISO8601Week(const struct tm *, int *) _MSL_CANT_THROW;
time_t __MSL_ISO8601NewYear(int) _MSL_CANT_THROW;
int __msl_leap_year(int) _MSL_CANT_THROW;
void __msl_asciitime(struct tm, char *) _MSL_CANT_THROW;
int __to_gm_time(time_t *) _MSL_CANT_THROW;
#if !_MSL_TIME_T_IS_LOCALTIME
int __to_local_time(time_t *) _MSL_CANT_THROW;
#endif
void __msl_clear_tm(struct tm *) _MSL_CANT_THROW;
int __msl_week_num(const struct tm *, int) _MSL_CANT_THROW;
void __msl_time2tm(time_t, struct tm *) _MSL_CANT_THROW;
char * __MSL_extract_name(char *, int) _MSL_CANT_THROW;

#endif

_MSL_END_EXTERN_C

#endif
