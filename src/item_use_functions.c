#include "item_use_functions.h"

#include "nitro/types.h"
#include <nitro.h>
#include <string.h>

#include "constants/savedata/vars_flags.h"

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020708E0.h"
#include "struct_defs/struct_02097728.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/poffin_case/main.h"
#include "field/field_system.h"
#include "overlay005/fieldmap.h"
#include "overlay005/fishing.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021F007C.h"
#include "overlay005/save_info_window.h"
#include "overlay005/struct_ov5_021F0468_decl.h"
#include "overlay006/field_warp.h"
#include "savedata/save_table.h"

#include "bag.h"
#include "bag_context.h"
#include "berry_patch_manager.h"
#include "bg_window.h"
#include "field_map_change.h"
#include "field_message.h"
#include "field_system.h"
#include "field_task.h"
#include "game_options.h"
#include "heap.h"
#include "item.h"
#include "item_use_functions.h"
#include "items.h"
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
#include "string_gf.h"
#include "system.h"
#include "system_flags.h"
#include "system_vars.h"
#include "terrain_collision_manager.h"
#include "unk_0203C954.h"
#include "unk_0203D1B8.h"
#include "unk_020553DC.h"
#include "unk_0205F180.h"
#include "unk_0206B9D8.h"
#include "vars_flags.h"

#include "res/text/bank/location_names.h"

typedef struct ItemUseFuncDat {
    ItemMenuUseFunc useItemFromMenuFunc;
    ItemFieldUseFunc useItemInFieldFunc;
    ItemCheckUseFunc canUseItemFunc;
} ItemUseFuncDat;

void *FieldSystem_OpenTownMapItem(FieldSystem *fieldSystem);
static void sub_020684D0(FieldSystem *fieldSystem, ItemUseContext *usageContext);
static void UseHealingItemFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseTownMapFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseExplorerKitFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseBicycleFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseJournalFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseTMHMFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseMailFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseBerryFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UsePoffinCaseFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UsePalPadFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UsePokeRadarFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseSprayDuckFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseMulchFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseHoneyFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseVsSeekerFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseOldRodFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseGoodRodFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseSuperRodFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseEvoStoneFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseEscapeRopeFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseAzureFluteFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseVsRecorderFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static void UseGracideaFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext);
static BOOL UseBicycleInField(ItemFieldUseContext *usageContext);
static BOOL UseJournalInField(ItemFieldUseContext *usageContext);
static BOOL UseOldRodInField(ItemFieldUseContext *usageContext);
static BOOL UseGoodRodInField(ItemFieldUseContext *usageContext);
static BOOL UseSuperRodInField(ItemFieldUseContext *usageContext);
static BOOL UseBagMessageItem(ItemFieldUseContext *usageContext);
static BOOL UseTownMapInField(ItemFieldUseContext *usageContext);
static BOOL UsePoffinCaseInField(ItemFieldUseContext *usageContext);
static BOOL UsePalPadInField(ItemFieldUseContext *usageContext);
static BOOL UseExplorerKitInField(ItemFieldUseContext *usageContext);
static BOOL UsePokeRadarInField(ItemFieldUseContext *usageContext);
static BOOL UseSprayDuckInField(ItemFieldUseContext *usageContext);
static BOOL UseVsSeekerInField(ItemFieldUseContext *usageContext);
static BOOL UseAzureFluteInField(ItemFieldUseContext *usageContext);
static BOOL UseVsRecorderInField(ItemFieldUseContext *usageContext);
static BOOL UseGracideaInField(ItemFieldUseContext *usageContext);
static void *sub_02068BEC(void *some_param);
static void *sub_02068B9C(void *some_param);
static void *sub_02068708(void *some_param);
static void *sub_02068A28(void *some_param);
static void *sub_020691CC(void *some_param);
static void *OpenPartyMenuForGracidea(void *fieldSystem);
static enum ItemUseCheckResult CanUseBicycle(const ItemUseContext *usageContext);
static enum ItemUseCheckResult CanUseExplorerKit(const ItemUseContext *usageContext);
static enum ItemUseCheckResult CanUseBerry(const ItemUseContext *usageContext);
static enum ItemUseCheckResult CanUsePokeRadar(const ItemUseContext *usageContext);
static enum ItemUseCheckResult CanUseSprayDuck(const ItemUseContext *usageContext);
static enum ItemUseCheckResult CanUseMulch(const ItemUseContext *usageContext);
static enum ItemUseCheckResult CanUseVsSeeker(const ItemUseContext *usageContext);
static enum ItemUseCheckResult CanUseFishingRod(const ItemUseContext *usageContext);
static enum ItemUseCheckResult CanUseEscapeRope(const ItemUseContext *usageContext);
static enum ItemUseCheckResult CanUseAzureFlute(const ItemUseContext *usageContext);
static BOOL MountOrUnmountBicycle(FieldTask *task);
static BOOL PrintRegisteredKeyItemUseMessage(FieldTask *task);
static void RegisteredItem_CreateGoToAppTask(ItemFieldUseContext *usageContext, void *param1);
static BOOL RegisteredItem_GoToApp(FieldTask *task);
static BOOL WarpWithEscapeRope(FieldTask *task);
static BOOL sub_020685AC(FieldTask *task);
static void PrintRegisteredKeyItemError(ItemFieldUseContext *usageContext, u32 param1);

// clang-format off
static const ItemUseFuncDat sItemUseFuncs[] = {
    [ITEM_USE_FUNC_NONE]         = { NULL,                   UseBagMessageItem,     NULL              },
    [ITEM_USE_FUNC_HEALING]      = { UseHealingItemFromMenu, NULL,                  NULL              },
    [ITEM_USE_FUNC_TOWN_MAP]     = { UseTownMapFromMenu,     UseTownMapInField,     NULL              },
    [ITEM_USE_FUNC_EXPLORER_KIT] = { UseExplorerKitFromMenu, UseExplorerKitInField, CanUseExplorerKit },
    [ITEM_USE_FUNC_BICYCLE]      = { UseBicycleFromMenu,     UseBicycleInField,     CanUseBicycle     },
    [ITEM_USE_FUNC_JOURNAL]      = { UseJournalFromMenu,     UseJournalInField,     NULL              },
    [ITEM_USE_FUNC_TM_HM]        = { UseTMHMFromMenu,        NULL,                  NULL              },
    [ITEM_USE_FUNC_MAIL]         = { UseMailFromMenu,        NULL,                  NULL              },
    [ITEM_USE_FUNC_BERRY]        = { UseBerryFromMenu,       NULL,                  CanUseBerry       },
    [ITEM_USE_FUNC_POFFIN_CASE]  = { UsePoffinCaseFromMenu,  UsePoffinCaseInField,  NULL              },
    [ITEM_USE_FUNC_PAL_PAD]      = { UsePalPadFromMenu,      UsePalPadInField,      NULL              },
    [ITEM_USE_FUNC_POKE_RADAR]   = { UsePokeRadarFromMenu,   UsePokeRadarInField,   CanUsePokeRadar   },
    [ITEM_USE_FUNC_SPRAYDUCK]    = { UseSprayDuckFromMenu,   UseSprayDuckInField,   CanUseSprayDuck   },
    [ITEM_USE_FUNC_MULCH]        = { UseMulchFromMenu,       NULL,                  CanUseMulch       },
    [ITEM_USE_FUNC_HONEY]        = { UseHoneyFromMenu,       NULL,                  NULL              },
    [ITEM_USE_FUNC_VS_SEEKER]    = { UseVsSeekerFromMenu,    UseVsSeekerInField,    CanUseVsSeeker    },
    [ITEM_USE_FUNC_OLD_ROD]      = { UseOldRodFromMenu,      UseOldRodInField,      CanUseFishingRod  },
    [ITEM_USE_FUNC_GOOD_ROD]     = { UseGoodRodFromMenu,     UseGoodRodInField,     CanUseFishingRod  },
    [ITEM_USE_FUNC_SUPER_ROD]    = { UseSuperRodFromMenu,    UseSuperRodInField,    CanUseFishingRod  },
    [ITEM_USE_FUNC_BAG_MESSAGE]  = { NULL,                   UseBagMessageItem,     NULL              },
    [ITEM_USE_FUNC_EVO_STONE]    = { UseEvoStoneFromMenu,    NULL,                  NULL              },
    [ITEM_USE_FUNC_ESCAPE_ROPE]  = { UseEscapeRopeFromMenu,  NULL,                  CanUseEscapeRope  },
    [ITEM_USE_FUNC_AZURE_FLUTE]  = { UseAzureFluteFromMenu,  UseAzureFluteInField,  CanUseAzureFlute  },
    [ITEM_USE_FUNC_VS_RECORDER]  = { UseVsRecorderFromMenu,  UseVsRecorderInField,  NULL              },
    [ITEM_USE_FUNC_GRACIDEA]     = { UseGracideaFromMenu,    UseGracideaInField,    NULL              },
};
// clang-format on

u32 GetItemUseFunction(u16 discriminator, u16 functionIdx)
{
    if (discriminator == USE_ITEM_TASK_MENU) {
        return (u32)sItemUseFuncs[functionIdx].useItemFromMenuFunc;
    } else if (discriminator == USE_ITEM_TASK_FIELD) {
        return (u32)sItemUseFuncs[functionIdx].useItemInFieldFunc;
    }

    return (u32)sItemUseFuncs[functionIdx].canUseItemFunc;
}

void sub_0206842C(FieldSystem *fieldSystem, ItemUseContext *usageContext)
{
    int playerXCoordinate, playerZCoordinate, playerDirection;
    MapObject *v3;

    if (PlayerAvatar_DistortionGravityChanged(fieldSystem->playerAvatar) == TRUE) {
        sub_020684D0(fieldSystem, usageContext);
        return;
    }

    usageContext->fieldSystem = fieldSystem;
    usageContext->mapHeaderID = fieldSystem->location->mapId;
    usageContext->hasPartner = SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData));
    usageContext->playerState = PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar);

    playerXCoordinate = Player_GetXPos(fieldSystem->playerAvatar);
    playerZCoordinate = Player_GetZPos(fieldSystem->playerAvatar);

    usageContext->currTileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, playerXCoordinate, playerZCoordinate);

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

    usageContext->facingTileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, playerXCoordinate, playerZCoordinate);
    sub_0203C9D4(fieldSystem, &v3);

    usageContext->berryPatchFlags = BerryPatches_GetPatchFlags(fieldSystem, v3);
    usageContext->playerAvatar = fieldSystem->playerAvatar;
}

static void sub_020684D0(FieldSystem *fieldSystem, ItemUseContext *usageContext)
{
    usageContext->fieldSystem = fieldSystem;
    usageContext->mapHeaderID = fieldSystem->location->mapId;
    usageContext->hasPartner = SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData));
    usageContext->playerState = PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar);
    usageContext->currTileBehavior = PlayerAvatar_GetDistortionCurrTileBehaviour(fieldSystem->playerAvatar);

    {
        int v0 = PlayerAvatar_GetDistortionDir(fieldSystem->playerAvatar);
        usageContext->facingTileBehavior = PlayerAvatar_GetDistortionTileBehaviour(fieldSystem->playerAvatar, v0);
    }

    usageContext->berryPatchFlags = BerryPatches_GetPatchFlags(fieldSystem, NULL);
    usageContext->playerAvatar = fieldSystem->playerAvatar;
}

static UnkStruct_0206851C *sub_0206851C(u32 param0, u16 param1, u16 param2, u16 param3, u16 param4)
{
    UnkStruct_0206851C *v0 = Heap_Alloc(HEAP_ID_FIELD3, sizeof(UnkStruct_0206851C));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_06 = param2;
    v0->unk_08 = param3;
    v0->unk_0A = param4;

    return v0;
}

static void sub_02068540(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext, u32 param2)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = sub_020685AC;
    menu->taskData = sub_0206851C(param2, usageContext->item, 0, 0, 0);
    menu->state = START_MENU_STATE_10;
}

static void sub_02068584(ItemFieldUseContext *usageContext, u32 param1)
{
    void *v0 = sub_0206851C(param1, usageContext->unk_28, 0, 0, 0);
    FieldSystem_CreateTask(usageContext->fieldSystem, sub_020685AC, v0);
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

static void UseHealingItemFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);
    PartyMenu *partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));

    memset(partyMenu, 0, sizeof(PartyMenu));

    partyMenu->party = SaveData_GetParty(fieldSystem->saveData);
    partyMenu->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMenu->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMenu->options = SaveData_GetOptions(fieldSystem->saveData);
    partyMenu->broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    partyMenu->fieldMoveContext = &menu->fieldMoveContext;
    partyMenu->type = PARTY_MENU_TYPE_BASIC;
    partyMenu->mode = PARTY_MENU_MODE_USE_ITEM;
    partyMenu->fieldSystem = fieldSystem;
    partyMenu->usedItemID = usageContext->item;
    partyMenu->selectedMonSlot = usageContext->selectedMonSlot;

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);
    menu->taskData = partyMenu;
    StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
}

static void UseTownMapFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);

    menu->taskData = FieldSystem_OpenTownMapItem(fieldSystem);
    StartMenu_SetCallback(menu, sub_0203C3F4);
}

static BOOL UseTownMapInField(ItemFieldUseContext *usageContext)
{
    RegisteredItem_CreateGoToAppTask(usageContext, sub_02068708);
    return TRUE;
}

static void *sub_02068708(void *fieldSystem)
{
    return FieldSystem_OpenTownMapItem(fieldSystem);
}

static void UseExplorerKitFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = FieldTask_MapChangeToUnderground;
    menu->taskData = sub_02053FAC(fieldSystem);
    menu->state = START_MENU_STATE_10;

    fieldSystem->menuCursorPos = 0;
}

static BOOL UseExplorerKitInField(ItemFieldUseContext *usageContext)
{
    void *v0 = sub_02053FAC(usageContext->fieldSystem);

    MapObjectMan_PauseAllMovement(usageContext->fieldSystem->mapObjMan);
    FieldSystem_CreateTask(usageContext->fieldSystem, FieldTask_MapChangeToUnderground, v0);

    usageContext->fieldSystem->menuCursorPos = 0;
    return FALSE;
}

static enum ItemUseCheckResult CanUseExplorerKit(const ItemUseContext *usageContext)
{
    if (MapHeader_GetMapLabelTextID(usageContext->mapHeaderID) == LocationNames_Text_MysteryZone) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    if (!(MapHeader_IsOnMainMatrix(usageContext->mapHeaderID))) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    if (sub_0205EFDC(usageContext->playerAvatar) == TRUE) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(usageContext->fieldSystem->saveData)) == TRUE
        || SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(usageContext->fieldSystem->saveData)) == TRUE) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    if (PlayerAvatar_GetPlayerState(usageContext->playerAvatar) == 0x2) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    if (TileBehavior_IsBridge(usageContext->currTileBehavior) == TRUE) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    if (TileBehavior_ForbidsExplorationKit(usageContext->currTileBehavior) == TRUE) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    {
        u16 v0, v1;

        v0 = Player_GetXPos(usageContext->fieldSystem->playerAvatar);
        v1 = Player_GetZPos(usageContext->fieldSystem->playerAvatar);

        if (MapHeaderData_IsAnyObjectEventAtPos(usageContext->fieldSystem, v0, v1) == FALSE) {
            return ITEM_USE_CANNOT_USE_GENERIC;
        }
    }

    return ITEM_USE_CAN_USE;
}

static void UseBicycleFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = MountOrUnmountBicycle;
    menu->taskData = NULL;
    menu->state = START_MENU_STATE_10;
}

static BOOL UseBicycleInField(ItemFieldUseContext *usageContext)
{
    FieldSystem_CreateTask(usageContext->fieldSystem, MountOrUnmountBicycle, NULL);
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
            PlayerAvatar_SetTransitionState(fieldSystem->playerAvatar, PLAYER_TRANSITION_WALKING);
            PlayerAvatar_RequestChangeState(fieldSystem->playerAvatar);

            Sound_SetSpecialBGM(fieldSystem, SEQ_NONE);
            Sound_TryFadeOutToBGM(fieldSystem, Sound_GetOverrideBGM(fieldSystem, fieldSystem->location->mapId), 1);
        } else {
            Sound_SetSpecialBGM(fieldSystem, SEQ_BICYCLE);
            Sound_TryFadeOutToBGM(fieldSystem, SEQ_BICYCLE, 1);
            MapObject_SetPauseMovementOff(Player_MapObject(fieldSystem->playerAvatar));

            PlayerAvatar_SetTransitionState(fieldSystem->playerAvatar, PLAYER_TRANSITION_CYCLING);
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

static enum ItemUseCheckResult CanUseBicycle(const ItemUseContext *usageContext)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(usageContext->fieldSystem->saveData);

    if (usageContext->hasPartner == TRUE) {
        return ITEM_USE_CANNOT_USE_WITH_PARTNER;
    }

    if (SystemFlag_HandleForceBikingInGate(v0, HANDLE_FLAG_CHECK) == TRUE) {
        return ITEM_USE_CANNOT_DISMOUNT;
    }

    if (sub_0205EFDC(usageContext->playerAvatar) == TRUE) {
        return ITEM_USE_CANNOT_DISMOUNT;
    }

    {
        MapObject *v1 = Player_MapObject(usageContext->playerAvatar);

        if (MapObject_IsOnBikeBridgeNorthSouth(v1, usageContext->currTileBehavior) == TRUE || MapObject_IsOnBikeBridgeEastWest(v1, usageContext->currTileBehavior) == TRUE) {
            return ITEM_USE_CANNOT_DISMOUNT;
        }
    }

    if (TileBehavior_IsVeryTallGrass(usageContext->currTileBehavior) == TRUE || TileBehavior_IsMud(usageContext->currTileBehavior) == TRUE || TileBehavior_IsMudWithGrass(usageContext->currTileBehavior) == TRUE) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    if (MapHeader_IsBikeAllowed(usageContext->mapHeaderID) == FALSE) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    if (usageContext->playerState == PLAYER_STATE_SURFING) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    return ITEM_USE_CAN_USE;
}

static void UseJournalFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *v1 = FieldTask_GetEnv(usageContext->fieldTask);

    sub_0203D30C(fieldSystem, NULL);
    StartMenu_SetCallback(v1, sub_0203C50C);
}

static BOOL UseJournalInField(ItemFieldUseContext *usageContext)
{
    RegisteredItem_CreateGoToAppTask(usageContext, sub_02068A28);
    return TRUE;
}

static void *sub_02068A28(void *some_param)
{
    sub_0203D30C(some_param, NULL);
    return NULL;
}

static void UseTMHMFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);
    PartyMenu *partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));

    memset(partyMenu, 0, sizeof(PartyMenu));

    partyMenu->party = SaveData_GetParty(fieldSystem->saveData);
    partyMenu->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMenu->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMenu->options = SaveData_GetOptions(fieldSystem->saveData);
    partyMenu->fieldMoveContext = &menu->fieldMoveContext;
    partyMenu->type = PARTY_MENU_TYPE_BASIC;
    partyMenu->mode = PARTY_MENU_MODE_TEACH_MOVE;
    partyMenu->fieldSystem = fieldSystem;
    partyMenu->usedItemID = usageContext->item;
    partyMenu->selectedMonSlot = usageContext->selectedMonSlot;
    partyMenu->learnedMove = Item_MoveForTMHM(usageContext->item);

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);
    menu->taskData = partyMenu;
    StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
}

static void UseMailFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);
    UnkStruct_02097728 *v2 = sub_0203D94C(fieldSystem, 3, Item_MailNumber(usageContext->item), HEAP_ID_FIELD2);

    menu->unk_260 = sub_0203C540(usageContext->item, 3, 0);
    menu->taskData = v2;

    StartMenu_SetCallback(menu, StartMenu_ExitMail);
}

static enum ItemUseCheckResult CanUseBerry(const ItemUseContext *usageContext)
{
    return ITEM_USE_CAN_USE;
}

static void UseBerryFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem;
    StartMenu *v1;
    MapObject *v2;

    fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    v1 = FieldTask_GetEnv(usageContext->fieldTask);

    if (additionalContext->berryPatchFlags & BERRY_PATCH_FLAG_EMPTY) {
        sub_02068540(usageContext, additionalContext, 2801);
    } else {
        UseHealingItemFromMenu(usageContext, additionalContext);
    }
}

BOOL BerryPatch_IsEmpty(const ItemUseContext *usageContext)
{
    if (usageContext->berryPatchFlags & BERRY_PATCH_FLAG_EMPTY) {
        return TRUE;
    }

    return FALSE;
}

static void UsePoffinCaseFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);
    PoffinCaseAppData *poffinCase = FieldSystem_LaunchPoffinCaseApp(fieldSystem, HEAP_ID_FIELD2);

    menu->taskData = poffinCase;
    StartMenu_SetCallback(menu, sub_0203C710);
}

static BOOL UsePoffinCaseInField(ItemFieldUseContext *usageContext)
{
    RegisteredItem_CreateGoToAppTask(usageContext, sub_02068B9C);
    return TRUE;
}

static void *sub_02068B9C(void *some_param)
{
    return FieldSystem_LaunchPoffinCaseApp(some_param, HEAP_ID_FIELD2);
}

static void UsePalPadFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);

    sub_0203DE78(fieldSystem, fieldSystem->saveData);
    menu->taskData = NULL;
    StartMenu_SetCallback(menu, sub_0203C750);
}

static BOOL UsePalPadInField(ItemFieldUseContext *usageContext)
{
    RegisteredItem_CreateGoToAppTask(usageContext, sub_02068BEC);
    return TRUE;
}

static void *sub_02068BEC(void *some_param)
{
    sub_0203DE78(some_param, ((FieldSystem *)some_param)->saveData);
    return NULL;
}

static void UsePokeRadarFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);
    int *v2 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(int));

    (*v2) = 0;
    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = RefreshRadarChain;
    menu->taskData = v2;
    menu->state = START_MENU_STATE_10;
}

static BOOL UsePokeRadarInField(ItemFieldUseContext *usageContext)
{
    int *v0 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(int));

    *v0 = 0;
    FieldSystem_CreateTask(usageContext->fieldSystem, RefreshRadarChain, v0);

    return FALSE;
}

static enum ItemUseCheckResult CanUsePokeRadar(const ItemUseContext *usageContext)
{
    if (usageContext->hasPartner == TRUE) {
        return ITEM_USE_CANNOT_USE_WITH_PARTNER;
    }

    if (PlayerAvatar_GetPlayerState(usageContext->fieldSystem->playerAvatar) == 0x1) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    if (!TileBehavior_IsTallGrass(usageContext->currTileBehavior)) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    return ITEM_USE_CAN_USE;
}

static void UseSprayDuckFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    sub_02068540(usageContext, additionalContext, 2802);
}

static BOOL UseSprayDuckInField(ItemFieldUseContext *usageContext)
{
    sub_02068584(usageContext, 2802);
    return FALSE;
}

static enum ItemUseCheckResult CanUseSprayDuck(const ItemUseContext *usageContext)
{
    if (usageContext->hasPartner == TRUE) {
        return ITEM_USE_CANNOT_USE_WITH_PARTNER;
    }

    if (usageContext->berryPatchFlags & BERRY_PATCH_FLAG_HAS_BERRY) {
        return ITEM_USE_CAN_USE;
    } else {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }
}

static void UseMulchFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    sub_02068540(usageContext, additionalContext, 2803);
}

static enum ItemUseCheckResult CanUseMulch(const ItemUseContext *usageContext)
{
    if (usageContext->berryPatchFlags & BERRY_PATCH_FLAG_CAN_MULCH) {
        return ITEM_USE_CAN_USE;
    } else {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }
}

static void UseHoneyFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem;
    StartMenu *menu;
    UnkStruct_ov5_021F0468 *v2;
    int v3;

    fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    menu = FieldTask_GetEnv(usageContext->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    v3 = ov5_021F0484();
    v2 = Heap_AllocAtEnd(HEAP_ID_FIELD2, v3);

    memset(v2, 0, v3);

    menu->callback = ov5_021F0488;
    menu->taskData = v2;
    menu->state = START_MENU_STATE_10;

    Bag_TryRemoveItem(SaveData_GetBag(fieldSystem->saveData), usageContext->item, 1, HEAP_ID_FIELD2);
}

static void UseVsSeekerFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    sub_02068540(usageContext, additionalContext, SCRIPT_ID(VS_SEEKER, 0));
}

static BOOL UseVsSeekerInField(ItemFieldUseContext *usageContext)
{
    sub_02068584(usageContext, SCRIPT_ID(VS_SEEKER, 0));
    return FALSE;
}

static enum ItemUseCheckResult CanUseVsSeeker(const ItemUseContext *usageContext)
{
    if (MapHeader_IsOnMainMatrix(usageContext->mapHeaderID)) {
        return ITEM_USE_CAN_USE;
    }

    return ITEM_USE_CANNOT_USE_GENERIC;
}

static void UseOldRodFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = FieldTask_Fishing;
    menu->taskData = FishingContext_Init(fieldSystem, HEAP_ID_FIELD2, FISHING_TYPE_OLD_ROD);
    menu->state = START_MENU_STATE_10;
}

static BOOL UseOldRodInField(ItemFieldUseContext *usageContext)
{
    void *fishingContext = FishingContext_Init(usageContext->fieldSystem, HEAP_ID_FIELD1, FISHING_TYPE_OLD_ROD);

    FieldSystem_CreateTask(usageContext->fieldSystem, FieldTask_Fishing, fishingContext);
    return FALSE;
}

static void UseGoodRodFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = FieldTask_Fishing;
    menu->taskData = FishingContext_Init(fieldSystem, HEAP_ID_FIELD2, FISHING_TYPE_GOOD_ROD);
    menu->state = START_MENU_STATE_10;
}

static BOOL UseGoodRodInField(ItemFieldUseContext *usageContext)
{
    void *fishingContext = FishingContext_Init(usageContext->fieldSystem, HEAP_ID_FIELD1, FISHING_TYPE_GOOD_ROD);

    FieldSystem_CreateTask(usageContext->fieldSystem, FieldTask_Fishing, fishingContext);
    return FALSE;
}

static void UseSuperRodFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = FieldTask_Fishing;
    menu->taskData = FishingContext_Init(fieldSystem, HEAP_ID_FIELD2, FISHING_TYPE_SUPER_ROD);
    menu->state = START_MENU_STATE_10;
}

static BOOL UseSuperRodInField(ItemFieldUseContext *usageContext)
{
    void *fishingContext = FishingContext_Init(usageContext->fieldSystem, HEAP_ID_FIELD1, FISHING_TYPE_SUPER_ROD);

    FieldSystem_CreateTask(usageContext->fieldSystem, FieldTask_Fishing, fishingContext);
    return FALSE;
}

static enum ItemUseCheckResult CanUseFishingRod(const ItemUseContext *usageContext)
{
    if (usageContext->hasPartner == TRUE) {
        return ITEM_USE_CANNOT_USE_WITH_PARTNER;
    }

    if (usageContext->mapHeaderID == MAP_HEADER_DISTORTION_WORLD_1F
        || usageContext->mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B1F
        || usageContext->mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B2F
        || usageContext->mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B3F
        || usageContext->mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B4F
        || usageContext->mapHeaderID == MAP_HEADER_UNKNOWN_578
        || usageContext->mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B5F
        || usageContext->mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B6F
        || usageContext->mapHeaderID == MAP_HEADER_DISTORTION_WORLD_B7F
        || usageContext->mapHeaderID == MAP_HEADER_DISTORTION_WORLD_GIRATINA_ROOM
        || usageContext->mapHeaderID == MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM) {
        return ITEM_USE_CANNOT_FISH_HERE;
    }

    if (TileBehavior_IsSurfable(usageContext->facingTileBehavior) == TRUE) {
        if ((TileBehavior_IsBridge(usageContext->currTileBehavior) == TRUE) || (TileBehavior_IsBridgeStart(usageContext->currTileBehavior) == TRUE)) {
            MapObject *v0 = Player_MapObject(usageContext->playerAvatar);

            if (sub_02062F30(v0) == TRUE) {
                return ITEM_USE_CANNOT_USE_GENERIC;
            }
        }

        return ITEM_USE_CAN_USE;
    }

    return ITEM_USE_CANNOT_USE_GENERIC;
}

static BOOL UseBagMessageItem(ItemFieldUseContext *usageContext)
{
    UnkStruct_02068EFC *v0 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_02068EFC));

    v0->unk_16 = 0;
    v0->unk_10 = String_Init(128, HEAP_ID_FIELD2);

    BagContext_FormatUsageMessage(usageContext->fieldSystem->saveData, v0->unk_10, Bag_GetRegisteredItem(SaveData_GetBag(usageContext->fieldSystem->saveData)), HEAP_ID_FIELD2);
    FieldSystem_CreateTask(usageContext->fieldSystem, PrintRegisteredKeyItemUseMessage, v0);

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
        if (FieldMessage_FinishedPrinting(v1->unk_14) == TRUE) {
            if (gSystem.pressedKeys & (PAD_KEY | PAD_BUTTON_A | PAD_BUTTON_B)) {
                Window_EraseMessageBox(&v1->unk_00, 0);
                v1->unk_16++;
            }
        }
        break;
    case 2:
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        Window_Remove(&v1->unk_00);
        String_Free(v1->unk_10);
        Heap_Free(v1);

        return TRUE;
    }

    return FALSE;
}

static void UseEvoStoneFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);
    PartyMenu *partyMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(PartyMenu));

    memset(partyMenu, 0, sizeof(PartyMenu));

    partyMenu->party = SaveData_GetParty(fieldSystem->saveData);
    partyMenu->bag = SaveData_GetBag(fieldSystem->saveData);
    partyMenu->mailbox = SaveData_GetMailbox(fieldSystem->saveData);
    partyMenu->options = SaveData_GetOptions(fieldSystem->saveData);
    partyMenu->broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    partyMenu->fieldMoveContext = &menu->fieldMoveContext;
    partyMenu->type = PARTY_MENU_TYPE_BASIC;
    partyMenu->mode = PARTY_MENU_MODE_USE_EVO_ITEM;
    partyMenu->usedItemID = usageContext->item;
    partyMenu->selectedMonSlot = usageContext->selectedMonSlot;

    FieldSystem_StartChildProcess(fieldSystem, &gPokemonPartyAppTemplate, partyMenu);
    menu->taskData = partyMenu;
    StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
}

static void UseEscapeRopeFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);

    FieldSystem_StartFieldMap(fieldSystem);

    menu->callback = WarpWithEscapeRope;
    menu->taskData = NULL;
    menu->state = START_MENU_STATE_10;

    Bag_TryRemoveItem(SaveData_GetBag(fieldSystem->saveData), usageContext->item, 1, HEAP_ID_FIELD2);
}

static enum ItemUseCheckResult CanUseEscapeRope(const ItemUseContext *usageContext)
{
    if (usageContext->hasPartner == TRUE) {
        return ITEM_USE_CANNOT_USE_WITH_PARTNER;
    }

    if ((MapHeader_IsCave(usageContext->mapHeaderID) == TRUE) && (MapHeader_IsEscapeRopeAllowed(usageContext->mapHeaderID) == TRUE)) {
        return ITEM_USE_CAN_USE;
    }

    return ITEM_USE_CANNOT_USE_GENERIC;
}

static BOOL WarpWithEscapeRope(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    FieldWarp *fieldWarp = FieldWarp_InitEscapeRope(fieldSystem, HEAP_ID_FIELD2);

    FieldTask_InitJump(task, FieldWarp_EscapeRopeFadeOut, fieldWarp);
    return FALSE;
}

static void UseAzureFluteFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    sub_02068540(usageContext, additionalContext, SCRIPT_ID(COMMON_SCRIPTS, 39));
}

static BOOL UseAzureFluteInField(ItemFieldUseContext *usageContext)
{
    sub_02068584(usageContext, SCRIPT_ID(COMMON_SCRIPTS, 39));
    return FALSE;
}

static enum ItemUseCheckResult CanUseAzureFlute(const ItemUseContext *usageContext)
{
    VarsFlags *v0 = SaveData_GetVarsFlags(usageContext->fieldSystem->saveData);

    if (SystemFlag_CheckGameCompleted(v0) == FALSE) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    if (SystemVars_CheckDistributionEvent(v0, DISTRIBUTION_EVENT_ARCEUS) == FALSE) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    if (Pokedex_IsNationalDexObtained(SaveData_GetPokedex(usageContext->fieldSystem->saveData)) == FALSE) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    if (!MapHeader_IsAzureFluteAllowed(usageContext->mapHeaderID)) {
        return ITEM_USE_CANNOT_USE_GENERIC;
    }

    return ITEM_USE_CAN_USE;
}

static void UseVsRecorderFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);

    sub_0203DE88(fieldSystem, fieldSystem->saveData);
    menu->taskData = NULL;
    StartMenu_SetCallback(menu, sub_0203C784);
}

static BOOL UseVsRecorderInField(ItemFieldUseContext *usageContext)
{
    RegisteredItem_CreateGoToAppTask(usageContext, sub_020691CC);
    return TRUE;
}

static void *sub_020691CC(void *some_param)
{
    FieldSystem_SaveStateIfCommunicationOff(some_param);
    sub_0203DE88(some_param, ((FieldSystem *)some_param)->saveData);

    return NULL;
}

static void UseGracideaFromMenu(ItemMenuUseContext *usageContext, const ItemUseContext *additionalContext)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(usageContext->fieldTask);
    StartMenu *menu = FieldTask_GetEnv(usageContext->fieldTask);
    menu->taskData = FieldSystem_OpenPartyMenu_SelectForItemUsage(fieldSystem, HEAP_ID_FIELD2, ITEM_GRACIDEA);

    StartMenu_SetCallback(menu, StartMenu_ExitPartyMenu);
}

static BOOL UseGracideaInField(ItemFieldUseContext *usageContext)
{
    RegisteredItem_CreateGoToAppTask(usageContext, OpenPartyMenuForGracidea);
    return TRUE;
}

static void *OpenPartyMenuForGracidea(void *fieldSystem)
{
    return FieldSystem_OpenPartyMenu_SelectForItemUsage(fieldSystem, HEAP_ID_FIELD2, ITEM_GRACIDEA);
}

BOOL sub_02069238(FieldSystem *fieldSystem)
{
    ItemFieldUseContext *usageContext;
    ItemFieldUseFunc useInField;
    ItemCheckUseFunc checkUse;
    u16 item;
    u16 itemUseFuncIdx;
    BOOL usageResult;

    if (FieldSystem_IsInBattleTowerSalon(fieldSystem) == TRUE) {
        return FALSE;
    }

    if (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        return FALSE;
    }

    item = (u16)Bag_GetRegisteredItem(SaveData_GetBag(fieldSystem->saveData));
    itemUseFuncIdx = (u16)Item_LoadParam(item, ITEM_PARAM_FIELD_USE_FUNC, HEAP_ID_FIELD2);
    checkUse = (ItemCheckUseFunc)GetItemUseFunction(USE_ITEM_TASK_CHECK, itemUseFuncIdx);
    useInField = (ItemFieldUseFunc)GetItemUseFunction(USE_ITEM_TASK_FIELD, itemUseFuncIdx);

    if (useInField == NULL) {
        return FALSE;
    }

    usageContext = Heap_Alloc(HEAP_ID_FIELD2, sizeof(ItemFieldUseContext));
    memset(usageContext, 0, sizeof(ItemFieldUseContext));

    usageContext->fieldSystem = fieldSystem;
    usageContext->unk_28 = item;

    sub_0206842C(fieldSystem, &usageContext->unk_04);

    usageResult = 0;

    if (checkUse == NULL) {
        usageResult = useInField(usageContext);
    } else {
        u32 usageCheckResult = checkUse(&usageContext->unk_04);

        if (usageCheckResult == 0) {
            usageResult = useInField(usageContext);
        } else {
            PrintRegisteredKeyItemError(usageContext, usageCheckResult);
        }
    }

    if (usageResult == 0) {
        Heap_Free(usageContext);
    }

    return TRUE;
}

static void PrintRegisteredKeyItemError(ItemFieldUseContext *usageContext, u32 error)
{
    UnkStruct_02068EFC *v0 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_02068EFC));

    v0->unk_16 = 0;
    v0->unk_10 = String_Init(128, HEAP_ID_FIELD2);

    BagContext_FormatErrorMessage(SaveData_GetTrainerInfo(usageContext->fieldSystem->saveData), v0->unk_10, usageContext->unk_28, error, HEAP_ID_FIELD2);
    FieldSystem_CreateTask(usageContext->fieldSystem, PrintRegisteredKeyItemUseMessage, v0);
}

static BOOL RegisteredItem_GoToApp(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    ItemFieldUseContext *v1 = FieldTask_GetEnv(task);

    switch (v1->unk_2A) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);
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
                PoffinCaseAppData_Free(v1->unk_24);
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
            FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
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

static void RegisteredItem_CreateGoToAppTask(ItemFieldUseContext *usageContext, void *param1)
{
    usageContext->unk_20 = param1;
    FieldSystem_CreateTask(usageContext->fieldSystem, RegisteredItem_GoToApp, usageContext);
}
