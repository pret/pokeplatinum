#ifndef POKEPLATINUM_DATA_SCRIPTS_CMD_TABLE_H
#define POKEPLATINUM_DATA_SCRIPTS_CMD_TABLE_H

// clang-format off

#if defined(__ASSEMBLER__) && __ASSEMBLER__
    .macro inc x:req
        .set \x, \x + 1
    .endm

    .macro enum_start x=0
        .set __enum__, \x
    .endm

    .macro enum constant:req
        .equiv \constant, __enum__
        inc __enum__
    .endm

    enum_start

#define ScriptCommand(constant, function) enum constant
#else
#define ScriptCommand(constant, function) function,
#endif

// clang-format on

#endif // POKEPLATINUM_DATA_SCRIPTS_CMD_TABLE_H
