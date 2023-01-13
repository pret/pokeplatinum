#ifndef _MSL_ABORT_EXIT_H
#define _MSL_ABORT_EXIT_H

#include <ansi_params.h>

_MSL_BEGIN_EXTERN_C

extern void _MSL_CDECL (* __stdio_exit)  (void);
extern void _MSL_CDECL (* __console_exit)(void);

extern int __aborting;

int _MSL_CDECL __atexit(void(_MSL_CDECL * func)(void)) _MSL_CANT_THROW;
void _MSL_CDECL __exit(int status) _MSL_CANT_THROW;

#define __setup_exit()

int _MSL_CDECL __register_atexit(void (*func)(void)) _MSL_CANT_THROW;
extern void _MSL_CDECL __destroy_global_chain(void) _MSL_CANT_THROW;

#if _MSL_USES_EXIT_PROCESS
_MSL_IMP_EXP_C void _MSL_CDECL _ExitProcess(void) _MSL_CANT_THROW;
#endif

_MSL_END_EXTERN_C

#endif
