#ifndef POKEPLATINUM_OV5_021ECE40_H
#define POKEPLATINUM_OV5_021ECE40_H

#include "struct_decls/map_object.h"
#include "struct_decls/map_object_manager.h"

#include "overlay005/funcptr_ov5_021EE454.h"
#include "overlay005/struct_ov5_021ED01C.h"
#include "overlay005/struct_ov5_021ED0A4.h"

#include "billboard.h"
#include "resource_collection.h"

void ov5_021ECE40(UnkStruct_ov5_021ED0A4 *param0, const MapObjectManager *param1, int param2, int param3, int param4, int param5, const int *param6, int param7);
void ov5_021ECE94(UnkStruct_ov5_021ED0A4 *param0);
int ov5_021ECEB4(MapObject *param0, Billboard **param1, int param2);
int ov5_021ECF04(MapObject *param0, Billboard **param1);
Billboard *ov5_021ECF1C(MapObject *param0, int param1);
void ov5_021ECF70(const MapObject *param0, Billboard **param1, int param2);
void ov5_021ECFA4(const MapObject *param0, Billboard **param1);
void ov5_021ECFD8(const MapObject *param0, Billboard **param1, int param2);
void ov5_021ED01C(Billboard *param0, UnkStruct_ov5_021ED01C *param1);
void ov5_021ED03C(Billboard *param0, UnkStruct_ov5_021ED01C *param1);
void ov5_021ED060(MapObject *param0, Billboard **param1, int param2);
int ov5_021ED150(const MapObjectManager *param0, u32 param1, BillboardResources *param2);
void ov5_021EDA38(MapObjectManager *param0, UnkStruct_ov5_021ED0A4 *param1);
void ov5_021EDBC4(const MapObjectManager *param0, int param1, MapObject *param2);
void ov5_021EDC84(UnkStruct_ov5_021ED0A4 *param0, BillboardList *param1);
BillboardList *ov5_021EDC8C(UnkStruct_ov5_021ED0A4 *param0);
void ov5_021EDC94(UnkStruct_ov5_021ED0A4 *param0, int param1);
ResourceCollection *ov5_021EDC98(const UnkStruct_ov5_021ED0A4 *param0);
ResourceCollection *ov5_021EDCA0(const UnkStruct_ov5_021ED0A4 *param0);
void ov5_021EDCA8(UnkStruct_ov5_021ED0A4 *param0, TextureResourceManager *param1);
TextureResourceManager *ov5_021EDCB0(const UnkStruct_ov5_021ED0A4 *param0);
void ov5_021EDD78(MapObject *param0, int param1);
int ov5_021EDD94(MapObject *param0);
BOOL ov5_021EDEB4(MapObject *param0, Billboard *param1);
void ov5_021EDED8(MapObject *param0, Billboard *param1);
int ov5_021EDF18(int param0);
int ov5_021EDF24(int param0);
int ov5_021EDF30(int param0);
Billboard *ov5_021EE3FC(MapObject *param0, int param1, UnkFuncPtr_ov5_021EE454 param2, void *param3);

#endif // POKEPLATINUM_OV5_021ECE40_H
