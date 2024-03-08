#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#ifdef _WIN32
#include <windows.h>
#include <tchar.h>
#include <fcntl.h>
#else
#include <spawn.h>
#include <sys/wait.h>
extern char **environ;
#endif

#define PROGRAM_NAME "mwrap"

#define DEFAULT_VER "2.0/sp2p2"
#define DEFAULT_CFG_FILE ".mwconfig"
#define VER_CFG 0

#ifdef _UNICODE
#define FMT_TS "%ls"
#else
#define FMT_TS "%s"
#endif

// POSIX-compatibility
#ifndef _WIN32
typedef char _TCHAR;
#define _tmain main
#define _T(...) __VA_ARGS__
#define _ftprintf(...) fprintf(__VA_ARGS__)
#define _sntprintf(...) snprintf(__VA_ARGS__)
#define _tcscat(...) strcat(__VA_ARGS__)
#define _tcscmp(...) strcmp(__VA_ARGS__)
#define _tcscspn(...) strcspn(__VA_ARGS__)
#define _tcsdup(...) strdup(__VA_ARGS__)
#define _tcslen(...) strlen(__VA_ARGS__)
#define _tcsrchr(...) strrchr(__VA_ARGS__)
#define _tfopen(...) fopen(__VA_ARGS__)
#define _tgetenv(...) getenv(__VA_ARGS__)
#endif

struct args {
    _TCHAR *o;
    _TCHAR *precompile;
    bool M;
    bool MD;

    bool wrap_dbg;
    _TCHAR *wrap_ver;
};

struct args parse_args(int argc, _TCHAR *argv[], int *out_argc, _TCHAR ***out_argv)
{
    struct args args = {
        .o = NULL,
        .precompile = NULL,
        .M = false,
        .MD = false,
        .wrap_dbg = false,
        .wrap_ver = NULL
    };

    int new_argc = 0;
    _TCHAR **new_argv = malloc(sizeof(_TCHAR *) * (argc + 2));
    new_argv[new_argc++] = NULL;

    while (argc >= 1) {
        int skip = 0;
        int copy = 0;

        if (_tcscmp(argv[0], _T("-o")) == 0 &&
                argc >= 2) {
            args.o = argv[1];
            copy = 2;
        } else if (_tcscmp(argv[0], _T("-precompile")) == 0 &&
                argc >= 2) {
            args.precompile = argv[1];
            copy = 2;
        } else if (_tcscmp(argv[0], _T("-M")) == 0) {
            args.M = true;
            copy = 1;
        } else if (_tcscmp(argv[0], _T("-MD")) == 0) {
            args.MD = true;
            copy = 1;
        } else if (_tcscmp(argv[0], _T("-wrap:dbg")) == 0) {
            args.wrap_dbg = true;
            skip = 1;
        } else if (_tcscmp(argv[0], _T("-wrap:ver")) == 0 &&
                argc >= 2) {
            args.wrap_ver = argv[1];
            skip = 2;
        } else {
            copy = 1;
        }

        argc -= skip + copy;
        while (skip--) argv++;
        while (copy--) new_argv[new_argc++] = *argv++;
    }
    new_argv[new_argc] = NULL;

    *out_argc = new_argc;
    *out_argv = new_argv;
    return args;
}

char *file_read(const _TCHAR *fname, size_t *size)
{
    FILE *f = _tfopen(fname, _T("rb"));
    if (!f) return NULL;
    fseek(f, 0, SEEK_END);
    *size = ftell(f);
    char *file = malloc(*size);
    rewind(f);
    fread(file, *size, 1, f);
    fclose(f);
    return file;
}

char *tctoutf(const _TCHAR *str)
{
    if (!str) return NULL;
#ifdef _UNICODE
    size_t size = WideCharToMultiByte(CP_UTF8, 0, str, -1, NULL, 0, NULL, NULL);
    if (!size) return NULL;
    char *res = malloc(size);
    if (!res) return NULL;
    WideCharToMultiByte(CP_UTF8, 0, str, -1, res, size, NULL, NULL);
    return res;
#else
    return strdup(str);
#endif
}

_TCHAR *utftotc(const char *str)
{
    if (!str) return NULL;
#ifdef _UNICODE
    size_t size = MultiByteToWideChar(CP_UTF8, 0, str, -1, NULL, 0);
    if (!size) return NULL;
    _TCHAR *res = malloc(size);
    if (!res) return NULL;
    MultiByteToWideChar(CP_UTF8, 0, str, -1, res, size);
    return res;
#else
    return strdup(str);
#endif
}

struct config {
    char *wine;
    char *path_unx;
    char *path_win;
};

const _TCHAR *cfg_file(void)
{
    const _TCHAR *path = _tgetenv(_T("MWCONFIG"));
    if (!path) path = _T(DEFAULT_CFG_FILE);
    return path;
}

void cfg_save_writestr(FILE *f, const char *str)
{
    if (str) fputs(str, f);
    fputc('\0', f);
}

void cfg_save(struct config cfg)
{
    FILE *f = _tfopen(cfg_file(), _T("wb"));
    if (!f) {
        fprintf(stderr, PROGRAM_NAME ": cfg_save: Failed to write config\n");
        exit(EXIT_FAILURE);
    }

    const char head[] = {'M', 'W', 'R', VER_CFG};
    fwrite(head, sizeof(head), 1, f);
    cfg_save_writestr(f, cfg.wine);
    cfg_save_writestr(f, cfg.path_unx);
    cfg_save_writestr(f, cfg.path_win);
    fclose(f);
}

char *cfg_load_readstr(char *file, size_t *pos, size_t len)
{
    // Check if a string is present
    if (len < *pos + 1) return NULL;
    if (file[*pos] == '\0') {
        // Treat empty string as empty
        (*pos)++;
        return NULL;
    }

    // Look for the null byte
    size_t readlen = strnlen(file + *pos, len - *pos);
    if (len - *pos <= readlen) return NULL;

    // If found, we can safely read it
    char *readstr = strdup(file + *pos);
    *pos += readlen + 1;
    return readstr;
}

struct config cfg_load(void)
{
    struct config cfg;
    cfg.wine = NULL;
    cfg.path_unx = NULL;
    cfg.path_win = NULL;

    size_t file_len = 0;
    char *file = file_read(cfg_file(), &file_len);
    if (!file) return cfg;
    size_t file_pos = 0;

    const char head[] = {'M', 'W', 'R', VER_CFG};
    if (file_len < file_pos + sizeof(head)) return cfg;
    if (memcmp(file + file_pos, head, sizeof(head)) != 0) return cfg;
    file_pos += sizeof(head);

    cfg.wine = cfg_load_readstr(file, &file_pos, file_len);
    cfg.path_unx = cfg_load_readstr(file, &file_pos, file_len);
    cfg.path_win = cfg_load_readstr(file, &file_pos, file_len);

    free(file);
    return cfg;
}

void cfg_free(struct config cfg)
{
    free(cfg.path_win);
    free(cfg.path_unx);
    free(cfg.wine);
}

void configure(int argc, _TCHAR *argv[])
{
    _TCHAR *wine = NULL;
    _TCHAR *path_unx = NULL;
    _TCHAR *path_win = NULL;

    while (argc >= 1) {
        if (_tcscmp(argv[0], _T("-wine")) == 0) {
            wine = argv[1];
            argv += 2; argc -= 2;
        } else if (_tcscmp(argv[0], _T("-path_unx")) == 0) {
            path_unx = argv[1];
            argv += 2; argc -= 2;
        } else if (_tcscmp(argv[0], _T("-path_win")) == 0) {
            path_win = argv[1];
            argv += 2; argc -= 2;
        } else {
            fprintf(stderr,
                PROGRAM_NAME ": configure: Invalid argument: " FMT_TS "\n",
                *argv);
            exit(EXIT_FAILURE);
        }
    }

    struct config cfg;
    cfg.wine = tctoutf(wine);
    cfg.path_unx = tctoutf(path_unx);
    cfg.path_win = tctoutf(path_win);
    if ((wine && !cfg.wine) ||
            (path_unx && !cfg.path_unx) ||
            (path_win && !cfg.path_win)) {
        fprintf(stderr, PROGRAM_NAME ": configure: Conversion failed\n");
        exit(EXIT_FAILURE);
    }
    cfg_save(cfg);
    cfg_free(cfg);
}

_TCHAR *my_dirname(const _TCHAR *str)
{
    _TCHAR *dir = _tcsdup(str);
    size_t sep = _tcslen(dir);
    while (sep > 0) {
        if (dir[sep] == '/') goto found;
#ifdef _WIN32
        if (dir[sep] == '\\') goto found;
#endif
        sep--;
    }
    // Indicate current dir if no slash was found
    dir[0] = '.';
    sep = 1;
found:
    dir = realloc(dir, sizeof(*dir) * (sep + 1));
    dir[sep] = '\0';
    return dir;
}

void str_resize(_TCHAR **str, size_t *max, size_t req)
{
    if (*max < req) {
        while (*max < req) *max += 1024;
        *str = realloc(*str, sizeof(**str) * *max);
    }
}

// Windows argv[] strings are passed as a whole, instead of being split up into
// an array. This means that *we* have to make sure to quote our arguments, and
// for some reason nobody every thought to make a library for this.
_TCHAR *win_argv_build(const _TCHAR *const *argv)
{
    size_t args_max = 1024;
    size_t args_pos = 0;
    _TCHAR *args = malloc(sizeof(_TCHAR) * args_max);

    bool first = true;

    while (*argv) {
        const _TCHAR *arg = *argv;

        // Add a space between arguments
        if (!first) {
            str_resize(&args, &args_max, args_pos + 1);
            args[args_pos++] = ' ';
        }
        first = false;

        // If it doesn't contain any special chars, copy as-is
        size_t arg_len = _tcslen(arg);
        if (_tcscspn(arg, _T(" \t\n\r")) == arg_len) {
            str_resize(&args, &args_max, args_pos + arg_len);
            memcpy(args + args_pos, arg, sizeof(_TCHAR) * arg_len);
            args_pos += arg_len;
            argv++;
            continue;
        }

        // Quote the argument
        int backslashes = 0;
        str_resize(&args, &args_max, args_pos + 1);
        args[args_pos++] = '"';
        while (*arg) {
            if (*arg == '\\') {
                backslashes++;
            } else if (*arg == '"') {
                // Add extra backslashes to escape the quote
                backslashes++;
                str_resize(&args, &args_max, args_pos + backslashes);
                while (backslashes--) args[args_pos++] = '\\';
                backslashes = 0;
            } else {
                backslashes = 0;
            }

            str_resize(&args, &args_max, args_pos + 1);
            args[args_pos++] = *arg;

            arg++;
        }
        // Add extra backslashes to avoid escaping the final quote
        if (backslashes) {
            str_resize(&args, &args_max, args_pos + backslashes);
            while (backslashes--) args[args_pos++] = '\\';
        }
        str_resize(&args, &args_max, args_pos + 1);
        args[args_pos++] = '"';

        argv++;
    }

    args = realloc(args, sizeof(*args) * (args_pos + 1));
    args[args_pos] = '\0';

    return args;
}

void fix_depfile(_TCHAR *fname, const char *path_unx, const char *path_win)
{
    size_t file_size;
    char *file = file_read(fname, &file_size);
    if (!file) return;

    FILE *f = _tfopen(fname, _T("wb"));
    if (!f) {
        free(file);
        return;
    }

    size_t size_win = strlen(path_win);
    bool blankline = false;

    // Replace any instances of path_win at the beginning of a line with
    // path_unx, and backslashes with forward slashes.
    for (size_t x = 0; x < file_size;) {
        if (blankline && file_size - x > size_win &&
                memcmp(file + x, path_win, size_win) == 0) {
            fputs(path_unx, f);
            x += size_win;
        } else if (file_size - x > 2 && file[x] == '\\' &&
                file[x + 1] != '\r' && file[x + 1] != '\n') {
            fputc('/', f);
            x++;
        } else {
            if (blankline && file[x] != ' ' && file[x] != '\t') {
                blankline = false;
            }
            if (file[x] == '\n') blankline = true;
            fputc(file[x++], f);
        }
    }

    fclose(f);
    free(file);
}

char *replace_str(char *str, char *orig, char *rep, int start)
{
    static char temp[4096];
    static char buffer[4096];
    char *p;

    strcpy(temp, str + start);

    if(!(p = strstr(temp, orig)))  // Is 'orig' even in 'temp'?
        return temp;

    strncpy(buffer, temp, p-temp); // Copy characters from 'temp' start to 'orig' str
    buffer[p-temp] = '\0';

    sprintf(buffer + (p - temp), "%s%s", rep, p + strlen(orig));
    sprintf(str + start, "%s", buffer);

    return str;
}

int _tmain(int argc, _TCHAR *argv[])
{
    if (argc < 2) {
        fprintf(stderr, PROGRAM_NAME ": Too few arguments\n");
        return EXIT_FAILURE;
    }

    if (_tcscmp(argv[1], _T("-test")) == 0) return EXIT_SUCCESS;
    if (_tcscmp(argv[1], _T("-conf")) == 0) {
        configure(argc - 2, argv + 2);
        return EXIT_SUCCESS;
    }

    struct config cfg = cfg_load();

    _TCHAR *tool_dir = my_dirname(argv[0]);
    const _TCHAR *tool_ver = _T(DEFAULT_VER);
    const _TCHAR *tool_bin = argv[1];

    int new_argc;
    _TCHAR **new_argv;
    struct args args = parse_args(argc - 2, argv + 2, &new_argc, &new_argv);

    if (args.wrap_ver) tool_ver = args.wrap_ver;

    // Make a path of the chosen tool
    size_t tool_size = _tcslen(tool_dir) + 1 + _tcslen(tool_ver) + 1 +
        _tcslen(tool_bin) + 5;
    _TCHAR *tool = malloc(sizeof(_TCHAR) * tool_size);
    _sntprintf(tool, tool_size, _T(FMT_TS "/" FMT_TS "/" FMT_TS ".exe"),
        tool_dir, tool_ver, tool_bin);
    new_argv[0] = tool;

    // Add the wine command if requested
    _TCHAR *wine = utftotc(cfg.wine);
    if (wine) {
        new_argc += 1;
        new_argv = realloc(new_argv, sizeof(*new_argv) * (new_argc + 1));
        memmove(new_argv + 1, new_argv, sizeof(*new_argv) * new_argc);
        new_argv[0] = wine;
    }

#ifdef _WIN32
#define PATHSEP ";"
#else
#define PATHSEP ":"
#endif

    // Build standard library paths for environment variables
    size_t mwcincludes_size = _tcslen(tool_dir) * 3  + 46;
    _TCHAR *MWCIncludes = malloc(sizeof(_TCHAR) * mwcincludes_size);
    _sntprintf(MWCIncludes, mwcincludes_size, _T(
        FMT_TS "/" FMT_TS PATHSEP
        FMT_TS "/" FMT_TS PATHSEP
        FMT_TS "/" FMT_TS),
        tool_dir, _T("include"),
        tool_dir, _T("include/MSL_C"),
        tool_dir, _T("include/MSL_Extras"));

    size_t mwclibraries_size = _tcslen(tool_dir) + 5;
    _TCHAR *MWLibraries = malloc(sizeof(_TCHAR) * mwclibraries_size);
    _sntprintf(MWLibraries, mwclibraries_size, _T(
        FMT_TS "/" FMT_TS),
        tool_dir, _T("lib"));

    size_t mwclibraryfiles_size = 107;
    _TCHAR *MWLibraryFiles = malloc(sizeof(_TCHAR) * mwclibraryfiles_size);
    _sntprintf(MWLibraryFiles, mwclibraryfiles_size, _T(
        "MSL_C_NITRO_Ai_LE.a" PATHSEP
        "MSL_Extras_NITRO_Ai_LE.a" PATHSEP
        "MSL_CPP_NITRO_Ai_LE.a" PATHSEP
        "FP_fastI_v5t_LE.a" PATHSEP
        "NITRO_Runtime_Ai_LE.a"));

#ifdef _WIN32
    // Set up the environment
    SetEnvironmentVariable(_T("MWCIncludes"), MWCIncludes);
    SetEnvironmentVariable(_T("MWLibraries"), MWLibraries);
    SetEnvironmentVariable(_T("MWLibraryFiles"), MWLibraryFiles);

    // Execute the tool
    _TCHAR *argv_quoted = win_argv_build((const _TCHAR **)new_argv);
    if (args.wrap_dbg) fprintf(stderr, FMT_TS "\n", argv_quoted);
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    DWORD exitcode;
    ZeroMemory(&si, sizeof(si));
    ZeroMemory(&pi, sizeof(pi));
    si.cb = sizeof(si);
    if (!CreateProcess(new_argv[0], argv_quoted, NULL, NULL, FALSE, 0,
            NULL, NULL, &si, &pi)) {
        fprintf(stderr, PROGRAM_NAME ": CreateProcess failed\n");
        exit(EXIT_FAILURE);
    }
    WaitForSingleObject(pi.hProcess, INFINITE);
    GetExitCodeProcess(pi.hProcess, &exitcode);
    CloseHandle(pi.hProcess);
    CloseHandle(pi.hThread);
    if (exitcode) return exitcode;
    free(argv_quoted);
#else
    // Set up the environment
    setenv("MWCIncludes", MWCIncludes, true);
    setenv("MWLibraries", MWLibraries, true);
    setenv("MWLibraryFiles", MWLibraryFiles, true);

    #ifndef __CYGWIN__
        // Pass environment variables to Windows if running in WSL
        setenv("WSLENV", "MWCIncludes/p:MWLibraries/p:MWLibraryFiles", true);
    #endif

    // Execute the tool
    if (args.wrap_dbg) {
        for (int x = 0; x < new_argc; x++) {
            printf(x ? " %s" : "%s", new_argv[x]);
        }
        printf("\n");
    }
    pid_t pid;
    if (posix_spawn(&pid, new_argv[0], NULL, NULL, new_argv, environ) != 0) {
        perror(PROGRAM_NAME ": posix_spawn");
        exit(EXIT_FAILURE);
    }
    int exitcode;
    waitpid(pid, &exitcode, 0);
    if (WEXITSTATUS(exitcode)) return WEXITSTATUS(exitcode);
#endif

    if (wine) free(wine);
    free(tool);
    free(new_argv);
    free(tool_dir);

    free(MWCIncludes);
    free(MWLibraries);
    free(MWLibraryFiles);

    // Fix dependency file if generated
    if (cfg.path_unx && cfg.path_win) {
        _TCHAR *depfile = NULL;
        if (args.M) {
            // Only generated a depfile
            depfile = _tcsdup(args.o);
        } else if (args.MD) {
            // Generating a depfile as a side-effect of compilation
            _TCHAR *out = NULL;
            if (args.o) out = args.o;
            if (args.precompile) out = args.precompile;

            // Replace filename extension with .d
            if (out) {
                out = _tcsdup(out);
                _TCHAR *dot = _tcsrchr(out, '.');
                if (!dot) dot = _tcsrchr(out, '\0');
                *dot = '\0';

                size_t len = dot - out + 3;
                out = realloc(out, sizeof(*out) * len);
                _tcscat(out, _T(".d"));
            }
            depfile = out;
        }

        if (depfile) {
            if (args.wrap_dbg) {
                fprintf(stderr, "dep: " FMT_TS "\n", depfile);
                fprintf(stderr, "path_unx: %s\n", cfg.path_unx);
                fprintf(stderr, "path_win: %s\n", cfg.path_win);
            }
            fix_depfile(depfile, cfg.path_unx, cfg.path_win);
            free(depfile);
        }
    }

    cfg_free(cfg);
    return EXIT_SUCCESS;
}
