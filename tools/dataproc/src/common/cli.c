#include <getopt.h>
#include <limits.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "common.h"
#include "internal.h"

#define BASE_OPTS          ":o:M:h"
#define DEFAULT_OUTPUT_DIR "."

static const char *programName    = NULL;
static const char *outputDir      = DEFAULT_OUTPUT_DIR;
static const char *depfile        = NULL;
static const char *defaultDepfile = NULL;

static char optstring[UCHAR_MAX] = BASE_OPTS;

static const char   *defaults[UCHAR_MAX + 1];
static const Option *byFlag[UCHAR_MAX + 1];
static const Option *cached = NULL;

#define EachOption(opt, options) const Option *opt = options; opt && opt->kind; opt++

static void UsageEntry(FILE *f, const char *left, const char *help, const char *defval)
{
    fprintf(f, "  %-20s %s\n", left, help);
    if (defval) {
        fprintf(f, "  %-20s Defaults to '%s'.\n", "", defval);
    }
}

static void Usage(const Option *options, FILE *f)
{
    fprintf(f, "usage: %s [-M DEPFILE] [-o OUTDIR]", programName);

    for (EachOption(opt, options)) {
        if (opt->flag) fprintf(f, opt->metavar ? " [-%c %s]" : " [-%c]", opt->flag, opt->metavar);
    }

    for (EachOption(opt, options)) {
        if (!opt->flag) fprintf(f, " %s", opt->metavar);
    }

    bool positionals = false;
    fputs("\n\noptions:\n", f);
    UsageEntry(f, "-o OUTDIR",  "Write output files to OUTDIR. Does not affect DEPFILE.", DEFAULT_OUTPUT_DIR);
    UsageEntry(f, "-M DEPFILE", "Specify the full path to an output dependency file.",    defaultDepfile);

    for (EachOption(opt, options)) {
        unsigned char c = opt->flag;
        if (!c) { positionals = true; continue; }

        char *left = String_Format(opt->metavar ? "-%c %s" : "-%c", opt->flag, opt->metavar);
        UsageEntry(f, left, opt->help, defaults[c]);
        free(left);
    }

    if (positionals) {
        fputs("\narguments:\n", f);
        for (EachOption(opt, options)) {
            if (!opt->flag) UsageEntry(f, opt->metavar, opt->help, NULL);
        }
    }
}

// Issue a CLI failure with a formatted message and usage, then abort.
FORMATTER(1, 2) noreturn void CLI_Fail(const char *fmt, ...)
{
    fprintf(stderr, "%s: ", programName);

    va_list args;
    va_start(args, fmt);
    vfprintf(stderr, fmt, args);
    va_end(args);

    fputc('\n', stderr);

    Usage(cached, stderr);
    exit(EXIT_FAILURE);
}

static void Validate(Option *options)
{
    char *p = optstring + lengthof(BASE_OPTS);

    for (EachOption(opt, options)) {
        if (!opt->flag) {
            if (opt->metavar == NULL) {
                Driver_Fail("invalid option-set: positional at index %td has no metavar", opt - options);
            }

            if (opt->kind == OPTION_KIND_SWITCH) {
                Driver_Fail("invalid option-set: positional '%s' is a switch-kind", opt->metavar);
            }

            if (opt->value == NULL) {
                Driver_Fail("invalid option-set: positional '%s' has no target", opt->metavar);
            }

            continue;
        }

        // getopt reserves some non-alphabetic flags for control codes. This is overly restrictive,
        // but also catches some random stuff like whitespace and such that we don't want to allow.
        if (!(opt->flag >= 'A' && opt->flag <= 'Z') && !(opt->flag >= 'a' && opt->flag <= 'z')) {
            Driver_Fail("invalid option-set: '-%c' is not alphabetic", opt->flag);
        }

        if (opt->flag == 'o' || opt->flag == 'M' || opt->flag == 'h') {
            Driver_Fail("invalid option-set: '-%c' is a reserved flag", opt->flag);
        }

        if (opt->value == NULL) {
            Driver_Fail("invalid option-set: '-%c' has no target", opt->flag);
        }

        if (opt->kind != OPTION_KIND_SWITCH && opt->metavar == NULL) {
            Driver_Fail("invalid option-set: '-%c' has no metavar", opt->flag);
        }

        unsigned char c = opt->flag;
        if (byFlag[c] != NULL) {
            Driver_Fail("invalid option-set: '-%c' is specified twice", opt->flag);
        }

        byFlag[c] = opt;
        *p++      = opt->flag;
        if (opt->kind != OPTION_KIND_SWITCH) *p++ = ':';

        if (opt->kind == OPTION_KIND_VALUE) {
            defaults[c] = *opt->value;
        }
    }
}

static char* TakeProgramName(char *arg0)
{
    char *p = arg0 + strlen(arg0);
    while (p != arg0 && *p != '/' && *p != '\\') p--;
    if (*p == '/' || *p == '\\') p++;

    char *base = Driver_Keep(String_Dupe(p));
    char *end  = base + strlen(base);
    while (end != base && *end != '.') end--;
    if (strcmp(end, ".exe") == 0) *end = '\0';

    return base;
}

void CLI_Parse(Option *options, const char *depfileDefault, int argc, char **argv)
{
    programName = TakeProgramName(argv[0]);
    if (!depfileDefault) Driver_Fail("driver has no default depfile");

    cached  = options;
    depfile = defaultDepfile = depfileDefault;

    Validate(options);

    int c;
    while ((c = getopt(argc, argv, optstring)) != -1) {
        switch (c) {
        case 'o': outputDir = optarg;     continue;
        case 'M': depfile   = optarg;     continue;
        case 'h': Usage(options, stdout); exit(EXIT_SUCCESS);
        case ':': CLI_Fail("missing argument for '-%c'", optopt);
        case '?': CLI_Fail("unknown option '-%c'", optopt);
        }

        const Option *opt = byFlag[c];
        switch (opt->kind) {
        case OPTION_KIND_VALUE:   *opt->value = optarg;  break;
        case OPTION_KIND_SWITCH:  *opt->set   = true;    break;
        case OPTION_KIND_HANDLER:  opt->handler(optarg); break;

        default: abort(); // unreachable
        }
    }

    for (EachOption(opt, options)) {
        if (opt->flag) continue;
        if (optind >= argc) CLI_Fail("missing required argument %s", opt->metavar);

        char *arg = argv[optind++];
        switch (opt->kind) {
        case OPTION_KIND_VALUE:   *opt->value = arg;  break;
        case OPTION_KIND_HANDLER:  opt->handler(arg); break;

        default: abort(); // unreachable
        }
    }

    if (optind < argc) CLI_Fail("unexpected argument '%s'", argv[optind]);
}

const char* CLI_ProgramName(void) { return programName; }
const char* CLI_OutputDir(void)   { return outputDir;   }
const char* CLI_Depfile(void)     { return depfile;     }
