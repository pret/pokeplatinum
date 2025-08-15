#include "overlay023/underground_spheres.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"

#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F575C.h"
#include "overlay023/ov23_0223E140.h"
#include "overlay023/ov23_02241F74.h"
#include "overlay023/ov23_0224F294.h"
#include "overlay023/struct_ov23_02241A80.h"
#include "overlay023/struct_ov23_02241A88.h"
#include "overlay023/underground_text_printer.h"

#include "comm_player_manager.h"
#include "communication_system.h"
#include "field_system.h"
#include "game_records.h"
#include "heap.h"
#include "message.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_flags.h"
#include "terrain_collision_manager.h"
#include "unk_0202854C.h"
#include "vars_flags.h"

typedef struct BuriedSphere {
    u16 x;
    u16 z;
    u8 initialSize;
    u8 growth;
    u8 type;
} BuriedSphere;

typedef struct SphereRadarTimer {
    u8 unused;
    u16 timer;
} SphereRadarTimer;

typedef struct BuriedSpheresEnv {
    BuriedSphere buriedSpheres[MAX_BURIED_SPHERES];
    BuriedSphere *buriedSpheresByCoordinates[MAX_BURIED_SPHERES];
    u8 unused[16];
    SysTask *sysTask;
    SphereRadarTimer *sphereRadarTimer;
    FieldSystem *fieldSystem;
    u8 retrievedSpheres[MAX_CONNECTED_PLAYERS];
    int sparkleTimer;
    u8 unused2[2];
    u8 disableBuriedSphereSparkles;
} BuriedSpheresEnv;

static BuriedSphere *UndergroundSpheres_Dummy(BuriedSphere *param0);
static Coordinates *UndergroundSpheres_GetCoordinatesOfBuriedSphereAtOrderedIndex(Coordinates *param0, int param1);
static void UndergroundSpheres_RemoveBuriedSphere(BuriedSphere *param0);
static void UndergroundSpheres_AddBuriedSphere(BuriedSphere *param0);
static void UndergroundSpheres_AddBuriedSphereToCoordinatesOrdering(BuriedSphere *param0);

static BuriedSpheresEnv *buriedSpheresEnv = NULL;

static void UndergroundSpheres_ResumeFieldSystem(int unused)
{
    CommPlayerMan_ResumeFieldSystem();
}

static void UndergroundSpheres_PrintSphereGrowth(int growth)
{
    if (growth > 0) {
        UndergroundTextPrinter_SetTwoDigitNumberWithIndex(CommManUnderground_GetCommonTextPrinter(), 0, growth);
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 75, TRUE, UndergroundSpheres_ResumeFieldSystem);
    } else {
        UndergroundSpheres_ResumeFieldSystem(growth);
    }
}

void BuriedSpheresEnv_Init(void *dest, FieldSystem *fieldSystem)
{
    if (buriedSpheresEnv) {
        return;
    }

    buriedSpheresEnv = dest;
    MI_CpuFill8(buriedSpheresEnv, 0, sizeof(BuriedSpheresEnv));
    buriedSpheresEnv->fieldSystem = fieldSystem;

    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(fieldSystem));

    for (int i = 0; i < MAX_BURIED_SPHERES; i++) {
        buriedSpheresEnv->buriedSpheres[i].type = Underground_GetBuriedSphereTypeAtIndex(underground, i);
        buriedSpheresEnv->buriedSpheres[i].x = Underground_GetBuriedSphereXCoordAtIndex(underground, i);
        buriedSpheresEnv->buriedSpheres[i].z = Underground_GetBuriedSphereZCoordAtIndex(underground, i);
        buriedSpheresEnv->buriedSpheres[i].initialSize = Underground_GetBuriedSphereInitialSizeAtIndex(underground, i);
        buriedSpheresEnv->buriedSpheres[i].growth = Underground_GetBuriedSphereGrowthAtIndex(underground, i);

        if (buriedSpheresEnv->buriedSpheres[i].type != SPHERE_NONE) {
            UndergroundSpheres_AddBuriedSphereToCoordinatesOrdering(&buriedSpheresEnv->buriedSpheres[i]);
        }
    }
}

static void UndergroundSpheres_SaveBuriedSpheres(void)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(buriedSpheresEnv->fieldSystem));

    for (int i = 0; i < MAX_BURIED_SPHERES; i++) {
        Underground_SaveBuriedSphere(underground, buriedSpheresEnv->buriedSpheres[i].type, i, buriedSpheresEnv->buriedSpheres[i].x, buriedSpheresEnv->buriedSpheres[i].z, buriedSpheresEnv->buriedSpheres[i].initialSize, buriedSpheresEnv->buriedSpheres[i].growth);
    }
}

int BuriedSpheresEnv_Size(void)
{
    return sizeof(BuriedSpheresEnv);
}

void UndergroundSpheres_DisableBuriedSphereSparkles(void)
{
    buriedSpheresEnv->disableBuriedSphereSparkles = TRUE;
}

void UndergroundSpheres_EnableBuriedSphereSparkles(void)
{
    buriedSpheresEnv->disableBuriedSphereSparkles = FALSE;
}

void BuriedSpheresEnv_Free(void)
{
    if (buriedSpheresEnv) {
        Heap_Free(buriedSpheresEnv);
        buriedSpheresEnv = NULL;
    }
}

void UndergroundSpheres_AdvanceBuriedSphereSparkleTimer(void)
{
    if (buriedSpheresEnv->disableBuriedSphereSparkles) {
        return;
    }

    buriedSpheresEnv->sparkleTimer++;

    if (buriedSpheresEnv->sparkleTimer >= MAX_BURIED_SPHERES * 20) {
        buriedSpheresEnv->sparkleTimer = 0;
    }

    if ((buriedSpheresEnv->sparkleTimer % 20) == 10) {
        int idx = buriedSpheresEnv->sparkleTimer / 20;
        int x = UndergroundSpheres_GetBuriedSphereXCoordAtIndex(idx);
        int z = UndergroundSpheres_GetBuriedSphereZCoordAtIndex(idx);

        if (x != 0 && z != 0) {
            ov5_DisplayBuriedSphereSparkle(buriedSpheresEnv->fieldSystem, x, z);
        }
    }
}

static Coordinates *UndergroundSpheres_GetCoordinatesOfBuriedSphereAtOrderedIndex(Coordinates *coordinates, int idx)
{
    if (buriedSpheresEnv->buriedSpheresByCoordinates[idx] == NULL) {
        return NULL;
    }

    coordinates->x = buriedSpheresEnv->buriedSpheresByCoordinates[idx]->x;
    coordinates->z = buriedSpheresEnv->buriedSpheresByCoordinates[idx]->z;

    return coordinates;
}

static void UndergroundSpheres_AddBuriedSphereToCoordinatesOrdering(BuriedSphere *sphere)
{
    Coordinates coordinates = {
        .x = sphere->x,
        .z = sphere->z
    };

    Underground_InitCoordinatesOrderingState(MAX_BURIED_SPHERES, UndergroundSpheres_GetCoordinatesOfBuriedSphereAtOrderedIndex);

    int index = Underground_CalculateCoordinatesIndexInsert(&coordinates);

    GF_ASSERT(index < MAX_BURIED_SPHERES);

    for (int i = MAX_BURIED_SPHERES - 1; i > index; i--) {
        buriedSpheresEnv->buriedSpheresByCoordinates[i] = buriedSpheresEnv->buriedSpheresByCoordinates[i - 1];
    }

    buriedSpheresEnv->buriedSpheresByCoordinates[index] = sphere;
}

static void UndergroundSpheres_RecalculateCoordinatesOrdering(BuriedSphere *unused)
{
    MI_CpuClear8(buriedSpheresEnv->buriedSpheresByCoordinates, sizeof(u32) * MAX_BURIED_SPHERES);

    for (int i = 0; i < MAX_BURIED_SPHERES; i++) {
        if (buriedSpheresEnv->buriedSpheres[i].type != SPHERE_NONE) {
            UndergroundSpheres_AddBuriedSphereToCoordinatesOrdering(&buriedSpheresEnv->buriedSpheres[i]);
        }
    }
}

static BuriedSphere *UndergroundSpheres_FindEmptyBuriedSphereSlot(BuriedSphere *param0)
{
    for (int i = 0; i < MAX_BURIED_SPHERES; i++) {
        if (param0->type == SPHERE_NONE) {
            return param0;
        }

        param0++;
    }

    return NULL;
}

static BuriedSphere *UndergroundSpheres_Dummy(BuriedSphere *sphere)
{
    return sphere;
}

static BuriedSphere *UndergroundSpheres_GetBuriedSphereAtCoordinates(int x, int z)
{
    Coordinates coordinates = {
        .x = x,
        .z = z
    };

    Underground_InitCoordinatesOrderingState(MAX_BURIED_SPHERES, UndergroundSpheres_GetCoordinatesOfBuriedSphereAtOrderedIndex);

    int index = Underground_CalculateCoordinatesIndexGet(&coordinates);

    if (index == -1) {
        return NULL;
    }

    return buriedSpheresEnv->buriedSpheresByCoordinates[index];
}

void UndergroundSpheres_RetrieveBuriedSphere(int unused, int unused2, void *src, void *unused3)
{
    u8 *buffer = src;
    int netID = CommSys_CurNetId();
    int numberToPrint;

    if (buffer[0] == netID) {
        int x = CommPlayer_GetXInFrontOfPlayerServer(netID);
        int z = CommPlayer_GetZInFrontOfPlayerServer(netID);
        BuriedSphere *sphere = UndergroundSpheres_GetBuriedSphereAtCoordinates(x, z);

        if (sphere) {
            CommPlayerMan_PauseFieldSystem();

            if (Underground_TryAddSphere2(sphere->type, sphere->initialSize + sphere->growth)) {
                buriedSpheresEnv->retrievedSpheres[netID] = sphere->type;
                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
                numberToPrint = MAX_SPHERE_SIZE;

                if (sphere->initialSize + sphere->growth < MAX_SPHERE_SIZE) {
                    numberToPrint = sphere->initialSize + sphere->growth;
                }

                UndergroundTextPrinter_SetTwoDigitNumberWithIndex(CommManUnderground_GetCommonTextPrinter(), 1, numberToPrint);
                UndergroundTextPrinter_SetUndergroundItemNameWithArticleWithIndex(CommManUnderground_GetCommonTextPrinter(), 2, sphere->type);

                numberToPrint = sphere->growth;

                if ((numberToPrint + sphere->initialSize) > MAX_SPHERE_SIZE) {
                    numberToPrint = MAX_SPHERE_SIZE - sphere->initialSize;
                }

                UndergroundTextPrinter_PrintTextWithCallbackParam(CommManUnderground_GetCommonTextPrinter(), 69, TRUE, UndergroundSpheres_PrintSphereGrowth, numberToPrint);
                UndergroundTextPrinter_SetDummyField(CommManUnderground_GetCommonTextPrinter());
                UndergroundSpheres_RemoveBuriedSphere(sphere);
                UndergroundSpheres_SaveBuriedSpheres();
            } else {
                UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 83, TRUE, UndergroundSpheres_ResumeFieldSystem);
            }
        }
    }
}

void ov23_02241A80(UnkStruct_ov23_02241A80 *param0, int param1)
{
    param0->unk_02 = param1;
    param0->unk_00 = 0;
}

BOOL ov23_02241A88(UnkStruct_ov23_02241A80 *param0, UnkStruct_ov23_02241A88 *param1)
{
    int v0, v1, v2, v3;

    v1 = param0->unk_00;

    for (v0 = 0; v0 <= param0->unk_02; v0++) {
        if ((v1 - (v0 * 4)) > 0) {
            v1 = v1 - (v0 * 4);
        } else {
            if (v1 != 0) {
                v1--;
            }

            if (v1 < (v0 * 2)) {
                v3 = v0 - v1;
            } else {
                v3 = v1 - v0 * 3;
            }

            if (v1 < (v0)) {
                v2 = v1;
            } else if (v1 < (v0 * 3)) {
                v2 = v0 * 3 - (v1 + v0);
            } else {
                v2 = -v0 + (v1 - v0 * 3);
            }

            param1->unk_00 = v2;
            param1->unk_02 = v3;
            param0->unk_00++;

            return 1;
        }
    }

    return 0;
}

void UndergroundSpheres_TryBurySphere(int sphereType, int sphereSize, int x, int z)
{
    BOOL success = FALSE;

    BuriedSphere sphere;
    sphere.x = x;
    sphere.z = z;
    sphere.initialSize = sphereSize;
    sphere.type = sphereType;
    sphere.growth = 0;

    if (Underground_AreCoordinatesInSecretBase(x, z)) {
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 84, FALSE, NULL);
        return;
    }

    if (CommPlayer_CheckNPCCollision(x, z)) {
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 55, FALSE, NULL);
        return;
    }

    if (TerrainCollisionManager_CheckCollision(buriedSpheresEnv->fieldSystem, x, z)) {
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 60, FALSE, NULL);
        return;
    }

    BuriedSphere *existingSphere = UndergroundSpheres_GetBuriedSphereAtCoordinates(x, z);

    if (existingSphere) {
        if (existingSphere->type == sphere.type) {
            if (existingSphere->initialSize > sphereSize) {
                existingSphere->initialSize = existingSphere->initialSize + (sphereSize / 5) + 1;
            } else {
                existingSphere->initialSize = sphereSize + (existingSphere->initialSize / 5) + 1;
            }

            if (existingSphere->initialSize > MAX_SPHERE_SIZE) {
                existingSphere->initialSize = MAX_SPHERE_SIZE;
            }

            success = TRUE;
        } else {
            UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 59, FALSE, NULL);
        }
    } else {
        UndergroundSpheres_AddBuriedSphere(&sphere);
        success = TRUE;
    }

    if (success) {
        UndergroundTextPrinter_SetUndergroundItemName(CommManUnderground_GetCommonTextPrinter(), 0, sphereType);
        UndergroundTextPrinter_SetTwoDigitNumberWithIndex(CommManUnderground_GetCommonTextPrinter(), 1, sphereSize);
        UndergroundTextPrinter_PrintText(CommManUnderground_GetCommonTextPrinter(), 58, FALSE, NULL);
        Underground_RemoveSelectedSphere(sphereType);

        Sound_PlayEffect(SEQ_SE_DP_SUTYA);
        SystemFlag_SetSphereAcquired(SaveData_GetVarsFlags(buriedSpheresEnv->fieldSystem->saveData));
        GameRecords_IncrementRecordValue(SaveData_GetGameRecords(buriedSpheresEnv->fieldSystem->saveData), RECORD_SPHERES_BURIED);

        ov5_DisplayBuriedSphereSparkle(buriedSpheresEnv->fieldSystem, x, z);
    }
}

static void UndergroundSpheres_RemoveBuriedSphere(BuriedSphere *sphere)
{
    int idx = -1, i;

    for (i = 0; i < MAX_BURIED_SPHERES; i++) {
        if (sphere == &buriedSpheresEnv->buriedSpheres[i]) {
            idx = i;
            break;
        }
    }

    GF_ASSERT(idx != -1);

    for (; i < MAX_BURIED_SPHERES - 1; i++) {
        MI_CpuCopy8(&buriedSpheresEnv->buriedSpheres[i + 1], &buriedSpheresEnv->buriedSpheres[i], sizeof(BuriedSphere));
    }

    buriedSpheresEnv->buriedSpheres[MAX_BURIED_SPHERES - 1].type = SPHERE_NONE;
    UndergroundSpheres_RecalculateCoordinatesOrdering(sphere);
}

static void UndergroundSpheres_AddBuriedSphere(BuriedSphere *sphere)
{
    BuriedSphere *emptySlot = UndergroundSpheres_FindEmptyBuriedSphereSlot(buriedSpheresEnv->buriedSpheres);

    if (emptySlot == NULL) {
        emptySlot = UndergroundSpheres_Dummy(buriedSpheresEnv->buriedSpheres);
        // bug: emptySlot will still be null and this function will fail a gf_assert
        UndergroundSpheres_RemoveBuriedSphere(emptySlot);

        emptySlot = UndergroundSpheres_FindEmptyBuriedSphereSlot(buriedSpheresEnv->buriedSpheres);
        GF_ASSERT(emptySlot);
    }

    MI_CpuCopy8(sphere, emptySlot, sizeof(BuriedSphere));

    UndergroundSpheres_AddBuriedSphereToCoordinatesOrdering(emptySlot);
    UndergroundSpheres_SaveBuriedSpheres();
}

BOOL UndergroundSpheres_IsMiningItemSphere(int miningItemID)
{
    if (miningItemID != 0 && miningItemID < MINING_SPHERES_MAX) {
        return TRUE;
    }

    return FALSE;
}

BOOL UndergroundSpheres_IsBuriedSphereAtCoordinates(int x, int z)
{
    if (UndergroundSpheres_GetBuriedSphereAtCoordinates(x, z)) {
        return TRUE;
    }

    return FALSE;
}

int UndergroundSpheres_GetBuriedSphereXCoordAtIndex(int idx)
{
    if (buriedSpheresEnv && (buriedSpheresEnv->buriedSpheres[idx].type != SPHERE_NONE)) {
        return buriedSpheresEnv->buriedSpheres[idx].x;
    }

    return 0;
}

int UndergroundSpheres_GetBuriedSphereZCoordAtIndex(int idx)
{
    if (buriedSpheresEnv && (buriedSpheresEnv->buriedSpheres[idx].type != SPHERE_NONE)) {
        return buriedSpheresEnv->buriedSpheres[idx].z;
    }

    return 0;
}

BOOL UndergroundSpheres_CheckForRetrievedSphereNotification(Strbuf *strbuf)
{
    int netID;
    StringTemplate *template = NULL;
    Strbuf *fmtString = NULL;
    BOOL isMessageToPrint = FALSE;

    if (!buriedSpheresEnv) {
        return FALSE;
    }

    for (netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (buriedSpheresEnv->retrievedSpheres[netID] != SPHERE_NONE) {
            template = StringTemplate_Default(HEAP_ID_FIELD);
            fmtString = Strbuf_Init(100, HEAP_ID_FIELD);

            StringTemplate_SetUndergroundItemNameWithArticle(template, 2, buriedSpheresEnv->retrievedSpheres[netID]);
            StringTemplate_CapitalizeArgAtIndex(template, 2);
            MessageLoader_GetStrbuf(UndergroundTextPrinter_GetMessageLoader(CommManUnderground_GetCommonTextPrinter()), 95, fmtString);
            StringTemplate_Format(template, strbuf, fmtString);

            buriedSpheresEnv->retrievedSpheres[netID] = SPHERE_NONE;
            isMessageToPrint = TRUE;
            break;
        }
    }

    if (fmtString) {
        Strbuf_Free(fmtString);
    }

    if (template) {
        StringTemplate_Free(template);
    }

    return isMessageToPrint;
}

int ov23_02241DF8(MATHRandContext16 *rand)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(buriedSpheresEnv->fieldSystem));
    int i;

    for (i = 0; i < MAX_BURIED_SPHERES; i++) {
        if (Underground_GetBuriedSphereTypeAtIndex(underground, i) != SPHERE_NONE) {
            int x = Underground_GetBuriedSphereXCoordAtIndex(underground, i);
            int z = Underground_GetBuriedSphereZCoordAtIndex(underground, i);
            ov23_0223E650(x, z, rand);
        }
    }

    return i;
}

static void SphereRadar_TimerSysTask(SysTask *sysTask, void *timer)
{
    SphereRadarTimer *radarTimer = timer;

    radarTimer->timer++;

    if (radarTimer->timer > 100) {
        Sound_PlayEffect(SEQ_SE_PL_UG_006);
        radarTimer->timer = 0;
    }
}

void SphereRadar_Start(void)
{
    GF_ASSERT(!buriedSpheresEnv->sphereRadarTimer);
    GF_ASSERT(!buriedSpheresEnv->sysTask);

    SphereRadarTimer *radarTimer = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(SphereRadarTimer));
    MI_CpuFill8(radarTimer, 0, sizeof(SphereRadarTimer));
    radarTimer->timer = 100;

    buriedSpheresEnv->sphereRadarTimer = radarTimer;
    buriedSpheresEnv->sysTask = SysTask_Start(SphereRadar_TimerSysTask, radarTimer, 100);
}

void SphereRadar_Exit(void)
{
    if (buriedSpheresEnv->sysTask) {
        SysTask_Done(buriedSpheresEnv->sysTask);
        Heap_Free(buriedSpheresEnv->sphereRadarTimer);

        buriedSpheresEnv->sysTask = NULL;
        buriedSpheresEnv->sphereRadarTimer = NULL;
    }
}

int SphereRadar_GetXCoordOfBuriedSphere(int param0)
{
    if (buriedSpheresEnv && buriedSpheresEnv->sphereRadarTimer) {
        // bug: only the first 66 buried spheres can show up on the radar
        int index = buriedSpheresEnv->sphereRadarTimer->timer / 2;
        index = (index + param0) % 100;

        return UndergroundSpheres_GetBuriedSphereXCoordAtIndex(index);
    }

    return 0;
}

int SphereRadar_GetZCoordOfBuriedSphere(int param0)
{
    if (buriedSpheresEnv && buriedSpheresEnv->sphereRadarTimer) {
        // bug: only the first 66 buried spheres can show up on the radar
        int index = buriedSpheresEnv->sphereRadarTimer->timer / 2;
        index = (index + param0) % 100;

        return UndergroundSpheres_GetBuriedSphereZCoordAtIndex(index);
    }

    return 0;
}
