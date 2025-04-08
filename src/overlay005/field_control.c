#include "overlay005/field_control.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/field_poison.h"
#include "constants/player_avatar.h"
#include "generated/game_records.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/daycare.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/daycare.h"
#include "overlay005/honey_tree.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021E1154.h"
#include "overlay005/ov5_021EA714.h"
#include "overlay005/ov5_021EF4BC.h"
#include "overlay005/ov5_021F8370.h"
#include "overlay005/vs_seeker.h"
#include "overlay006/repel_step_update.h"
#include "overlay006/wild_encounters.h"
#include "overlay008/ov8_02249960.h"
#include "overlay009/ov9_02249960.h"
#include "overlay023/ov23_02241F74.h"

#include "catching_show.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "daycare_save.h"
#include "encounter.h"
#include "field_comm_manager.h"
#include "field_map_change.h"
#include "field_overworld_state.h"
#include "game_records.h"
#include "inlines.h"
#include "location.h"
#include "map_header.h"
#include "map_header_data.h"
#include "map_object.h"
#include "map_tile_behavior.h"
#include "party.h"
#include "persisted_map_features_init.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "pokeradar.h"
#include "save_player.h"
#include "script_manager.h"
#include "sound_playback.h"
#include "start_menu.h"
#include "system.h"
#include "system_flags.h"
#include "system_vars.h"
#include "terrain_collision_manager.h"
#include "trainer_info.h"
#include "unk_02030EE0.h"
#include "unk_020366A0.h"
#include "unk_0203C954.h"
#include "unk_02054884.h"
#include "unk_02056B30.h"
#include "unk_0205A0D8.h"
#include "unk_0205B33C.h"
#include "unk_0205F180.h"
#include "unk_02067A84.h"
#include "unk_020683F4.h"
#include "vars_flags.h"

static BOOL Field_CheckMapTransition(FieldSystem *fieldSystem, const FieldInput *input);
static u16 Field_TileBehaviorToScript(FieldSystem *fieldSystem, u8 behavior);
static BOOL Field_CheckWildEncounter(FieldSystem *fieldSystem);
static BOOL Field_ProcessStep(FieldSystem *fieldSystem);
static BOOL Field_CheckCoordEvent(FieldSystem *fieldSystem);
static BOOL Field_CheckTransition(FieldSystem *fieldSystem, const int playerX, const int playerZ, const u8 curTileBehavior);
static BOOL Field_UpdateDaycare(FieldSystem *fieldSystem);
static BOOL Field_UpdatePoison(FieldSystem *fieldSystem);
static BOOL Field_UpdateSafari(FieldSystem *fieldSystem);
static BOOL Field_UpdateVsSeeker(FieldSystem *fieldSystem);
static BOOL Field_UpdatePokeRadar(FieldSystem *fieldSystem);
static BOOL Field_CheckSign(FieldSystem *fieldSystem);
static BOOL Field_UpdateRepel(FieldSystem *fieldSystem);
static BOOL Field_UpdateFriendship(FieldSystem *fieldSystem);
static void Field_CalculateFriendship(FieldSystem *fieldSystem);
static void Field_GetPlayerPos(const FieldSystem *fieldSystem, int *playerX, int *playerZ);
static void Field_Step(const FieldSystem *fieldSystem, int *playerX, int *playerZ);
static void Field_StepInDirection(const FieldSystem *fieldSystem, int playerDir, int *playerX, int *playerZ);
static u8 Field_CurrentTileBehavior(const FieldSystem *fieldSystem);
static u8 Field_NextTileBehavior(const FieldSystem *fieldSystem);
static BOOL Field_MapConnection(const FieldSystem *fieldSystem, int playerX, int playerZ, Location *nextMap);
static void Field_TrySetMapConnection(FieldSystem *fieldSystem);
static BOOL Field_DistortionInteract(FieldSystem *fieldSystem, MapObject **object);
static int Field_CheckTrainerInfo(void);

static void FieldInput_Clear(FieldInput *input)
{
    input->interact = FALSE;
    input->endMovement = FALSE;
    input->menu = FALSE;
    input->registeredItem = FALSE;
    input->sign = FALSE;
    input->mapTransition = FALSE;
    input->movement = FALSE;
    input->dummy1 = FALSE;
    input->dummy2 = FALSE;
    input->dummy3 = FALSE;
    input->dummy4 = FALSE;
    input->dummy5 = FALSE;
    input->playerDir = DIR_NONE;
    input->transitionDir = DIR_NONE;
}

void FieldInput_Update(FieldInput *input, FieldSystem *fieldSystem, u16 pressedKeys, u16 heldKeys)
{
    FieldInput_Clear(input);

    int moveState = Player_MoveState(fieldSystem->playerAvatar);
    int avatarState = PlayerAvatar_MoveState(fieldSystem->playerAvatar);
    int playerDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    input->pressedKeys = pressedKeys;
    input->heldKeys = heldKeys;

    if (moveState == PLAYER_MOVE_STATE_END || moveState == PLAYER_MOVE_STATE_NONE) {
        if (pressedKeys & PAD_BUTTON_X) {
            input->menu = TRUE;
        }

        if (pressedKeys & PAD_BUTTON_Y) {
            input->registeredItem = TRUE;
        }

        if (pressedKeys & PAD_BUTTON_A) {
            input->interact = TRUE;
        }

        if (pressedKeys & PAD_BUTTON_B) {
            input->dummy1 = TRUE;
        }

        if (heldKeys & PAD_KEY) {
            input->sign = TRUE;
        }

        if (heldKeys & PAD_KEY) {
            input->mapTransition = TRUE;
        }
    }

    if (moveState == PLAYER_MOVE_STATE_END && avatarState == AVATAR_MOVE_STATE_MOVING) {
        input->movement = TRUE;
    }

    if (moveState == PLAYER_MOVE_STATE_END) {
        input->endMovement = TRUE;
    }

    if (playerDir == DIR_NORTH && heldKeys & PAD_KEY_UP
        || playerDir == DIR_SOUTH && heldKeys & PAD_KEY_DOWN
        || playerDir == DIR_WEST && heldKeys & PAD_KEY_LEFT
        || playerDir == DIR_EAST && heldKeys & PAD_KEY_RIGHT) {

        input->transitionDir = playerDir;
    } else {
        input->transitionDir = DIR_NONE;
    }

    input->playerDir = sub_02061308(fieldSystem->playerAvatar, pressedKeys, heldKeys);
}

BOOL FieldInput_Process(const FieldInput *input, FieldSystem *fieldSystem)
{
    if (input->dummy5 == FALSE && sub_0203F5C0(fieldSystem, 1) == TRUE) {
        return TRUE;
    }

    // dummy5 will always be false, so this branch will always be taken, but it doesn't match without the condition
    if (input->dummy5 == FALSE) {
        BOOL hasTwoAliveMons = Party_HasTwoAliveMons(SaveData_GetParty(fieldSystem->saveData));

        if (SystemFlag_CheckHasPartner(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
            hasTwoAliveMons = TRUE;
        }

        if (sub_02067A84(fieldSystem, hasTwoAliveMons) == TRUE
            || (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) == TRUE
                && ov8_0224C51C(fieldSystem) == TRUE)) {

            sub_0205F56C(fieldSystem->playerAvatar);
            MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
            return TRUE;
        }
    }

    if (input->movement) {
        SystemFlag_ClearStep(SaveData_GetVarsFlags(fieldSystem->saveData));

        if (Field_ProcessStep(fieldSystem) == TRUE) {
            return TRUE;
        }
    }

    if (input->dummy5 == FALSE) {
        int playerEvent = PLAYER_EVENT_NONE;
        int direction = sub_02061308(fieldSystem->playerAvatar, input->pressedKeys, input->heldKeys);

        if (SystemFlag_HandleStrengthActive(SaveData_GetVarsFlags(fieldSystem->saveData), HANDLE_FLAG_CHECK)) {
            playerEvent |= PLAYER_EVENT_USED_STRENGTH;
        }

        if (Party_HasMonWithMove(SaveData_GetParty(fieldSystem->saveData), MOVE_WATERFALL) != PARTY_SLOT_NONE) {
            playerEvent |= PLAYER_EVENT_USED_WATERFALL;
        }

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == TRUE && ov9_02250F74(fieldSystem) == TRUE) {
            playerEvent |= PLAYER_EVENT_DISTORTION_WORLD;
        }

        if (ov5_021DFDE0(fieldSystem, fieldSystem->playerAvatar, direction, playerEvent) == TRUE) {
            return TRUE;
        }
    }

    if (input->endMovement) {
        if (Field_CheckWildEncounter(fieldSystem)) {
            return TRUE;
        }

        if (Field_CheckSign(fieldSystem) == TRUE) {
            return TRUE;
        }

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == TRUE) {
            int direction = (s8)input->playerDir;

            if (direction == DIR_NONE) {
                direction = PlayerAvatar_GetDir(fieldSystem->playerAvatar);
            }

            if (ov9_0224A67C(fieldSystem, direction) == TRUE) {
                return TRUE;
            }
        }
    }

    if (input->sign
        && PlayerAvatar_GetDir(fieldSystem->playerAvatar) == input->playerDir
        && Field_CheckSign(fieldSystem) == TRUE) {
        return TRUE;
    }

    if (input->interact) {
        int validInteraction;
        MapObject *object;

        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == TRUE) {
            validInteraction = Field_DistortionInteract(fieldSystem, &object);
        } else {
            validInteraction = sub_0203CA40(fieldSystem, &object);
        }

        if (validInteraction == TRUE) {
            if (sub_0205F588(fieldSystem->playerAvatar) == TRUE) {
                sub_0205F5E4(fieldSystem->playerAvatar, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
            }

            if (MapObject_GetTrainerType(object) != 0x9) {
                ScriptManager_Set(fieldSystem, MapObject_GetScript(object), object);
            } else {
                ScriptManager_Set(fieldSystem, 0, object);
            }

            return TRUE;
        }

        enum AvatarDistortionState distortionState = PlayerAvatar_MapDistortionState(fieldSystem->playerAvatar);

        if (distortionState == AVATAR_DISTORTION_STATE_NONE || distortionState == AVATAR_DISTORTION_STATE_ACTIVE) {
            int event = sub_0203CA6C(fieldSystem, MapHeaderData_GetBgEvents(fieldSystem), MapHeaderData_GetNumBgEvents(fieldSystem));

            if (event != 0xffff) {
                ScriptManager_Set(fieldSystem, event, NULL);
                return TRUE;
            }
        }

        if (distortionState == AVATAR_DISTORTION_STATE_NONE) {
            int event;

            if (HoneyTree_TryInteract(fieldSystem, &event)) {
                ScriptManager_Set(fieldSystem, event, NULL);
                return TRUE;
            }
        }

        int distortionDir = sub_0205EAA0(fieldSystem->playerAvatar);
        u32 distortionBehavior = sub_020616F0(fieldSystem->playerAvatar, distortionDir);
        int distortionScript = Field_TileBehaviorToScript(fieldSystem, distortionBehavior);

        if (distortionScript != 0xffff) {
            ScriptManager_Set(fieldSystem, distortionScript, NULL);
            return TRUE;
        }

        int playerX, playerZ;
        int playerDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

        Field_Step(fieldSystem, &playerX, &playerZ);

        if (ov5_021F8410(fieldSystem, playerX, playerZ, playerDir) == TRUE) {
            return TRUE;
        }
    }

    if (input->mapTransition) {
        if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == TRUE) {
            ov9_0224A800(fieldSystem, input->transitionDir);
        } else if (Field_CheckMapTransition(fieldSystem, input) == TRUE) {
            Field_TrySetMapConnection(fieldSystem);
            return TRUE;
        }
    }

    if (input->registeredItem && sub_02069238(fieldSystem) == TRUE) {
        return TRUE;
    }

    if (input->menu && sub_0203A9C8(fieldSystem) == TRUE) {
        Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN);
        StartMenu_Init(fieldSystem);
        return TRUE;
    }

    return FALSE;
}

static BOOL Field_CheckSign(FieldSystem *fieldSystem)
{
    MapObject *object;

    if (sub_0203CBE0(fieldSystem, &object) == TRUE) {
        ScriptManager_Set(fieldSystem, MapObject_GetScript(object), object);
        return TRUE;
    }

    int event = sub_0203CB80(fieldSystem, MapHeaderData_GetBgEvents(fieldSystem), MapHeaderData_GetNumBgEvents(fieldSystem));

    if (event != 0xffff) {
        ScriptManager_Set(fieldSystem, event, NULL);
        return TRUE;
    }

    return FALSE;
}

BOOL FieldInput_Process_Underground(FieldInput *input, FieldSystem *fieldSystem)
{
    if (input->dummy5 == FALSE && sub_0203F5C0(fieldSystem, 1) == TRUE) {
        return TRUE;
    }

    if (sub_020363A0() || CommPlayer_GetMovementTimer(CommSys_CurNetId()) != 0) {
        return FALSE;
    }

    ov23_02242814();

    if (input->interact) {
        ov23_02242830(FALSE);
        return FALSE;
    }

    if (input->menu) {
        ov23_022427F8();
        return FALSE;
    }

    if (ov23_02242458()) {
        return FALSE;
    }

    return FALSE;
}

BOOL FieldInput_Process_Colosseum(FieldInput *input, FieldSystem *fieldSystem)
{
    if (input->mapTransition
        && input->transitionDir == DIR_SOUTH
        && TileBehavior_IsWarpEntranceSouth(Field_CurrentTileBehavior(fieldSystem))) {

        ScriptManager_Set(fieldSystem, 9101, NULL);
        return TRUE;
    }

    if (sub_020363A0() || CommPlayer_GetMovementTimer(CommSys_CurNetId()) != 0 || !sub_02059D2C()) {
        return FALSE;
    }

    if (input->interact) {
        MapObject *object;

        if (sub_0203CA40(fieldSystem, &object) == TRUE && MapObject_GetMovementType(object) != 0x1) {
            if (sub_0205F588(fieldSystem->playerAvatar) == TRUE) {
                sub_0205F5E4(fieldSystem->playerAvatar, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
            }

            ScriptManager_Set(fieldSystem, MapObject_GetScript(object), object);
            return TRUE;
        }
    }

    if (input->interact) {
        sub_0205B2D4(fieldSystem);
        return TRUE;
    }

    if (input->menu) {
        Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN);
        sub_0203AABC(fieldSystem);
        return TRUE;
    }

    return FALSE;
}

static int Field_CheckTrainerInfo(void)
{
    // C99-style declaration doesn't match
    int netId;
    int ret = 0;

    for (netId = 1; netId < 5; netId++) {
        TrainerInfo *info = CommInfo_TrainerInfo(netId);

        if (info != NULL) {
            ret++;
        }
    }

    return ret >= 1;
}

BOOL FieldInput_Process_UnionRoom(const FieldInput *input, FieldSystem *fieldSystem)
{
    if (sub_020318EC() & 0xfe) {
        if (Field_CheckTrainerInfo() && CommSys_ConnectedCount() > 1) {
            ScriptManager_Set(fieldSystem, 5, NULL);
            return TRUE;
        }

        return FALSE;
    }

    if (input->interact) {
        MapObject *object;

        if (sub_0203CA40(fieldSystem, &object) == TRUE) {
            if (sub_0205F588(fieldSystem->playerAvatar) == TRUE) {
                sub_0205F5E4(fieldSystem->playerAvatar, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
            }

            sub_02036B84();
            ScriptManager_Set(fieldSystem, MapObject_GetScript(object), object);

            return TRUE;
        }
    }

    if (input->movement && TileBehavior_IsWarpPanel(Field_CurrentTileBehavior(fieldSystem))) {
        sub_020545EC(fieldSystem);
        return TRUE;
    }

    if (input->menu && CommSys_ConnectedCount() <= 1) {
        Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN);
        sub_0203AA78(fieldSystem);
        sub_0205BEA8(4);
        sub_02036BA0();
        return TRUE;
    }

    return FALSE;
}

int FieldInput_Process_BattleTower(const FieldInput *input, FieldSystem *fieldSystem)
{
    if (input->dummy5 == FALSE && sub_0203F5C0(fieldSystem, 1) == TRUE) {
        return TRUE;
    }

    if (input->interact) {
        MapObject *object;

        if (sub_0203CA40(fieldSystem, &object) == TRUE) {
            if (sub_0205F588(fieldSystem->playerAvatar) == TRUE) {
                sub_0205F5E4(fieldSystem->playerAvatar, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
            }

            if (MapObject_GetTrainerType(object) != 0x9) {
                ScriptManager_Set(fieldSystem, MapObject_GetScript(object), object);
            } else {
                ScriptManager_Set(fieldSystem, 0, object);
            }

            return TRUE;
        }

        int v2 = sub_0203CA6C(fieldSystem, MapHeaderData_GetBgEvents(fieldSystem), MapHeaderData_GetNumBgEvents(fieldSystem));

        if (v2 != 0xffff) {
            ScriptManager_Set(fieldSystem, v2, NULL);
            return TRUE;
        }

        int tileScript = Field_TileBehaviorToScript(fieldSystem, Field_NextTileBehavior(fieldSystem));

        if (tileScript != 0xffff) {
            ScriptManager_Set(fieldSystem, tileScript, NULL);
            return TRUE;
        }
    }

    if (input->mapTransition && Field_CheckMapTransition(fieldSystem, input) == TRUE) {
        return TRUE;
    }

    if (input->registeredItem && sub_02069238(fieldSystem) == TRUE) {
        return TRUE;
    }

    if (input->menu) {
        Sound_PlayEffect(SEQ_SE_DP_WIN_OPEN);
        StartMenu_Init(fieldSystem);
        return TRUE;
    }

    return FALSE;
}

static BOOL Field_CheckWildEncounter(FieldSystem *fieldSystem)
{
    int playerX, playerZ;

    Field_GetPlayerPos(fieldSystem, &playerX, &playerZ);

    if (SystemFlag_CheckInPalPark(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        if (CatchingShow_CheckWildEncounter(fieldSystem, playerX, playerZ) == TRUE) {
            Encounter_NewVsPalParkTransfer(fieldSystem, CatchingShow_GetBattleDTO(fieldSystem));
            return TRUE;
        } else {
            return FALSE;
        }
    }

    return MapHeader_HasWildEncounters(fieldSystem->location->mapId) && WildEncounters_TryWildEncounter(fieldSystem) == TRUE;
}

static BOOL Field_CheckMapTransition(FieldSystem *fieldSystem, const FieldInput *input)
{
    if (input->transitionDir == DIR_NONE) {
        return FALSE;
    }

    if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_VEILSTONE_GYM) == TRUE && ov8_0224BF4C(fieldSystem) == TRUE) {
        return TRUE;
    }

    int playerX, playerZ;
    Field_Step(fieldSystem, &playerX, &playerZ);

    if (TerrainCollisionManager_CheckCollision(fieldSystem, playerX, playerZ) == FALSE) {
        return FALSE;
    }

    u8 tileBehavior;
    Location nextMap;

    if (Field_MapConnection(fieldSystem, playerX, playerZ, &nextMap) && input->transitionDir != DIR_NONE) {
        tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, playerX, playerZ);

        if (TileBehavior_IsDoor(tileBehavior)) {
            int v6 = input->transitionDir;

            if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) == TRUE) {
                ov8_0224C62C(fieldSystem, playerX, playerZ, &v6);
            }

            sub_02056BDC(fieldSystem, nextMap.mapId, nextMap.warpId, 0, 0, v6, 1);

            return TRUE;
        }
    }

    Field_GetPlayerPos(fieldSystem, &playerX, &playerZ);

    tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, playerX, playerZ);

    if (TileBehavior_IsWarpEntranceEast(tileBehavior) || TileBehavior_IsWarpEast(tileBehavior)) {
        if (input->transitionDir != DIR_EAST) {
            return FALSE;
        }
    } else if (TileBehavior_IsWarpEntranceWest(tileBehavior) || TileBehavior_IsWarpWest(tileBehavior)) {
        if (input->transitionDir != DIR_WEST) {
            return FALSE;
        }
    } else if (TileBehavior_IsWarpEntranceSouth(tileBehavior) || TileBehavior_IsWarpSouth(tileBehavior)) {
        if (input->transitionDir != DIR_SOUTH) {
            return FALSE;
        }
    } else if (TileBehavior_IsWarpStairsEast(tileBehavior)) {
        if (input->transitionDir != DIR_EAST) {
            return FALSE;
        }
    } else if (TileBehavior_IsWarpStairsWest(tileBehavior)) {
        if (input->transitionDir != DIR_WEST) {
            return FALSE;
        }
    }

    if (Field_MapConnection(fieldSystem, playerX, playerZ, &nextMap) == FALSE) {
        return FALSE;
    }

    int transitionType;

    if (TileBehavior_IsDoor(tileBehavior)) {
        transitionType = 1;
    } else if (TileBehavior_IsWarpStairsEast(tileBehavior)) {
        transitionType = 3;
    } else if (TileBehavior_IsWarpStairsWest(tileBehavior)) {
        transitionType = 3;
    } else if (TileBehavior_IsWarpEntranceEast(tileBehavior) || TileBehavior_IsWarpEast(tileBehavior)
        || TileBehavior_IsWarpEntranceWest(tileBehavior) || TileBehavior_IsWarpWest(tileBehavior)
        || TileBehavior_IsWarpEntranceSouth(tileBehavior) || TileBehavior_IsWarpSouth(tileBehavior)) {
        sub_02056C18(fieldSystem, nextMap.mapId, nextMap.warpId, 0, 0, input->transitionDir);
        return TRUE;
    } else {
        return FALSE;
    }

    // these statements are unreachable, but required for matching
    sub_02056BDC(fieldSystem, nextMap.mapId, nextMap.warpId, 0, 0, input->transitionDir, transitionType);

    return TRUE;
}

u16 Field_TileBehaviorToScript(FieldSystem *fieldSystem, u8 behavior)
{
    int playerDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    if (TileBehavior_IsPC(behavior) && playerDir == DIR_NORTH) {
        return 2018;
    } else if (TileBehavior_IsSmallBookshelf1(behavior)) {
        return 2500;
    } else if (TileBehavior_IsSmallBookshelf2(behavior)) {
        return 2501;
    } else if (TileBehavior_IsBookshelf1(behavior)) {
        return 2502;
    } else if (TileBehavior_IsBookshelf2(behavior)) {
        return 2503;
    } else if (TileBehavior_IsTrashCan(behavior)) {
        return 2504;
    } else if (TileBehavior_IsMartShelf1(behavior)) {
        return 2505;
    } else if (TileBehavior_IsMartShelf2(behavior)) {
        return 2506;
    } else if (TileBehavior_IsMartShelf3(behavior)) {
        return 2507;
    } else if (TileBehavior_IsWaterfall(behavior)) {
        return 10006;
    } else if (TileBehavior_IsTownMap(behavior)) {
        return 2508;
    } else if (TileBehavior_IsBikeParking(behavior)) {
        return 2030;
    } else if (TileBehavior_IsTV(behavior) && playerDir == DIR_NORTH) {
        return 10100;
    }

    if (ov5_021E0760(behavior, playerDir)) {
        return 10003;
    }

    if (PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar) != PLAYER_STATE_SURFING) {
        TrainerInfo *info = SaveData_GetTrainerInfo(fieldSystem->saveData);
        u32 distortionBehavior = sub_02061760(fieldSystem->playerAvatar);

        if (ov5_021E0118(fieldSystem->playerAvatar, distortionBehavior, behavior) && TrainerInfo_HasBadge(info, 3)) {
            if (Party_HasMonWithMove(SaveData_GetParty(fieldSystem->saveData), MOVE_SURF) != PARTY_SLOT_NONE) {
                return 10004;
            }
        }
    }

    return 0xffff;
}

static BOOL Field_ProcessStep(FieldSystem *fieldSystem)
{
    if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_CANALAVE_GYM) == TRUE && ov8_0224AAA8(fieldSystem)) {
        return TRUE;
    }

    if (PersistedMapFeatures_IsCurrentDynamicMap(fieldSystem, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) == TRUE && ov9_0224A71C(fieldSystem) == TRUE) {
        return TRUE;
    }

    int playerDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    if (ov5_021E1154(fieldSystem, fieldSystem->playerAvatar, playerDir) == TRUE) {
        return TRUE;
    }

    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, playerX, playerZ);

    if (Field_CheckCoordEvent(fieldSystem) == TRUE) {
        return TRUE;
    }

    if (Field_CheckTransition(fieldSystem, playerX, playerZ, tileBehavior) == TRUE) {
        Field_TrySetMapConnection(fieldSystem);
        return TRUE;
    }

    if (sub_0205EF58(fieldSystem->playerAvatar)) {
        return FALSE;
    }

    ov5_021EA714(fieldSystem, 5, 1);

    if (Field_UpdatePoison(fieldSystem) == TRUE) {
        return TRUE;
    }

    if (Field_UpdateSafari(fieldSystem) == TRUE) {
        return TRUE;
    }

    if (Field_UpdateDaycare(fieldSystem) == TRUE) {
        return TRUE;
    }

    if (Field_UpdateVsSeeker(fieldSystem) == TRUE) {
        return TRUE;
    }

    if (Field_UpdatePokeRadar(fieldSystem) == TRUE) {
        return TRUE;
    }

    if (Field_UpdateRepel(fieldSystem) == TRUE) {
        return TRUE;
    }

    if (Field_UpdateFriendship(fieldSystem)) {
        Field_CalculateFriendship(fieldSystem);
    }

    SystemVars_IncrementAmitySquareStepCount(SaveData_GetVarsFlags(fieldSystem->saveData));
    return FALSE;
}

static BOOL Field_CheckCoordEvent(FieldSystem *fieldSystem)
{
    u16 event = sub_0203CC14(fieldSystem, MapHeaderData_GetCoordEvents(fieldSystem), MapHeaderData_GetNumCoordEvents(fieldSystem));

    if (event != 0xffff) {
        ScriptManager_Set(fieldSystem, event, NULL);
        return TRUE;
    }

    return FALSE;
}

static BOOL Field_CheckTransition(FieldSystem *fieldSystem, const int playerX, const int playerZ, const u8 curTileBehavior)
{
    Location nextMap;

    if (Field_MapConnection(fieldSystem, playerX, playerZ, &nextMap) == FALSE) {
        return FALSE;
    }

    if (TileBehavior_IsEscalatorFlipFace(curTileBehavior) == TRUE) {
        int playerDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

        if (playerDir == DIR_WEST) {
            playerDir = DIR_EAST;
        } else if (playerDir == DIR_EAST) {
            playerDir = DIR_WEST;
        } else {
            GF_ASSERT(FALSE);
            return FALSE;
        }

        sub_02056BDC(fieldSystem, nextMap.mapId, nextMap.warpId, 0, 0, playerDir, 2);
        return TRUE;
    } else if (TileBehavior_IsEscalator(curTileBehavior) == TRUE) {
        int playerDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

        if (playerDir != DIR_WEST && playerDir != DIR_EAST) {
            GF_ASSERT(FALSE);
            return FALSE;
        }

        sub_02056BDC(fieldSystem, nextMap.mapId, nextMap.warpId, 0, 0, playerDir, 2);
        return TRUE;
    }

    if (TileBehavior_IsWarpEntranceNorth(curTileBehavior) || TileBehavior_IsWarpNorth(curTileBehavior)) {
        sub_02056C18(fieldSystem, nextMap.mapId, nextMap.warpId, 0, 0, 0);
        return TRUE;
    }

    if (TileBehavior_IsWarpPanel(curTileBehavior)) {
        FieldSystem_StartMapChangeWarpTask(fieldSystem, nextMap.mapId, nextMap.warpId);
        return TRUE;
    }

    return FALSE;
}

static BOOL Field_UpdateDaycare(FieldSystem *fieldSystem)
{
    Party *party = SaveData_GetParty(fieldSystem->saveData);
    Daycare *daycare = SaveData_GetDaycare(fieldSystem->saveData);

    if (Daycare_Update(daycare, party, fieldSystem) == TRUE) {
        GameRecords *records = SaveData_GetGameRecords(fieldSystem->saveData);

        GameRecords_IncrementRecordValue(records, RECORD_EGGS_HATCHED);
        GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_UNK_15);
        ScriptManager_Set(fieldSystem, 2031, NULL);

        return TRUE;
    }

    return FALSE;
}

static BOOL Field_UpdateVsSeeker(FieldSystem *fieldSystem)
{
    VsSeeker_UpdateStepCount(fieldSystem);
    return FALSE;
}

static BOOL Field_UpdatePokeRadar(FieldSystem *fieldSystem)
{
    RadarChargeStep(fieldSystem);
    return FALSE;
}

static BOOL Field_UpdateRepel(FieldSystem *fieldSystem)
{
    return Repel_UpdateSteps(fieldSystem->saveData, fieldSystem);
}

static BOOL Field_UpdateFriendship(FieldSystem *fieldSystem)
{
    VarsFlags *vars;
    BOOL ret = FALSE;

    vars = SaveData_GetVarsFlags(fieldSystem->saveData);
    u16 steps = SystemVars_GetFriendshipStepCount(vars);

    steps++;

    if (steps >= 128) {
        steps = 0;
        ret = TRUE;
    }

    SystemVars_SetFriendshipStepCount(vars, steps);

    return ret;
}

static void Field_CalculateFriendship(FieldSystem *fieldSystem)
{
    // C99-style declarations don't match
    int i, partyCount;
    Party *party = SaveData_GetParty(fieldSystem->saveData);
    u16 mapID = MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);

    partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        Pokemon_UpdateFriendship(mon, 5, mapID);
    }
}

static BOOL Field_UpdatePoison(FieldSystem *fieldSystem)
{
    Party *party = SaveData_GetParty(fieldSystem->saveData);
    u16 *poisonSteps = FieldOverworldState_GetPoisonStepCount(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    (*poisonSteps)++;
    (*poisonSteps) %= 4;

    if (*poisonSteps != 0) {
        return FALSE;
    }

    switch (Pokemon_DoPoisonDamage(party, MapHeader_GetMapLabelTextID(fieldSystem->location->mapId))) {
    case FLDPSN_NONE:
        return FALSE;
    case FLDPSN_POISONED:
        Field_DoPoisonEffect(fieldSystem->unk_04->unk_20);
        return FALSE;
    case FLDPSN_FAINTED:
        Field_DoPoisonEffect(fieldSystem->unk_04->unk_20);
        ScriptManager_Set(fieldSystem, 2003, NULL);
        return TRUE;
    }

    return FALSE;
}

static BOOL Field_UpdateSafari(FieldSystem *fieldSystem)
{
    if (SystemFlag_CheckSafariGameActive(SaveData_GetVarsFlags(fieldSystem->saveData)) == FALSE) {
        return FALSE;
    }

    u16 *balls = FieldOverworldState_GetSafariBallCount(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    if (*balls == 0) {
        ScriptManager_Set(fieldSystem, 8802, NULL);
        return TRUE;
    }

    u16 *steps = FieldOverworldState_GetSafariStepCount(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    (*steps)++;

    if (*steps >= 500) {
        ScriptManager_Set(fieldSystem, 8801, NULL);
        return TRUE;
    }

    return FALSE;
}

static void Field_GetPlayerPos(const FieldSystem *fieldSystem, int *playerX, int *playerZ)
{
    *playerX = Player_GetXPos(fieldSystem->playerAvatar);
    *playerZ = Player_GetZPos(fieldSystem->playerAvatar);
}

static void Field_Step(const FieldSystem *fieldSystem, int *playerX, int *playerZ)
{
    int playerDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);
    Field_StepInDirection(fieldSystem, playerDir, playerX, playerZ);
}

static void Field_StepInDirection(const FieldSystem *fieldSystem, int playerDir, int *playerX, int *playerZ)
{
    Field_GetPlayerPos(fieldSystem, playerX, playerZ);

    switch (playerDir) {
    case DIR_NORTH:
        *playerZ -= 1;
        break;
    case DIR_SOUTH:
        *playerZ += 1;
        break;
    case DIR_WEST:
        *playerX -= 1;
        break;
    case DIR_EAST:
        *playerX += 1;
        break;
    default:
        GF_ASSERT("FALSE");
    }
}

static u8 Field_CurrentTileBehavior(const FieldSystem *fieldSystem)
{
    int playerX, playerZ;
    Field_GetPlayerPos(fieldSystem, &playerX, &playerZ);
    return TerrainCollisionManager_GetTileBehavior(fieldSystem, playerX, playerZ);
}

static u8 Field_NextTileBehavior(const FieldSystem *fieldSystem)
{
    int playerX, playerZ;
    Field_Step(fieldSystem, &playerX, &playerZ);
    return TerrainCollisionManager_GetTileBehavior(fieldSystem, playerX, playerZ);
}

static BOOL Field_MapConnection(const FieldSystem *fieldSystem, int playerX, int playerZ, Location *nextMap)
{
    const WarpEvent *v0;
    int v1 = MapHeaderData_GetIndexOfWarpEventAtPos(fieldSystem, playerX, playerZ);

    if (v1 == -1) {
        return FALSE;
    }

    v0 = MapHeaderData_GetWarpEventByIndex(fieldSystem, v1);

    if (v0 == NULL) {
        return FALSE;
    }

    if (v0->destWarpID == 0x100) {
        GF_ASSERT(v0->destHeaderID == 0xfff);
        *nextMap = *(FieldOverworldState_GetSpecialLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData)));
    } else {
        Location_Set(nextMap, v0->destHeaderID, v0->destWarpID, v0->x, v0->z, 1);
    }

    Location *v2 = FieldOverworldState_GetEntranceLocation(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    Location_Set(v2, fieldSystem->location->mapId, v1, playerX, playerZ, PlayerAvatar_GetDir(fieldSystem->playerAvatar));

    return TRUE;
}

static void Field_SetMapConnection(FieldSystem *fieldSystem, const int playerX, const int playerZ, const int playerDir)
{
    FieldOverworldState *fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    Location *nextMap = FieldOverworldState_GetExitLocation(fieldState);

    (*nextMap) = *(fieldSystem->location);
    nextMap->faceDirection = playerDir;
    nextMap->x = playerX;
    nextMap->z = playerZ;

    if (playerDir == DIR_NORTH) {
        (nextMap->z)++;
    }

    nextMap->mapId = fieldSystem->location->mapId;
    nextMap->warpId = WARP_ID_NONE;
}

static void Field_TrySetMapConnection(FieldSystem *fieldSystem)
{
    int playerX, playerZ;
    Field_GetPlayerPos(fieldSystem, &playerX, &playerZ);

    Location nextMap;

    if (Field_MapConnection(fieldSystem, playerX, playerZ, &nextMap)) {
        if (MapHeader_IsOnMainMatrix(fieldSystem->location->mapId) == TRUE && MapHeader_IsOnMainMatrix(nextMap.mapId) == FALSE) {
            Field_SetMapConnection(fieldSystem, playerX, playerZ, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
        }
    } else {
        Field_Step(fieldSystem, &playerX, &playerZ);

        if (Field_MapConnection(fieldSystem, playerX, playerZ, &nextMap)
            && MapHeader_IsOnMainMatrix(fieldSystem->location->mapId) == TRUE
            && MapHeader_IsOnMainMatrix(nextMap.mapId) == FALSE) {

            Field_SetMapConnection(fieldSystem, playerX, playerZ, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
        }
    }
}

static BOOL Field_DistortionInteract(FieldSystem *fieldSystem, MapObject **object)
{
    int objectIndex = 0;
    int playerX, playerY, playerZ, objectX, objectY, objectZ;

    sub_020617BC(fieldSystem->playerAvatar, &playerX, &playerY, &playerZ);

    while (sub_020625B0(fieldSystem->mapObjMan, object, &objectIndex, (1 << 0))) {
        objectX = MapObject_GetX(*object);
        objectY = MapObject_GetY(*object) / 2;
        objectZ = MapObject_GetZ(*object);

        if (playerY == objectY && playerX == objectX && playerZ == objectZ) {
            return TRUE;
        }
    }

    return FALSE;
}
