#ifndef POKEPLATINUM_STRUCT_DEFS_OPTIONS_H
#define POKEPLATINUM_STRUCT_DEFS_OPTIONS_H

typedef struct Options {
    u16 textSpeed : 4;
    u16 soundMethod : 2;
    u16 battleStyle : 1;
    u16 battleScene : 1;
    u16 buttonMode : 2;
    u16 frame : 5;
    u16 : 1;
} Options;

#endif // POKEPLATINUM_STRUCT_DEFS_OPTIONS_H
