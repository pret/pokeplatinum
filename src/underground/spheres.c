#include "underground/spheres.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"
#include "generated/sphere_types.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F575C.h"
#include "underground/manager.h"
#include "underground/menus.h"
#include "underground/mining.h"
#include "underground/text_printer.h"

#include "comm_player_manager.h"
#include "communication_system.h"
#include "field_system.h"
#include "game_records.h"
#include "heap.h"
#include "message.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_flags.h"
#include "terrain_collision_manager.h"
#include "underground.h"
#include "vars_flags.h"

#include "res/text/bank/underground_common.h"

typedef struct BuriedSphere {
    u16 x;
    u16 z;
    u8 initialSize;
    u8 growth;
    u8 type;
} BuriedSphere;

typedef struct SphereRadarContext {
    u8 unused;
    u16 timer;
} SphereRadarContext;

typedef struct SpheresEnv {
    BuriedSphere buriedSpheres[MAX_BURIED_SPHERES];
    BuriedSphere *buriedSpheresByCoordinates[MAX_BURIED_SPHERES];
    u8 padding[16];
    SysTask *sphereRadarTask;
    SphereRadarContext *sphereRadarContext;
    FieldSystem *fieldSystem;
    u8 retrievedSpheres[MAX_CONNECTED_PLAYERS];
    int sparkleTimer;
    u8 padding2[2];
    u8 disableBuriedSphereSparkles;
} SpheresEnv;

static void Spheres_RemoveBuriedSphere(BuriedSphere *sphere);
static void Spheres_AddBuriedSphere(BuriedSphere *sphere);
static void Spheres_AddBuriedSphereToCoordinatesOrdering(BuriedSphere *sphere);

static SpheresEnv *spheresEnv = NULL;

static void Spheres_ResumeFieldSystem(int unused)
{
    CommPlayerMan_ResumeFieldSystem();
}

static void Spheres_PrintSphereGrowth(int growth)
{
    if (growth > 0) {
        UndergroundTextPrinter_SetTwoDigitNumberWithIndex(UndergroundMan_GetCommonTextPrinter(), 0, growth);
        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_ItsSizeGrewBiggerBy, TRUE, Spheres_ResumeFieldSystem);
    } else {
        Spheres_ResumeFieldSystem(growth);
    }
}

void SpheresEnv_Init(void *dest, FieldSystem *fieldSystem)
{
    if (spheresEnv) {
        return;
    }

    spheresEnv = dest;
    MI_CpuFill8(spheresEnv, 0, sizeof(SpheresEnv));
    spheresEnv->fieldSystem = fieldSystem;

    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(fieldSystem));

    for (int i = 0; i < MAX_BURIED_SPHERES; i++) {
        spheresEnv->buriedSpheres[i].type = Underground_GetBuriedSphereTypeAtIndex(underground, i);
        spheresEnv->buriedSpheres[i].x = Underground_GetBuriedSphereXCoordAtIndex(underground, i);
        spheresEnv->buriedSpheres[i].z = Underground_GetBuriedSphereZCoordAtIndex(underground, i);
        spheresEnv->buriedSpheres[i].initialSize = Underground_GetBuriedSphereInitialSizeAtIndex(underground, i);
        spheresEnv->buriedSpheres[i].growth = Underground_GetBuriedSphereGrowthAtIndex(underground, i);

        if (spheresEnv->buriedSpheres[i].type != SPHERE_NONE) {
            Spheres_AddBuriedSphereToCoordinatesOrdering(&spheresEnv->buriedSpheres[i]);
        }
    }
}

static void Spheres_SaveBuriedSpheres(void)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(spheresEnv->fieldSystem));

    for (int i = 0; i < MAX_BURIED_SPHERES; i++) {
        Underground_SaveBuriedSphere(underground, spheresEnv->buriedSpheres[i].type, i, spheresEnv->buriedSpheres[i].x, spheresEnv->buriedSpheres[i].z, spheresEnv->buriedSpheres[i].initialSize, spheresEnv->buriedSpheres[i].growth);
    }
}

int SpheresEnv_Size(void)
{
    return sizeof(SpheresEnv);
}

void Spheres_DisableBuriedSphereSparkles(void)
{
    spheresEnv->disableBuriedSphereSparkles = TRUE;
}

void Spheres_EnableBuriedSphereSparkles(void)
{
    spheresEnv->disableBuriedSphereSparkles = FALSE;
}

void SpheresEnv_Free(void)
{
    if (spheresEnv) {
        Heap_Free(spheresEnv);
        spheresEnv = NULL;
    }
}

void Spheres_AdvanceBuriedSphereSparkleTimer(void)
{
    if (spheresEnv->disableBuriedSphereSparkles) {
        return;
    }

    spheresEnv->sparkleTimer++;

    if (spheresEnv->sparkleTimer >= MAX_BURIED_SPHERES * 20) {
        spheresEnv->sparkleTimer = 0;
    }

    if ((spheresEnv->sparkleTimer % 20) == 10) {
        int index = spheresEnv->sparkleTimer / 20;
        int x = Spheres_GetBuriedSphereXCoordAtIndex(index);
        int z = Spheres_GetBuriedSphereZCoordAtIndex(index);

        if (x != 0 && z != 0) {
            ov5_DisplayBuriedSphereSparkle(spheresEnv->fieldSystem, x, z);
        }
    }
}

static Coordinates *Spheres_GetCoordinatesOfBuriedSphereAtOrderedIndex(Coordinates *coordinates, int index)
{
    if (spheresEnv->buriedSpheresByCoordinates[index] == NULL) {
        return NULL;
    }

    coordinates->x = spheresEnv->buriedSpheresByCoordinates[index]->x;
    coordinates->z = spheresEnv->buriedSpheresByCoordinates[index]->z;

    return coordinates;
}

static void Spheres_AddBuriedSphereToCoordinatesOrdering(BuriedSphere *sphere)
{
    Coordinates coordinates = {
        .x = sphere->x,
        .z = sphere->z
    };

    UndergroundMan_InitCoordsOrderingState(MAX_BURIED_SPHERES, Spheres_GetCoordinatesOfBuriedSphereAtOrderedIndex);

    int index = UndergroundMan_CalcCoordsIndexInsert(&coordinates);

    GF_ASSERT(index < MAX_BURIED_SPHERES);

    for (int i = MAX_BURIED_SPHERES - 1; i > index; i--) {
        spheresEnv->buriedSpheresByCoordinates[i] = spheresEnv->buriedSpheresByCoordinates[i - 1];
    }

    spheresEnv->buriedSpheresByCoordinates[index] = sphere;
}

static void Spheres_RecalculateCoordinatesOrdering(BuriedSphere *unused)
{
    MI_CpuClear8(spheresEnv->buriedSpheresByCoordinates, sizeof(u32) * MAX_BURIED_SPHERES);

    for (int i = 0; i < MAX_BURIED_SPHERES; i++) {
        if (spheresEnv->buriedSpheres[i].type != SPHERE_NONE) {
            Spheres_AddBuriedSphereToCoordinatesOrdering(&spheresEnv->buriedSpheres[i]);
        }
    }
}

static BuriedSphere *Spheres_FindEmptyBuriedSphereSlot(BuriedSphere *spherePtr)
{
    for (int i = 0; i < MAX_BURIED_SPHERES; i++) {
        if (spherePtr->type == SPHERE_NONE) {
            return spherePtr;
        }

        spherePtr++;
    }

    return NULL;
}

static BuriedSphere *Spheres_Dummy(BuriedSphere *sphere)
{
    return sphere;
}

static BuriedSphere *Spheres_GetBuriedSphereAtCoordinates(int x, int z)
{
    Coordinates coordinates = {
        .x = x,
        .z = z
    };

    UndergroundMan_InitCoordsOrderingState(MAX_BURIED_SPHERES, Spheres_GetCoordinatesOfBuriedSphereAtOrderedIndex);

    int index = UndergroundMan_CalcCoordsIndexGet(&coordinates);

    if (index == -1) {
        return NULL;
    }

    return spheresEnv->buriedSpheresByCoordinates[index];
}

void Spheres_ProcessRetrieveBuriedSphereRequest(int unused, int unused2, void *data, void *unused3)
{
    u8 *netID = data;
    int curNetID = CommSys_CurNetId();
    int numberToPrint;

    if (*netID == curNetID) {
        int x = CommPlayer_GetXInFrontOfPlayer(curNetID);
        int z = CommPlayer_GetZInFrontOfPlayer(curNetID);
        BuriedSphere *sphere = Spheres_GetBuriedSphereAtCoordinates(x, z);

        if (sphere) {
            CommPlayerMan_PauseFieldSystem();

            if (UndergroundInventory_TryAddSphere(sphere->type, sphere->initialSize + sphere->growth)) {
                spheresEnv->retrievedSpheres[curNetID] = sphere->type;
                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
                numberToPrint = MAX_SPHERE_SIZE;

                if (sphere->initialSize + sphere->growth < MAX_SPHERE_SIZE) {
                    numberToPrint = sphere->initialSize + sphere->growth;
                }

                UndergroundTextPrinter_SetTwoDigitNumberWithIndex(UndergroundMan_GetCommonTextPrinter(), 1, numberToPrint);
                UndergroundTextPrinter_SetUndergroundItemNameWithArticleWithIndex(UndergroundMan_GetCommonTextPrinter(), 2, sphere->type);

                numberToPrint = sphere->growth;

                if ((numberToPrint + sphere->initialSize) > MAX_SPHERE_SIZE) {
                    numberToPrint = MAX_SPHERE_SIZE - sphere->initialSize;
                }

                UndergroundTextPrinter_PrintTextWithCallbackParam(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_YouObtainedSphere, TRUE, Spheres_PrintSphereGrowth, numberToPrint);
                UndergroundTextPrinter_SetDummyField(UndergroundMan_GetCommonTextPrinter());
                Spheres_RemoveBuriedSphere(sphere);
                Spheres_SaveBuriedSpheres();
            } else {
                UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_NoRoomForSphere, TRUE, Spheres_ResumeFieldSystem);
            }
        }
    }
}

void TouchRadarSearch_Init(TouchRadarSearchContext *ctx, int radius)
{
    ctx->radius = radius;
    ctx->iterator = 0;
}

BOOL TouchRadarSearch_GetNextCoords(TouchRadarSearchContext *ctx, TouchRadarCoordinates *out)
{
    int i;
    int iterator = ctx->iterator;
    int x, z;

    for (i = 0; i <= ctx->radius; i++) {
        if (iterator - i * 4 > 0) {
            iterator -= i * 4;
        } else {
            if (iterator != 0) {
                iterator--;
            }

            if (iterator < i * 2) {
                z = i - iterator;
            } else {
                z = iterator - i * 3;
            }

            if (iterator < i) {
                x = iterator;
            } else if (iterator < i * 3) {
                x = i * 3 - (iterator + i);
            } else {
                x = -i + (iterator - i * 3);
            }

            out->x = x;
            out->z = z;
            ctx->iterator++;

            return TRUE;
        }
    }

    return FALSE;
}

void Spheres_TryBurySphere(enum SphereType sphereType, int sphereSize, int x, int z)
{
    BOOL success = FALSE;

    BuriedSphere sphere;
    sphere.x = x;
    sphere.z = z;
    sphere.initialSize = sphereSize;
    sphere.type = sphereType;
    sphere.growth = 0;

    if (UndergroundMan_AreCoordinatesInSecretBase(x, z)) {
        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_CantBuryInSecretBase, FALSE, NULL);
        return;
    }

    if (CommPlayer_CheckNPCCollision(x, z)) {
        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_CantBePlacedThere, FALSE, NULL);
        return;
    }

    if (TerrainCollisionManager_CheckCollision(spheresEnv->fieldSystem, x, z)) {
        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_CantBuryInWall, FALSE, NULL);
        return;
    }

    BuriedSphere *existingSphere = Spheres_GetBuriedSphereAtCoordinates(x, z);

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
            UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_SomethingAlreadyBuried, FALSE, NULL);
        }
    } else {
        Spheres_AddBuriedSphere(&sphere);
        success = TRUE;
    }

    if (success) {
        UndergroundTextPrinter_SetUndergroundItemName(UndergroundMan_GetCommonTextPrinter(), 0, sphereType);
        UndergroundTextPrinter_SetTwoDigitNumberWithIndex(UndergroundMan_GetCommonTextPrinter(), 1, sphereSize);
        UndergroundTextPrinter_PrintText(UndergroundMan_GetCommonTextPrinter(), UndergroundCommon_Text_SphereWasBuried, FALSE, NULL);
        UndergroundMenu_RemoveSelectedSphere(sphereType);

        Sound_PlayEffect(SEQ_SE_DP_SUTYA);
        SystemFlag_SetSphereAcquired(SaveData_GetVarsFlags(spheresEnv->fieldSystem->saveData));
        GameRecords_IncrementRecordValue(SaveData_GetGameRecords(spheresEnv->fieldSystem->saveData), RECORD_SPHERES_BURIED);

        ov5_DisplayBuriedSphereSparkle(spheresEnv->fieldSystem, x, z);
    }
}

static void Spheres_RemoveBuriedSphere(BuriedSphere *sphere)
{
    int index = -1, i;

    for (i = 0; i < MAX_BURIED_SPHERES; i++) {
        if (sphere == &spheresEnv->buriedSpheres[i]) {
            index = i;
            break;
        }
    }

    GF_ASSERT(index != -1);

    for (; i < MAX_BURIED_SPHERES - 1; i++) {
        MI_CpuCopy8(&spheresEnv->buriedSpheres[i + 1], &spheresEnv->buriedSpheres[i], sizeof(BuriedSphere));
    }

    spheresEnv->buriedSpheres[MAX_BURIED_SPHERES - 1].type = SPHERE_NONE;
    Spheres_RecalculateCoordinatesOrdering(sphere);
}

static void Spheres_AddBuriedSphere(BuriedSphere *sphere)
{
    BuriedSphere *emptySlot = Spheres_FindEmptyBuriedSphereSlot(spheresEnv->buriedSpheres);

    if (emptySlot == NULL) {
        emptySlot = Spheres_Dummy(spheresEnv->buriedSpheres);
        // bug: emptySlot will still be null and this function will fail a gf_assert
        Spheres_RemoveBuriedSphere(emptySlot);

        emptySlot = Spheres_FindEmptyBuriedSphereSlot(spheresEnv->buriedSpheres);
        GF_ASSERT(emptySlot);
    }

    MI_CpuCopy8(sphere, emptySlot, sizeof(BuriedSphere));

    Spheres_AddBuriedSphereToCoordinatesOrdering(emptySlot);
    Spheres_SaveBuriedSpheres();
}

BOOL Spheres_IsMiningItemSphere(int miningItemID)
{
    if (miningItemID != 0 && miningItemID < MINING_SPHERES_MAX) {
        return TRUE;
    }

    return FALSE;
}

BOOL Spheres_IsBuriedSphereAtCoordinates(int x, int z)
{
    if (Spheres_GetBuriedSphereAtCoordinates(x, z)) {
        return TRUE;
    }

    return FALSE;
}

int Spheres_GetBuriedSphereXCoordAtIndex(int index)
{
    if (spheresEnv && (spheresEnv->buriedSpheres[index].type != SPHERE_NONE)) {
        return spheresEnv->buriedSpheres[index].x;
    }

    return 0;
}

int Spheres_GetBuriedSphereZCoordAtIndex(int index)
{
    if (spheresEnv && (spheresEnv->buriedSpheres[index].type != SPHERE_NONE)) {
        return spheresEnv->buriedSpheres[index].z;
    }

    return 0;
}

BOOL Spheres_GetQueuedMessage(String *dest)
{
    int netID;
    StringTemplate *template = NULL;
    String *fmtString = NULL;
    BOOL isMessageQueued = FALSE;

    if (!spheresEnv) {
        return FALSE;
    }

    for (netID = 0; netID < MAX_CONNECTED_PLAYERS; netID++) {
        if (spheresEnv->retrievedSpheres[netID] != SPHERE_NONE) {
            template = StringTemplate_Default(HEAP_ID_FIELD1);
            fmtString = String_Init(100, HEAP_ID_FIELD1);

            StringTemplate_SetUndergroundItemNameWithArticle(template, 2, spheresEnv->retrievedSpheres[netID]);
            StringTemplate_CapitalizeArgAtIndex(template, 2);
            MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetCommonTextPrinter()), UndergroundCommon_Text_ItemWasObtainedExclamationPoint, fmtString);
            StringTemplate_Format(template, dest, fmtString);

            spheresEnv->retrievedSpheres[netID] = SPHERE_NONE;
            isMessageQueued = TRUE;
            break;
        }
    }

    if (fmtString) {
        String_Free(fmtString);
    }

    if (template) {
        StringTemplate_Free(template);
    }

    return isMessageQueued;
}

int Spheres_SpawnMiningSpotsNearBuriedSpheres(MATHRandContext16 *rand)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(spheresEnv->fieldSystem));
    int i;

    for (i = 0; i < MAX_BURIED_SPHERES; i++) {
        if (Underground_GetBuriedSphereTypeAtIndex(underground, i) != SPHERE_NONE) {
            int x = Underground_GetBuriedSphereXCoordAtIndex(underground, i);
            int z = Underground_GetBuriedSphereZCoordAtIndex(underground, i);
            Mining_SpawnMiningSpotNearBuriedSphere(x, z, rand);
        }
    }

    return i;
}

static void SphereRadar_TimerTask(SysTask *sysTask, void *data)
{
    SphereRadarContext *ctx = data;

    ctx->timer++;

    if (ctx->timer > MAX_BURIED_SPHERES) {
        Sound_PlayEffect(SEQ_SE_PL_UG_006);
        ctx->timer = 0;
    }
}

void SphereRadar_Start(void)
{
    GF_ASSERT(!spheresEnv->sphereRadarContext);
    GF_ASSERT(!spheresEnv->sphereRadarTask);

    SphereRadarContext *ctx = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(SphereRadarContext));
    MI_CpuFill8(ctx, 0, sizeof(SphereRadarContext));
    ctx->timer = MAX_BURIED_SPHERES;

    spheresEnv->sphereRadarContext = ctx;
    spheresEnv->sphereRadarTask = SysTask_Start(SphereRadar_TimerTask, ctx, 100);
}

void SphereRadar_Exit(void)
{
    if (spheresEnv->sphereRadarTask) {
        SysTask_Done(spheresEnv->sphereRadarTask);
        Heap_Free(spheresEnv->sphereRadarContext);

        spheresEnv->sphereRadarTask = NULL;
        spheresEnv->sphereRadarContext = NULL;
    }
}

int SphereRadar_GetXCoordOfBuriedSphere(int radarIndex)
{
    if (spheresEnv && spheresEnv->sphereRadarContext) {
        // bug: only the first 66 buried spheres can show up on the radar
        int index = spheresEnv->sphereRadarContext->timer / 2;
        index = (index + radarIndex) % MAX_BURIED_SPHERES;

        return Spheres_GetBuriedSphereXCoordAtIndex(index);
    }

    return 0;
}

int SphereRadar_GetZCoordOfBuriedSphere(int radarIndex)
{
    if (spheresEnv && spheresEnv->sphereRadarContext) {
        // bug: only the first 66 buried spheres can show up on the radar
        int index = spheresEnv->sphereRadarContext->timer / 2;
        index = (index + radarIndex) % MAX_BURIED_SPHERES;

        return Spheres_GetBuriedSphereZCoordAtIndex(index);
    }

    return 0;
}
