#ifndef POKEPLATINUM_UNDERGROUND_COMM_MANAGER_H
#define POKEPLATINUM_UNDERGROUND_COMM_MANAGER_H

#include "field/field_system_decl.h"

void CommManUnderground_InitUnderground(FieldSystem *fieldSystem);
void CommManUnderground_EnterUnderground(void);
void CommManUnderground_ExitUnderground(void);
void CommManUnderground_CloseSecretBase(void);
void CommManUnderground_ReopenSecretBase(void);
BOOL CommManUnderground_TryEnterBaseTransitionState(void);
BOOL CommManUnderground_TryExitBaseTransitionState(void);
BOOL CommManUnderground_IsInputAllowed(void);

#endif // POKEPLATINUM_UNDERGROUND_COMM_MANAGER_H
