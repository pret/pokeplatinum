#ifndef _MSL_TIMEB_H
#define _MSL_TIMEB_H

#include <ansi_params.h>
#include <sys/stat.h>

_MSL_BEGIN_EXTERN_C

#pragma options align=native

/*-	EJS 030922: ANSI-safe name -*/
struct _timeb {
    __std(time_t)       time;           /* Seconds in the current time					*/
    unsigned short millitm;             /* Milliseconds in the current time				*/
    short timezone;                     /* The difference,in minutes, between local time
                                           and Greenwich Mean time						*/
    short dstflag;                      /* 1 if Daylight Savings time is in effect      */
};

#define timeb _timeb                    /*	EJS 030922: compatibility name */

#pragma options align=reset

_MSL_END_EXTERN_C

#endif /* _MSL_TIMEB_H */