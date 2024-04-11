#ifndef POKEPLATINUM_UNK_0203CC84_H
#define POKEPLATINUM_UNK_0203CC84_H

#include "struct_decls/struct_02018340_decl.h"
#include "field/field_system_decl.h"
#include "overlay_manager.h"
#include "savedata.h"
#include "overlay025/poketch_system.h"

void sub_0203CD00(FieldSystem * param0);
void sub_0203CD44(FieldSystem * param0);
BOOL sub_0203CD4C(FieldSystem * param0);
BOOL sub_0203CD5C(FieldSystem * param0);
BOOL sub_0203CD74(FieldSystem * param0);
void sub_0203CD84(FieldSystem * param0, const OverlayManagerTemplate * param1, void * param2);
void sub_0203D128(void);
void sub_0203D140(void);
PoketchSystem * sub_0203D158(void);
BGL * sub_0203D170(void * param0);
SaveData * FieldSystem_SaveData(void * param0);

#endif // POKEPLATINUM_UNK_0203CC84_H
