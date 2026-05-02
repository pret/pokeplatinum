#ifndef POKEPLATINUM_UNK_0203D1B8_H
#define POKEPLATINUM_UNK_0203D1B8_H

#include "constants/heap.h"
#include "generated/items.h"
#include "generated/pokemon_contest_types.h"

#include "struct_defs/choose_starter_data.h"
#include "struct_defs/clear_game_player_info.h"
#include "struct_defs/hall_of_fame_display_data.h"
#include "struct_defs/struct_0203E348.h"

#include "applications/mail.h"
#include "applications/naming_screen.h"
#include "applications/party_menu/defs.h"
#include "applications/pc_boxes/pokemon_storage_session.h"
#include "applications/poffin_case/main.h"
#include "applications/pokedex/pokedex_main.h"
#include "applications/pokemon_summary_screen/main.h"
#include "applications/town_map/main.h"
#include "field/field_system_decl.h"
#include "overlay090/struct_ov90_021D0D80.h"

#include "bag_context.h"
#include "field_battle_data_transfer.h"
#include "field_move_tasks.h"
#include "field_task.h"
#include "item_use_functions.h"
#include "move_reminder_data.h"
#include "pokemon.h"
#include "savedata.h"
#include "trainer_case.h"
#include "unk_0209747C.h"

void FieldSystem_StartBattleProcess(FieldSystem *fieldSystem, FieldBattleDTO *dto);
void sub_0203D1E4(FieldSystem *fieldSystem, BagContext *param1);
BagContext *FieldSystem_OpenBag(FieldSystem *fieldSystem, ItemUseContext *param1);
void *FieldSystem_CreateBagContext(FieldSystem *fieldSystem, int pocketType);
u16 BagContext_GetSelectedItem(void *bagContext);
void sub_0203D2E4(FieldSystem *fieldSystem, void *param1);
void sub_0203D30C(FieldSystem *fieldSystem, void *param1);
void FieldSystem_OpenSummaryScreen(FieldSystem *fieldSystem, void *appArgs);

PartyMenu *FieldSystem_OpenPartyMenu(FieldSystem *fieldSystem, FieldMoveContext *fieldMoveCtx, u8 selectedMonSlot);
PartyMenu *FieldSystem_OpenPartyMenu_SelectPokemon(int unused, FieldSystem *fieldSystem);
PartyMenu *FieldSystem_OpenPartyMenu_SelectForTrade(int unused, FieldSystem *fieldSystem);
PartyMenu *FieldSystem_OpenPartyMenu_SelectForDaycare(int unused, FieldSystem *fieldSystem, int selectedMonSlot);
PartyMenu *FieldSystem_OpenPartyMenu_SelectForUnionRoomBattle(FieldTask *taskMan, enum HeapID heapID);
PartyMenu *FieldSystem_OpenPartyMenu_SelectForContest(int unused, FieldSystem *fieldSystem, enum PokemonContestType contestType, int contestRank, int param4, int selectedMonSlot);
PartyMenu *FieldSystem_OpenPartyMenu_SelectForSpinTrade(FieldSystem *fieldSystem, int selectedMonSlot);
PartyMenu *FieldSystem_OpenPartyMenu_SelectForItemUsage(FieldSystem *fieldSystem, enum HeapID heapID, enum Item item);

int PartyMenu_GetSelectedSlot(PartyMenu *partyMenu);
int PartyMenu_GetMenuSelectionResult(PartyMenu *partyMenu);
int PokemonSummary_GetPartySlot(PokemonSummary *monSummary);
void *FieldSystem_GetContestMonSummary(int unused, FieldSystem *fieldSystem, int partySlot);
PokemonSummary *sub_0203D670(FieldSystem *fieldSystem, enum HeapID heapID, int mode);
void *FieldSystem_OpenSummaryScreenSelectMove(enum HeapID heapID, FieldSystem *fieldSystem, u8 partyIndex);
int PokemonSummary_GetSelectedMoveSlot(void *summary);
void FieldSystem_OpenPokemonStorage(FieldSystem *fieldSystem, PokemonStorageSession *pokemonStorageSession);
void sub_0203D80C(FieldTask *param0, u16 *param1, u16 *param2, u16 *param3);
void sub_0203D874(FieldSystem *fieldSystem, UnkStruct_0209747C *param1);
void FieldSystem_OpenTownMap(FieldSystem *fieldSystem, TownMapContext *townMapCtx);
void *FieldSystem_OpenTownMapItem(FieldSystem *fieldSystem);
void *FieldSystem_OpenOptionsMenu(FieldSystem *fieldSystem);
MailAppArgs *FieldSystem_LaunchMailApp_Write(FieldSystem *fieldSystem, enum MailContext context, u8 partySlot, u8 mailType, int unusedHeapID);
MailAppArgs *FieldSystem_LaunchMailApp_Read(FieldSystem *fieldSystem, enum MailContext context, u8 mailType, enum HeapID heapID);
MailAppArgs *FieldSystem_LaunchMailApp_ReadHeld(FieldSystem *fieldSystem, Pokemon *param1, enum HeapID heapID);
PoffinCaseAppData *FieldSystem_LaunchPoffinCaseApp(FieldSystem *fieldSystem, enum HeapID heapID);
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
void sub_0203DFE8(
    FieldTask *param0,
    enum NamingScreenType type,
    int param2,
    int param3,
    int param4,
    const u16 *param5,
    u16 *param6);
void sub_0203E09C(FieldSystem *fieldSystem, TrainerCase *param1);
void FieldSystem_OpenTrainerCase(FieldSystem *fieldSystem, TrainerCase *trainerCase);
BOOL FieldSystem_OpenPokedex(FieldSystem *fieldSystem, PokedexOverlayArgs *args);
void FieldSystem_LaunchChooseStarterApp(FieldSystem *fieldSystem, ChooseStarterData *param1);
void FieldSystem_LaunchSignatureApp(FieldSystem *fieldSystem);
void FieldSystem_LaunchGTSApp(FieldSystem *fieldSystem, BOOL connectToWiFi);
void *sub_0203E1AC(FieldSystem *fieldSystem, int param1, int param2);
void sub_0203E224(FieldSystem *fieldSystem);
void FieldTask_StartHallOfFame(FieldSystem *fieldSystem, HallOfFameDisplayData *displayData);
void *FieldTask_OpenPCHallOfFameScreen(FieldSystem *fieldSystem);
void sub_0203E274(FieldSystem *fieldSystem, ClearGamePlayerInfo *param1);
void FieldSystem_OpenMoveReminderMenu(FieldSystem *fieldSystem, MoveReminderData *moveReminderData);
void FieldTask_PlayBoatCutscene_CanalaveShip(FieldSystem *fieldSystem, void *taskEnv);
void FieldTask_PlayBoatCutscene_SnowpointShip(FieldSystem *fieldSystem, void *taskEnv);
void FieldSystem_HatchEgg(FieldSystem *fieldSystem);
BOOL sub_0203E348(FieldSystem *fieldSystem, UnkStruct_0203E348 *param1);
void sub_0203E414(FieldTask *task, int slotMachineID);
void AccessoryShop_Init(FieldTask *task);
void *FieldSystem_ShowDiploma(FieldSystem *fieldSystem, enum HeapID heapID, BOOL isNatDex);
void *FieldSystem_OpenBattleFrontierRecord(FieldSystem *fieldSystem, u8 param1, u8 param2, u16 param3, enum HeapID heapID);
void *sub_0203E608(FieldSystem *fieldSystem, enum HeapID heapID);
void *FieldSystem_OpenSummaryScreenTeachMove(int unused, FieldSystem *fieldSystem, u16 partySlot, u16 move);
void sub_0203E6C0(FieldSystem *fieldSystem, int param1, int param2);
void FieldSystem_StartLibraryTV(FieldSystem *fieldSystem);
void FieldSystem_StartDWWarp(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_UNK_0203D1B8_H
