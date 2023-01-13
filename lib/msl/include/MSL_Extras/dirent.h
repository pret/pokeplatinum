#ifndef _MSL_DIRENT_H
#define _MSL_DIRENT_H

#include <ansi_params.h>

#if _MSL_OS_DISK_FILE_SUPPORT

#ifndef NAME_MAX
    #define NAME_MAX 260
#endif

#pragma options align=native
#pragma warn_padding off

_MSL_BEGIN_EXTERN_C

struct dirent {
    char d_name[NAME_MAX];
};

_MSL_IMP_EXP_C DIR * opendir(const char *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C struct dirent * readdir(DIR *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int readdir_r(DIR *, struct dirent *, struct dirent * *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void rewinddir(DIR *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int closedir(DIR *) _MSL_CANT_THROW;

_MSL_END_EXTERN_C

#pragma warn_padding reset
#pragma options align=reset

#endif /* _MSL_OS_DISK_FILE_SUPPORT */

#endif /* _MSL_DIRENT_H */