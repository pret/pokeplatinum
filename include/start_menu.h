#ifndef POKEPLATINUM_UNK_0203A9C8_H
#define POKEPLATINUM_UNK_0203A9C8_H

#include "struct_defs/struct_020708E0.h"

#include "field/field_system_decl.h"

#include "field_task.h"

BOOL sub_0203A9C8(FieldSystem *fieldSystem);
void StartMenu_Init(struct FieldSystem_t *fieldSystem);
void sub_0203AA78(struct FieldSystem_t *fieldSystem);
void sub_0203AABC(FieldSystem *fieldSystem);
void StartMenu_Open(FieldSystem *fieldSystem);
void StartMenu_SetCallback(StartMenu *menu, void *callback);
BOOL StartMenu_ExitPartyMenu(FieldTask *taskMan);
BOOL sub_0203C3F4(FieldTask *param0);
BOOL sub_0203C434(FieldTask *param0);
BOOL sub_0203C50C(FieldTask *param0);
void *sub_0203C540(u16 param0, u8 param1, u8 param2);
BOOL StartMenu_ExitMail(FieldTask *taskMan);
BOOL sub_0203C710(FieldTask *param0);
BOOL sub_0203C750(FieldTask *param0);
BOOL sub_0203C784(FieldTask *param0);

#endif // POKEPLATINUM_UNK_0203A9C8_H
