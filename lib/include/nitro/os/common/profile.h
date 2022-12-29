#ifndef NITRO_OS_PROFILE_H_
#define NITRO_OS_PROFILE_H_

#ifdef __cplusplus
extern "C" {
#endif

#ifdef SDK_PROFILE_CALLTRACE
#  define OS_PROFILE_AVAILABLE
#  define OS_PROFILE_CALL_TRACE
#endif

#ifdef SDK_PROFILE_FUNCTIONCOST
#  define OS_PROFILE_AVAILABLE
#  define OS_PROFILE_FUNCTION_COST
#endif

#ifdef OS_PROFILE_AVAILABLE

#if defined(OS_PROFILE_CALL_TRACE) && defined(OS_PROFILE_FUNCTION_COST)
***ERROR: cannot specify both options of OS_PROFILE_CALL_TRACE and OS_PROFILE_FUNCTION_COST at a same
time.
#endif

#ifdef SDK_FINALROM
#  define OS_NO_CALLTRACE
#  define OS_NO_FUNCTIONCOST
#endif
#endif

void __PROFILE_ENTRY(void);
void __PROFILE_EXIT(void);

#ifdef __cplusplus
}
#endif

#endif
