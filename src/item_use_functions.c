#include "item_use_functions.h"

#include "nitro/types.h"
#include <nitro.h>
#include <string.h>

#include "constants/savedata/vars_flags.h"

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_0203D9B8.h"
#include "struct_defs/struct_020684D0.h"
#include "struct_defs/struct_020708E0.h"
#include "struct_defs/struct_02097728.h"
#include "struct_defs/struct_02098C44.h"

#include "field/field_system.h"
#include "overlay005/fieldmap.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021F007C.h"
#include "overlay005/ov5_021F08CC.h"
#include "overlay005/save_info_window.h"
#include "overlay005/struct_ov5_021F0468_decl.h"
#include "overlay006/ov6_02247100.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "bg_window.h"
#include "field_map_change.h"
#include "field_message.h"
#include "field_system.h"
#include "field_task.h"
#include "game_options.h"
#include "heap.h"
#include "item.h"
#include "mail.h"
#include "map_header.h"
#include "map_header_data.h"
#include "map_object.h"
#include "map_object_move.h"
#include "map_tile_behavior.h"
#include "party.h"
#include "player_avatar.h"
#include "pokedex.h"
#include "pokeradar.h"
#include "render_window.h"
#include "save_player.h"
#include "screen_fade.h"
#include "script_manager.h"
#include "start_menu.h"
#include "strbuf.h"
#include "system.h"
#include "system_flags.h"
#include "system_vars.h"
#include "terrain_collision_manager.h"
#include "unk_0203C954.h"
#include "unk_0203D1B8.h"
#include "unk_020553DC.h"
#include "unk_02055C50.h"
#include "unk_0205F180.h"
#include "unk_0206B9D8.h"
#include "unk_0207CB08.h"
#include "unk_020989DC.h"
#include "vars_flags.h"

#include "constdata/const_020F1E88.h"
#include "res/text/bank/location_names.h"

typedef struct ItemUseFuncDat {
    ItemMenuUseFunc useItemFromMenuFunc;
    ItemFieldUseFunc useItemInFieldFunc;
    ItemCheckUseFunc canUseItemFunc;
} ItemUseFuncDat;

void *sub_0203D8AC(FieldSystem *fieldSystem);
static void sub_020684D0(FieldSystem *fieldSystem, PlayerContextInMap *param1);
static void UseHealingItemFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseTownMapFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseExplorerKitFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseBicycleFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseJournalFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseTMHMFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseMailFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseBerryFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UsePoffinCaseFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UsePalPadFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UsePokeRadarFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseSprayDuckFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseMulchFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseHoneyFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseVsSeekerFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseOldRodFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseGoodRodFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseSuperRodFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseEvoStoneFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseEscapeRopeFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseAzureFluteFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseVsRecorderFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static void UseGracideaFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1);
static BOOL UseBicycleInField(ItemFieldUseContext *param0);
static BOOL UseJournalInField(ItemFieldUseContext *param0);
static BOOL UseOldRodInField(ItemFieldUseContext *param0);
static BOOL UseGoodRodInField(ItemFieldUseContext *param0);
static BOOL UseSuperRodInField(ItemFieldUseContext *param0);
static BOOL UseGenericItemInField(ItemFieldUseContext *param0);
static BOOL UseTownMapInField(ItemFieldUseContext *param0);
static BOOL UsePoffinCaseInField(ItemFieldUseContext *param0);
static BOOL UsePalPadInField(ItemFieldUseContext *param0);
static BOOL UseExplorerKitInField(ItemFieldUseContext *param0);
static BOOL UsePokeRadarInField(ItemFieldUseContext *param0);
static BOOL UseSprayDuckInField(ItemFieldUseContext *param0);
static BOOL UseVsSeekerInField(ItemFieldUseContext *param0);
static BOOL UseAzureFluteInField(ItemFieldUseContext *param0);
static BOOL UseVsRecorderInField(ItemFieldUseContext *param0);
static BOOL UseGracideaInField(ItemFieldUseContext *param0);
static void *sub_02068BEC(void *param0);
static void *sub_02068B9C(void *param0);
static void *sub_02068708(void *param0);
static void *sub_02068A28(void *param0);
static void *sub_020691CC(void *param0);
static void *sub_02069228(void *param0);
static u32 CanUseBicycle(const PlayerContextInMap *param0);
static u32 CanUseExplorerKit(const PlayerContextInMap *param0);
static u32 CanUseBerry(const PlayerContextInMap *param0);
static u32 CanUsePokeRadar(const PlayerContextInMap *param0);
static u32 CanUseSprayDuck(const PlayerContextInMap *param0);
static u32 CanUseMulch(const PlayerContextInMap *param0);
static u32 CanUseVsSeeker(const PlayerContextInMap *param0);
static u32 CanUseFishingRod(const PlayerContextInMap *param0);
static u32 CanUseEscapeRope(const PlayerContextInMap *param0);
static u32 CanUseAzureFlute(const PlayerContextInMap *param0);
static BOOL MountOrUnmountBicycle(FieldTask *task);
static BOOL PrintRegisteredKeyItemUseMessage(FieldTask *task);
static void RegisteredItem_CreateGoToAppTask(ItemFieldUseContext *param0, void *param1);
static BOOL RegisteredItem_GoToApp(FieldTask *task);
static BOOL sub_020690F0(FieldTask *task);
static BOOL sub_020685AC(FieldTask *task);
static void PrintRegisteredKeyItemError(ItemFieldUseContext *param0, u32 param1);

static const ItemUseFuncDat itemFieldUseFuncs[] = {
    { NULL, UseGenericItemInField, NULL },
    { UseHealingItemFromMenu, NULL, NULL },
    { UseTownMapFromMenu, UseTownMapInField, NULL },
    { UseExplorerKitFromMenu, UseExplorerKitInField, CanUseExplorerKit },
    { UseBicycleFromMenu, UseBicycleInField, CanUseBicycle },
    { UseJournalFromMenu, UseJournalInField, NULL },
    { UseTMHMFromMenu, NULL, NULL },
    { UseMailFromMenu, NULL, NULL },
    { UseBerryFromMenu, NULL, CanUseBerry },
    { UsePoffinCaseFromMenu, UsePoffinCaseInField, NULL },
    { UsePalPadFromMenu, UsePalPadInField, NULL },
    { UsePokeRadarFromMenu, UsePokeRadarInField, CanUsePokeRadar },
    { UseSprayDuckFromMenu, UseSprayDuckInField, CanUseSprayDuck },
    { UseMulchFromMenu, NULL, CanUseMulch },
    { UseHoneyFromMenu, NULL, NULL },
    { UseVsSeekerFromMenu, UseVsSeekerInField, CanUseVsSeeker },
    { UseOldRodFromMenu, UseOldRodInField, CanUseFishingRod },
    { UseGoodRodFromMenu, UseGoodRodInField, CanUseFishingRod },
    { UseSuperRodFromMenu, UseSuperRodInField, CanUseFishingRod },
    { NULL, UseGenericItemInField, NULL },
    { UseEvoStoneFromMenu, NULL, NULL },
    { UseEscapeRopeFromMenu, NULL, CanUseEscapeRope },
    { UseAzureFluteFromMenu, UseAzureFluteInField, CanUseAzureFlute },
    { UseVsRecorderFromMenu, UseVsRecorderInField, NULL },
    { UseGracideaFromMenu, UseGracideaInField, NULL }
};

u32 GetItemUseFunction(u16 discriminator, u16 functionIdx)
{
    if (discriminator == USE_ITEM_TASK_MENU) {
        return (u32)itemFieldUseFuncs[functionIdx].useItemFromMenuFunc;
    } else if (discriminator == USE_ITEM_TASK_FIELD) {
        return (u32)itemFieldUseFuncs[functionIdx].useItemInFieldFunc;
    }

    return (u32)itemFieldUseFuncs[functionIdx].canUseItemFunc;
}

void sub_0206842C(FieldSystem *fieldSystem, PlayerContextInMap *param1)
{
    int playerXCoordinate, playerZCoordinate, playerDirection;
    MapObject *v3;

    if (PlayerAvatar_DistortionGravityChanged(fieldSystem->playerAvatar) == TRUE) {
        sub_020684D0(fieldSystem, param1);
        return;
    }

    param1->fieldSystem = fieldSystem;
    param1->mapHeaderID = fieldSystem->location->mapId;
    param1->hasPartner = SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData));
    param1->playerState = PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar);

    playerXCoordinate = Player_GetXPos(fieldSystem->playerAvatar);
    playerZCoordinate = Player_GetZPos(fieldSystem->playerAvatar);

    param1->currTileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, playerXCoordinate, playerZCoordinate);

    playerDirection = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    switch (playerDirection) {
    case 0:
        playerZCoordinate--;
        break;
    case 1:
        playerZCoordinate++;
        break;
    case 3:
        playerXCoordinate++;
        break;
    case 2:
        playerXCoordinate--;
        break;
    }

    param1->facingTileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, playerXCoordinate, playerZCoordinate);
    sub_0203C9D4(fieldSystem, &v3);

    param1->unk_10 = sub_02055FC8(fieldSystem, v3);
    param1->playerAvatar = fieldSystem->playerAvatar;
}

static void sub_020684D0(FieldSystem *fieldSystem, PlayerContextInMap *param1)
{
    param1->fieldSystem = fieldSystem;
    param1->mapHeaderID = fieldSystem->location->mapId;
    param1->hasPartner = SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData));
    param1->playerState = PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar);
    param1->currTileBehavior = PlayerAvatar_GetDistortionCurrTileBehaviour(fieldSystem->playerAvatar);

    {
        int v0 = PlayerAvatar_GetDistortionDir(fieldSystem->playerAvatar);
        param1->facingTileBehavior = PlayerAvatar_GetDistortionTileBehaviour(fieldSystem->playerAvatar, v0);
    }

    param1->unk_10 = sub_02055FC8(fieldSystem, NULL);
    param1->playerAvatar = fieldSystem->playerAvatar;
}

static UnkStruct_0206851C *sub_0206851C(u32 param0, u16 param1, u16 param2, u16 param3, u16 param4)
{
    UnkStruct_0206851C *v0 = Heap_AllocFromHeap(HEAP_ID_FIELD_TASK, sizeof(UnkStruct_0206851C));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_06 = param2;
    v0->unk_08 = param3;
    v0->unk_0A = param4;

    return v0;
}

static void sub_02068540(ItemMenuUseContext *param0, const PlayerContextInMap *param1, u32 param2)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = sub_020685AC;
    menu->taskData = sub_0206851C(param2, param0->item, 0, 0, 0);
    menu->state = START_MENU_STATE_10;
}

static void sub_02068584(ItemFieldUseContext *param0, u32 param1)
{
    void *v0 = sub_0206851C(param1, param0->unk_28, 0, 0, 0);
    FieldSystem_CreateTask(param0->fieldSystem, sub_020685AC, v0);
}

static BOOL sub_020685AC(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    UnkStruct_0206851C *v1 = FieldTask_GetEnv(task);
    int *v2 = FieldTask_GetState(task);
    MapObject *v3;

    switch (*v2) {
    case 0:
        sub_0203C9D4(fieldSystem, &v3);
        ScriptManager_Start(task, v1->unk_00, v3, NULL);

        *(u16 *)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_PARAMETER_0) = v1->unk_04;
        *(u16 *)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_PARAMETER_1) = v1->unk_06;
        *(u16 *)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_PARAMETER_2) = v1->unk_08;
        *(u16 *)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_PARAMETER_3) = v1->unk_0A;

        (*v2)++;
        break;
    case 1:
        Heap_Free(v1);
        return TRUE;
    }

    return FALSE;
}

static void UseHealingItemFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);
    PartyManagementData *partyMan = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(PartyManagementData));

    memset(partyMan, 0, sizeof(PartyManagementData));

    partyMan->party = SaveData_GetParty(fieldSystem->saveData);
    partyMan->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMan->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMan->options = SaveData_GetOptions(fieldSystem->saveData);
    partyMan->broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    partyMan->fieldMoveContext = &menu->fieldMoveContext;
    partyMan->unk_21 = 0;
    partyMan->unk_20 = 5;
    partyMan->fieldSystem = fieldSystem;
    partyMan->usedItemID = param0->item;
    partyMan->selectedMonSlot = param0->selectedMonSlot;

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMan);
    menu->taskData = partyMan;
    sub_0203B674(menu, sub_0203B7C0);
}

static void UseTownMapFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);

    menu->taskData = sub_0203D8AC(fieldSystem);
    sub_0203B674(menu, sub_0203C3F4);
}

static BOOL UseTownMapInField(ItemFieldUseContext *param0)
{
    RegisteredItem_CreateGoToAppTask(param0, sub_02068708);
    return TRUE;
}

static void *sub_02068708(void *param0)
{
    return sub_0203D8AC(param0);
}

static void UseExplorerKitFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = FieldTask_MapChangeToUnderground;
    menu->taskData = sub_02053FAC(fieldSystem);
    menu->state = START_MENU_STATE_10;

    fieldSystem->unk_90 = 0;
}

static BOOL UseExplorerKitInField(ItemFieldUseContext *param0)
{
    void *v0 = sub_02053FAC(param0->fieldSystem);

    MapObjectMan_PauseAllMovement(param0->fieldSystem->mapObjMan);
    FieldSystem_CreateTask(param0->fieldSystem, FieldTask_MapChangeToUnderground, v0);

    param0->fieldSystem->unk_90 = 0;
    return FALSE;
}

static u32 CanUseExplorerKit(const PlayerContextInMap *param0)
{
    if (MapHeader_GetMapLabelTextID(param0->mapHeaderID) == LocationNames_Text_MysteryZone) {
        return -1;
    }

    if (!(MapHeader_IsOnMainMatrix(param0->mapHeaderID))) {
        return -1;
    }

    if (sub_0205EFDC(param0->playerAvatar) == 1) {
        return -1;
    }

    if ((SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(param0->fieldSystem->saveData)) == TRUE)
        || (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(param0->fieldSystem->saveData)) == TRUE)) {
        return -1;
    }

    if (PlayerAvatar_GetPlayerState(param0->playerAvatar) == 0x2) {
        return -1;
    }

    if (TileBehavior_IsBridge(param0->currTileBehavior) == TRUE) {
        return -1;
    }

    if (TileBehavior_ForbidsExplorationKit(param0->currTileBehavior) == 1) {
        return -1;
    }

    {
        u16 v0, v1;

        v0 = Player_GetXPos(param0->fieldSystem->playerAvatar);
        v1 = Player_GetZPos(param0->fieldSystem->playerAvatar);

        if (MapHeaderData_IsAnyObjectEventAtPos(param0->fieldSystem, v0, v1) == 0) {
            return -1;
        }
    }

    return 0;
}

static void UseBicycleFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = MountOrUnmountBicycle;
    menu->taskData = NULL;
    menu->state = START_MENU_STATE_10;
}

static BOOL UseBicycleInField(ItemFieldUseContext *param0)
{
    FieldSystem_CreateTask(param0->fieldSystem, MountOrUnmountBicycle, NULL);
    return FALSE;
}

static BOOL MountOrUnmountBicycle(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    int *state = FieldTask_GetState(task);

    switch (*state) {
    case 0:
        (*state)++;
        break;
    case 1:
        if (PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar) == 0x1) {
            MapObject_SetPauseMovementOff(Player_MapObject(fieldSystem->playerAvatar));
            PlayerAvatar_SetRequestStateBit(fieldSystem->playerAvatar, 1 << 0);
            PlayerAvatar_RequestChangeState(fieldSystem->playerAvatar);

            Sound_SetSpecialBGM(fieldSystem, SEQ_NONE);
            Sound_TryFadeOutToBGM(fieldSystem, Sound_GetOverrideBGM(fieldSystem, fieldSystem->location->mapId), 1);
        } else {
            Sound_SetSpecialBGM(fieldSystem, SEQ_BICYCLE);
            Sound_TryFadeOutToBGM(fieldSystem, SEQ_BICYCLE, 1);
            MapObject_SetPauseMovementOff(Player_MapObject(fieldSystem->playerAvatar));

            PlayerAvatar_SetRequestStateBit(fieldSystem->playerAvatar, 1 << 1);
            PlayerAvatar_RequestChangeState(fieldSystem->playerAvatar);

            RadarChain_Clear(fieldSystem->chain);
        }

        (*state)++;
        break;
    case 2:
        (*state)++;
        break;
    case 3:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        return TRUE;
    }

    return FALSE;
}

static u32 CanUseBicycle(const PlayerContextInMap *param0)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

    if (param0->hasPartner == 1) {
        return 2;
    }

    if (SystemFlag_HandleForceBikingInGate(v0, HANDLE_FLAG_CHECK) == TRUE) {
        return 1;
    }

    if (sub_0205EFDC(param0->playerAvatar) == 1) {
        return 1;
    }

    {
        MapObject *v1 = Player_MapObject(param0->playerAvatar);

        if ((MapObject_IsOnBikeBridgeNorthSouth(v1, param0->currTileBehavior) == 1) || (MapObject_IsOnBikeBridgeEastWest(v1, param0->currTileBehavior) == 1)) {
            return 1;
        }
    }

    if ((TileBehavior_IsVeryTallGrass(param0->currTileBehavior) == 1) || (TileBehavior_IsMud(param0->currTileBehavior) == 1) || (TileBehavior_IsMudWithGrass(param0->currTileBehavior) == 1)) {
        return -1;
    }

    if (MapHeader_IsBikeAllowed(param0->mapHeaderID) == 0) {
        return -1;
    }

    if (param0->playerState == PLAYER_STATE_SURFING) {
        return -1;
    }

    return 0;
}

static void UseJournalFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *v1 = FieldTask_GetEnv(param0->fieldTask);

    sub_0203D30C(fieldSystem, NULL);
    sub_0203B674(v1, sub_0203C50C);
}

static BOOL UseJournalInField(ItemFieldUseContext *param0)
{
    RegisteredItem_CreateGoToAppTask(param0, sub_02068A28);
    return TRUE;
}

static void *sub_02068A28(void *param0)
{
    sub_0203D30C(param0, NULL);
    return NULL;
}

static void UseTMHMFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);
    PartyManagementData *partyMan = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(PartyManagementData));

    memset(partyMan, 0, sizeof(PartyManagementData));

    partyMan->party = SaveData_GetParty(fieldSystem->saveData);
    partyMan->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMan->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMan->options = SaveData_GetOptions(fieldSystem->saveData);
    partyMan->fieldMoveContext = &menu->fieldMoveContext;
    partyMan->unk_21 = 0;
    partyMan->unk_20 = 6;
    partyMan->fieldSystem = fieldSystem;
    partyMan->usedItemID = param0->item;
    partyMan->selectedMonSlot = param0->selectedMonSlot;
    partyMan->learnedMove = Item_MoveForTMHM(param0->item);

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMan);
    menu->taskData = partyMan;
    sub_0203B674(menu, sub_0203B7C0);
}

static void UseMailFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);
    UnkStruct_02097728 *v2 = sub_0203D94C(fieldSystem, 3, Item_MailNumber(param0->item), HEAP_ID_FIELDMAP);

    menu->unk_260 = sub_0203C540(param0->item, 3, 0);
    menu->taskData = v2;

    sub_0203B674(menu, sub_0203C558);
}

static u32 CanUseBerry(const PlayerContextInMap *param0)
{
    return 0;
}

static void UseBerryFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem;
    StartMenu *v1;
    MapObject *v2;

    fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    v1 = FieldTask_GetEnv(param0->fieldTask);

    if (param1->unk_10 & 0x1) {
        sub_02068540(param0, param1, 2801);
    } else {
        UseHealingItemFromMenu(param0, param1);
    }
}

BOOL sub_02068B50(const PlayerContextInMap *param0)
{
    if (param0->unk_10 & 0x1) {
        return TRUE;
    }

    return FALSE;
}

static void UsePoffinCaseFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);
    UnkStruct_0203D9B8 *v2 = sub_0203D9B8(fieldSystem, HEAP_ID_FIELDMAP);

    menu->taskData = v2;
    sub_0203B674(menu, sub_0203C710);
}

static BOOL UsePoffinCaseInField(ItemFieldUseContext *param0)
{
    RegisteredItem_CreateGoToAppTask(param0, sub_02068B9C);
    return TRUE;
}

static void *sub_02068B9C(void *param0)
{
    return sub_0203D9B8(param0, HEAP_ID_FIELDMAP);
}

static void UsePalPadFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);

    sub_0203DE78(fieldSystem, fieldSystem->saveData);
    menu->taskData = NULL;
    sub_0203B674(menu, sub_0203C750);
}

static BOOL UsePalPadInField(ItemFieldUseContext *param0)
{
    RegisteredItem_CreateGoToAppTask(param0, sub_02068BEC);
    return TRUE;
}

static void *sub_02068BEC(void *param0)
{
    sub_0203DE78(param0, ((FieldSystem *)param0)->saveData);
    return NULL;
}

static void UsePokeRadarFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);
    int *v2 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(int));

    (*v2) = 0;
    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = RefreshRadarChain;
    menu->taskData = v2;
    menu->state = START_MENU_STATE_10;
}

static BOOL UsePokeRadarInField(ItemFieldUseContext *param0)
{
    int *v0 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(int));

    *v0 = 0;
    FieldSystem_CreateTask(param0->fieldSystem, RefreshRadarChain, v0);

    return FALSE;
}

static u32 CanUsePokeRadar(const PlayerContextInMap *param0)
{
    if (param0->hasPartner == 1) {
        return 2;
    }

    if (PlayerAvatar_GetPlayerState(param0->fieldSystem->playerAvatar) == 0x1) {
        return -1;
    }

    if (!TileBehavior_IsTallGrass(param0->currTileBehavior)) {
        return -1;
    }

    return 0;
}

static void UseSprayDuckFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    sub_02068540(param0, param1, 2802);
}

static BOOL UseSprayDuckInField(ItemFieldUseContext *param0)
{
    sub_02068584(param0, 2802);
    return FALSE;
}

static u32 CanUseSprayDuck(const PlayerContextInMap *param0)
{
    if (param0->hasPartner == 1) {
        return 2;
    }

    if (param0->unk_10 & 0x4) {
        return 0;
    } else {
        return -1;
    }
}

static void UseMulchFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    sub_02068540(param0, param1, 2803);
}

static u32 CanUseMulch(const PlayerContextInMap *param0)
{
    if (param0->unk_10 & 0x2) {
        return 0;
    } else {
        return -1;
    }
}

static void UseHoneyFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    UnkStruct_ov5_021F0468 *v2;
    int v3;

    fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    menu = FieldTask_GetEnv(param0->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    v3 = ov5_021F0484();
    v2 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, v3);

    memset(v2, 0, v3);

    menu->callback = ov5_021F0488;
    menu->taskData = v2;
    menu->state = START_MENU_STATE_10;

    Bag_TryRemoveItem(SaveData_GetBag(fieldSystem->saveData), param0->item, 1, HEAP_ID_FIELDMAP);
}

static void UseVsSeekerFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    sub_02068540(param0, param1, 8950);
}

static BOOL UseVsSeekerInField(ItemFieldUseContext *param0)
{
    sub_02068584(param0, 8950);
    return FALSE;
}

static u32 CanUseVsSeeker(const PlayerContextInMap *param0)
{
    if (MapHeader_IsOnMainMatrix(param0->mapHeaderID)) {
        return 0;
    }

    return -1;
}

static void UseOldRodFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = ov5_021F08F8;
    menu->taskData = ov5_021F08CC(fieldSystem, HEAP_ID_FIELDMAP, 0);
    menu->state = START_MENU_STATE_10;
}

static BOOL UseOldRodInField(ItemFieldUseContext *param0)
{
    void *v0 = ov5_021F08CC(param0->fieldSystem, HEAP_ID_FIELD, 0);

    FieldSystem_CreateTask(param0->fieldSystem, ov5_021F08F8, v0);
    return FALSE;
}

static void UseGoodRodFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = ov5_021F08F8;
    menu->taskData = ov5_021F08CC(fieldSystem, HEAP_ID_FIELDMAP, 1);
    menu->state = START_MENU_STATE_10;
}

static BOOL UseGoodRodInField(ItemFieldUseContext *param0)
{
    void *v0 = ov5_021F08CC(param0->fieldSystem, HEAP_ID_FIELD, 1);

    FieldSystem_CreateTask(param0->fieldSystem, ov5_021F08F8, v0);
    return FALSE;
}

static void UseSuperRodFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = ov5_021F08F8;
    menu->taskData = ov5_021F08CC(fieldSystem, HEAP_ID_FIELDMAP, 2);
    menu->state = START_MENU_STATE_10;
}

static BOOL UseSuperRodInField(ItemFieldUseContext *param0)
{
    void *v0 = ov5_021F08CC(param0->fieldSystem, HEAP_ID_FIELD, 2);

    FieldSystem_CreateTask(param0->fieldSystem, ov5_021F08F8, v0);
    return FALSE;
}

static u32 CanUseFishingRod(const PlayerContextInMap *param0)
{
    if (param0->hasPartner == 1) {
        return 2;
    }

    if ((param0->mapHeaderID == 573) || (param0->mapHeaderID == 574) || (param0->mapHeaderID == 575) || (param0->mapHeaderID == 576) || (param0->mapHeaderID == 577) || (param0->mapHeaderID == 578) || (param0->mapHeaderID == 579) || (param0->mapHeaderID == 580) || (param0->mapHeaderID == 581) || (param0->mapHeaderID == 582) || (param0->mapHeaderID == 583)) {
        return 3;
    }

    if (TileBehavior_IsSurfable(param0->facingTileBehavior) == 1) {
        if ((TileBehavior_IsBridge(param0->currTileBehavior) == TRUE) || (TileBehavior_IsBridgeStart(param0->currTileBehavior) == TRUE)) {
            MapObject *v0 = Player_MapObject(param0->playerAvatar);

            if (sub_02062F30(v0) == 1) {
                return -1;
            }
        }

        return 0;
    }

    return -1;
}

static BOOL UseGenericItemInField(ItemFieldUseContext *param0)
{
    UnkStruct_02068EFC *v0 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_02068EFC));

    v0->unk_16 = 0;
    v0->unk_10 = Strbuf_Init(128, HEAP_ID_FIELDMAP);

    sub_0207CC10(param0->fieldSystem->saveData, v0->unk_10, Bag_GetRegisteredItem(SaveData_GetBag(param0->fieldSystem->saveData)), 11);
    FieldSystem_CreateTask(param0->fieldSystem, PrintRegisteredKeyItemUseMessage, v0);

    return FALSE;
}

static BOOL PrintRegisteredKeyItemUseMessage(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    UnkStruct_02068EFC *v1 = FieldTask_GetEnv(task);

    switch (v1->unk_16) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        FieldMessage_AddWindow(fieldSystem->bgConfig, &v1->unk_00, 3);

        const Options *options = SaveData_GetOptions(fieldSystem->saveData);

        FieldMessage_DrawWindow(&v1->unk_00, options);
        v1->unk_14 = FieldMessage_Print(&v1->unk_00, v1->unk_10, options, 1);
        v1->unk_16++;
        break;
    case 1:
        if (FieldMessage_FinishedPrinting(v1->unk_14) == 1) {
            if (gSystem.pressedKeys & (PAD_KEY | PAD_BUTTON_A | PAD_BUTTON_B)) {
                Window_EraseMessageBox(&v1->unk_00, 0);
                v1->unk_16++;
            }
        }
        break;
    case 2:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        Window_Remove(&v1->unk_00);
        Strbuf_Free(v1->unk_10);
        Heap_Free(v1);

        return TRUE;
    }

    return FALSE;
}

static void UseEvoStoneFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);
    PartyManagementData *partyMan = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(PartyManagementData));

    memset(partyMan, 0, sizeof(PartyManagementData));

    partyMan->party = SaveData_GetParty(fieldSystem->saveData);
    partyMan->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMan->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMan->options = SaveData_GetOptions(fieldSystem->saveData);
    partyMan->broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    partyMan->fieldMoveContext = &menu->fieldMoveContext;
    partyMan->unk_21 = 0;
    partyMan->unk_20 = 16;
    partyMan->usedItemID = param0->item;
    partyMan->selectedMonSlot = param0->selectedMonSlot;

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMan);
    menu->taskData = partyMan;
    sub_0203B674(menu, sub_0203B7C0);
}

static void UseEscapeRopeFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = sub_020690F0;
    menu->taskData = NULL;
    menu->state = START_MENU_STATE_10;

    Bag_TryRemoveItem(SaveData_GetBag(fieldSystem->saveData), param0->item, 1, HEAP_ID_FIELDMAP);
}

static u32 CanUseEscapeRope(const PlayerContextInMap *param0)
{
    if (param0->hasPartner == 1) {
        return 2;
    }

    if ((MapHeader_IsCave(param0->mapHeaderID) == 1) && (MapHeader_IsEscapeRopeAllowed(param0->mapHeaderID) == 1)) {
        return 0;
    }

    return -1;
}

static BOOL sub_020690F0(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    void *v1 = ov6_02247100(fieldSystem, HEAP_ID_FIELDMAP);

    FieldTask_InitJump(task, ov6_02247120, v1);
    return FALSE;
}

static void UseAzureFluteFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    sub_02068540(param0, param1, 2039);
}

static BOOL UseAzureFluteInField(ItemFieldUseContext *param0)
{
    sub_02068584(param0, 2039);
    return FALSE;
}

static u32 CanUseAzureFlute(const PlayerContextInMap *param0)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(param0->fieldSystem->saveData);

    if (SystemFlag_CheckGameCompleted(v0) == 0) {
        return -1;
    }

    if (SystemVars_CheckDistributionEvent(v0, DISTRIBUTION_EVENT_ARCEUS) == FALSE) {
        return -1;
    }

    if (Pokedex_IsNationalDexObtained(SaveData_GetPokedex(param0->fieldSystem->saveData)) == FALSE) {
        return -1;
    }

    if (!MapHeader_IsAzureFluteAllowed(param0->mapHeaderID)) {
        return -1;
    }

    return 0;
}

static void UseVsRecorderFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(param0->fieldTask);

    sub_0203DE88(fieldSystem, fieldSystem->saveData);
    menu->taskData = NULL;
    sub_0203B674(menu, sub_0203C784);
}

static BOOL UseVsRecorderInField(ItemFieldUseContext *param0)
{
    RegisteredItem_CreateGoToAppTask(param0, sub_020691CC);
    return TRUE;
}

static void *sub_020691CC(void *param0)
{
    FieldSystem_SaveStateIfCommunicationOff(param0);
    sub_0203DE88(param0, ((FieldSystem *)param0)->saveData);

    return NULL;
}

static void UseGracideaFromMenu(ItemMenuUseContext *param0, const PlayerContextInMap *param1)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    PartyManagementData *partyMan; // unused

    fieldSystem = FieldTask_GetFieldSystem(param0->fieldTask);
    menu = FieldTask_GetEnv(param0->fieldTask);

    menu->taskData = sub_0203E598(fieldSystem, HEAP_ID_FIELDMAP, 466);

    sub_0203B674(menu, sub_0203B7C0);
}

static BOOL UseGracideaInField(ItemFieldUseContext *param0)
{
    RegisteredItem_CreateGoToAppTask(param0, sub_02069228);
    return TRUE;
}

static void *sub_02069228(void *param0)
{
    return sub_0203E598(param0, HEAP_ID_FIELDMAP, 466);
}

BOOL sub_02069238(FieldSystem *fieldSystem)
{
    ItemFieldUseContext *v0;
    ItemFieldUseFunc v1;
    ItemCheckUseFunc v2;
    u16 v3;
    u16 v4;
    BOOL v5;

    if (FieldSystem_IsInBattleTowerSalon(fieldSystem) == 1) {
        return FALSE;
    }

    if (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        return FALSE;
    }

    v3 = (u16)Bag_GetRegisteredItem(SaveData_GetBag(fieldSystem->saveData));
    v4 = (u16)Item_LoadParam(v3, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_FIELDMAP);
    v2 = (ItemCheckUseFunc)GetItemUseFunction(USE_ITEM_TASK_CHECK, v4);
    v1 = (ItemFieldUseFunc)GetItemUseFunction(USE_ITEM_TASK_FIELD, v4);

    if (v1 == NULL) {
        return FALSE;
    }

    v0 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(ItemFieldUseContext));
    memset(v0, 0, sizeof(ItemFieldUseContext));

    v0->fieldSystem = fieldSystem;
    v0->unk_28 = v3;

    sub_0206842C(fieldSystem, &v0->unk_04);

    v5 = 0;

    if (v2 == NULL) {
        v5 = v1(v0);
    } else {
        u32 v6 = v2(&v0->unk_04);

        if (v6 == 0) {
            v5 = v1(v0);
        } else {
            PrintRegisteredKeyItemError(v0, v6);
        }
    }

    if (v5 == 0) {
        Heap_Free(v0);
    }

    return TRUE;
}

static void PrintRegisteredKeyItemError(ItemFieldUseContext *param0, u32 error)
{
    UnkStruct_02068EFC *v0 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(UnkStruct_02068EFC));

    v0->unk_16 = 0;
    v0->unk_10 = Strbuf_Init(128, HEAP_ID_FIELDMAP);

    GetItemUseErrorMessage(SaveData_GetTrainerInfo(param0->fieldSystem->saveData), v0->unk_10, param0->unk_28, error, HEAP_ID_FIELDMAP);
    FieldSystem_CreateTask(param0->fieldSystem, PrintRegisteredKeyItemUseMessage, v0);
}

static BOOL RegisteredItem_GoToApp(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    ItemFieldUseContext *v1 = FieldTask_GetEnv(task);

    switch (v1->unk_2A) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        ov5_021D1744(0);
        v1->unk_2A = 1;
        break;
    case 1:
        if (IsScreenFadeDone()) {
            v1->unk_24 = v1->unk_20(fieldSystem);
            v1->unk_2A = 2;
        }
        break;
    case 2:
        if (FieldSystem_IsRunningApplication(fieldSystem)) {
            break;
        }

        if (v1->unk_24 != NULL) {
            if (v1->unk_20 == sub_02068B9C) {
                sub_02098AF0(v1->unk_24);
            } else {
                Heap_Free(v1->unk_24);
            }
        }

        FieldSystem_StartFieldMap(fieldSystem);
        v1->unk_2A = 3;
        break;
    case 3:
        if (FieldSystem_IsRunningFieldMap(fieldSystem)) {
            MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
            ov5_021D1744(1);
            v1->unk_2A = 4;
        }
        break;
    case 4:
        if (IsScreenFadeDone()) {
            MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
            Heap_Free(v1);
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void RegisteredItem_CreateGoToAppTask(ItemFieldUseContext *param0, void *param1)
{
    param0->unk_20 = param1;
    FieldSystem_CreateTask(param0->fieldSystem, RegisteredItem_GoToApp, param0);
}
