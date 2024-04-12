#ifndef POKEPLATINUM_OV25_02255ACC_H
#define POKEPLATINUM_OV25_02255ACC_H

#include "struct_defs/union_02022594_020225E0.h"
#include "overlay025/poketch_button.h"

typedef void (* PoketchButtonCallback)(u32, u32, u32, void *);

typedef struct PoketchButton {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08[2];
    u16 unk_0C;
} PoketchButton;

typedef struct PoketchButtonManager {
    const UnkUnion_020225E0 * unk_00;
    PoketchButtonCallback unk_04;
    u32 unk_08;
    u32 unk_0C;
    void * unk_10;
    PoketchButton * unk_14;
} PoketchButtonManager;

PoketchButtonManager * ov25_02255ACC(const UnkUnion_020225E0 * param0, u32 param1, PoketchButtonCallback param2, void * param3, u32 param4);
void ov25_02255B34(PoketchButtonManager * param0);
void ov25_02255B50(PoketchButtonManager * param0);
void ov25_02255C48(PoketchButtonManager * param0, u32 param1, u32 param2, u16 param3);
void ov25_02255C5C(PoketchButtonManager * param0, u32 param1, u16 param2);
void ov25_02255C68(PoketchButtonManager * param0, u32 param1);

#endif // POKEPLATINUM_OV25_02255ACC_H
