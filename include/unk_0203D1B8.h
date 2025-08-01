#ifndef POKEPLATINUM_UNK_0203D1B8_H
#define POKEPLATINUM_UNK_0203D1B8_H

#include "struct_decls/struct_0209747C_decl.h"
#include "struct_defs/choose_starter_data.h"
#include "struct_defs/struct_0203D8AC.h"
#include "struct_defs/struct_0203D9B8.h"
#include "struct_defs/struct_0203E234.h"
#include "struct_defs/struct_0203E274.h"
#include "struct_defs/struct_0203E348.h"
#include "struct_defs/struct_020684D0.h"
#include "struct_defs/struct_02097728.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/struct_020997B8.h"

#include "applications/pokemon_summary_screen/main.h"
#include "field/field_system_decl.h"
#include "overlay019/pokemon_storage_session.h"
#include "overlay090/struct_ov90_021D0D80.h"

#include "field_battle_data_transfer.h"
#include "field_move_tasks.h"
#include "field_task.h"
#include "pokemon.h"
#include "savedata.h"
#include "trainer_card.h"

void FieldSystem_StartBattleProcess(FieldSystem *fieldSystem, FieldBattleDTO *dto);
void sub_0203D1E4(FieldSystem *fieldSystem, void *param1);
void *sub_0203D20C(FieldSystem *fieldSystem, UnkStruct_020684D0 *param1);
void *sub_0203D264(FieldSystem *fieldSystem, int param1);
u16 sub_0203D2C4(void *param0);
void sub_0203D2E4(FieldSystem *fieldSystem, void *param1);
void sub_0203D30C(FieldSystem *fieldSystem, void *param1);
void FieldSystem_OpenSummaryScreen(FieldSystem *fieldSystem, void *appArgs);
void *sub_0203D390(FieldSystem *fieldSystem, FieldMoveContext *param1, u8 param2);
void *sub_0203D3C0(int param0, FieldSystem *fieldSystem);
void *sub_0203D3E4(int param0, FieldSystem *fieldSystem);
int PartyManagementData_GetSelectedSlot(PartyManagementData *partyMan);
void *sub_0203D410(int param0, FieldSystem *fieldSystem, int param2);
int sub_0203D438(void *param0);
int sub_0203D440(void *param0);
void *sub_0203D50C(FieldTask *taskMan, int heapID);
void *sub_0203D578(int param0, FieldSystem *fieldSystem, int param2, int param3, int param4, int param5);
void *sub_0203D5C8(int param0, FieldSystem *fieldSystem, int param2);
void *sub_0203D644(FieldSystem *fieldSystem, int param1);
PokemonSummary *sub_0203D670(FieldSystem *fieldSystem, int heapID, int mode);
void *FieldSystem_OpenSummaryScreenSelectMove(enum HeapId heapID, FieldSystem *fieldSystem, u8 partyIndex);
int PokemonSummary_GetSelectedMoveSlot(void *summary);
void FieldSystem_OpenPokemonStorage(FieldSystem *fieldSystem, PokemonStorageSession *pokemonStorageSession);
void sub_0203D80C(FieldTask *param0, u16 *param1, u16 *param2, u16 *param3);
void sub_0203D874(FieldSystem *fieldSystem, UnkStruct_0209747C *param1);
void sub_0203D884(FieldSystem *fieldSystem, UnkStruct_0203D8AC *param1);
void *sub_0203D8AC(FieldSystem *fieldSystem);
void *FieldSystem_OpenOptionsMenu(FieldSystem *fieldSystem);
UnkStruct_02097728 *sub_0203D920(FieldSystem *fieldSystem, int param1, u8 param2, u8 mailType, int unusedHeapID);
UnkStruct_02097728 *sub_0203D94C(FieldSystem *fieldSystem, int param1, u8 param2, int heapID);
UnkStruct_02097728 *sub_0203D984(FieldSystem *fieldSystem, Pokemon *param1, int heapID);
UnkStruct_0203D9B8 *sub_0203D9B8(FieldSystem *fieldSystem, int heapID);
void sub_0203D9D8(FieldSystem *fieldSystem, UnkStruct_ov90_021D0D80 *param1);
void sub_0203DAC0(FieldTask *param0, u16 *param1, SaveData *saveData, u16 param3, u16 param4);
BOOL sub_0203DB10(FieldSystem *fieldSystem, void *param1);
BOOL sub_0203DB24(FieldSystem *fieldSystem, void *param1);
BOOL sub_0203DBF0(FieldTask *param0);
void sub_0203DDDC(FieldTask *param0);
void sub_0203DDFC(FieldSystem *fieldSystem);
void *sub_0203DE34(FieldSystem *fieldSystem);
void sub_0203DE78(FieldSystem *fieldSystem, SaveData *saveData);
void sub_0203DE88(FieldSystem *fieldSystem, SaveData *saveData);
void sub_0203DFE8(FieldTask *param0, int param1, int param2, int param3, int param4, const u16 *param5, u16 *param6);
void FieldSystem_OpenTrainerCardScreen(FieldSystem *fieldSystem, TrainerCard *param1);
BOOL sub_0203E0AC(FieldSystem *fieldSystem, void *param1);
void FieldSystem_LaunchChooseStarterApp(FieldSystem *fieldSystem, ChooseStarterData *param1);
void sub_0203E0D0(FieldSystem *fieldSystem);
void sub_0203E0FC(FieldSystem *fieldSystem, int param1);
void *sub_0203E1AC(FieldSystem *fieldSystem, int param1, int param2);
void sub_0203E224(FieldSystem *fieldSystem);
void sub_0203E234(FieldSystem *fieldSystem, UnkStruct_0203E234 *param1);
void *sub_0203E244(FieldSystem *fieldSystem);
void sub_0203E274(FieldSystem *fieldSystem, UnkStruct_0203E274 *param1);
void sub_0203E284(FieldSystem *fieldSystem, UnkStruct_020997B8 *param1);
void sub_0203E2AC(FieldSystem *fieldSystem, void *param1);
void sub_0203E2D4(FieldSystem *fieldSystem, void *param1);
void sub_0203E2FC(FieldSystem *fieldSystem);
BOOL sub_0203E348(FieldSystem *fieldSystem, UnkStruct_0203E348 *param1);
void sub_0203E414(FieldTask *task, int slotMachineID);
void AccessoryShop_Init(FieldTask *task);
void *sub_0203E53C(FieldSystem *fieldSystem, int heapID, int param2);
void *sub_0203E564(FieldSystem *fieldSystem, u8 param1, u8 param2, u16 param3, int heapID);
PartyManagementData *sub_0203E598(FieldSystem *fieldSystem, int heapID, int param2);
void *sub_0203E608(FieldSystem *fieldSystem, int heapID);
void *FieldSystem_OpenSummaryScreenTeachMove(int unused, FieldSystem *fieldSystem, u16 partySlot, u16 move);
void sub_0203E6C0(FieldSystem *fieldSystem, int param1, int param2);
void sub_0203E704(FieldSystem *fieldSystem);
void sub_0203E714(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_UNK_0203D1B8_H
