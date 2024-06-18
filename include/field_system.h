#ifndef POKEPLATINUM_FIELD_SYSTEM_H
#define POKEPLATINUM_FIELD_SYSTEM_H

#include "struct_decls/struct_02018340_decl.h"
#include "field/field_system_decl.h"
#include "overlay_manager.h"
#include "savedata.h"
#include "overlay025/poketch_system.h"

void sub_0203CD00(FieldSystem * fieldSystem);
void sub_0203CD44(FieldSystem * fieldSystem);
BOOL sub_0203CD4C(FieldSystem * fieldSystem);
BOOL sub_0203CD5C(FieldSystem * fieldSystem);
BOOL sub_0203CD74(FieldSystem * fieldSystem);
void sub_0203CD84(FieldSystem * fieldSystem, const OverlayManagerTemplate * param1, void * param2);
void sub_0203D128(void);
void sub_0203D140(void);
PoketchSystem * FieldSystem_GetPoketchSystem(void);
BGL * sub_0203D170(void * param0);
SaveData * FieldSystem_SaveData(void * param0);

#endif // POKEPLATINUM_UNK_0203CC84_H
