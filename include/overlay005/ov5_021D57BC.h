#ifndef POKEPLATINUM_OV5_021D57BC_H
#define POKEPLATINUM_OV5_021D57BC_H

#include <nitro/gx.h>

#include "overlay005/struct_ov5_021D57D8_decl.h"

UnkStruct_ov5_021D57D8 *ov5_021D57BC(void);
void ov5_021D57D8(UnkStruct_ov5_021D57D8 **param0);
BOOL ov5_021D57EC(UnkStruct_ov5_021D57D8 *param0);
int ov5_021D57F0(UnkStruct_ov5_021D57D8 *param0);
int ov5_021D57F4(UnkStruct_ov5_021D57D8 *param0);
GXRgb ov5_021D57F8(UnkStruct_ov5_021D57D8 *param0);
void ov5_021D57FC(UnkStruct_ov5_021D57D8 *param0, int param1, BOOL fogEnable, int fogMode, int fogSlope, int fogOffset);
void ov5_021D5834(UnkStruct_ov5_021D57D8 *param0, int param1, GXRgb fogRGB, int alpha);
void ov5_021D585C(UnkStruct_ov5_021D57D8 *param0, const char *param1);

#endif // POKEPLATINUM_OV5_021D57BC_H
