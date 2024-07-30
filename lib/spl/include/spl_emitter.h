#ifndef SPL_EMITTER_H
#define SPL_EMITTER_H

#include <nitro/types.h>

#include "spl_particle.h"
#include "spl_resource.h"

typedef struct UnkSPLStruct7 {
    union
    {
        u32 all;
        u8 padding_00[4];
        struct
        {
            u32 terminate:1;
            u32 stop_generate:1;
            u32 stop_calc:1;
            u32 stop_draw:1;
            u32 started: 1 ;
            u32 reserved0:27;
        };
    };
} UnkSPLStruct7;

typedef struct SPLEmitter {
    struct SPLEmitter * unk_00;
    struct SPLEmitter * unk_04;
    UnkSPLStruct3 unk_08;
    UnkSPLStruct3 unk_4C;
    UnkSPLStruct4 * p_res;
    UnkSPLStruct7 unk_94;
    VecFx32 unk_98;
    VecFx32 unk_A4;
    VecFx32 unk_B0;
    u16 unk_BC;
    fx16 unk_BE;
    VecFx16 unk_C0;
    u16 unk_C6;
    fx32 unk_C8;
    fx32 unk_CC;
    fx32 unk_D0;
    fx32 unk_D4;
    fx32 unk_D8;
    fx32 unk_DC;
    u16 unk_E0;
    GXRgb unk_E2;
    fx32 collisionPlaneHeight;
    fx16 unk_E8;
    fx16 unk_EA;
    fx16 unk_EC;
    fx16 unk_EE;
    struct {
        u32 unk_00_0 : 8;
        u32 unk_01_0 : 8;
        u32 unk_02_0 : 3;
        u32 unk_02_3 : 13;
    } unk_F0;
    VecFx16 unk_F4;
    VecFx16 unk_FA;
    void (* unk_100)(struct SPLEmitter *, unsigned int);
    void * unk_104;
    union {
        u32 unk_108_val1;
        u16 unk_108_val2[2];
        u8 unk_108_val3[4];
    } unk_108;
} SPLEmitter;

typedef struct UnkSPLStruct2_t {
    SPLEmitter * unk_00;
    int unk_04;
    SPLEmitter * unk_08;
} UnkSPLStruct2; // size=0xc

#endif // SPL_EMITTER_H
