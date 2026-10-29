#include "buildgen.h"

#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static inline bool IsEmpty(const char *s) { return s == NULL || s[0] == '\0'; }

void Build_Bind(FILE *out, const char *name, const char *value)
{
    fprintf(out, "%s = %s\n", name, value);
}

void Build_Rule(FILE *out, const BuildRule *rule)
{
    if (IsEmpty(rule->name)) {
        fprintf(stderr, "FATAL: refusing rule without a name\n");
        abort();
    }

    if (IsEmpty(rule->command)) {
        fprintf(stderr, "FATAL: rule %s is missing a command\n", rule->name);
        abort();
    }

    fprintf(out, "rule %s\n", rule->name);
    fprintf(out, "  command = %s\n", rule->command);

    if (rule->description) fprintf(out, "  description = %s\n", rule->description);
    if (rule->depfile)     fprintf(out, "  depfile = %s\n", rule->depfile);
    if (rule->deps)        fprintf(out, "  deps = gcc\n");
    if (rule->restat)      fprintf(out, "  restat = 1\n");
}

static void PrintSpaceDelimited(FILE *out, const char *const *strings)
{
    for (const char *const *p = strings; *p; p++) {
        fputc(' ', out);
        for (const char *c = *p; *c; c++) {
            if (*c == '$' || *c == ' ' || *c == ':') fputc('$', out);
            fputc(*c, out);
        }
    }
}

void Build_Edge(FILE *out, const BuildEdge *edge)
{
    if (edge->rule == NULL || IsEmpty(edge->rule->name)) {
        fprintf(stderr, "FATAL: refusing edge using rule without a name\n");
        abort();
    }

    if (edge->outputs == NULL || edge->outputs[0] == NULL) {
        fprintf(stderr, "FATAL: refusing edge using rule '%s' with no outputs\n",
                edge->rule->name);
        abort();
    }

    fputs("build", out); PrintSpaceDelimited(out, edge->outputs);
    {
        if (edge->implicitOutputs) {
            fputs(" |", out); PrintSpaceDelimited(out, edge->implicitOutputs);
        }

        fprintf(out, " : %s", edge->rule->name);
        if (edge->inputs) PrintSpaceDelimited(out, edge->inputs);

        if (edge->implicitInputs) {
            fputs(" |", out); PrintSpaceDelimited(out, edge->implicitInputs);
        }

        if (edge->orderOnly) {
            fputs(" ||", out); PrintSpaceDelimited(out, edge->orderOnly);
        }
    }
    fputc('\n', out);

    if (edge->vars) {
        for (const BuildVar *v = edge->vars; v->name; v++) {
            fputs("  ", out); Build_Bind(out, v->name, v->value);
        }
    }
}

char* Build_QuoteValue(const char *s)
{
    size_t size = strlen(s);
    char  *buf  = calloc((size * 4) + 3, sizeof(*buf));
    if (!buf) abort();

    buf[0] = '\'';
    char *p = buf + 1;
    for (const char *c = s; *c; c++) {
        if (*c == '\'') {
            *p++ = '\'';
            *p++ = '\\';
            *p++ = '\'';
            *p++ = '\'';
            continue;
        }

        if (*c == '$') *p++ = '$';
        *p++ = *c;
    }
    *p = '\'';

    return buf;
}
