#ifndef POKEPLATINUM_POKETCH_APP_PEDOMETER_H
#define POKEPLATINUM_POKETCH_APP_PEDOMETER_H

#include "bg_window.h"

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov36_02256404_1;

typedef struct UnkStruct_ov36_02256404_t UnkStruct_ov36_02256404;

BOOL ov36_02256404(UnkStruct_ov36_02256404 **param0, const UnkStruct_ov36_02256404_1 *param1, BgConfig *param2);
void ov36_02256440(UnkStruct_ov36_02256404 *param0);
void ov36_0225653C(UnkStruct_ov36_02256404 *param0, u32 param1);
BOOL ov36_02256560(UnkStruct_ov36_02256404 *param0, u32 param1);
BOOL ov36_0225656C(UnkStruct_ov36_02256404 *param0);

#endif // POKEPLATINUM_POKETCH_APP_PEDOMETER_H
