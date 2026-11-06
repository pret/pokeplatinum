#ifndef DATAPROC_BUILDGEN_H
#define DATAPROC_BUILDGEN_H

#include <stdbool.h>
#include <stdio.h>

typedef struct BuildVar {
    const char *name;
    const char *value; // verbatim; `$variables` still expand
} BuildVar;

typedef struct BuildRule {
    const char *name;
    const char *command;     // verbatim; `$variables` still expand
    const char *depfile;     // optional
    const char *description; // optional
    bool        restat;
    bool        deps;
} BuildRule;

typedef struct BuildEdge {
    const BuildRule *rule;
    const BuildVar  *vars; // { 0 }-terminated, edge-scoped

    const char *const *outputs;         // NULL-terminated
    const char *const *implicitOutputs; // NULL-terminated; optional
    const char *const *inputs;          // NULL-terminated; optional
    const char *const *implicitInputs;  // NULL-terminated; optional
    const char *const *orderOnly;       // NULL-terminated; optional
} BuildEdge;

#define BUILD_PATHS(...)     ((const char *const[]) { __VA_ARGS__, NULL })
#define BUILD_VARS(...)      ((const BuildVar[]) { __VA_ARGS__, { 0 } })
#define BUILD_VAR(n, v)      { .name = (n), .value = (v) }
#define BUILD_EDGE(out, ...) Build_Edge((out), &(const BuildEdge){ __VA_ARGS__ })

// Declare a global-scope variable with `name` and `value`. No escaping is done.
void Build_Bind(FILE *out, const char *name, const char *value);

// Write a build-rule with the given name and command. `description` and
// `depfile` are only written to the rule's scoped variables if provided. Adds
// `restat = 1` when `rule->restat` is set.
void Build_Rule(FILE *out, const BuildRule *rule);

// Write a build-edge which produces outputs from inputs using a rule. Paths are
// escaped using Ninja's rules: `$$`, `$ `, and `$:`.
//
// Aborts if `edge->outputs` is `NULL` or empty.
void Build_Edge(FILE *out, const BuildEdge *edge);

// Shell-quotes, then doubles any `$` characters. The caller owns the returned
// string.
char* Build_QuoteValue(const char *s);

#endif // DATAPROC_BUILDGEN_H
