#ifndef POKEPLATINUM_DATA_SCRIPTS_CMD_TABLE_H
#define POKEPLATINUM_DATA_SCRIPTS_CMD_TABLE_H

// clang-format off

#if defined(__ASSEMBLER__) && __ASSEMBLER__
    .macro inc x:req
        .set \x, \x + 1
    .endm

    .macro new_enum x=0
        .set __enum__, \x
    .endm

    .macro inc_enum constant:req
        .equiv \constant, __enum__
        inc __enum__
    .endm

    new_enum

#define ScriptCommand(constant, function) inc_enum constant
#else
#define ScriptCommand(constant, function) function,
#endif

// clang-format on

#endif // POKEPLATINUM_DATA_SCRIPTS_CMD_TABLE_H
