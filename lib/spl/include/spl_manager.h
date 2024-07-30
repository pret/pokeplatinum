#ifndef SPL_MANAGER_H
#define SPL_MANAGER_H

#include <nitro/types.h>

#include "spl_particle.h"
#include "spl_emitter.h"
#include "spl_texture.h"

typedef void *(* UnkFuncPtr_0209CD00)(u32);

typedef struct SPLManager_t {
    UnkFuncPtr_0209CD00 unk_00;
    UnkSPLStruct2 unk_04;
    UnkSPLStruct2 unk_10;
    UnkSPLStruct3 unk_1C;
    UnkSPLStruct4 * unk_28;
    UnkSPLStruct5 * unk_2C;
    u16 unk_30;
    u16 unk_32;
    u16 unk_34;
    u16 unk_36;
    struct {
        u32 unk_00_0 : 6;
        u32 unk_00_6 : 6;
        u32 unk_01_4 : 6;
        u32 unk_02_2 : 6;
        u32 unk_03_0 : 1;
        u32 unk_03_7 : 7;
    } unk_38;
    s32 unk_3C;
    struct {
        SPLEmitter * unk_00;
        const MtxFx43 * unk_04;
    } unk_40;
    u16 unk_48;
    u16 unk_4A;
} SPLManager; // size=0x4c


void SPL_0209C400(SPLManager * param0);
void SPL_0209C444(SPLManager * param0, SPLEmitter * param1);
SPLEmitter * SPL_0209C4D8(SPLManager * param0, int param1, void (* param2)(struct SPLEmitter *));
void SPL_0209C5E0(SPLManager * param0, const MtxFx43 * param1);
SPLEmitter * SPL_0209C56C(SPLManager * param0, int param1, const VecFx32 * param2);
void SPL_0209C6A8(SPLManager * param0);
BOOL SPL_0209C7E0(SPLManager * param0);
BOOL SPL_0209C7F4(SPLManager * param0);
BOOL SPL_0209C808(SPLManager * param0, u32 (* param1)(u32, BOOL));
BOOL SPL_0209C8BC(SPLManager * param0, u32 (* param1)(u32, BOOL));
void SPL_0209C988(SPLManager * param0, const void * param1);
SPLManager * SPL_0209CD00(UnkFuncPtr_0209CD00 param0, u16 param1, u16 param2, u16 param3, u16 param4, u16 param5);

#endif // SPL_MANAGER_H
