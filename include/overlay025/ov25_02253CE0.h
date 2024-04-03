#ifndef POKEPLATINUM_OV25_02253CE0_H
#define POKEPLATINUM_OV25_02253CE0_H

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0203CDB0_decl.h"
#include "poketch_data.h"
#include "savedata.h"
#include "overlay025/struct_ov25_02253CE0_decl.h"
#include "overlay025/funcptr_ov25_02254238.h"
#include "overlay025/funcptr_ov25_02254238_1.h"
#include "overlay025/struct_ov25_0225424C_decl.h"
#include "overlay025/funcptr_ov25_02254274.h"
#include "overlay025/struct_ov25_02254560_decl.h"
#include "overlay025/struct_ov25_02255B34_decl.h"

#include <nnsys.h>

void ov25_02253CE8(UnkStruct_0203CDB0 * param0, PoketchSystem ** param1, SaveData * param2, BGL * param3, NNSG2dOamManagerInstance * param4);
void ov25_02253D5C(PoketchSystem * param0);
BOOL ov25_02253D70(PoketchSystem * param0);
void ov25_02253D7C(PoketchSystem * param0, int param1, u32 param2);
BOOL ov25_02253DD4(PoketchSystem * param0);
int ov25_02253DD8(PoketchSystem * param0);
void ov25_02254238(UnkFuncPtr_ov25_02254238 param0, UnkFuncPtr_ov25_02254238_1 param1);
void ov25_0225424C(UnkStruct_ov25_0225424C * param0);
void ov25_02254260(UnkStruct_ov25_0225424C * param0);
void ov25_02254274(UnkFuncPtr_ov25_02254274 param0, void * param1);
UnkStruct_ov25_02254560 * ov25_02254418(void);
void ov25_02254424(u32 param0);
void ov25_02254444(u32 param0, u32 param1);
BOOL ov25_0225446C(u32 * param0, u32 * param1);
BOOL ov25_022544BC(u32 * param0, u32 * param1);
BOOL ov25_0225450C(const UnkStruct_ov25_0225424C * param0);
void ov25_02254518(const UnkStruct_ov25_0225424C * param0, UnkStruct_ov25_02255B34 * param1);
BOOL ov25_02254534(const UnkStruct_ov25_0225424C * param0);
BOOL ov25_02254538(const UnkStruct_ov25_0225424C * param0);
UnkStruct_0203CDB0 * ov25_0225453C(const UnkStruct_ov25_0225424C * param0);
PoketchData * ov25_02254540(const UnkStruct_ov25_0225424C * param0);
SaveData * ov25_02254544(const UnkStruct_ov25_0225424C * param0);
int ov25_02254548(const UnkStruct_ov25_0225424C * param0);

#endif // POKEPLATINUM_OV25_02253CE0_H
