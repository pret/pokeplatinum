#include "overlay005/field_control.h"

#include <nitro.h>
#include <string.h>

#include "constants/player_avatar.h"
#include "consts/game_records.h"
#include "consts/sdat.h"

#include "struct_decls/struct_02026310_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_defs/struct_02049FA8.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/ov5_021DFB54.h"
#include "overlay005/ov5_021E1154.h"
#include "overlay005/ov5_021E622C.h"
#include "overlay005/ov5_021EA714.h"
#include "overlay005/ov5_021EF4BC.h"
#include "overlay005/ov5_021EFB0C.h"
#include "overlay005/ov5_021F8370.h"
#include "overlay005/struct_ov5_021D219C.h"
#include "overlay005/vs_seeker.h"
#include "overlay006/ov6_02240C9C.h"
#include "overlay006/ov6_02246BF4.h"
#include "overlay008/ov8_02249960.h"
#include "overlay009/ov9_02249960.h"
#include "overlay023/ov23_02241F74.h"

#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "core_sys.h"
#include "field_comm_manager.h"
#include "field_map_change.h"
#include "field_menu.h"
#include "field_overworld_state.h"
#include "game_records.h"
#include "inlines.h"
#include "map_header.h"
#include "map_header_data.h"
#include "map_object.h"
#include "party.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "pokeradar.h"
#include "save_player.h"
#include "script_manager.h"
#include "trainer_info.h"
#include "unk_02005474.h"
#include "unk_020261E4.h"
#include "unk_02030EE0.h"
#include "unk_020366A0.h"
#include "unk_0203C954.h"
#include "unk_02050A74.h"
#include "unk_02054884.h"
#include "unk_02054D00.h"
#include "unk_020562F8.h"
#include "unk_02056B30.h"
#include "unk_0205A0D8.h"
#include "unk_0205B33C.h"
#include "unk_0205DAC8.h"
#include "unk_0205F180.h"
#include "unk_02067A84.h"
#include "unk_020683F4.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "unk_02071B10.h"
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
        BOOL hasTwoAliveMons = Party_HasTwoAliveMons(Party_GetFromSavedata(fieldSystem->saveData));

        if (sub_0206A984(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
            hasTwoAliveMons = TRUE;
        }

        if (sub_02067A84(fieldSystem, hasTwoAliveMons) == TRUE
            || (sub_02071CB4(fieldSystem, 2) == TRUE
                && ov8_0224C51C(fieldSystem) == TRUE)) {

            sub_0205F56C(fieldSystem->playerAvatar);
            MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
            return TRUE;
        }
    }

    if (input->movement) {
        sub_0206A9A4(SaveData_GetVarsFlags(fieldSystem->saveData));

        if (Field_ProcessStep(fieldSystem) == TRUE) {
            return TRUE;
        }
    }

    if (input->dummy5 == FALSE) {
        int playerEvent = PLAYER_EVENT_NONE;
        int direction = sub_02061308(fieldSystem->playerAvatar, input->pressedKeys, input->heldKeys);

        if (inline_0204E650_2(SaveData_GetVarsFlags(fieldSystem->saveData))) {
            playerEvent |= PLAYER_EVENT_USED_STRENGTH;
        }

        if (Party_HasMonWithMove(Party_GetFromSavedata(fieldSystem->saveData), MOVE_WATERFALL) != PARTY_SLOT_NONE) {
            playerEvent |= PLAYER_EVENT_USED_WATERFALL;
        }

        if (sub_02071CB4(fieldSystem, 9) == TRUE && ov9_02250F74(fieldSystem) == TRUE) {
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

        if (sub_02071CB4(fieldSystem, 9) == TRUE) {
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

        if (sub_02071CB4(fieldSystem, 9) == TRUE) {
            validInteraction = Field_DistortionInteract(fieldSystem, &object);
        } else {
            validInteraction = sub_0203CA40(fieldSystem, &object);
        }

        if (validInteraction == TRUE) {
            if (sub_0205F588(fieldSystem->playerAvatar) == TRUE) {
                sub_0205F5E4(fieldSystem->playerAvatar, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
            }

            if (MapObject_GetEventType(object) != 0x9) {
                ScriptManager_Set(fieldSystem, MapObject_GetEventID(object), object);
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

            if (ov5_021EFB40(fieldSystem, &event)) {
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
        if (sub_02071CB4(fieldSystem, 9) == TRUE) {
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
        FieldMenu_Init(fieldSystem);
        return TRUE;
    }

    return FALSE;
}

static BOOL Field_CheckSign(FieldSystem *fieldSystem)
{
    MapObject *object;

    if (sub_0203CBE0(fieldSystem, &object) == TRUE) {
        ScriptManager_Set(fieldSystem, MapObject_GetEventID(object), object);
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
        && sub_0205DB1C(Field_CurrentTileBehavior(fieldSystem))) {

        ScriptManager_Set(fieldSystem, 9101, NULL);
        return TRUE;
    }

    if (sub_020363A0() || CommPlayer_GetMovementTimer(CommSys_CurNetId()) != 0 || !sub_02059D2C()) {
        return FALSE;
    }

    if (input->interact) {
        MapObject *object;

        if (sub_0203CA40(fieldSystem, &object) == TRUE && MapObject_GetMoveCode(object) != 0x1) {
            if (sub_0205F588(fieldSystem->playerAvatar) == TRUE) {
                sub_0205F5E4(fieldSystem->playerAvatar, PlayerAvatar_GetDir(fieldSystem->playerAvatar));
            }

            ScriptManager_Set(fieldSystem, MapObject_GetEventID(object), object);
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
            ScriptManager_Set(fieldSystem, MapObject_GetEventID(object), object);

            return TRUE;
        }
    }

    if (input->movement && TileBehavior_IsWarp(Field_CurrentTileBehavior(fieldSystem))) {
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

            if (MapObject_GetEventType(object) != 0x9) {
                ScriptManager_Set(fieldSystem, MapObject_GetEventID(object), object);
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
        FieldMenu_Init(fieldSystem);
        return TRUE;
    }

    return FALSE;
}

static BOOL Field_CheckWildEncounter(FieldSystem *fieldSystem)
{
    int playerX, playerZ;

    Field_GetPlayerPos(fieldSystem, &playerX, &playerZ);

    if (sub_0206AE8C(SaveData_GetVarsFlags(fieldSystem->saveData)) == TRUE) {
        if (sub_02056374(fieldSystem, playerX, playerZ) == TRUE) {
            sub_02051450(fieldSystem, sub_0205639C(fieldSystem));
            return TRUE;
        } else {
            return FALSE;
        }
    }

    return MapHeader_HasWildEncounters(fieldSystem->location->mapId) && ov6_02240D5C(fieldSystem) == TRUE;
}

static BOOL Field_CheckMapTransition(FieldSystem *fieldSystem, const FieldInput *input)
{
    if (input->transitionDir == DIR_NONE) {
        return FALSE;
    }

    if (sub_02071CB4(fieldSystem, 4) == TRUE && ov8_0224BF4C(fieldSystem) == TRUE) {
        return TRUE;
    }

    int playerX, playerZ;
    Field_Step(fieldSystem, &playerX, &playerZ);

    if (FieldSystem_CheckCollision(fieldSystem, playerX, playerZ) == FALSE) {
        return FALSE;
    }

    u8 tileBehavior;
    Location nextMap;

    if (Field_MapConnection(fieldSystem, playerX, playerZ, &nextMap) && input->transitionDir != DIR_NONE) {
        tileBehavior = sub_02054F94(fieldSystem, playerX, playerZ);

        if (sub_0205DAEC(tileBehavior)) {
            int v6 = input->transitionDir;

            if (sub_02071CB4(fieldSystem, 2) == TRUE) {
                ov8_0224C62C(fieldSystem, playerX, playerZ, &v6);
            }

            sub_02056BDC(fieldSystem, nextMap.mapId, nextMap.unk_04, 0, 0, v6, 1);

            return TRUE;
        }
    }

    Field_GetPlayerPos(fieldSystem, &playerX, &playerZ);

    tileBehavior = sub_02054F94(fieldSystem, playerX, playerZ);

    if (sub_0205DAF8(tileBehavior) || sub_0205DB28(tileBehavior)) {
        if (input->transitionDir != DIR_EAST) {
            return FALSE;
        }
    } else if (sub_0205DB04(tileBehavior) || sub_0205DB34(tileBehavior)) {
        if (input->transitionDir != DIR_WEST) {
            return FALSE;
        }
    } else if (sub_0205DB1C(tileBehavior) || sub_0205DB4C(tileBehavior)) {
        if (input->transitionDir != DIR_SOUTH) {
            return FALSE;
        }
    } else if (sub_0205DC44(tileBehavior)) {
        if (input->transitionDir != DIR_EAST) {
            return FALSE;
        }
    } else if (sub_0205DC50(tileBehavior)) {
        if (input->transitionDir != DIR_WEST) {
            return FALSE;
        }
    }

    if (Field_MapConnection(fieldSystem, playerX, playerZ, &nextMap) == FALSE) {
        return FALSE;
    }

    int transitionType;

    if (sub_0205DAEC(tileBehavior)) {
        transitionType = 1;
    } else if (sub_0205DC44(tileBehavior)) {
        transitionType = 3;
    } else if (sub_0205DC50(tileBehavior)) {
        transitionType = 3;
    } else if (sub_0205DAF8(tileBehavior) || sub_0205DB28(tileBehavior)
        || sub_0205DB04(tileBehavior) || sub_0205DB34(tileBehavior)
        || sub_0205DB1C(tileBehavior) || sub_0205DB4C(tileBehavior)) {
        sub_02056C18(fieldSystem, nextMap.mapId, nextMap.unk_04, 0, 0, input->transitionDir);
        return TRUE;
    } else {
        return FALSE;
    }

    // these statements are unreachable, but required for matching
    sub_02056BDC(fieldSystem, nextMap.mapId, nextMap.unk_04, 0, 0, input->transitionDir, transitionType);

    return TRUE;
}

u16 Field_TileBehaviorToScript(FieldSystem *fieldSystem, u8 behavior)
{
    int playerDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    if (sub_0205DBE4(behavior) && playerDir == DIR_NORTH) {
        return 2018;
    } else if (sub_0205DC80(behavior)) {
        return 2500;
    } else if (sub_0205DC8C(behavior)) {
        return 2501;
    } else if (sub_0205DC98(behavior)) {
        return 2502;
    } else if (sub_0205DCA4(behavior)) {
        return 2503;
    } else if (sub_0205DCB0(behavior)) {
        return 2504;
    } else if (sub_0205DCBC(behavior)) {
        return 2505;
    } else if (sub_0205DCC8(behavior)) {
        return 2506;
    } else if (sub_0205DCD4(behavior)) {
        return 2507;
    } else if (sub_0205DDB4(behavior)) {
        return 10006;
    } else if (sub_0205DBF0(behavior)) {
        return 2508;
    } else if (sub_0205DDC0(behavior)) {
        return 2030;
    } else if (sub_0205DE84(behavior) && playerDir == DIR_NORTH) {
        return 10100;
    }

    if (ov5_021E0760(behavior, playerDir)) {
        return 10003;
    }

    if (PlayerAvatar_GetPlayerState(fieldSystem->playerAvatar) != PLAYER_STATE_SURFING) {
        TrainerInfo *info = SaveData_GetTrainerInfo(fieldSystem->saveData);
        u32 distortionBehavior = sub_02061760(fieldSystem->playerAvatar);

        if (ov5_021E0118(fieldSystem->playerAvatar, distortionBehavior, behavior) && TrainerInfo_HasBadge(info, 3)) {
            if (Party_HasMonWithMove(Party_GetFromSavedata(fieldSystem->saveData), MOVE_SURF) != PARTY_SLOT_NONE) {
                return 10004;
            }
        }
    }

    return 0xffff;
}

static BOOL Field_ProcessStep(FieldSystem *fieldSystem)
{
    if (sub_02071CB4(fieldSystem, 3) == TRUE && ov8_0224AAA8(fieldSystem)) {
        return TRUE;
    }

    if (sub_02071CB4(fieldSystem, 9) == TRUE && ov9_0224A71C(fieldSystem) == TRUE) {
        return TRUE;
    }

    int playerDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    if (ov5_021E1154(fieldSystem, fieldSystem->playerAvatar, playerDir) == TRUE) {
        return TRUE;
    }

    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(fieldSystem->playerAvatar);
    u8 tileBehavior = sub_02054F94(fieldSystem, playerX, playerZ);

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

    sub_0206B238(SaveData_GetVarsFlags(fieldSystem->saveData));
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

    if (sub_0205DC2C(curTileBehavior) == TRUE) {
        int playerDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

        if (playerDir == DIR_WEST) {
            playerDir = DIR_EAST;
        } else if (playerDir == DIR_EAST) {
            playerDir = DIR_WEST;
        } else {
            GF_ASSERT(FALSE);
            return FALSE;
        }

        sub_02056BDC(fieldSystem, nextMap.mapId, nextMap.unk_04, 0, 0, playerDir, 2);
        return TRUE;
    } else if (TileBehavior_IsEscalator(curTileBehavior) == TRUE) {
        int playerDir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

        if (playerDir != DIR_WEST && playerDir != DIR_EAST) {
            GF_ASSERT(FALSE);
            return FALSE;
        }

        sub_02056BDC(fieldSystem, nextMap.mapId, nextMap.unk_04, 0, 0, playerDir, 2);
        return TRUE;
    }

    if (sub_0205DB10(curTileBehavior) || sub_0205DB40(curTileBehavior)) {
        sub_02056C18(fieldSystem, nextMap.mapId, nextMap.unk_04, 0, 0, 0);
        return TRUE;
    }

    if (TileBehavior_IsWarp(curTileBehavior)) {
        FieldSystem_StartMapChangeWarpTask(fieldSystem, nextMap.mapId, nextMap.unk_04);
        return TRUE;
    }

    return FALSE;
}

static BOOL Field_UpdateDaycare(FieldSystem *fieldSystem)
{
    Party *party = Party_GetFromSavedata(fieldSystem->saveData);
    UnkStruct_02026310 *v1 = sub_02026310(fieldSystem->saveData);

    if (ov5_021E7154(v1, party, fieldSystem) == TRUE) {
        GameRecords *v2 = SaveData_GetGameRecordsPtr(fieldSystem->saveData);

        GameRecords_IncrementRecordValue(v2, RECORD_UNK_011);
        GameRecords_IncrementTrainerScore(v2, TRAINER_SCORE_EVENT_UNK_15);
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
    return ov6_02246BF4(fieldSystem->saveData, fieldSystem);
}

static BOOL Field_UpdateFriendship(FieldSystem *fieldSystem)
{
    VarsFlags *vars;
    BOOL ret = FALSE;

    vars = SaveData_GetVarsFlags(fieldSystem->saveData);
    u16 steps = sub_0206B44C(vars);

    steps++;

    if (steps >= 128) {
        steps = 0;
        ret = TRUE;
    }

    sub_0206B45C(vars, steps);

    return ret;
}

static void Field_CalculateFriendship(FieldSystem *fieldSystem)
{
    // C99-style declarations don't match
    int i, partyCount;
    Party *party = Party_GetFromSavedata(fieldSystem->saveData);
    u16 mapID = MapHeader_GetMapLabelTextID(fieldSystem->location->mapId);

    partyCount = Party_GetCurrentCount(party);

    for (i = 0; i < partyCount; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);
        Pokemon_UpdateFriendship(mon, 5, mapID);
    }
}

static BOOL Field_UpdatePoison(FieldSystem *fieldSystem)
{
    Party *party = Party_GetFromSavedata(fieldSystem->saveData);
    u16 *poisonSteps = sub_0203A78C(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    (*poisonSteps)++;
    (*poisonSteps) %= 4;

    if (*poisonSteps != 0) {
        return FALSE;
    }

    switch (sub_02054B04(party, MapHeader_GetMapLabelTextID(fieldSystem->location->mapId))) {
    case 0:
        return FALSE;
    case 1:
        ov5_021EF518(fieldSystem->unk_04->unk_20);
        return FALSE;
    case 2:
        ov5_021EF518(fieldSystem->unk_04->unk_20);
        ScriptManager_Set(fieldSystem, 2003, NULL);
        return TRUE;
    }

    return FALSE;
}

static BOOL Field_UpdateSafari(FieldSystem *fieldSystem)
{
    if (sub_0206AE5C(SaveData_GetVarsFlags(fieldSystem->saveData)) == FALSE) {
        return FALSE;
    }

    u16 *balls = sub_0203A784(SaveData_GetFieldOverworldState(fieldSystem->saveData));

    if (*balls == 0) {
        ScriptManager_Set(fieldSystem, 8802, NULL);
        return TRUE;
    }

    u16 *steps = sub_0203A788(SaveData_GetFieldOverworldState(fieldSystem->saveData));
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
    return sub_02054F94(fieldSystem, playerX, playerZ);
}

static u8 Field_NextTileBehavior(const FieldSystem *fieldSystem)
{
    int playerX, playerZ;
    Field_Step(fieldSystem, &playerX, &playerZ);
    return sub_02054F94(fieldSystem, playerX, playerZ);
}

static BOOL Field_MapConnection(const FieldSystem *fieldSystem, int playerX, int playerZ, Location *nextMap)
{
    const WarpEvent *v0;
    int v1;

    v1 = MapHeaderData_GetIndexOfWarpEventAtPos(fieldSystem, playerX, playerZ);

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
    FieldOverworldState *v0 = SaveData_GetFieldOverworldState(fieldSystem->saveData);
    Location *nextMap = sub_0203A72C(v0);

    (*nextMap) = *(fieldSystem->location);
    nextMap->unk_10 = playerDir;
    nextMap->x = playerX;
    nextMap->z = playerZ;

    if (playerDir == DIR_NORTH) {
        (nextMap->z)++;
    }

    nextMap->mapId = fieldSystem->location->mapId;
    nextMap->unk_04 = -1;
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
        objectX = MapObject_GetXPos(*object);
        objectY = MapObject_GetYPos(*object) / 2;
        objectZ = MapObject_GetZPos(*object);

        if (playerY == objectY && playerX == objectX && playerZ == objectZ) {
            return TRUE;
        }
    }

    return FALSE;
}
