#include <ansi_params.h>
#include <assert.h>
#include <assert_api.h>
#include <stdio.h>
#include <stdlib.h>

void __msl_assertion_failed (char const * condition, char const * filename, char const * funcname, int lineno) {
#if !_MSL_OS_DISK_FILE_SUPPORT
    #if _MSL_CONSOLE_SUPPORT
    #if _MSL_ASSERT_DISPLAYS_FUNC
    printf("Assertion (%s) failed in \"%s\", function \"%s\", line %d\n", condition, filename, funcname, lineno);
    #else
    printf("Assertion (%s) failed in \"%s\", line %d\n", condition, filename, lineno);
    #endif
    #endif
#else
    #if _MSL_ASSERT_DISPLAYS_FUNC
    fprintf(stderr, "Assertion (%s) failed in \"%s\", function \"%s\", line %d\n", condition, filename, funcname, lineno);
    #else
    fprintf(stderr, "Assertion (%s) failed in \"%s\", line %d\n", condition, filename, lineno);
    #endif
#endif
    abort();
}