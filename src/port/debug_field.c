#include <nitro.h>

#include "port/debug_field.h"

static FieldSystem * s_fieldSystem = NULL;

FieldSystem * DEBUG_GetFieldSystem() {
    return s_fieldSystem;
}

void DEBUG_SetFieldSystem(FieldSystem * fieldSystem) {
    s_fieldSystem = fieldSystem;
}