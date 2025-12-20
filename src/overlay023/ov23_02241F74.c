#include "overlay023/ov23_02241F74.h"

#include <nitro.h>
#include <string.h>

#include "constants/map_object.h"

#include "struct_decls/struct_02029894_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "overlay005/land_data.h"
#include "overlay005/ov5_021EAFA4.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_0224B05C.h"
#include "overlay023/ov23_022521F0.h"
#include "overlay023/ov23_02253598.h"
#include "overlay023/struct_ov23_02241A80.h"
#include "overlay023/struct_ov23_02241A88.h"
#include "overlay023/struct_ov23_02253598_decl.h"
#include "overlay023/underground_menu.h"
#include "overlay023/underground_pc.h"
#include "overlay023/underground_player.h"
#include "overlay023/underground_spheres.h"
#include "overlay023/underground_text_printer.h"
#include "overlay023/underground_traps.h"

#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "game_options.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_flags.h"
#include "terrain_collision_manager.h"
#include "trainer_info.h"
#include "unk_0202854C.h"
#include "unk_02030EE0.h"
#include "unk_020366A0.h"
#include "vars_flags.h"

#include "res/graphics/trap_effects/trap_effects.naix.h"

typedef BOOL (*UnkFuncPtr_ov23_02242540)(int, int);

typedef struct StoredListMenuPos {
    u16 key;
    u16 menuKey;
    u16 cursorPos;
    u16 listPos;
} StoredListMenuPos;

typedef struct {
    void *currentSysTaskCtx;
    SysTask *currentSysTask;
    EndSysTaskFunc endCurrentSysTask;
    FieldSystem *fieldSystem;
    UnkStruct_ov23_02253598 *unk_10;
    SysTask *unk_14;
    Coordinates unk_18;
    Coordinates unk_1C;
    StoredListMenuPos storedPositions[20];
    u16 storedPositionKey;
    u8 unk_C2[8];
    u8 unk_CA[8];
    u8 unk_D2[8];
    String *unk_DC[8];
    u8 unk_FC[8];
    u8 unk_104[8];
    u8 unk_10C[8];
    CoordinatesGetter coordinatesGetter;
    UndergroundTextPrinter *commonTextPrinter;
    UndergroundTextPrinter *captureFlagTextPrinter;
    UndergroundTextPrinter *miscTextPrinter;
    UndergroundTextPrinter *decorateBaseTextPrinter;
    UndergroundTextPrinter *itemNameTextPrinter;
    int orderedArrayLength;
    int unk_130;
    u8 unk_134;
    u8 unk_135[8];
    u8 unk_13D[8];
    u8 unk_145;
    u8 unk_146;
    u8 activeRadar;
    u8 unk_148;
    u8 unk_149;
    u8 unk_14A;
    u8 unk_14B;
    u8 unk_14C;
} CommManUnderground;

typedef struct {
    u8 bits;
    u8 unk_01;
} UnkStruct_ov23_02242830;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04;
    u8 unk_05;
} UnkStruct_ov23_02243360;

static void ov23_022433F4(int param0);
static void ov23_02243310(SysTask *param0, void *param1);

static CommManUnderground *sCommManUnderground = NULL;

static void CommManUnderground_Init(CommManUnderground *param0, FieldSystem *fieldSystem)
{
    u8 renderDelay = Options_TextFrameDelay(SaveData_GetOptions(fieldSystem->saveData));
    int i;

    sCommManUnderground = param0;
    MI_CpuFill8(sCommManUnderground, 0, sizeof(CommManUnderground));

    sCommManUnderground->fieldSystem = fieldSystem;
    sCommManUnderground->unk_134 = 0;
    sCommManUnderground->unk_1C.x = 0;
    sCommManUnderground->unk_1C.z = 0;
    sCommManUnderground->unk_14B = 0;
    sCommManUnderground->activeRadar = 1;
    sCommManUnderground->commonTextPrinter = UndergroundTextPrinter_New(TEXT_BANK_UNDERGROUND_COMMON, HEAP_ID_33, fieldSystem->bgConfig, renderDelay, 500);
    sCommManUnderground->captureFlagTextPrinter = UndergroundTextPrinter_New(TEXT_BANK_UNDERGROUND_CAPTURE_FLAG, HEAP_ID_33, fieldSystem->bgConfig, renderDelay, 0);
    sCommManUnderground->miscTextPrinter = UndergroundTextPrinter_New(TEXT_BANK_UNDERGROUND_NPCS, HEAP_ID_33, fieldSystem->bgConfig, renderDelay, 1000);
    sCommManUnderground->decorateBaseTextPrinter = UndergroundTextPrinter_New(TEXT_BANK_UNDERGROUND_DECORATE_BASE, HEAP_ID_33, fieldSystem->bgConfig, renderDelay, 0);
    sCommManUnderground->itemNameTextPrinter = UndergroundTextPrinter_New(TEXT_BANK_UNDERGROUND_TRAPS, HEAP_ID_33, fieldSystem->bgConfig, renderDelay, 0);

    LoadMessageBoxGraphics(sCommManUnderground->fieldSystem->bgConfig, 3, (1024 - (18 + 12)), 10, 0, HEAP_ID_FIELD1);
    Graphics_LoadPalette(NARC_INDEX_DATA__UG_TRAP, text_window_NCLR, 0, 10 * 0x20, 4 * 0x20, HEAP_ID_FIELD1);
    LoadStandardWindowGraphics(sCommManUnderground->fieldSystem->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 2, HEAP_ID_FIELD1);

    for (i = 0; i < (7 + 1); i++) {
        sCommManUnderground->unk_C2[i] = 0xff;
        sCommManUnderground->unk_D2[i] = 0xff;
        sCommManUnderground->unk_DC[i] = NULL;
    }

    SystemFlag_SetEnteredUnderground(SaveData_GetVarsFlags(sCommManUnderground->fieldSystem->saveData));
    sCommManUnderground->unk_14 = SysTask_Start(ov23_02243310, NULL, 0);
    sub_02032110(ov23_022433F4);
}

static void ov23_02242108(void)
{
    int i;

    for (i = 0; i < (7 + 1); i++) {
        if (sCommManUnderground->unk_DC[i]) {
            String_Free(sCommManUnderground->unk_DC[i]);
        }
    }

    sub_02032110(NULL);
    SysTask_Done(sCommManUnderground->unk_14);

    UndergroundTextPrinter_Free(sCommManUnderground->commonTextPrinter);
    UndergroundTextPrinter_Free(sCommManUnderground->captureFlagTextPrinter);
    UndergroundTextPrinter_Free(sCommManUnderground->miscTextPrinter);
    UndergroundTextPrinter_Free(sCommManUnderground->decorateBaseTextPrinter);
    UndergroundTextPrinter_Free(sCommManUnderground->itemNameTextPrinter);

    sCommManUnderground->fieldSystem->menuCursorPos = 0;
    Heap_Free(sCommManUnderground);
    sCommManUnderground = NULL;
}

UndergroundTextPrinter *CommManUnderground_GetCommonTextPrinter(void)
{
    return sCommManUnderground->commonTextPrinter;
}

UndergroundTextPrinter *CommManUnderground_GetCaptureFlagTextPrinter(void)
{
    return sCommManUnderground->captureFlagTextPrinter;
}

UndergroundTextPrinter *CommManUnderground_GetMiscTextPrinter(void)
{
    return sCommManUnderground->miscTextPrinter;
}

UndergroundTextPrinter *CommManUnderground_GetDecorateBaseTextPrinter(void)
{
    return sCommManUnderground->decorateBaseTextPrinter;
}

UndergroundTextPrinter *CommManUnderground_GetItemNameTextPrinter(void)
{
    return sCommManUnderground->itemNameTextPrinter;
}

void ov23_022421EC(void)
{
    UndergroundTextPrinter_RemovePrinter(sCommManUnderground->commonTextPrinter);
    UndergroundTextPrinter_RemovePrinter(sCommManUnderground->captureFlagTextPrinter);
    UndergroundTextPrinter_RemovePrinter(sCommManUnderground->miscTextPrinter);
    UndergroundTextPrinter_RemovePrinter(sCommManUnderground->decorateBaseTextPrinter);
    UndergroundTextPrinter_RemovePrinter(sCommManUnderground->itemNameTextPrinter);
}

BOOL CommManUnderground_FormatStringWith2TrainerNames(TrainerInfo *trainerInfo1, TrainerInfo *trainerInfo2, int bankEntry, String *dest)
{
    if (trainerInfo1 && trainerInfo2) {
        StringTemplate *template = StringTemplate_Default(HEAP_ID_FIELD1);
        String *fmtString = String_Init(50 * 2, HEAP_ID_FIELD1);

        StringTemplate_SetPlayerName(template, 0, trainerInfo1);
        StringTemplate_SetPlayerName(template, 1, trainerInfo2);
        MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetCommonTextPrinter()), bankEntry, fmtString);
        StringTemplate_Format(template, dest, fmtString);
        String_Free(fmtString);
        StringTemplate_Free(template);

        return TRUE;
    }

    return FALSE;
}

BOOL CommManUnderground_FormatStringWithTrainerName(TrainerInfo *trainerInfo, int index, int bankEntry, String *dest)
{
    if (trainerInfo) {
        StringTemplate *template = StringTemplate_Default(HEAP_ID_FIELD1);
        String *fmtString = String_Init(50 * 2, HEAP_ID_FIELD1);

        StringTemplate_SetPlayerName(template, index, trainerInfo);
        MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetCommonTextPrinter()), bankEntry, fmtString);
        StringTemplate_Format(template, dest, fmtString);
        String_Free(fmtString);
        StringTemplate_Free(template);

        return TRUE;
    }

    return FALSE;
}

static BOOL ov23_02242308(String *param0)
{
    int i;
    StringTemplate *v1;
    String *v2;
    TrainerInfo *v3;
    TrainerInfo *v4;

    if (!sCommManUnderground) {
        return 0;
    }

    for (i = 0; i < (7 + 1); i++) {
        if (sub_02032DE0(i)) {
            v3 = CommInfo_TrainerInfo(i);
            CommInfo_SetReceiveEnd(i);

            if (CommManUnderground_FormatStringWithTrainerName(v3, 1, 91, param0)) {
                return 1;
            }
        }

        if (sCommManUnderground->unk_C2[i] != 0xff) {
            v3 = CommInfo_TrainerInfo(i);
            v4 = CommInfo_TrainerInfo(sCommManUnderground->unk_C2[i]);

            sCommManUnderground->unk_C2[i] = 0xff;

            if (CommManUnderground_FormatStringWith2TrainerNames(v3, v4, 111, param0)) {
                return 1;
            }
        }

        if (sCommManUnderground->unk_D2[i] != 0xff) {
            v3 = CommInfo_TrainerInfo(i);
            sCommManUnderground->unk_D2[i] = 0xff;

            if (CommManUnderground_FormatStringWithTrainerName(v3, 0, 112, param0)) {
                return 1;
            }
        }

        if (sCommManUnderground->unk_13D[i] == 1) {
            if (sCommManUnderground->unk_DC[i]) {
                String_Copy(param0, sCommManUnderground->unk_DC[i]);
                String_Free(sCommManUnderground->unk_DC[i]);
                sCommManUnderground->unk_DC[i] = NULL;
            }

            sCommManUnderground->unk_13D[i] = 0;
            return 1;
        }
    }

    return 0;
}

BOOL ov23_0224240C(int x, int z)
{
    Coordinates coordinates = {
        .x = x,
        .z = z
    };

    if (TerrainCollisionManager_CheckCollision(sCommManUnderground->fieldSystem, x, z)) {
        return TRUE;
    }

    if (UndergroundTraps_IsTrapAtCoordinates(x, z)) {
        return TRUE;
    }

    if (UndergroundPC_GetPCAtCoordinates(&coordinates, DIR_NONE) != PC_NONE) {
        return TRUE;
    }

    return FALSE;
}

BOOL ov23_02242458(void)
{
    VecFx32 v0;
    MapObject *v1;
    int v2, v3;
    Coordinates v4;

    if ((sCommManUnderground->unk_146 != 0) || (sCommManUnderground->unk_134 != 0)) {
        if (sCommManUnderground->unk_134 > 0) {
            sCommManUnderground->unk_134--;
        }

        return 0;
    }

    if (gSystem.touchPressed) {
        sCommManUnderground->unk_134 = 30;

        if (!sCommManUnderground->unk_14B) {
            if (sub_02057FAC() && !UndergroundPlayer_IsAffectedByTrap(CommSys_CurNetId())) {
                if (CommSys_CheckError()) {
                    return 0;
                }

                if (0 != CommPlayer_GetMovementTimer(CommSys_CurNetId())) {
                    return 0;
                }

                v0 = ov5_021EAFA4(gSystem.touchX, gSystem.touchY, sCommManUnderground->fieldSystem->unk_8C);
                LandData_ObjectPosToTilePos(v0.x, v0.z, &v2, &v3);
                v4.x = v2;
                v4.z = v3;

                sCommManUnderground->unk_18.x = gSystem.touchX;
                sCommManUnderground->unk_18.z = gSystem.touchY;
                sCommManUnderground->unk_1C.x = v2;
                sCommManUnderground->unk_1C.z = v3;

                CommSys_SendData(48, &v4, sizeof(Coordinates));

                return 1;
            }
        }
    }

    return 0;
}

static int ov23_02242540(u8 *param0, UnkFuncPtr_ov23_02242540 param1, Coordinates *param2)
{
    UnkStruct_ov23_02241A80 v0;
    UnkStruct_ov23_02241A88 v1;
    int v2 = 1;
    int v3, v4, v5, v6;

    v3 = param2->x - 6;
    v4 = param2->z - 6;

    ov23_02241A80(&v0, 6);

    while (ov23_02241A88(&v0, &v1)) {
        v5 = param2->x + v1.unk_00;
        v6 = param2->z + v1.unk_02;

        if (param1(v5, v6)) {
            param0[v2] = (v5 - v3) + (v6 - v4) * 16;

            if (v2 == 8) {
                v2++;
                break;
            }

            v2++;
        }
    }

    return v2;
}

static void ov23_022425B8(int param0, Coordinates *param1)
{
    u8 v0[8 + 1];
    UnkStruct_ov23_02241A80 v1;
    UnkStruct_ov23_02241A88 v2;
    int v3 = 1;
    int v4, v5, v6, v7;

    v0[0] = param0;

    v3 = ov23_02242540(v0, UndergroundTraps_IsTrapAtCoordinates, param1);
    CommSys_SendDataServer(49, v0, v3);

    v3 = ov23_02242540(v0, ov23_02241200, param1);
    CommSys_SendDataServer(50, v0, v3);
}

void ov23_022425F8(int param0, int param1, void *param2, void *param3)
{
    Coordinates *v0 = param2;

    if (!sub_02059094(param0)) {
        return;
    }

    if (UndergroundPlayer_IsAffectedByTrap(param0)) {
        return;
    }

    CommPlayerMan_SetMovementEnabled(param0, 0);
    ov23_022425B8(param0, v0);
}

void ov23_02242624(int param0, int param1, void *param2, void *param3)
{
    int v0;
    u8 *v1 = param2;

    if (CommSys_CurNetId() != v1[0]) {
        return;
    }

    MI_CpuCopy8(&v1[1], sCommManUnderground->unk_FC, param1 - 1);
    sCommManUnderground->unk_148 = param1 - 1;
}

void ov23_02242654(int param0, int param1, void *param2, void *param3)
{
    int v0;
    u8 *v1 = param2;
    u8 v3[9];

    if (CommSys_CurNetId() != v1[0]) {
        return;
    }

    MI_CpuCopy8(&v1[1], sCommManUnderground->unk_104, param1 - 1);
    sCommManUnderground->unk_149 = param1 - 1;

    sCommManUnderground->unk_14A = ov23_02242540(v3, UndergroundSpheres_IsBuriedSphereAtCoordinates, &sCommManUnderground->unk_1C);
    sCommManUnderground->unk_14A -= 1;

    MI_CpuCopy8(&v3[1], sCommManUnderground->unk_10C, sCommManUnderground->unk_14A);
    UndergroundTraps_StartTouchRadarTask(sCommManUnderground->fieldSystem, sCommManUnderground->unk_1C.x, sCommManUnderground->unk_1C.z, sCommManUnderground->unk_18.x, sCommManUnderground->unk_18.z, sCommManUnderground->unk_FC, sCommManUnderground->unk_148, sCommManUnderground->unk_104, sCommManUnderground->unk_149, sCommManUnderground->unk_10C, sCommManUnderground->unk_14A);
}

static int Underground_GetOrderedCoordinatesValue(Coordinates *coordinates)
{
    int x = 0, z = 0;

    if (coordinates == NULL) {
        return 30 * 30 * 32 * 32;
    }

    x = coordinates->x;
    z = coordinates->z;

    return (z * 30 * 32) + x;
}

int Underground_CalculateCoordinatesIndexGet(Coordinates *coordinates)
{
    int index = 0;
    int max = sCommManUnderground->orderedArrayLength - 1;
    int orderedValue = Underground_GetOrderedCoordinatesValue(coordinates);
    Coordinates _;
    CoordinatesGetter getCoordinates = sCommManUnderground->coordinatesGetter;

    while (index < max) {
        int midpoint = (index + max) / 2;

        if (Underground_GetOrderedCoordinatesValue(getCoordinates(&_, midpoint)) < orderedValue) {
            index = midpoint + 1;
        } else {
            max = midpoint;
        }
    }

    if (Underground_GetOrderedCoordinatesValue(getCoordinates(&_, index)) == orderedValue) {
        return index;
    }

    return -1;
}

int Underground_CalculateCoordinatesIndexInsert(Coordinates *coordinates)
{
    int index = 0;
    int max = sCommManUnderground->orderedArrayLength - 2;
    int orderedValue = Underground_GetOrderedCoordinatesValue(coordinates);
    Coordinates _;
    CoordinatesGetter getCoordinates = sCommManUnderground->coordinatesGetter;

    max++; // why?

    while (index < max) {
        int midpoint = (index + max) / 2;

        if (Underground_GetOrderedCoordinatesValue(getCoordinates(&_, midpoint)) < orderedValue) {
            index = midpoint + 1;
        } else {
            max = midpoint;
        }
    }

    return index;
}

void Underground_InitCoordinatesOrderingState(int orderedArrayLength, CoordinatesGetter coordinatesGetter)
{
    sCommManUnderground->coordinatesGetter = coordinatesGetter;
    sCommManUnderground->orderedArrayLength = orderedArrayLength;
}

void ov23_022427F8(void)
{
    if (0 == CommPlayer_GetMovementTimer(CommSys_CurNetId())) {
        Link_Message(27);
        sub_0203572C();
    }
}

void ov23_02242814(void)
{
    if (sCommManUnderground->unk_146 != 0) {
        sCommManUnderground->unk_146--;
    }
}

void ov23_02242830(u8 param0)
{
    u8 bits = param0;
    UnkStruct_ov23_02242830 v1;
    int v2, v3;
    Underground *v4 = SaveData_GetUnderground(sCommManUnderground->fieldSystem->saveData);

    if ((sCommManUnderground->unk_146 != 0) && (sCommManUnderground->unk_134 != 0)) {
        return;
    }

    if (CommPlayer_GetMovementTimer(CommSys_CurNetId()) != 0) {
        return;
    }

    if (Underground_GetTrapCount(v4) == MAX_TRAP_SLOTS) {
        bits |= BIT_TRAPS_FULL;
    }

    v2 = CommPlayer_GetXInFrontOfPlayer(CommSys_CurNetId());
    v3 = CommPlayer_GetZInFrontOfPlayer(CommSys_CurNetId());

    if (UndergroundSpheres_IsBuriedSphereAtCoordinates(v2, v3)) {
        bits |= BIT_BURIED_SPHERE_IN_FRONT;
    }

    v1.bits = bits;
    v1.unk_01 = (v2 & 0xf) * 16 + (v3 & 0xf);

    CommSys_SendDataFixedSize(28, &v1);
    sub_0203572C();

    sCommManUnderground->unk_146 = 8;
}

int ov23_022428D4(void)
{
    return sizeof(UnkStruct_ov23_02242830);
}

void ov23_022428D8(int param0, int param1, void *param2, void *param3)
{
    TalkEvent v0;
    UnkStruct_ov23_02242830 *v1 = param2;
    Coordinates v2;
    int v3;
    u8 v4 = param0;
    v2.x = CommPlayer_GetXInFrontOfPlayerServer(param0);
    v2.z = CommPlayer_GetZInFrontOfPlayerServer(param0);

    if ((CommPlayer_GetXServer(param0) == 0xffff) && (CommPlayer_GetZServer(param0) == 0xffff)) {
        return;
    }

    if (!sub_02059094(param0)) {
        return;
    }

    if (UndergroundPlayer_IsAffectedByTrap(param0)) {
        return;
    }

    v3 = CommPlayerMan_GetLinkNetIDAtLocation(v2.x, v2.z);

    if (v3 != NETID_NONE) {
        if (ov23_0224C1C8(v3)) {
            return;
        } else if (Mining_IsPlayerMining(v3)) {
            v0.result = TALK_RESULT_MINING;
            v0.talkTargetNetID = v3;
            v0.netID = param0;

            CommSys_SendDataServer(30, &v0, sizeof(v0));
            CommPlayerMan_SetMovementEnabled(param0, 0);
        } else if (UndergroundPlayer_TalkHeldFlagCheck(param0, v3, FALSE)) {
            return;
        } else if (UndergroundPlayer_IsAffectedByTrap(v3)) {
            if (!UndergroundTraps_HasPlayerTriggeredTool(v3)) {
                UndergroundTraps_HelpLink(param0, v3);
            } else {
                v0.result = TALK_RESULT_FAIL;
                v0.talkTargetNetID = v3;
                v0.netID = param0;

                CommSys_SendDataServer(30, &v0, sizeof(v0));
                CommPlayerMan_SetMovementEnabled(param0, 0);
            }
        } else if (!sub_02059094(param0)) {
            return;
        } else if (!sub_02059094(v3) || CommPlayer_GetMovementTimerServer(v3) != 0) {
            v0.result = TALK_RESULT_FAIL;
            v0.talkTargetNetID = v3;
            v0.netID = param0;

            CommSys_SendDataServer(30, &v0, sizeof(v0));
            CommPlayerMan_SetMovementEnabled(param0, 0);
        } else {
            v0.result = TALK_RESULT_SUCCESS;
            v0.talkTargetNetID = v3;
            v0.netID = param0;

            if (sub_02059094(v3)) {
                if (CommSys_SendDataServer(30, &v0, sizeof(v0))) {
                    CommPlayerMan_SetMovementEnabled(param0, 0);
                    CommPlayerMan_SetMovementEnabled(v3, 0);
                    CommPlayer_LookTowardsServer(param0, v3);
                }
            }
        }

        return;
    }

    if (UndergroundTraps_TryDisengageTrap(param0, &v2, v1->bits)) {
        CommPlayerMan_SetMovementEnabled(param0, 0);
        return;
    }

    if (ov23_0223E354(param0, &v2)) {
        CommPlayerMan_SetMovementEnabled(param0, 0);
        return;
    }

    if (UndergroundPC_TryUsePC(param0, &v2)) {
        CommPlayerMan_SetMovementEnabled(param0, 0);
        return;
    }

    if (ov23_0224D454(param0, &v2)) {
        CommPlayerMan_SetMovementEnabled(param0, 0);
        return;
    }

    if (CommPlayer_CheckNPCCollision(v2.x, v2.z)) {
        if (UndergroundPlayer_TalkHeldFlagCheck(param0, NETID_NONE, FALSE)) {
            return;
        }

        CommSys_SendDataFixedSizeServer(24, &v4);
        CommPlayerMan_SetMovementEnabled(param0, 0);

        return;
    }

    if (v1->bits & BIT_BURIED_SPHERE_IN_FRONT) {
        if (UndergroundPlayer_BuriedObjectHeldFlagCheck(param0)) {
            return;
        }

        if (v1->unk_01 == (v2.x & 0xf) * 16 + (v2.z & 0xf)) {
            CommSys_SendDataFixedSizeServer(63, &v4);
            CommPlayerMan_SetMovementEnabled(param0, 0);
        }
    }
}

void ov23_02242B14(void)
{
    int i;

    if (CommSys_CurNetId() == 0) {
        for (i = 0; i < (7 + 1); i++) {
            if ((NULL != CommInfo_TrainerInfo(i)) && !sCommManUnderground->unk_135[i]) {
                ov23_0224B5CC(i);
            }

            if (CommInfo_TrainerInfo(i)) {
                sCommManUnderground->unk_135[i] = 1;
            } else {
                sCommManUnderground->unk_135[i] = 0;
            }
        }

        sub_02037B58(ov23_022433D0() + 2);
    }

    sCommManUnderground->unk_145++;

    if (CommSys_CurNetId() == 0) {
        if (CommInfo_ServerSendArray()) {
            CommPlayer_SendPos(1);
        }
    }

    UndergroundSpheres_AdvanceBuriedSphereSparkleTimer();
    UndergroundTraps_SendTrapRadarResults();
    ov23_0223E878();

    if (!sCommManUnderground->unk_14B) {
        UndergroundTraps_Dummy2(sCommManUnderground->fieldSystem->bgConfig);
    }
}

void ov23_02242BC0(FieldSystem *fieldSystem)
{
    void *v0;

    if (sCommManUnderground == NULL) {
        v0 = Heap_Alloc(HEAP_ID_COMMUNICATION, sizeof(CommManUnderground));
        CommManUnderground_Init(v0, fieldSystem);

        v0 = Heap_Alloc(HEAP_ID_COMMUNICATION, CommPlayer_Size());
        CommPlayerMan_Init(v0, fieldSystem, 1);

        v0 = Heap_Alloc(HEAP_ID_COMMUNICATION, TrapsEnv_Size());
        TrapsEnv_Init(v0, fieldSystem);

        v0 = Heap_Alloc(HEAP_ID_COMMUNICATION, ov23_0224B5C4());
        ov23_0224B144(v0, fieldSystem);

        v0 = Heap_Alloc(HEAP_ID_COMMUNICATION, BuriedSpheresEnv_Size());
        BuriedSpheresEnv_Init(v0, fieldSystem);

        v0 = Heap_Alloc(HEAP_ID_COMMUNICATION, ov23_0223E2E8());
        ov23_0223E1E4(v0, fieldSystem);

        v0 = Heap_Alloc(HEAP_ID_COMMUNICATION, ov23_02253608());
        ov23_02253598(v0, SaveData_UndergroundRecord(FieldSystem_GetSaveData(fieldSystem)), FieldSystem_GetSaveData(fieldSystem));
        UndergroundMenuContext_Init(SaveData_GetUnderground(FieldSystem_GetSaveData(fieldSystem)));
    }
}

void ov23_02242C78(void)
{
    if (sCommManUnderground) {
        ov23_022535EC();
        UndergroundSpheres_DisableBuriedSphereSparkles();
        ov23_0224B430();
        UndergroundTraps_DisableTrapGraphics();
        CommPlayerMan_Reset();
        ov23_0223E2F0();
        ov23_022421EC();

        sCommManUnderground->unk_14B = 1;
    }
}

void ov23_02242CB4(void)
{
    if (sCommManUnderground) {
        CommPlayerMan_Restart();
        ov23_02253604();
        UndergroundSpheres_EnableBuriedSphereSparkles();
        ov23_0224B460();
        UndergroundTraps_EnableTrapGraphics();
        ov23_0223E2F4();
        sCommManUnderground->unk_14B = 0;
        LoadMessageBoxGraphics(sCommManUnderground->fieldSystem->bgConfig, 3, (1024 - (18 + 12)), 10, 0, HEAP_ID_FIELD1);
    }
}

void ov23_02242D08(void)
{
    if (sCommManUnderground != NULL) {
        sub_020287F8(sCommManUnderground->fieldSystem->saveData);
        ov23_0224B4E4();
        TrapsEnv_Free();
        CommPlayerMan_Delete(1);
        BuriedSpheresEnv_Free();
        ov23_0223E2F8();
        UndergroundMenuContext_Free();
        ov23_022535CC();
        ov23_02242108();
    }
}

void ov23_02242D44(FieldSystem *fieldSystem)
{
    void *v0;

    if (sCommManUnderground != NULL) {
        UndergroundTraps_Reinit(fieldSystem);
        CommPlayerMan_Reinit();
        ov23_0224B518();
    }
}

BOOL ov23_02242D60(String *param0)
{
    if (sCommManUnderground->unk_14C) {
        sCommManUnderground->unk_14C = 0;
        return 0;
    }

    if (ov23_02242308(param0)) {
        sCommManUnderground->unk_14C = 1;
        return 1;
    } else if (UndergroundTraps_GetQueuedMessage(param0)) {
        sCommManUnderground->unk_14C = 1;
        return 1;
    } else if (UndergroundTraps_GetQueuedMessage2(param0)) {
        sCommManUnderground->unk_14C = 1;
        return 1;
    } else if (ov23_0224D020(param0)) {
        sCommManUnderground->unk_14C = 1;
        return 1;
    } else if (ov23_022415B8(param0)) {
        sCommManUnderground->unk_14C = 1;
        return 1;
    } else if (UndergroundSpheres_CheckForRetrievedSphereNotification(param0)) {
        sCommManUnderground->unk_14C = 1;
        return 1;
    }

    return 0;
}

UnkStruct_02029894 *ov23_02242E10(SaveData *saveData)
{
    if (!sCommManUnderground) {
        return NULL;
    }

    return ov23_0224D130(saveData);
}

int ov23_02242E28(void)
{
    if (!sCommManUnderground) {
        return 0;
    }

    return ov23_0224D150();
}

int ov23_02242E40(void)
{
    if (!sCommManUnderground) {
        return 0;
    }

    return ov23_0224D178();
}

BOOL Underground_AreCoordinatesInSecretBase(int x, int z)
{
    if (x > 32 && z > 64 && x < 479 && z < 479) {
        return FALSE;
    }

    return TRUE;
}

int ov23_02242E78(int param0)
{
    int v0, v1;

    if (sCommManUnderground) {
        if (param0 < 16) {
            v1 = param0;

            switch (sCommManUnderground->activeRadar) {
            case 0:
                return 0;
            case 1:
                if (param0 < 8) {
                    return ov23_0224121C(v1);
                }
            case 2:
                return SphereRadar_GetXCoordOfBuriedSphere(v1);
            case 4:
                return TrapRadar_GetXCoordOfBuriedTrap(v1);
            case 3:
                return ov23_0224125C(v1);
            }
        } else {
            UnkStruct_02029894 *v2 = sub_02029894(sCommManUnderground->fieldSystem->saveData);
            return sub_02029874(v2);
        }
    }

    return 0;
}

int ov23_02242EE0(int param0)
{
    int v0, v1, v2;

    if (sCommManUnderground) {
        if (param0 < 16) {
            v1 = param0;

            switch (sCommManUnderground->activeRadar) {
            case 0:
                return 0;
            case 1:
                if (param0 < 8) {
                    return ov23_0224123C(v1);
                }
            case 2:
                return SphereRadar_GetZCoordOfBuriedSphere(v1);
            case 4:
                return TrapRadar_GetZCoordOfBuriedTrap(v1);
            case 3:
                return ov23_02241294(v1);
            }
        } else {
            UnkStruct_02029894 *v3 = sub_02029894(sCommManUnderground->fieldSystem->saveData);

            return sub_0202987C(v3);
        }
    }

    return 0;
}

int ov23_02242F48(int param0)
{
    if (sCommManUnderground) {
        if (param0 < 16) {
            switch (sCommManUnderground->activeRadar) {
            case 1:
                if (param0 < 8) {
                    return 12;
                }
            case 2:
                return 9;
            case 4:
                return 11;
            case 3:
                return 12;
            }
        } else {
            UnkStruct_02029894 *v0 = sub_02029894(sCommManUnderground->fieldSystem->saveData);

            if (sub_0202988C(v0)) {
                return 3;
            }
        }
    }

    return 0;
}

void ov23_02242FA8(void)
{
    sCommManUnderground->activeRadar = 0;
}

void ov23_02242FBC(void)
{
    sCommManUnderground->activeRadar = 1;
}

void CommManUnderground_SetSphereRadarActive(void)
{
    sCommManUnderground->activeRadar = 2;
}

void CommManUnderground_SetTrapRadarActive(void)
{
    sCommManUnderground->activeRadar = 4;
}

void CommManUnderground_SetTreasureRadarActive(void)
{
    sCommManUnderground->activeRadar = 3;
}

void ov23_0224300C(int param0, int param1)
{
    if (sCommManUnderground) {
        sCommManUnderground->unk_C2[param0] = param1;
    }
}

void ov23_02243020(int param0)
{
    if (sCommManUnderground) {
        sCommManUnderground->unk_D2[param0] = 1;
    }
}

void UndergroundMan_SetReturnLog(int param0)
{
    StringTemplate *v0;
    String *v1;

    if (sCommManUnderground) {
        if (sCommManUnderground->unk_DC[param0] == NULL) {
            sCommManUnderground->unk_DC[param0] = String_Init((50 * 2), HEAP_ID_COMMUNICATION);

            v0 = StringTemplate_Default(HEAP_ID_FIELD2);
            v1 = String_Init((50 * 2), HEAP_ID_FIELD2);

            StringTemplate_SetPlayerName(v0, 0, CommInfo_TrainerInfo(param0));
            MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetCommonTextPrinter()), 115, v1);
            StringTemplate_Format(v0, sCommManUnderground->unk_DC[param0], v1);
            String_Free(v1);
            StringTemplate_Free(v0);
        }
    }
}

void ov23_022430B8(int param0)
{
    sCommManUnderground->unk_13D[param0] = 1;
}

void CommManUnderground_SetStoredPosKey(u16 key)
{
    sCommManUnderground->storedPositionKey = key;
}

void CommManUnderground_StoreCursorAndListPos(u16 menuKey, u16 cursorPos, u16 listPos)
{
    int i;

    if (sCommManUnderground->storedPositionKey == UNDERGROUND_STORED_POS_NONE) {
        return;
    }

    for (i = 0; i < 20; i++) {
        if (sCommManUnderground->storedPositionKey == sCommManUnderground->storedPositions[i].key) {
            if (sCommManUnderground->storedPositions[i].menuKey == menuKey) {
                sCommManUnderground->storedPositions[i].cursorPos = cursorPos;
                sCommManUnderground->storedPositions[i].listPos = listPos;
                return;
            }
        }
    }

    for (i = 0; i < 20; i++) {
        if (sCommManUnderground->storedPositions[i].key == UNDERGROUND_STORED_POS_NONE) {
            sCommManUnderground->storedPositions[i].key = sCommManUnderground->storedPositionKey;
            sCommManUnderground->storedPositions[i].menuKey = menuKey;
            sCommManUnderground->storedPositions[i].cursorPos = cursorPos;
            sCommManUnderground->storedPositions[i].listPos = listPos;
            return;
        }
    }

    GF_ASSERT(FALSE);
}

u16 CommManUnderground_GetStoredListPos(u16 menuKey)
{
    for (int i = 0; i < 20; i++) {
        if (sCommManUnderground->storedPositionKey == sCommManUnderground->storedPositions[i].key) {
            if (sCommManUnderground->storedPositions[i].menuKey == menuKey) {
                return sCommManUnderground->storedPositions[i].listPos;
            }
        }
    }

    return 0;
}

u16 CommManUnderground_GetStoredCursorPos(u16 menuKey)
{
    for (int i = 0; i < 20; i++) {
        if (sCommManUnderground->storedPositionKey == sCommManUnderground->storedPositions[i].key) {
            if (sCommManUnderground->storedPositions[i].menuKey == menuKey) {
                return sCommManUnderground->storedPositions[i].cursorPos;
            }
        }
    }

    return 0;
}

void ov23_022431C4(int param0, int param1, void *param2, void *param3)
{
    u8 *v0 = param2;
    int v1 = v0[0];

    if (v1 == CommSys_CurNetId()) {
        ov23_022534A0(sCommManUnderground->fieldSystem);
        Link_Message(25);
        CommPlayerMan_PauseFieldSystem();
    }
}

void CommManUnderground_SetCurrentSysTask(void *ctx, SysTask *sysTask, EndSysTaskFunc endFunc)
{
    sCommManUnderground->currentSysTaskCtx = ctx;
    sCommManUnderground->currentSysTask = sysTask;
    sCommManUnderground->endCurrentSysTask = endFunc;
}

void CommManUnderground_ClearCurrentSysTaskInfo(void)
{
    sCommManUnderground->currentSysTaskCtx = NULL;
    sCommManUnderground->currentSysTask = NULL;
    sCommManUnderground->endCurrentSysTask = NULL;
}

BOOL ov23_0224321C(void)
{
    BOOL v0 = 0;

    if (sCommManUnderground->currentSysTask) {
        sCommManUnderground->endCurrentSysTask(sCommManUnderground->currentSysTask, sCommManUnderground->currentSysTaskCtx);
        CommManUnderground_ClearCurrentSysTaskInfo();
        v0 = 1;
    }

    ov23_022421EC();
    UndergroundTextPrinter_EraseMessageBoxWindow(sCommManUnderground->commonTextPrinter);
    UndergroundTextPrinter_EraseMessageBoxWindow(sCommManUnderground->captureFlagTextPrinter);
    UndergroundTextPrinter_EraseMessageBoxWindow(sCommManUnderground->miscTextPrinter);
    UndergroundTextPrinter_EraseMessageBoxWindow(sCommManUnderground->decorateBaseTextPrinter);
    UndergroundTextPrinter_EraseMessageBoxWindow(sCommManUnderground->itemNameTextPrinter);
    UndergroundTextPrinter_EraseMessageBoxWindow(sCommManUnderground->commonTextPrinter);

    return v0;
}

BOOL ov23_02243298(int param0)
{
    int v0, v1;

    if (sCommManUnderground->currentSysTask) {
        return 0;
    }

    if (sCommManUnderground->fieldSystem->task) {
        sCommManUnderground->unk_130++;

        if (sCommManUnderground->unk_130 > 100) {
            GF_ASSERT(0);
        }

        return 0;
    }

    if (UndergroundPlayer_IsAffectedByTrap(param0)) {
        return 0;
    }

    v0 = sub_02058D48(param0);
    v1 = sub_02058D68(param0);

    if (Underground_AreCoordinatesInSecretBase(v0, v1) && (param0 != 0)) {
        return 0;
    }

    sCommManUnderground->unk_130 = 0;

    return 1;
}

static void ov23_02243310(SysTask *param0, void *param1)
{
    UndergroundTextPrinter_ClearPrinterID(sCommManUnderground->commonTextPrinter);
    UndergroundTextPrinter_ClearPrinterID(sCommManUnderground->captureFlagTextPrinter);
    UndergroundTextPrinter_ClearPrinterID(sCommManUnderground->miscTextPrinter);
    UndergroundTextPrinter_ClearPrinterID(sCommManUnderground->decorateBaseTextPrinter);
    UndergroundTextPrinter_ClearPrinterID(sCommManUnderground->itemNameTextPrinter);
}

void ov23_02243360(void)
{
    UnkStruct_ov23_02243360 v0;

    v0.unk_00 = ov23_0224DB48();
    v0.unk_02 = ov23_0224DB64();
    v0.unk_04 = ov23_0224DB84();
    v0.unk_05 = ov23_02241670();

    CommSys_SendDataFixedSize(70, &v0);
}

void ov23_02243390(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_ov23_02243360 *v0 = param2;

    ov23_0224DBA0(param0, v0->unk_00);
    ov23_0224DBBC(param0, v0->unk_02);
    ov23_0224DBD8(param0, v0->unk_04);
    ov23_02241690(param0, v0->unk_05);
}

int ov23_022433B8(void)
{
    return sizeof(UnkStruct_ov23_02243360);
}

void ov23_022433BC(int param0, int param1, void *param2, void *param3)
{
    sCommManUnderground->unk_CA[param0] = 1;
}

int ov23_022433D0(void)
{
    int i, v1 = 0;

    for (i = 0; i < (7 + 1); i++) {
        if (sCommManUnderground->unk_CA[i]) {
            v1++;
        }
    }

    return v1;
}

static void ov23_022433F4(int param0)
{
    sCommManUnderground->unk_CA[param0] = 0;
    ov23_0224B5CC(param0);
}
