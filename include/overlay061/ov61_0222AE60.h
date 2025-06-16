#ifndef POKEPLATINUM_OV61_0222AE60_H
#define POKEPLATINUM_OV61_0222AE60_H

#include "struct_decls/pc_boxes_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_02030A80_decl.h"

#include "overlay061/struct_ov61_0222AE80.h"
#include "overlay061/struct_ov61_0222AFC0.h"
#include "overlay061/struct_ov61_0222AFCC.h"
#include "overlay062/struct_ov62_02239DA4.h"

#include "savedata.h"

void ov61_0222AE60(SaveData *saveData, const UnkStruct_02029C68 *param1, UnkStruct_ov61_0222AE80 *param2);
void ov61_0222AE80(const UnkStruct_ov61_0222AE80 *param0, UnkStruct_02029C68 *param1);
void ov61_0222AE88(SaveData *saveData, const PCBoxes *param1, int param2, UnkStruct_ov62_02239DA4 *param3, int heapID);
void ov61_0222AF88(SaveData *saveData, UnkStruct_ov62_02239DA4 *param1, int param2);
void ov61_0222AFA4(SaveData *saveData, const UnkStruct_02030A80 *param1, UnkStruct_ov61_0222AFC0 *param2);
void ov61_0222AFC0(const UnkStruct_ov61_0222AFC0 *param0, UnkStruct_02030A80 *param1);
void ov61_0222AFCC(SaveData *saveData, const UnkStruct_02030A80 *param1, UnkStruct_ov61_0222AFCC *param2);

#endif // POKEPLATINUM_OV61_0222AE60_H
