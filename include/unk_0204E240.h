#ifndef POKEPLATINUM_UNK_0204E240_H
#define POKEPLATINUM_UNK_0204E240_H

#include "field_script_context.h"

enum FossilType {
    FOSSIL_TYPE_OLD_AMBER = 0x8E, // Aerodactyl (dataID 0x67)
    FOSSIL_TYPE_HELIX = 0x8A, // Omanyte (dataID 0x65)
    FOSSIL_TYPE_DOME = 0x8C, // Kabuto (dataID 0x66)
    FOSSIL_TYPE_ROOT = 0x159, // Lileep (dataID 0x63)
    FOSSIL_TYPE_CLAW = 0x15B, // Anorith (dataID 0x64)
    FOSSIL_TYPE_ARMOR = 0x19A, // Shieldon (dataID 0x68)
    FOSSIL_TYPE_SKULL = 0x198, // Cranidos (dataID 0x69)
};

BOOL ScrCmd_GetFossilCount(ScriptContext *ctx);
BOOL ScrCmd_GetFossilTypeID(ScriptContext *ctx);
BOOL ScrCmd_FindFossilAtThreshold(ScriptContext *ctx);
BOOL ScrCmd_Unused_1F2(ScriptContext *ctx);
BOOL ScrCmd_Unused_1F3(ScriptContext *ctx);

#endif // POKEPLATINUM_UNK_0204E240_H
