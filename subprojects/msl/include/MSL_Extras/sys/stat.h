#ifndef _MSL_STAT_H
#define _MSL_STAT_H

#include <ansi_params.h>
#include <ctime>

#define S_IFMT 0xF000                 /* file type mask */
#define S_IFDIR 0x4000                /* directory */
#define S_IFIFO 0x1000                /* pipe */
#define S_IFCHR 0x2000                /* character special */
#define S_IFBLK 0x6000                /* blocking stream   */
#define S_IFREG 0x8000                /* regular */

/*
 *	File type macros
 */

#define S_ISFIFO(m) (((m) & (S_IFMT)) == (S_IFIFO))
#define S_ISDIR(m) (((m) & (S_IFMT)) == (S_IFDIR))
#define S_ISCHR(m) (((m) & (S_IFMT)) == (S_IFCHR))
#define S_ISREG(m) (((m) & (S_IFMT)) == (S_IFREG))

/*
 * The following file mode macros are defined to allow compilation of programs that
 * reference them; however, they are not relevant for Windows
 */

#define S_IRWXU 0x0E00  /* Permissions for file owner class */	/*- mm 990107 -*/
#define S_IRUSR 0x0800  /* Read permission file owner class */	/*- mm 990107 -*/
#define S_IWUSR 0x0400  /* writ permission file owner class */	/*- mm 990107 -*/
#define S_IXUSR 0x0200  /* exec permission file owner class */	/*- mm 990107 -*/
#define S_IRWXG 0x01C0  /* permissions for file group class */	/*- mm 990107 -*/
#define S_IRGRP 0x0100  /* Read permission file group class */	/*- mm 990107 -*/
#define S_IWGRP 0x0080  /* writ permission file group class */	/*- mm 990107 -*/	/*- mm 010612 -*/
#define S_IXGRP 0x0040  /* exec permission file group class */	/*- mm 990107 -*/	/*- mm 010612 -*/
#define S_IRWXO 0x0038  /* permissions for file other class */	/*- mm 990107 -*/
#define S_IROTH 0x0020  /* Read permission file other class */	/*- mm 990107 -*/	/*- mm 010612 -*/
#define S_IWOTH 0x0010  /* writ permission file other class */	/*- mm 990107 -*/	/*- mm 010612 -*/
#define S_IXOTH 0x0008  /* exec permission file other class */	/*- mm 990107 -*/	/*- mm 010612 -*/
#define S_ISUID 0x0004  /* set user ID on execution         */	/*- mm 990107 -*/
#define S_ISGID 0x0002  /* set group ID on execution        */	/*- mm 990107 -*/

#define _MSL_POSIX_PARAMS int


typedef unsigned long mode_t;
typedef unsigned long ino_t;
typedef unsigned long dev_t;
typedef short nlink_t;
typedef unsigned long uid_t;
typedef unsigned long gid_t;
typedef long off_t;

/*
 *	(stat) st_mode bit values
 *	NB: all modes marked as (GUSI) mean that the mode is used only by GUSI
 *		(Grand Unified Sockets Interface).
 */

    #define   S_IFLNK 0xA000        /*   symbolic link */				/*- mm 990107 -*/
    #define   S_IFSOCK 0xE000       /*   socket (GUSI) */				/*- mm 990107 -*/

/*
 *	File type macros
 */

    #define S_ISBLK(m) (((m) & (S_IFMT)) == (S_IFBLK))

_MSL_BEGIN_EXTERN_C

        #pragma options align=native
        #pragma warn_padding off

struct stat {
    mode_t st_mode;                             /* File mode; see #define's above   */
    ino_t st_ino;                               /* File serial number               */
    dev_t st_dev;                               /* ID of device containing this file*/
    nlink_t st_nlink;                           /* Number of links                  */
    uid_t st_uid;                               /* User ID of the file's owner      */
    gid_t st_gid;                               /* Group ID of the file's group     */
    dev_t st_rdev;                              /* Device type                      */
    off_t st_size;                              /* File size in bytes               */
            #ifdef _MSL_TIME_T_DEFINED
    __std(time_t)       st_atime;               /* Time of last access              */ /*- hh 990124 -*/
    __std(time_t)       st_mtime;               /* Time of last data modification   */
    __std(time_t)       st_ctime;               /* Time of last file status change  */
            #endif /* _MSL_TIME_T_DEFINED */
    long st_blksize;                            /* Optimal blocksize                */
    long st_blocks;                             /* blocks allocated for file        */
};

        #pragma warn_padding reset
        #pragma options align=reset

    #if _MSL_OS_DISK_FILE_SUPPORT
_MSL_IMP_EXP_C int _MSL_CDECL chmod(const char *, mode_t) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL fstat(int, struct stat *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL mkdir(const char *, ...) _MSL_CANT_THROW;
_MSL_IMP_EXP_C int _MSL_CDECL stat(const char *, struct stat *) _MSL_CANT_THROW;
_MSL_IMP_EXP_C _MSL_POSIX_PARAMS _MSL_CDECL umask(_MSL_POSIX_PARAMS) _MSL_CANT_THROW;
    #endif

_MSL_END_EXTERN_C

#endif /* _MSL_STAT_H */