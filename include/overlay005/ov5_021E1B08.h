#ifndef POKEPLATINUM_OV5_021E1B08_H
#define POKEPLATINUM_OV5_021E1B08_H

#include "field/field_system_decl.h"
#include "overlay005/struct_ov5_021E1B20_decl.h"

#include "bg_window.h"

void *ov5_021E1B08(u32 param0);
void ov5_021E1B20(UnkStruct_ov5_021E1B20 *param0);
void ov5_021E1B38(UnkStruct_ov5_021E1B20 *param0, u16 param1, u16 param2);
void ov5_021E1B40(UnkStruct_ov5_021E1B20 *param0, u8 param1);
Window *ov5_021E1B50(UnkStruct_ov5_021E1B20 *param0);
u8 ov5_021E1B54(UnkStruct_ov5_021E1B20 *param0);
BOOL ov5_021E1B58(UnkStruct_ov5_021E1B20 *param0);
void ov5_021E1B68(FieldSystem *fieldSystem);
void ov5_021E1BCC(FieldSystem *fieldSystem, u8 param1);

#endif // POKEPLATINUM_OV5_021E1B08_H
