#include <nitro.h>
#include <string.h>

#include "sys_task_manager.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/map_object_anim_cmd.h"

#include "consts/sdat.h"

#include "unk_02005474.h"
#include "string_template.h"
#include "sys_task.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "script_manager.h"
#include "vars_flags.h"
#include "unk_020508D4.h"
#include "player_avatar.h"
#include "map_header_data.h"
#include "map_object.h"
#include "unk_020655F4.h"
#include "unk_0206A8DC.h"
#include "unk_0206AFE0.h"
#include "bag.h"
#include "overlay005/vs_seeker.h"
#include "overlay005/ov5_021DFB54.h"

#define VS_SEEKER_SEARCH_RADIUS_LEFT 7
#define VS_SEEKER_SEARCH_RADIUS_RIGHT 7
#define VS_SEEKER_SEARCH_RADIUS_UP 7
#define VS_SEEKER_SEARCH_RADIUS_DOWN 6

#define VS_SEEKER_MAX_BATTERY 100
#define VS_SEEKER_REMATCH_CHANCE 50

#define VS_SEEKER_MAX_REMATCHES 6
#define VS_SEEKER_REMATCH_DATA_DUMMY 0xFFFF
#define VS_SEEKER_REMATCH_DATA_END 0x0

// Number of steps for which the rematches are available 
// until the Vs. Seeker has to be used again
#define VS_SEEKER_MAX_NUM_ACTIVE_STEPS 100

#define VS_SEEKER_USE_RESULT_OK 0
#define VS_SEEKER_USE_RESULT_NO_BATTERY 1
#define VS_SEEKER_USE_RESULT_NO_TRAINERS 2
#define VS_SEEKER_USE_RESULT_NO_TRAINERS_PICKED 3 // No trainers were picked for a rematch (e.g. all the random chances failed)

#define VS_SEEKER_REMATCH_DATA_INDEX_NONE 0xFF

enum VsSeekerUsability {
    VS_SEEKER_USABILITY_NO_BATTERY = 0,
    VS_SEEKER_USABILITY_NO_TRAINERS,
    VS_SEEKER_USABILITY_OK,
};

enum VsSeekerState {
    VS_SEEKER_STATE_WAIT_FOR_NPCS = 0,
    VS_SEEKER_STATE_CHECK_USABILITY,
    VS_SEEKER_STATE_START,
    VS_SEEKER_STATE_WAIT_FOR_PLAYER_ANIM,
    VS_SEEKER_STATE_PICK_REMATCH_TRAINERS,
    VS_SEEKER_STATE_WAIT_FOR_REMATCH_ANIMS,
    VS_SEEKER_STATE_WAIT_FOR_VS_SEEKER_SFX,
    VS_SEEKER_STATE_NO_BATTERY,
    VS_SEEKER_STATE_NO_TRAINERS,
    VS_SEEKER_STATE_DONE,
};

enum VsSeeker2v2TrainerSearchMode {
    VS_SEEKER_2V2_TRAINER_SEARCH_MODE_REMATCH_ANIM_CHECK = 0,
    VS_SEEKER_2V2_TRAINER_SEARCH_MODE_REMATCH_ANIM_SET,
};

typedef struct VsSeekerRematchData {
    u16 trainerIDs[VS_SEEKER_MAX_REMATCHES];
} VsSeekerRematchData;

typedef struct VsSeekerSystem {
    enum VsSeekerState state;
    FieldSystem *fieldSystem;
    VarsFlags *varsFlags;
    const VsSeekerRematchData *rematchData;
    MapObject *trainers[64];
    u16 numVisibleTrainers;
    u16 numActiveAnimations;
    u16 *result;
    StringTemplate *template;
    SysTask *playerStateTask;
} VsSeekerSystem;

typedef struct VsSeekerAnimationTask {
    SysTask *trackingTask;
    SysTask *animationTask;
    VsSeekerSystem *vsSeeker;
} VsSeekerAnimationTask;

static BOOL VsSeeker_IsMoveCodeHidden(u32 moveCode);
static BOOL VsSeeker_ExecuteTask(TaskManager *taskMan);
static enum VsSeekerUsability VsSeekerSystem_CheckUsability(VsSeekerSystem *vsSeeker);
static void VsSeekerSystem_SetState(VsSeekerSystem *vsSeeker, enum VsSeekerState state);
static void VsSeekerSystem_CollectViableNpcs(VsSeekerSystem *vsSeeker);
static void VsSeekerSystem_StartAnimation(VsSeekerSystem *vsSeeker, MapObject *mapObj, const MapObjectAnimCmd *animCmdList);
static void VsSeekerSystem_StartAnimationTask(VsSeekerSystem *vsSeeker, SysTask *animTask);
static void VsSeeker_TrackAnimation(SysTask *task, void *param);
static s32 VsSeekerSystem_GetNumActiveAnimations(VsSeekerSystem *vsSeeker);
static BOOL VsSeekerSystem_PickRematchTrainers(VsSeekerSystem *vsSeeker);
static u16 VsSeeker_GetTrainerIDFromMapObject(MapObject *trainerObj);
static void VsSeeker_ClearRematchMoveCode(FieldSystem *fieldSystem);
static u16 VsSeeker_GetRematchDataIndexForTrainer(FieldSystem *fieldSystem, u16 trainerID);
static u16 VsSeeker_GetCurrentLevelForRematchData(FieldSystem *fieldSystem, u16 rematchDataIndex);
static u16 VsSeeker_AdjustRematchLevel(FieldSystem *fieldSystem, u16 rematchDataIndex, u16 index);
static u16 VsSeeker_GetNextLowerRematchLevel(u16 rematchDataIndex, u16 level);
static u16 VsSeeker_GetTrainerIDForRematchLevel(u16 rematchDataIndex, u16 level);
static BOOL VsSeeker_IsTrainerDoingRematchAnimation(MapObject *trainerObj);
static void VsSeeker_SetTrainerMoveCode(MapObject *trainerObj, u16 moveCode);
static BOOL VsSeeker_WaitForNpcsToPause(FieldSystem *fieldSystem);
static MapObject *VsSeeker_GetSecondDoubleBattleTrainer(FieldSystem *fieldSystem, MapObject *trainerObj, enum VsSeeker2v2TrainerSearchMode mode);

const VsSeekerRematchData gVsSeekerRematchData[] = {
	{ 0xE, 0xE, 0x0, 0x0, 0x0, 0x0 },
	{ 0x15, 0x273, 0x274, 0xffff, 0x275, 0x0 },
	{ 0x2C, 0x2C, 0x0, 0x0, 0x0, 0x0 },
	{ 0x2D, 0xffff, 0x276, 0x277, 0xffff, 0x278 },
	{ 0x14, 0x14, 0x0, 0x0, 0x0, 0x0 },
	{ 0x26, 0xffff, 0x279, 0x27A, 0xffff, 0x27B },
	{ 0x4A, 0xffff, 0xffff, 0x27C, 0xffff, 0x27D },
	{ 0x4C, 0x4C, 0x0, 0x0, 0x0, 0x0 },
	{ 0x51, 0x51, 0x0, 0x0, 0x0, 0x0 },
	{ 0x22A, 0xffff, 0xffff, 0xffff, 0xffff, 0x27E },
	{ 0x22B, 0x22B, 0x0, 0x0, 0x0, 0x0 },
	{ 0x2E, 0xffff, 0x27F, 0x280, 0x281, 0x0 },
	{ 0x38, 0x38, 0x0, 0x0, 0x0, 0x0 },
	{ 0x2F, 0xffff, 0x282, 0x283, 0x284, 0x0 },
	{ 0x39, 0x39, 0x0, 0x0, 0x0, 0x0 },
	{ 0x10, 0x10, 0x0, 0x0, 0x0, 0x0 },
	{ 0x22, 0x22, 0x0, 0x0, 0x0, 0x0 },
	{ 0x179, 0x285, 0x286, 0xffff, 0x287, 0x0 },
	{ 0x84, 0x84, 0x0, 0x0, 0x0, 0x0 },
	{ 0x85, 0x85, 0x0, 0x0, 0x0, 0x0 },
	{ 0x8C, 0xffff, 0xffff, 0xffff, 0x288, 0x0 },
	{ 0x86, 0x86, 0x0, 0x0, 0x0, 0x0 },
	{ 0x87, 0x87, 0x0, 0x0, 0x0, 0x0 },
	{ 0x8D, 0xffff, 0xffff, 0xffff, 0x289, 0x0 },
	{ 0x57, 0x57, 0x0, 0x0, 0x0, 0x0 },
	{ 0x110, 0x110, 0x0, 0x0, 0x0, 0x0 },
	{ 0x111, 0x111, 0x0, 0x0, 0x0, 0x0 },
	{ 0x112, 0xffff, 0xffff, 0xffff, 0x28A, 0x0 },
	{ 0x17D, 0x17D, 0x0, 0x0, 0x0, 0x0 },
	{ 0x17E, 0x17E, 0x0, 0x0, 0x0, 0x0 },
	{ 0x30, 0x30, 0x0, 0x0, 0x0, 0x0 },
	{ 0x3A, 0xffff, 0xffff, 0x28B, 0xffff, 0x28C },
	{ 0x19, 0x19, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1A, 0x1A, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1B, 0xffff, 0x28D, 0x28E, 0xffff, 0x28F },
	{ 0x1C, 0x1C, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1D, 0x1D, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1E, 0x1E, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1F, 0xffff, 0x290, 0x291, 0xffff, 0x292 },
	{ 0x20, 0x20, 0x0, 0x0, 0x0, 0x0 },
	{ 0x4B, 0x4B, 0x0, 0x0, 0x0, 0x0 },
	{ 0x49, 0xffff, 0xffff, 0x293, 0xffff, 0x294 },
	{ 0x115, 0xffff, 0xffff, 0xffff, 0xffff, 0x295 },
	{ 0x22D, 0xffff, 0xffff, 0xffff, 0xffff, 0x296 },
	{ 0x22E, 0x22E, 0x0, 0x0, 0x0, 0x0 },
	{ 0x22F, 0x22F, 0x0, 0x0, 0x0, 0x0 },
	{ 0x230, 0x230, 0x0, 0x0, 0x0, 0x0 },
	{ 0x42, 0x42, 0x0, 0x0, 0x0, 0x0 },
	{ 0xAA, 0xffff, 0xffff, 0xffff, 0x297, 0x0 },
	{ 0x116, 0xffff, 0xffff, 0x298, 0xffff, 0x299 },
	{ 0x11A, 0x11A, 0x0, 0x0, 0x0, 0x0 },
	{ 0x233, 0xffff, 0xffff, 0xffff, 0xffff, 0x29A },
	{ 0x234, 0xffff, 0xffff, 0xffff, 0xffff, 0x29B },
	{ 0x235, 0x235, 0x0, 0x0, 0x0, 0x0 },
	{ 0x236, 0x236, 0x0, 0x0, 0x0, 0x0 },
	{ 0x237, 0x237, 0x0, 0x0, 0x0, 0x0 },
	{ 0x238, 0x238, 0x0, 0x0, 0x0, 0x0 },
	{ 0x43, 0x43, 0x0, 0x0, 0x0, 0x0 },
	{ 0xAB, 0xffff, 0xffff, 0xffff, 0x29C, 0x0 },
	{ 0x11E, 0x11E, 0x0, 0x0, 0x0, 0x0 },
	{ 0x11F, 0xffff, 0xffff, 0x29D, 0xffff, 0x29E },
	{ 0x23D, 0xffff, 0xffff, 0xffff, 0xffff, 0x29F },
	{ 0x23E, 0xffff, 0xffff, 0xffff, 0xffff, 0x2A0 },
	{ 0x23F, 0x23F, 0x0, 0x0, 0x0, 0x0 },
	{ 0x240, 0x240, 0x0, 0x0, 0x0, 0x0 },
	{ 0x241, 0x241, 0x0, 0x0, 0x0, 0x0 },
	{ 0x242, 0x242, 0x0, 0x0, 0x0, 0x0 },
	{ 0x77, 0xffff, 0xffff, 0x2A1, 0xffff, 0x2A2 },
	{ 0x120, 0xffff, 0xffff, 0xffff, 0xffff, 0x2A3 },
	{ 0x247, 0xffff, 0xffff, 0xffff, 0xffff, 0x2A4 },
	{ 0x78, 0xffff, 0xffff, 0x2A5, 0xffff, 0x2A6 },
	{ 0x121, 0xffff, 0xffff, 0xffff, 0xffff, 0x2A7 },
	{ 0x249, 0xffff, 0xffff, 0xffff, 0xffff, 0x2A8 },
	{ 0x122, 0x122, 0x0, 0x0, 0x0, 0x0 },
	{ 0x123, 0x123, 0x0, 0x0, 0x0, 0x0 },
	{ 0x124, 0xffff, 0xffff, 0x2A9, 0xffff, 0x2AA },
	{ 0x16, 0x16, 0x0, 0x0, 0x0, 0x0 },
	{ 0x17, 0xffff, 0x2AB, 0xffff, 0x2AC, 0x0 },
	{ 0x18, 0x18, 0x0, 0x0, 0x0, 0x0 },
	{ 0x2B, 0x2B, 0x0, 0x0, 0x0, 0x0 },
	{ 0x5B, 0x5B, 0x0, 0x0, 0x0, 0x0 },
	{ 0x5C, 0x5C, 0x0, 0x0, 0x0, 0x0 },
	{ 0x5D, 0x5D, 0x0, 0x0, 0x0, 0x0 },
	{ 0x6F, 0x6F, 0x0, 0x0, 0x0, 0x0 },
	{ 0x99, 0xffff, 0xffff, 0xffff, 0x2AD, 0x0 },
	{ 0x9A, 0x9A, 0x0, 0x0, 0x0, 0x0 },
	{ 0xA8, 0xA8, 0x0, 0x0, 0x0, 0x0 },
	{ 0xAC, 0xAC, 0x0, 0x0, 0x0, 0x0 },
	{ 0xAD, 0xffff, 0xffff, 0xffff, 0x2AE, 0x0 },
	{ 0xAE, 0xAE, 0x0, 0x0, 0x0, 0x0 },
	{ 0xAF, 0xAF, 0x0, 0x0, 0x0, 0x0 },
	{ 0xF, 0xF, 0x0, 0x0, 0x0, 0x0 },
	{ 0x41, 0xffff, 0xffff, 0x2AF, 0xffff, 0x2B0 },
	{ 0x126, 0x126, 0x0, 0x0, 0x0, 0x0 },
	{ 0x79, 0xffff, 0xffff, 0x2B1, 0xffff, 0x2B2 },
	{ 0x54, 0xffff, 0x2B3, 0x2B4, 0xffff, 0x2B5 },
	{ 0x12C, 0xffff, 0xffff, 0xffff, 0x2B6, 0x0 },
	{ 0x71, 0x71, 0x0, 0x0, 0x0, 0x0 },
	{ 0x72, 0x72, 0x0, 0x0, 0x0, 0x0 },
	{ 0x130, 0x130, 0x0, 0x0, 0x0, 0x0 },
	{ 0x131, 0x131, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1B9, 0x1B9, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1BA, 0xffff, 0xffff, 0x2B7, 0x2B8, 0x0 },
	{ 0x31, 0x31, 0x0, 0x0, 0x0, 0x0 },
	{ 0x82, 0x82, 0x0, 0x0, 0x0, 0x0 },
	{ 0x132, 0x132, 0x0, 0x0, 0x0, 0x0 },
	{ 0x133, 0xffff, 0xffff, 0x2B9, 0xffff, 0x2BA },
	{ 0x134, 0x134, 0x0, 0x0, 0x0, 0x0 },
	{ 0x2A, 0x2A, 0x0, 0x0, 0x0, 0x0 },
	{ 0x45, 0x45, 0x0, 0x0, 0x0, 0x0 },
	{ 0x4F, 0x4F, 0x0, 0x0, 0x0, 0x0 },
	{ 0x7E, 0x7E, 0x0, 0x0, 0x0, 0x0 },
	{ 0x7F, 0x7F, 0x0, 0x0, 0x0, 0x0 },
	{ 0x80, 0x80, 0x0, 0x0, 0x0, 0x0 },
	{ 0x81, 0x81, 0x0, 0x0, 0x0, 0x0 },
	{ 0x94, 0x94, 0x0, 0x0, 0x0, 0x0 },
	{ 0x102, 0xffff, 0xffff, 0xffff, 0x2BB, 0x0 },
	{ 0x139, 0x139, 0x0, 0x0, 0x0, 0x0 },
	{ 0x24B, 0xffff, 0xffff, 0xffff, 0xffff, 0x2BC },
	{ 0x24C, 0x24C, 0x0, 0x0, 0x0, 0x0 },
	{ 0x37, 0x37, 0x0, 0x0, 0x0, 0x0 },
	{ 0x55, 0xffff, 0xffff, 0x2BD, 0xffff, 0x2BE },
	{ 0x3, 0x3, 0x0, 0x0, 0x0, 0x0 },
	{ 0xB, 0x2BF, 0x2C0, 0xffff, 0x2C1, 0x0 },
	{ 0xC, 0xC, 0x0, 0x0, 0x0, 0x0 },
	{ 0x142, 0x2C2, 0x2C3, 0x2C4, 0x0, 0x0 },
	{ 0x143, 0x143, 0x0, 0x0, 0x0, 0x0 },
	{ 0x12, 0x12, 0x0, 0x0, 0x0, 0x0 },
	{ 0x13, 0x13, 0x0, 0x0, 0x0, 0x0 },
	{ 0x24, 0x24, 0x0, 0x0, 0x0, 0x0 },
	{ 0x25, 0x25, 0x0, 0x0, 0x0, 0x0 },
	{ 0x27, 0x27, 0x0, 0x0, 0x0, 0x0 },
	{ 0x28, 0x28, 0x0, 0x0, 0x0, 0x0 },
	{ 0x29, 0x29, 0x0, 0x0, 0x0, 0x0 },
	{ 0x146, 0x146, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1C3, 0xffff, 0x2C5, 0x2C6, 0xffff, 0x2C7 },
	{ 0xD, 0x2C8, 0x2C9, 0xffff, 0x2CA, 0x0 },
	{ 0x147, 0xffff, 0x2CB, 0x2CC, 0x2CD, 0x0 },
	{ 0x148, 0x148, 0x0, 0x0, 0x0, 0x0 },
	{ 0x11, 0x11, 0x0, 0x0, 0x0, 0x0 },
	{ 0x23, 0x23, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1C8, 0x2CE, 0x2CF, 0xffff, 0x2D0, 0x0 },
	{ 0x35, 0xffff, 0x2D1, 0x2D2, 0x2D3, 0x0 },
	{ 0x58, 0x58, 0x0, 0x0, 0x0, 0x0 },
	{ 0x59, 0x59, 0x0, 0x0, 0x0, 0x0 },
	{ 0x5A, 0x5A, 0x0, 0x0, 0x0, 0x0 },
	{ 0x66, 0x66, 0x0, 0x0, 0x0, 0x0 },
	{ 0x14C, 0xffff, 0x2D4, 0x2D5, 0x2D6, 0x0 },
	{ 0x14D, 0x14D, 0x0, 0x0, 0x0, 0x0 },
	{ 0x52, 0x52, 0x0, 0x0, 0x0, 0x0 },
	{ 0x14F, 0xffff, 0xffff, 0xffff, 0x2D7, 0x2D8 },
	{ 0x53, 0xffff, 0x2D9, 0x2DA, 0xffff, 0x2DB },
	{ 0x5E, 0xffff, 0x2DC, 0x2DD, 0xffff, 0x2DE },
	{ 0x5F, 0x5F, 0x0, 0x0, 0x0, 0x0 },
	{ 0x24F, 0xffff, 0xffff, 0xffff, 0xffff, 0x2DF },
	{ 0x250, 0x250, 0x0, 0x0, 0x0, 0x0 },
	{ 0x251, 0x251, 0x0, 0x0, 0x0, 0x0 },
	{ 0x60, 0xffff, 0x2E0, 0x2E1, 0xffff, 0x2E2 },
	{ 0x61, 0x61, 0x0, 0x0, 0x0, 0x0 },
	{ 0x252, 0xffff, 0xffff, 0xffff, 0xffff, 0x2E3 },
	{ 0x253, 0x253, 0x0, 0x0, 0x0, 0x0 },
	{ 0x254, 0x254, 0x0, 0x0, 0x0, 0x0 },
	{ 0x6E, 0x6E, 0x0, 0x0, 0x0, 0x0 },
	{ 0xB4, 0xB4, 0x0, 0x0, 0x0, 0x0 },
	{ 0x151, 0xffff, 0xffff, 0xffff, 0x2E4, 0x2E5 },
	{ 0x152, 0x152, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1E2, 0xffff, 0xffff, 0xffff, 0xffff, 0x2E6 },
	{ 0x62, 0x62, 0x0, 0x0, 0x0, 0x0 },
	{ 0x63, 0x63, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1E6, 0xffff, 0x2E7, 0x2E8, 0x2E9, 0x0 },
	{ 0x46, 0x46, 0x0, 0x0, 0x0, 0x0 },
	{ 0x47, 0x47, 0x0, 0x0, 0x0, 0x0 },
	{ 0x48, 0x48, 0x0, 0x0, 0x0, 0x0 },
	{ 0x4E, 0xffff, 0x2EA, 0x2EB, 0x2EC, 0x0 },
	{ 0x50, 0x50, 0x0, 0x0, 0x0, 0x0 },
	{ 0x92, 0x92, 0x0, 0x0, 0x0, 0x0 },
	{ 0x93, 0x93, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1E8, 0x1E8, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1E9, 0x1E9, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1EA, 0x1EA, 0x0, 0x0, 0x0, 0x0 },
	{ 0x15A, 0xffff, 0xffff, 0x2ED, 0xffff, 0x2EE },
	{ 0x1EB, 0x1EB, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1EC, 0x1EC, 0x0, 0x0, 0x0, 0x0 },
	{ 0x88, 0x88, 0x0, 0x0, 0x0, 0x0 },
	{ 0x89, 0xffff, 0xffff, 0x2EF, 0x2F0, 0x0 },
	{ 0x8E, 0x8E, 0x0, 0x0, 0x0, 0x0 },
	{ 0x8F, 0xffff, 0xffff, 0x2F1, 0xffff, 0x2F2 },
	{ 0x8A, 0x8A, 0x0, 0x0, 0x0, 0x0 },
	{ 0x8B, 0xffff, 0xffff, 0x2F3, 0x2F4, 0x0 },
	{ 0x90, 0x90, 0x0, 0x0, 0x0, 0x0 },
	{ 0x91, 0xffff, 0xffff, 0x2F5, 0x2F6, 0x0 },
	{ 0x67, 0x67, 0x0, 0x0, 0x0, 0x0 },
	{ 0x68, 0x68, 0x0, 0x0, 0x0, 0x0 },
	{ 0x9F, 0x9F, 0x0, 0x0, 0x0, 0x0 },
	{ 0xA0, 0xA0, 0x0, 0x0, 0x0, 0x0 },
	{ 0xA1, 0xA1, 0x0, 0x0, 0x0, 0x0 },
	{ 0xA6, 0xA6, 0x0, 0x0, 0x0, 0x0 },
	{ 0xB7, 0xffff, 0xffff, 0xffff, 0xffff, 0x2F7 },
	{ 0xB8, 0xB8, 0x0, 0x0, 0x0, 0x0 },
	{ 0xB9, 0xffff, 0xffff, 0xffff, 0xffff, 0x2F8 },
	{ 0xBA, 0xBA, 0x0, 0x0, 0x0, 0x0 },
	{ 0xBB, 0xBB, 0x0, 0x0, 0x0, 0x0 },
	{ 0xBC, 0xBC, 0x0, 0x0, 0x0, 0x0 },
	{ 0x255, 0xffff, 0xffff, 0xffff, 0xffff, 0x2F9 },
	{ 0x256, 0x256, 0x0, 0x0, 0x0, 0x0 },
	{ 0x257, 0x257, 0x0, 0x0, 0x0, 0x0 },
	{ 0x258, 0x258, 0x0, 0x0, 0x0, 0x0 },
	{ 0x69, 0x69, 0x0, 0x0, 0x0, 0x0 },
	{ 0x6A, 0x6A, 0x0, 0x0, 0x0, 0x0 },
	{ 0xA2, 0xA2, 0x0, 0x0, 0x0, 0x0 },
	{ 0xA3, 0xA3, 0x0, 0x0, 0x0, 0x0 },
	{ 0xA4, 0xA4, 0x0, 0x0, 0x0, 0x0 },
	{ 0xA7, 0xA7, 0x0, 0x0, 0x0, 0x0 },
	{ 0xBD, 0xffff, 0xffff, 0xffff, 0xffff, 0x2FA },
	{ 0xBE, 0xBE, 0x0, 0x0, 0x0, 0x0 },
	{ 0xBF, 0xBF, 0x0, 0x0, 0x0, 0x0 },
	{ 0xC0, 0xffff, 0xffff, 0xffff, 0xffff, 0x2FB },
	{ 0xC1, 0xC1, 0x0, 0x0, 0x0, 0x0 },
	{ 0xC2, 0xC2, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1EE, 0x1EE, 0x0, 0x0, 0x0, 0x0 },
	{ 0x259, 0xffff, 0xffff, 0xffff, 0xffff, 0x2FC },
	{ 0x25A, 0x25A, 0x0, 0x0, 0x0, 0x0 },
	{ 0x25B, 0x25B, 0x0, 0x0, 0x0, 0x0 },
	{ 0x25C, 0x25C, 0x0, 0x0, 0x0, 0x0 },
	{ 0x1, 0x2FD, 0x2FE, 0x2FF, 0x0, 0x0 },
	{ 0x2, 0x2, 0x0, 0x0, 0x0, 0x0 },
	{ 0x4, 0x4, 0x0, 0x0, 0x0, 0x0 },
	{ 0xA, 0xA, 0x0, 0x0, 0x0, 0x0 },
	{ 0x21, 0x21, 0x0, 0x0, 0x0, 0x0 },
	{ 0x163, 0x300, 0x301, 0xffff, 0x302, 0x0 },
	{ 0x164, 0x164, 0x0, 0x0, 0x0, 0x0 },
	{ 0x6B, 0xffff, 0x303, 0xffff, 0x304, 0x0 },
	{ 0x166, 0x166, 0x0, 0x0, 0x0, 0x0 },
	{ 0x167, 0x167, 0x0, 0x0, 0x0, 0x0 },
	{ 0x6C, 0xffff, 0xffff, 0x305, 0x307, 0x0 },
	{ 0x168, 0x168, 0x0, 0x0, 0x0, 0x0 },
	{ 0x169, 0x169, 0x0, 0x0, 0x0, 0x0 },
	{ 0x44, 0xffff, 0xffff, 0x306, 0xffff, 0x308 },
	{ 0x16A, 0xffff, 0xffff, 0xffff, 0xffff, 0x309 },
	{ 0x25D, 0xffff, 0xffff, 0xffff, 0xffff, 0x30A }
};

static const MapObjectAnimCmd sVsSeekerAnimDoubleExclamationMark[] = {
    {0x1, 0x1},
    {0x67, 0x1},
    {0xfe, 0x0}
};

static const MapObjectAnimCmd sVsSeekerAnimSingleExclamationMark[] = {
    {0x4B, 0x1},
    {0xfe, 0x0}
};

void VsSeeker_Start(TaskManager *taskMan, StringTemplate *template, u16 *outResult)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    VsSeekerSystem *vsSeeker = Heap_AllocFromHeap(4, sizeof(VsSeekerSystem));

    if (vsSeeker == NULL) {
        GF_ASSERT(FALSE);
        return;
    }

    memset(vsSeeker, 0, sizeof(VsSeekerSystem));

    vsSeeker->fieldSystem = fieldSystem;
    vsSeeker->varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    vsSeeker->result = outResult;
    vsSeeker->template = template;

    FieldTask_Start(taskMan, VsSeeker_ExecuteTask, vsSeeker);
    return;
}

static BOOL VsSeeker_ExecuteTask(TaskManager *taskMan)
{
    s32 missingBattery, numDigits;
    enum VsSeekerUsability usability;
    VsSeekerSystem *vsSeeker = TaskManager_Environment(taskMan);

    switch (vsSeeker->state) {
    case VS_SEEKER_STATE_WAIT_FOR_NPCS:
        if (VsSeeker_WaitForNpcsToPause(vsSeeker->fieldSystem) == TRUE) {
            VsSeekerSystem_SetState(vsSeeker, VS_SEEKER_STATE_CHECK_USABILITY);
        }
        break;
    case VS_SEEKER_STATE_CHECK_USABILITY:
        VsSeekerSystem_CollectViableNpcs(vsSeeker);
        usability = VsSeekerSystem_CheckUsability(vsSeeker);

        if (usability == VS_SEEKER_USABILITY_OK) {
            *vsSeeker->result = VS_SEEKER_USE_RESULT_OK;
            VsSeekerSystem_SetState(vsSeeker, VS_SEEKER_STATE_START);
        } else if (usability == VS_SEEKER_USABILITY_NO_BATTERY) {
            *vsSeeker->result = VS_SEEKER_USE_RESULT_NO_BATTERY;
            VsSeekerSystem_SetState(vsSeeker, VS_SEEKER_STATE_NO_BATTERY);
        } else { // VS_SEEKER_USABILITY_NO_TRAINERS
            *vsSeeker->result = VS_SEEKER_USE_RESULT_NO_TRAINERS;
            VsSeekerSystem_SetState(vsSeeker, VS_SEEKER_STATE_NO_TRAINERS);
        }
        break;
    case VS_SEEKER_STATE_START:
        vsSeeker->playerStateTask = FieldSystem_StartVsSeekerTask(vsSeeker->fieldSystem);
        Sound_PlayEffect(SEQ_SE_DP_VS_SEEKER_BEEP);
        VsSeeker_SetBattery(vsSeeker->varsFlags, 0);
        VsSeekerSystem_SetState(vsSeeker, VS_SEEKER_STATE_WAIT_FOR_PLAYER_ANIM);
        break;
    case VS_SEEKER_STATE_WAIT_FOR_PLAYER_ANIM:
        if (VsSeekerSystem_GetNumActiveAnimations(vsSeeker) == 0) {
            VsSeekerSystem_SetState(vsSeeker, VS_SEEKER_STATE_PICK_REMATCH_TRAINERS);
        }
        break;
    case VS_SEEKER_STATE_PICK_REMATCH_TRAINERS:
        if (VsSeekerSystem_PickRematchTrainers(vsSeeker) == FALSE) {
            *vsSeeker->result = VS_SEEKER_USE_RESULT_NO_TRAINERS_PICKED;
        }

        VsSeekerSystem_SetState(vsSeeker, VS_SEEKER_STATE_WAIT_FOR_REMATCH_ANIMS);
        break;
    case VS_SEEKER_STATE_WAIT_FOR_REMATCH_ANIMS:
        if (VsSeekerSystem_GetNumActiveAnimations(vsSeeker) == 0) {
            VsSeekerSystem_SetState(vsSeeker, VS_SEEKER_STATE_WAIT_FOR_VS_SEEKER_SFX);
        }
        break;
    case VS_SEEKER_STATE_WAIT_FOR_VS_SEEKER_SFX:
        if (Sound_IsEffectPlaying(SEQ_SE_DP_VS_SEEKER_BEEP) == FALSE) {
            FieldSystem_EndVsSeekerTask(vsSeeker->playerStateTask);
            VsSeekerSystem_SetState(vsSeeker, 9);
        }
        break;
    case VS_SEEKER_STATE_NO_BATTERY:
        missingBattery = VS_SEEKER_MAX_BATTERY - VsSeeker_GetBattery(vsSeeker->varsFlags);

        if (missingBattery / 10 == 0) {
            numDigits = 1;
        } else if (missingBattery / 100 == 0) {
            numDigits = 2;
        } else {
            numDigits = 3;
        }

        StringTemplate_SetNumber(vsSeeker->template, 0, missingBattery, numDigits, 1, 1);
        VsSeekerSystem_SetState(vsSeeker, 9);
        break;
    case VS_SEEKER_STATE_NO_TRAINERS:
        VsSeekerSystem_SetState(vsSeeker, 9);
        break;
    case VS_SEEKER_STATE_DONE:
        Heap_FreeToHeap(vsSeeker);
        return TRUE;
    }

    return FALSE;
}

static void VsSeekerSystem_SetState(VsSeekerSystem *vsSeeker, enum VsSeekerState state)
{
    vsSeeker->state = state;
}

static enum VsSeekerUsability VsSeekerSystem_CheckUsability(VsSeekerSystem *vsSeeker)
{
    if (VsSeeker_GetBattery(vsSeeker->varsFlags) == VS_SEEKER_MAX_BATTERY) {
        if (vsSeeker->numVisibleTrainers == 0) {
            return VS_SEEKER_USABILITY_NO_TRAINERS;
        }

        return VS_SEEKER_USABILITY_OK;
    }

    return VS_SEEKER_USABILITY_NO_BATTERY;
}

static void VsSeekerSystem_CollectViableNpcs(VsSeekerSystem *vsSeeker)
{
    // Can't get this to match with C99 style declarations
    int trainerX, trainerZ;
    int numVisibleTrainers;
    int xMin, xMax, zMin, zMax;
    u32 npcCount = MapHeaderData_GetNumObjectEvents(vsSeeker->fieldSystem);

    numVisibleTrainers = 0;

    for (int i = 0; i < npcCount; i++) {
        vsSeeker->trainers[i] = NULL;
    }

    int playerX = Player_GetXPos(vsSeeker->fieldSystem->playerAvatar);
    int playerZ = Player_GetZPos(vsSeeker->fieldSystem->playerAvatar);
    xMin = playerX - VS_SEEKER_SEARCH_RADIUS_LEFT;
    xMax = playerX + VS_SEEKER_SEARCH_RADIUS_RIGHT;
    zMin = playerZ - VS_SEEKER_SEARCH_RADIUS_UP;
    zMax = playerZ + VS_SEEKER_SEARCH_RADIUS_DOWN;

    if (xMin < 0) {
        xMin = 0;
    }

    if (zMin < 0) {
        zMin = 0;
    }

    for (int i = 0; i < npcCount; i++) {
        MapObject *mapObj = MapObjMan_LocalMapObjByIndex(vsSeeker->fieldSystem->mapObjMan, i);

        if (mapObj == NULL) {
            continue;
        }

        u32 eventType = MapObject_GetEventType(mapObj);

        switch (eventType) {
        case 0x1:
        case 0x2:
        case 0x4:
        case 0x5:
        case 0x6:
        case 0x7:
        case 0x8:
            trainerX = MapObject_GetXPos(mapObj);
            trainerZ = MapObject_GetZPos(mapObj);

            if (trainerX >= xMin && trainerX <= xMax
                && trainerZ >= zMin && trainerZ <= zMax
                && VsSeeker_IsMoveCodeHidden(MapObject_GetMoveCode(mapObj)) == FALSE) {
                vsSeeker->trainers[numVisibleTrainers] = mapObj;
                numVisibleTrainers++;
            }
        }
    }

    vsSeeker->numVisibleTrainers = numVisibleTrainers;
    return;
}

static BOOL VsSeeker_IsMoveCodeHidden(u32 moveCode)
{
    switch (moveCode) {
    case 0x33:
    case 0x34:
    case 0x35:
    case 0x36:
        return TRUE;
    }

    return FALSE;
}

BOOL VsSeeker_UpdateStepCount(FieldSystem *fieldSystem)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    u16 battery = VsSeeker_GetBattery(varsFlags);
    u16 activeStepCount = VsSeeker_GetActiveStepCount(varsFlags);

    if (Bag_CanRemoveItem(SaveData_GetBag(fieldSystem->saveData), 443, 1, 4) == 1
        && battery < VS_SEEKER_MAX_BATTERY) {
        battery++;
        VsSeeker_SetBattery(varsFlags, battery);
    }

    if (VsSeeker_GetUsedFlag(varsFlags) == TRUE) {
        if (activeStepCount < VS_SEEKER_MAX_NUM_ACTIVE_STEPS) {
            activeStepCount++;
            VsSeeker_SetActiveStepCount(varsFlags, activeStepCount);
        }

        if (activeStepCount == VS_SEEKER_MAX_NUM_ACTIVE_STEPS) {
            VsSeeker_Reset(varsFlags);
            VsSeeker_ClearRematchMoveCode(fieldSystem);
        }
    }

    return FALSE;
}

static void VsSeeker_ClearRematchMoveCode(FieldSystem *fieldSystem)
{
    u32 npcCount = MapHeaderData_GetNumObjectEvents(fieldSystem);

    for (int i = 0; i < npcCount; i++) {
        MapObject *mapObj = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, i);

        if (mapObj == NULL) {
            continue;
        }

        if (MapObject_GetMoveCode(mapObj) == 0x31) {
            VsSeeker_SetTrainerMoveCode(mapObj, 0x2);
        }
    }
}

static void VsSeekerSystem_StartAnimation(VsSeekerSystem *vsSeeker, MapObject *mapObj, const MapObjectAnimCmd *animCmdList)
{
    SysTask *animTask = MapObject_StartAnimation(mapObj, animCmdList);
    vsSeeker->numActiveAnimations++;

    VsSeekerSystem_StartAnimationTask(vsSeeker, animTask);
}

static void VsSeekerSystem_StartAnimationTask(VsSeekerSystem *vsSeeker, SysTask *animTask)
{
    VsSeekerAnimationTask *vssAnimTask = Heap_AllocFromHeap(4, sizeof(VsSeekerAnimationTask));
    if (vssAnimTask == NULL) {
        GF_ASSERT(FALSE);
        return;
    }

    vssAnimTask->vsSeeker = vsSeeker;
    vssAnimTask->animationTask = animTask;
    vssAnimTask->trackingTask = SysTask_Start(VsSeeker_TrackAnimation, vssAnimTask, 0);
}

static void VsSeeker_TrackAnimation(SysTask *task, void *param)
{
    VsSeekerAnimationTask *vssAnimTask = (VsSeekerAnimationTask *)param;

    if (MapObject_HasAnimationEnded(vssAnimTask->animationTask) == TRUE) {
        if (vssAnimTask->vsSeeker->numActiveAnimations == 0) {
            GF_ASSERT(FALSE);
        }

        vssAnimTask->vsSeeker->numActiveAnimations--;

        MapObject_FinishAnimation(vssAnimTask->animationTask);
        SysTask_Done(vssAnimTask->trackingTask);
        Heap_FreeToHeapExplicit(4, param);
    }
}

static s32 VsSeekerSystem_GetNumActiveAnimations(VsSeekerSystem *vsSeeker)
{
    return vsSeeker->numActiveAnimations;
}

static BOOL VsSeekerSystem_PickRematchTrainers(VsSeekerSystem *vsSeeker)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(vsSeeker->fieldSystem->saveData);
    BOOL anyAvailable = FALSE;

    for (int i = 0; i < vsSeeker->numVisibleTrainers; i++) {
        u16 trainerID = VsSeeker_GetTrainerIDFromMapObject(vsSeeker->trainers[i]);

        if (Script_IsTrainerDefeated(vsSeeker->fieldSystem, trainerID) == FALSE) {
            VsSeekerSystem_StartAnimation(vsSeeker, vsSeeker->trainers[i], sVsSeekerAnimSingleExclamationMark);
            anyAvailable = TRUE;
        } else {
            if (LCRNG_Next() % 100 < VS_SEEKER_REMATCH_CHANCE
                && VsSeeker_IsTrainerDoingRematchAnimation(vsSeeker->trainers[i]) == FALSE) {
                VsSeeker_SetTrainerMoveCode(vsSeeker->trainers[i], 0x31);
                VsSeekerSystem_StartAnimation(vsSeeker, vsSeeker->trainers[i], sVsSeekerAnimDoubleExclamationMark);

                MapObject *secondTrainer = VsSeeker_GetSecondDoubleBattleTrainer(vsSeeker->fieldSystem, vsSeeker->trainers[i], VS_SEEKER_2V2_TRAINER_SEARCH_MODE_REMATCH_ANIM_CHECK);

                if (secondTrainer != NULL) {
                    VsSeeker_SetTrainerMoveCode(secondTrainer, 0x31);
                    VsSeekerSystem_StartAnimation(vsSeeker, secondTrainer, sVsSeekerAnimDoubleExclamationMark);
                }

                anyAvailable = TRUE;
                VsSeeker_SetUsedFlag(varsFlags);
            }
        }
    }

    return anyAvailable;
}

static u16 VsSeeker_GetTrainerIDFromMapObject(MapObject *trainerObj)
{
    u32 eventID = MapObject_GetEventID(trainerObj);
    return Script_GetTrainerID(eventID);
}

u16 VsSeeker_GetRematchTrainerID(FieldSystem *fieldSystem, MapObject *trainerObj, u16 trainerID)
{
    if (VsSeeker_IsTrainerDoingRematchAnimation(trainerObj) == FALSE) {
        return 0;
    }

    u16 index = VsSeeker_GetRematchDataIndexForTrainer(fieldSystem, trainerID);
    if (index == VS_SEEKER_REMATCH_DATA_INDEX_NONE) {
        return 0;
    }

    u16 level = VsSeeker_GetCurrentLevelForRematchData(fieldSystem, index);
    level = VsSeeker_AdjustRematchLevel(fieldSystem, index, level);
    return VsSeeker_GetTrainerIDForRematchLevel(index, level);
}

static u16 VsSeeker_GetRematchDataIndexForTrainer(FieldSystem *fieldSystem, u16 trainerID)
{
    for (int i = 0; i < (NELEMS(gVsSeekerRematchData)); i++) {
        if (gVsSeekerRematchData[i].trainerIDs[0] != trainerID) {
            continue;
        }

        return i;
    }

    return VS_SEEKER_REMATCH_DATA_INDEX_NONE;
}

static u16 VsSeeker_GetCurrentLevelForRematchData(FieldSystem *fieldSystem, u16 rematchDataIndex)
{
    int level;

    for (level = 1; level < VS_SEEKER_MAX_REMATCHES; level++) {
        if (gVsSeekerRematchData[rematchDataIndex].trainerIDs[level] == VS_SEEKER_REMATCH_DATA_END) {
            return level - 1;
        }

        u16 trainerID = gVsSeekerRematchData[rematchDataIndex].trainerIDs[level];
        if (trainerID != VS_SEEKER_REMATCH_DATA_DUMMY
            && Script_IsTrainerDefeated(fieldSystem, trainerID) == FALSE) {
            return level;
        }
    }

    return level - 1;
}

static u16 VsSeeker_AdjustRematchLevel(FieldSystem *fieldSystem, u16 rematchDataIndex, u16 level)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    if (level != 0 && VsSeeker_HasUnlockedLevel(varsFlags, level) == FALSE) {
        level = VsSeeker_GetNextLowerRematchLevel(rematchDataIndex, level);
    }

    return level;
}

static u16 VsSeeker_GetNextLowerRematchLevel(u16 rematchDataIndex, u16 level)
{
    // Declaration is needed to match.
    const VsSeekerRematchData *rematchData = gVsSeekerRematchData;

    for (u16 i = level - 1; i > 0; i--) {
        if (rematchData[rematchDataIndex].trainerIDs[i] != VS_SEEKER_REMATCH_DATA_DUMMY) {
            return i;
        }
    }

    return 0;
}

static u16 VsSeeker_GetTrainerIDForRematchLevel(u16 rematchDataIndex, u16 level)
{
    return gVsSeekerRematchData[rematchDataIndex].trainerIDs[level];
}

static BOOL VsSeeker_IsTrainerDoingRematchAnimation(MapObject *trainerObj)
{
    return MapObject_GetMoveCode(trainerObj) == 0x31;
}

static void VsSeeker_SetTrainerMoveCode(MapObject *trainerObj, u16 moveCode)
{
    MapObject_SetMoveCode(trainerObj, moveCode);
}

void VsSeeker_SetMoveCodeForFacingDirection(FieldSystem *fieldSystem, MapObject *trainerObj)
{
    if (trainerObj == NULL) {
        return;
    }

    int dir = MapObject_Dir(trainerObj);

    u32 moveCode;
    if (dir == 0) {
        moveCode = 0xe;
    } else if (dir == 1) {
        moveCode = 0xf;
    } else if (dir == 2) {
        moveCode = 0x10;
    } else {
        moveCode = 0x11;
    }

    MapObject *secondTrainer = VsSeeker_GetSecondDoubleBattleTrainer(fieldSystem, trainerObj, 1);
    if (secondTrainer != NULL) {
        VsSeeker_SetTrainerMoveCode(secondTrainer, moveCode);
    }

    VsSeeker_SetTrainerMoveCode(trainerObj, moveCode);
}

static BOOL VsSeeker_WaitForNpcsToPause(FieldSystem *fieldSystem)
{
    u32 npcCount = MapHeaderData_GetNumObjectEvents(fieldSystem);
    BOOL anyMoving = FALSE;

    for (int i = 0; i < npcCount; i++) {
        MapObject *mapObj = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, i);

        if (mapObj == NULL) {
            continue;
        }

        if (MapObject_IsMoving(mapObj) == TRUE) {
            sub_02062DDC(mapObj);
            anyMoving = TRUE;
        } else {
            sub_02062DD0(mapObj);
        }
    }

    return !anyMoving;
}

static MapObject *VsSeeker_GetSecondDoubleBattleTrainer(FieldSystem *fieldSystem, MapObject *trainerObj, enum VsSeeker2v2TrainerSearchMode mode)
{
    u32 secondTrainerEventID, secondTrainerID;
    u32 npcCount = MapHeaderData_GetNumObjectEvents(fieldSystem);
    u16 eventID = MapObject_GetEventID(trainerObj);
    u16 trainerID = Script_GetTrainerID(eventID);

    if (Script_IsTrainerDoubleBattle(trainerID) == FALSE) {
        return NULL;
    }

    for (u32 i = 0; i < npcCount; i++) {
        MapObject *mapObj = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, i);

        if (mapObj == NULL) {
            continue;
        }

        if (mode == VS_SEEKER_2V2_TRAINER_SEARCH_MODE_REMATCH_ANIM_CHECK
            && MapObject_GetMoveCode(mapObj) == 0x31) {
            continue;
        }

        u32 eventType = MapObject_GetEventType(mapObj);

        switch (eventType) {
        case 0x1:
        case 0x2:
        case 0x4:
        case 0x5:
        case 0x6:
        case 0x7:
        case 0x8:
            secondTrainerEventID = MapObject_GetEventID(mapObj);
            secondTrainerID = Script_GetTrainerID(secondTrainerEventID);

            if (eventID != secondTrainerEventID && trainerID == secondTrainerID) {
                return mapObj;
            }
        }
    }

    return NULL;
}
