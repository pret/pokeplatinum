#ifndef POKEPLATINUM_STRUCT_OV66_022324F0_H
#define POKEPLATINUM_STRUCT_OV66_022324F0_H

#include <ppwlobby/ppw_lobby.h>

typedef void (* UnkFuncPtr_ov66_0222DDF0_1)(s32, const void *, void *, BOOL);
typedef void (* UnkFuncPtr_ov66_0222DDF0_2)(s32, void *);
typedef void (* UnkFuncPtr_ov66_0222DDF0_3)(s32, const void *, void *);
typedef void (* UnkFuncPtr_ov66_0222DDF0_4)(PPW_LOBBY_TIME_EVENT, void *);
typedef void (* UnkFuncPtr_ov66_0222DDF0_5)(const void *, u32, void *);

typedef struct {
    UnkFuncPtr_ov66_0222DDF0_1 unk_00;
    UnkFuncPtr_ov66_0222DDF0_2 unk_04;
    UnkFuncPtr_ov66_0222DDF0_3 unk_08;
    UnkFuncPtr_ov66_0222DDF0_4 unk_0C;
    UnkFuncPtr_ov66_0222DDF0_5 unk_10;
} UnkStruct_ov66_022324F0;

#endif // POKEPLATINUM_STRUCT_OV66_022324F0_H
