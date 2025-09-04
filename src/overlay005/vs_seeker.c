#include "overlay005/vs_seeker.h"

#include <nitro.h>
#include <string.h>

#include "generated/movement_actions.h"
#include "generated/movement_types.h"
#include "generated/trainer_types.h"
#include "generated/trainers.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/map_object_anim_cmd.h"
#include "overlay005/ov5_021DFB54.h"

#include "bag.h"
#include "field_task.h"
#include "heap.h"
#include "map_header_data.h"
#include "map_object.h"
#include "math_util.h"
#include "player_avatar.h"
#include "script_manager.h"
#include "sound_playback.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_flags.h"
#include "system_vars.h"
#include "unk_020655F4.h"
#include "vars_flags.h"

#define VS_SEEKER_SEARCH_RADIUS_LEFT  7
#define VS_SEEKER_SEARCH_RADIUS_RIGHT 7
#define VS_SEEKER_SEARCH_RADIUS_UP    7
#define VS_SEEKER_SEARCH_RADIUS_DOWN  6

#define VS_SEEKER_MAX_BATTERY    100
#define VS_SEEKER_REMATCH_CHANCE 50

#define VS_SEEKER_MAX_REMATCHES     6
#define VS_SEEKER_REMATCH_DATA_NONE 0xFFFF
#define VS_SEEKER_REMATCH_DATA_END  0

// Number of steps for which the rematches are available
// until the Vs. Seeker has to be used again
#define VS_SEEKER_MAX_NUM_ACTIVE_STEPS 100

#define VS_SEEKER_USE_RESULT_OK                 0
#define VS_SEEKER_USE_RESULT_NO_BATTERY         1
#define VS_SEEKER_USE_RESULT_NO_TRAINERS        2
#define VS_SEEKER_USE_RESULT_NO_TRAINERS_PICKED 3 // No trainers were picked for a rematch (e.g. all the random chances failed)

#define VS_SEEKER_REMATCH_DATA_INDEX_NONE 0xFF

#define NoUniqueRematches(trainerID) { trainerID, trainerID, VS_SEEKER_REMATCH_DATA_END, VS_SEEKER_REMATCH_DATA_END, VS_SEEKER_REMATCH_DATA_END, VS_SEEKER_REMATCH_DATA_END }

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
static BOOL VsSeeker_ExecuteTask(FieldTask *taskMan);
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

#define _ VS_SEEKER_REMATCH_DATA_NONE
const VsSeekerRematchData gVsSeekerRematchData[] = {
    NoUniqueRematches(TRAINER_AROMA_LADY_TAYLOR),
    { TRAINER_AROMA_LADY_ELIZABETH, TRAINER_AROMA_LADY_ELIZABETH_REMATCH_1, TRAINER_AROMA_LADY_ELIZABETH_REMATCH_2, _, TRAINER_AROMA_LADY_ELIZABETH_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_AROMA_LADY_HANNAH),
    { TRAINER_ARTIST_WILLIAM, _, TRAINER_ARTIST_WILLIAM_REMATCH_1, TRAINER_ARTIST_WILLIAM_REMATCH_2, _, TRAINER_ARTIST_WILLIAM_REMATCH_3 },
    NoUniqueRematches(TRAINER_BATTLE_GIRL_KELSEY),
    { TRAINER_BATTLE_GIRL_HELEN, _, TRAINER_BATTLE_GIRL_HELEN_REMATCH_1, TRAINER_BATTLE_GIRL_HELEN_REMATCH_2, _, TRAINER_BATTLE_GIRL_HELEN_REMATCH_3 },
    { TRAINER_BIRD_KEEPER_BRIANNA, _, _, TRAINER_BIRD_KEEPER_BRIANNA_REMATCH_1, _, TRAINER_BIRD_KEEPER_BRIANNA_REMATCH_2 },
    NoUniqueRematches(TRAINER_BIRD_KEEPER_ALEXANDRA),
    NoUniqueRematches(TRAINER_BIRD_KEEPER_KATHERINE),
    { TRAINER_BIRD_KEEPER_AUDREY, _, _, _, _, TRAINER_BIRD_KEEPER_AUDREY_REMATCH },
    NoUniqueRematches(TRAINER_BIRD_KEEPER_GENEVA),
    { TRAINER_BREEDER_ALBERT, _, TRAINER_BREEDER_ALBERT_REMATCH_1, TRAINER_BREEDER_ALBERT_REMATCH_2, TRAINER_BREEDER_ALBERT_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_BREEDER_KAHLIL),
    { TRAINER_BREEDER_JENNIFER, _, TRAINER_BREEDER_JENNIFER_REMATCH_1, TRAINER_BREEDER_JENNIFER_REMATCH_2, TRAINER_BREEDER_JENNIFER_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_BREEDER_AMBER),
    NoUniqueRematches(TRAINER_CAMPER_JACOB),
    NoUniqueRematches(TRAINER_CAMPER_ANTHONY),
    { TRAINER_CAMPER_ZACKARY, TRAINER_CAMPER_ZACKARY_REMATCH_1, TRAINER_CAMPER_ZACKARY_REMATCH_2, _, TRAINER_CAMPER_ZACKARY_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_ACE_TRAINER_BLAKE),
    NoUniqueRematches(TRAINER_ACE_TRAINER_GARRETT),
    { TRAINER_ACE_TRAINER_DALTON, _, _, _, TRAINER_ACE_TRAINER_DALTON_REMATCH, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_ACE_TRAINER_LAURA),
    NoUniqueRematches(TRAINER_ACE_TRAINER_MARIA),
    { TRAINER_ACE_TRAINER_OLIVIA, _, _, _, TRAINER_ACE_TRAINER_OLIVIA_REMATCH, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_DUMMY_087),
    NoUniqueRematches(TRAINER_COLLECTOR_DOUGLAS),
    NoUniqueRematches(TRAINER_COLLECTOR_BRADY),
    { TRAINER_COLLECTOR_IVAN, _, _, _, TRAINER_COLLECTOR_IVAN_REMATCH, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_COLLECTOR_DEAN),
    NoUniqueRematches(TRAINER_COLLECTOR_JAMAL),
    NoUniqueRematches(TRAINER_COWGIRL_SHELLEY),
    { TRAINER_DUMMY_058, _, _, TRAINER_DUMMY_058_REMATCH_1, _, TRAINER_DUMMY_058_REMATCH_2 },
    NoUniqueRematches(TRAINER_CYCLIST_AXEL),
    NoUniqueRematches(TRAINER_CYCLIST_JAMES),
    { TRAINER_CYCLIST_JOHN, _, TRAINER_CYCLIST_JOHN_REMATCH_1, TRAINER_CYCLIST_JOHN_REMATCH_2, _, TRAINER_CYCLIST_JOHN_REMATCH_3 },
    NoUniqueRematches(TRAINER_CYCLIST_RYAN),
    NoUniqueRematches(TRAINER_CYCLIST_MEGAN),
    NoUniqueRematches(TRAINER_CYCLIST_NICOLE),
    { TRAINER_CYCLIST_KAYLA, _, TRAINER_CYCLIST_KAYLA_REMATCH_1, TRAINER_CYCLIST_KAYLA_REMATCH_2, _, TRAINER_CYCLIST_KAYLA_REMATCH_3 },
    NoUniqueRematches(TRAINER_CYCLIST_RACHEL),
    NoUniqueRematches(TRAINER_DOUBLE_TEAM_ZAC_AND_JEN),
    { TRAINER_DRAGON_TAMER_PATRICK, _, _, TRAINER_DRAGON_TAMER_PATRICK_REMATCH_1, _, TRAINER_DRAGON_TAMER_PATRICK_REMATCH_2 },
    { TRAINER_DRAGON_TAMER_HAYDEN, _, _, _, _, TRAINER_DRAGON_TAMER_HAYDEN_REMATCH },
    { TRAINER_DRAGON_TAMER_GEOFFREY, _, _, _, _, TRAINER_DRAGON_TAMER_GEOFFREY_REMATCH },
    NoUniqueRematches(TRAINER_DRAGON_TAMER_DARIEN),
    NoUniqueRematches(TRAINER_DRAGON_TAMER_KEEGAN),
    NoUniqueRematches(TRAINER_DRAGON_TAMER_STANLEY),
    NoUniqueRematches(TRAINER_ACE_TRAINER_ERNEST),
    { TRAINER_ACE_TRAINER_JAKE, _, _, _, TRAINER_ACE_TRAINER_JAKE_REMATCH, VS_SEEKER_REMATCH_DATA_END },
    { TRAINER_ACE_TRAINER_DENNIS, _, _, TRAINER_ACE_TRAINER_DENNIS_REMATCH_1, _, TRAINER_ACE_TRAINER_DENNIS_REMATCH_2 },
    NoUniqueRematches(TRAINER_ACE_TRAINER_RUBEN),
    { TRAINER_ACE_TRAINER_RODOLFO, _, _, _, _, TRAINER_ACE_TRAINER_RODOLFO_REMATCH },
    { TRAINER_ACE_TRAINER_SAUL, _, _, _, _, TRAINER_ACE_TRAINER_SAUL_REMATCH },
    NoUniqueRematches(TRAINER_ACE_TRAINER_JOSE),
    NoUniqueRematches(TRAINER_ACE_TRAINER_FELIX),
    NoUniqueRematches(TRAINER_ACE_TRAINER_QUINN),
    NoUniqueRematches(TRAINER_ACE_TRAINER_GRAHAM),
    NoUniqueRematches(TRAINER_ACE_TRAINER_ALYSSA),
    { TRAINER_ACE_TRAINER_SHANNON, _, _, _, TRAINER_ACE_TRAINER_SHANNON_REMATCH, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_ACE_TRAINER_JAMIE),
    { TRAINER_ACE_TRAINER_MAYA, _, _, TRAINER_ACE_TRAINER_MAYA_REMATCH_1, _, TRAINER_ACE_TRAINER_MAYA_REMATCH_2 },
    { TRAINER_ACE_TRAINER_DEANNA, _, _, _, _, TRAINER_ACE_TRAINER_DEANNA_REMATCH },
    { TRAINER_ACE_TRAINER_MOIRA, _, _, _, _, TRAINER_ACE_TRAINER_MOIRA_REMATCH },
    NoUniqueRematches(TRAINER_ACE_TRAINER_DANA),
    NoUniqueRematches(TRAINER_ACE_TRAINER_MIKAYLA),
    NoUniqueRematches(TRAINER_ACE_TRAINER_MEAGAN),
    NoUniqueRematches(TRAINER_ACE_TRAINER_SANDRA),
    { TRAINER_PSYCHIC_MITCHELL, _, _, TRAINER_PSYCHIC_MITCHELL_REMATCH_1, _, TRAINER_PSYCHIC_MITCHELL_REMATCH_2 },
    { TRAINER_PSYCHIC_MAXWELL, _, _, _, _, TRAINER_PSYCHIC_MAXWELL_REMATCH },
    { TRAINER_PSYCHIC_CORBIN, _, _, _, _, TRAINER_PSYCHIC_CORBIN_REMATCH },
    { TRAINER_PSYCHIC_ABIGAIL, _, _, TRAINER_PSYCHIC_ABIGAIL_REMATCH_1, _, TRAINER_PSYCHIC_ABIGAIL_REMATCH_2 },
    { TRAINER_PSYCHIC_BRITTNEY, _, _, _, _, TRAINER_PSYCHIC_BRITTNEY_REMATCH },
    { TRAINER_PSYCHIC_DAISY, _, _, _, _, TRAINER_PSYCHIC_DAISY_REMATCH },
    NoUniqueRematches(TRAINER_BELLE_AND_PA_AVA_AND_MATT),
    NoUniqueRematches(TRAINER_DUMMY_291),
    { TRAINER_RANCHER_MARCO, _, _, TRAINER_RANCHER_MARCO_REMATCH_1, _, TRAINER_RANCHER_MARCO_REMATCH_2 },
    NoUniqueRematches(TRAINER_FISHERMAN_ANDREW),
    { TRAINER_FISHERMAN_JOSEPH, _, TRAINER_FISHERMAN_JOSEPH_REMATCH_1, _, TRAINER_FISHERMAN_JOSEPH_REMATCH_2, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_FISHERMAN_ZACHARY),
    NoUniqueRematches(TRAINER_FISHERMAN_CODY),
    NoUniqueRematches(TRAINER_FISHERMAN_JUAN),
    NoUniqueRematches(TRAINER_FISHERMAN_JOSH),
    NoUniqueRematches(TRAINER_FISHERMAN_TRAVIS),
    NoUniqueRematches(TRAINER_FISHERMAN_KENNETH),
    { TRAINER_FISHERMAN_MIGUEL, _, _, _, TRAINER_FISHERMAN_MIGUEL_REMATCH, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_FISHERMAN_LUC),
    NoUniqueRematches(TRAINER_FISHERMAN_CORY),
    NoUniqueRematches(TRAINER_FISHERMAN_BRETT),
    { TRAINER_FISHERMAN_ALEC, _, _, _, TRAINER_FISHERMAN_ALEC_REMATCH, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_FISHERMAN_GEORGE),
    NoUniqueRematches(TRAINER_FISHERMAN_COLE),
    NoUniqueRematches(TRAINER_TWINS_LIV_AND_LIZ),
    { TRAINER_TWINS_TERI_AND_TIA, _, _, TRAINER_TWINS_TERI_AND_TIA_REMATCH_1, _, TRAINER_TWINS_TERI_AND_TIA_REMATCH_2 },
    NoUniqueRematches(TRAINER_TWINS_EMMA_AND_LIL),
    { TRAINER_PI_CARLOS, _, _, TRAINER_PI_CARLOS_REMATCH_1, _, TRAINER_PI_CARLOS_REMATCH_2 },
    { TRAINER_GENTLEMAN_JEREMY, _, TRAINER_GENTLEMAN_JEREMY_REMATCH_1, TRAINER_GENTLEMAN_JEREMY_REMATCH_2, _, TRAINER_GENTLEMAN_JEREMY_REMATCH_3 },
    { TRAINER_GUITARIST_TONY, _, _, _, TRAINER_GUITARIST_TONY_REMATCH, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_RUIN_MANIAC_BRYAN),
    NoUniqueRematches(TRAINER_RUIN_MANIAC_RONALD),
    NoUniqueRematches(TRAINER_RUIN_MANIAC_CALVIN),
    NoUniqueRematches(TRAINER_RUIN_MANIAC_LARRY),
    NoUniqueRematches(TRAINER_DUMMY_441),
    { TRAINER_RUIN_MANIAC_HARRY, _, _, TRAINER_RUIN_MANIAC_HARRY_REMATCH_1, TRAINER_RUIN_MANIAC_HARRY_REMATCH_2, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_JOGGER_RICHARD),
    NoUniqueRematches(TRAINER_JOGGER_SCOTT),
    NoUniqueRematches(TRAINER_JOGGER_WYATT),
    { TRAINER_JOGGER_CRAIG, _, _, TRAINER_JOGGER_CRAIG_REMATCH_1, _, TRAINER_JOGGER_CRAIG_REMATCH_2 },
    NoUniqueRematches(TRAINER_JOGGER_RAUL),
    NoUniqueRematches(TRAINER_BLACK_BELT_KYLE),
    NoUniqueRematches(TRAINER_BLACK_BELT_ADAM),
    NoUniqueRematches(TRAINER_BLACK_BELT_SEAN),
    NoUniqueRematches(TRAINER_DUMMY_126),
    NoUniqueRematches(TRAINER_BLACK_BELT_GREGORY),
    NoUniqueRematches(TRAINER_BLACK_BELT_DEREK),
    NoUniqueRematches(TRAINER_BLACK_BELT_NATHANIEL),
    NoUniqueRematches(TRAINER_BLACK_BELT_LUKE),
    { TRAINER_BLACK_BELT_PHILIP, _, _, _, TRAINER_BLACK_BELT_PHILIP_REMATCH, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_BLACK_BELT_CARL),
    { TRAINER_BLACK_BELT_DAVON, _, _, _, _, TRAINER_BLACK_BELT_DAVON_REMATCH },
    NoUniqueRematches(TRAINER_BLACK_BELT_GRIFFIN),
    NoUniqueRematches(TRAINER_YOUNG_COUPLE_TY_AND_SUE),
    { TRAINER_SOCIALITE_REINA, _, _, TRAINER_SOCIALITE_REINA_REMATCH_1, _, TRAINER_SOCIALITE_REINA_REMATCH_2 },
    NoUniqueRematches(TRAINER_LASS_NATALIE),
    { TRAINER_LASS_SAMANTHA, TRAINER_LASS_SAMANTHA_REMATCH_1, TRAINER_LASS_SAMANTHA_REMATCH_2, _, TRAINER_LASS_SAMANTHA_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_LASS_SARAH),
    { TRAINER_LASS_MADELINE, TRAINER_LASS_MADELINE_REMATCH_1, TRAINER_LASS_MADELINE_REMATCH_2, TRAINER_LASS_MADELINE_REMATCH_3, VS_SEEKER_REMATCH_DATA_END, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_LASS_KAITLIN),
    NoUniqueRematches(TRAINER_HIKER_DANIEL),
    NoUniqueRematches(TRAINER_HIKER_NICHOLAS),
    NoUniqueRematches(TRAINER_HIKER_KEVIN),
    NoUniqueRematches(TRAINER_HIKER_JUSTIN),
    NoUniqueRematches(TRAINER_HIKER_ROBERT),
    NoUniqueRematches(TRAINER_HIKER_ALEXANDER),
    NoUniqueRematches(TRAINER_HIKER_JONATHAN),
    NoUniqueRematches(TRAINER_HIKER_LOUIS),
    { TRAINER_HIKER_THEODORE, _, TRAINER_HIKER_THEODORE_REMATCH_1, TRAINER_HIKER_THEODORE_REMATCH_2, _, TRAINER_HIKER_THEODORE_REMATCH_3 },
    { TRAINER_BUG_CATCHER_BRANDON, TRAINER_BUG_CATCHER_BRANDON_REMATCH_1, TRAINER_BUG_CATCHER_BRANDON_REMATCH_2, _, TRAINER_BUG_CATCHER_BRANDON_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    { TRAINER_PARASOL_LADY_ALEXA, _, TRAINER_PARASOL_LADY_ALEXA_REMATCH_1, TRAINER_PARASOL_LADY_ALEXA_REMATCH_2, TRAINER_PARASOL_LADY_ALEXA_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_PARASOL_LADY_SABRINA),
    NoUniqueRematches(TRAINER_PICNICKER_SIENA),
    NoUniqueRematches(TRAINER_PICNICKER_LAUREN),
    { TRAINER_PICNICKER_KARINA, TRAINER_PICNICKER_KARINA_REMATCH_1, TRAINER_PICNICKER_KARINA_REMATCH_2, _, TRAINER_PICNICKER_KARINA_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    { TRAINER_POKE_KID_DANIELLE, _, TRAINER_POKE_KID_DANIELLE_REMATCH_1, TRAINER_POKE_KID_DANIELLE_REMATCH_2, TRAINER_POKE_KID_DANIELLE_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_POLICEMAN_BOBBY),
    NoUniqueRematches(TRAINER_POLICEMAN_ALEX),
    NoUniqueRematches(TRAINER_POLICEMAN_DYLAN),
    NoUniqueRematches(TRAINER_POLICEMAN_CALEB),
    { TRAINER_POLICEMAN_DANNY, _, TRAINER_POLICEMAN_DANNY_REMATCH_1, TRAINER_POLICEMAN_DANNY_REMATCH_2, TRAINER_POLICEMAN_DANNY_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_POLICEMAN_THOMAS),
    NoUniqueRematches(TRAINER_RICH_BOY_JASON),
    { TRAINER_RICH_BOY_TREY, _, _, _, TRAINER_RICH_BOY_TREY_REMATCH_1, TRAINER_RICH_BOY_TREY_REMATCH_2 },
    { TRAINER_LADY_MELISSA, _, TRAINER_LADY_MELISSA_REMATCH_1, TRAINER_LADY_MELISSA_REMATCH_2, _, TRAINER_LADY_MELISSA_REMATCH_3 },
    { TRAINER_RANGER_TAYLOR, _, TRAINER_RANGER_TAYLOR_REMATCH_1, TRAINER_RANGER_TAYLOR_REMATCH_2, _, TRAINER_RANGER_TAYLOR_REMATCH_3 },
    NoUniqueRematches(TRAINER_RANGER_JEFFREY),
    { TRAINER_RANGER_KYLER, _, _, _, _, TRAINER_RANGER_KYLER_REMATCH },
    NoUniqueRematches(TRAINER_RANGER_DESHAWN),
    NoUniqueRematches(TRAINER_RANGER_DWAYNE),
    { TRAINER_RANGER_ALLISON, _, TRAINER_RANGER_ALLISON_REMATCH_1, TRAINER_RANGER_ALLISON_REMATCH_2, _, TRAINER_RANGER_ALLISON_REMATCH_3 },
    NoUniqueRematches(TRAINER_DUMMY_097),
    { TRAINER_RANGER_ASHLEE, _, _, _, _, TRAINER_RANGER_ASHLEE_REMATCH },
    NoUniqueRematches(TRAINER_RANGER_FELICIA),
    NoUniqueRematches(TRAINER_RANGER_KRISTA),
    NoUniqueRematches(TRAINER_SAILOR_PAUL),
    NoUniqueRematches(TRAINER_SAILOR_LUTHER),
    { TRAINER_SAILOR_MARC, _, _, _, TRAINER_SAILOR_MARC_REMATCH_1, TRAINER_SAILOR_MARC_REMATCH_2 },
    NoUniqueRematches(TRAINER_SAILOR_SKYLER),
    { TRAINER_SAILOR_ZACHARIAH, _, _, _, _, TRAINER_SAILOR_ZACHARIAH_REMATCH },
    NoUniqueRematches(TRAINER_DUMMY_098),
    NoUniqueRematches(TRAINER_SCIENTIST_STEFANO),
    { TRAINER_SCIENTIST_SHAUN, _, TRAINER_SCIENTIST_SHAUN_REMATCH_1, TRAINER_SCIENTIST_SHAUN_REMATCH_2, TRAINER_SCIENTIST_SHAUN_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_NINJA_BOY_JOEL),
    NoUniqueRematches(TRAINER_NINJA_BOY_NATHAN),
    NoUniqueRematches(TRAINER_NINJA_BOY_DAVIDO),
    { TRAINER_NINJA_BOY_ZACH, _, TRAINER_NINJA_BOY_ZACH_REMATCH_1, TRAINER_NINJA_BOY_ZACH_REMATCH_2, TRAINER_NINJA_BOY_ZACH_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_NINJA_BOY_NICK),
    NoUniqueRematches(TRAINER_NINJA_BOY_MATTHEW),
    NoUniqueRematches(TRAINER_NINJA_BOY_ETHAN),
    NoUniqueRematches(TRAINER_NINJA_BOY_FABIAN),
    NoUniqueRematches(TRAINER_NINJA_BOY_BRENNAN),
    NoUniqueRematches(TRAINER_NINJA_BOY_BRUCE),
    { TRAINER_BEAUTY_CYNDY, _, _, TRAINER_BEAUTY_CYNDY_REMATCH_1, _, TRAINER_BEAUTY_CYNDY_REMATCH_2 },
    NoUniqueRematches(TRAINER_BEAUTY_DEVON),
    NoUniqueRematches(TRAINER_BEAUTY_NICOLA),
    NoUniqueRematches(TRAINER_SKIER_BRADLEY),
    { TRAINER_SKIER_EDWARD, _, _, TRAINER_SKIER_EDWARD_REMATCH_1, TRAINER_SKIER_EDWARD_REMATCH_2, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_SKIER_SHAWN),
    { TRAINER_SKIER_BJORN, _, _, TRAINER_SKIER_BJORN_REMATCH_1, _, TRAINER_SKIER_BJORN_REMATCH_2 },
    NoUniqueRematches(TRAINER_SKIER_KAITLYN),
    { TRAINER_SKIER_ANDREA, _, _, TRAINER_SKIER_ANDREA_REMATCH_1, TRAINER_SKIER_ANDREA_REMATCH_2, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_SKIER_LEXIE),
    { TRAINER_SKIER_MADISON, _, _, TRAINER_SKIER_MADISON_REMATCH_1, TRAINER_SKIER_MADISON_REMATCH_2, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_SWIMMER_SHELTIN),
    NoUniqueRematches(TRAINER_SWIMMER_EVAN),
    NoUniqueRematches(TRAINER_SWIMMER_ADRIAN),
    NoUniqueRematches(TRAINER_SWIMMER_ERIK),
    NoUniqueRematches(TRAINER_SWIMMER_VINCENT),
    NoUniqueRematches(TRAINER_SWIMMER_DILLON),
    { TRAINER_SWIMMER_WESLEY, _, _, _, _, TRAINER_SWIMMER_WESLEY_REMATCH },
    NoUniqueRematches(TRAINER_SWIMMER_RICARDO),
    { TRAINER_SWIMMER_FRANCISCO, _, _, _, _, TRAINER_SWIMMER_FRANCISCO_REMATCH },
    NoUniqueRematches(TRAINER_SWIMMER_COLTON),
    NoUniqueRematches(TRAINER_SWIMMER_TROY),
    NoUniqueRematches(TRAINER_SWIMMER_OSCAR),
    { TRAINER_SWIMMER_GLENN, _, _, _, _, TRAINER_SWIMMER_GLENN_REMATCH },
    NoUniqueRematches(TRAINER_SWIMMER_KURT),
    NoUniqueRematches(TRAINER_SWIMMER_SAM),
    NoUniqueRematches(TRAINER_SWIMMER_WADE),
    NoUniqueRematches(TRAINER_SWIMMER_HALEY),
    NoUniqueRematches(TRAINER_SWIMMER_MARY),
    NoUniqueRematches(TRAINER_SWIMMER_JESSICA),
    NoUniqueRematches(TRAINER_SWIMMER_ERICA),
    NoUniqueRematches(TRAINER_SWIMMER_KATELYN),
    NoUniqueRematches(TRAINER_SWIMMER_VANESSA),
    { TRAINER_SWIMMER_MIRANDA, _, _, _, _, TRAINER_SWIMMER_MIRANDA_REMATCH },
    NoUniqueRematches(TRAINER_SWIMMER_AUBREE),
    NoUniqueRematches(TRAINER_SWIMMER_PAIGE),
    { TRAINER_SWIMMER_CRYSTAL, _, _, _, _, TRAINER_SWIMMER_CRYSTAL_REMATCH },
    NoUniqueRematches(TRAINER_SWIMMER_CASSANDRA),
    NoUniqueRematches(TRAINER_SWIMMER_GABRIELLE),
    NoUniqueRematches(TRAINER_SWIMMER_CLAIRE),
    { TRAINER_SWIMMER_JOANNA, _, _, _, _, TRAINER_SWIMMER_JOANNA_REMATCH },
    NoUniqueRematches(TRAINER_SWIMMER_SOPHIA),
    NoUniqueRematches(TRAINER_SWIMMER_MALLORY),
    NoUniqueRematches(TRAINER_SWIMMER_LYDIA),
    { TRAINER_YOUNGSTER_TRISTAN, TRAINER_YOUNGSTER_TRISTAN_REMATCH_1, TRAINER_YOUNGSTER_TRISTAN_REMATCH_2, TRAINER_YOUNGSTER_TRISTAN_REMATCH_3, VS_SEEKER_REMATCH_DATA_END, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_YOUNGSTER_LOGAN),
    NoUniqueRematches(TRAINER_YOUNGSTER_MICHAEL),
    NoUniqueRematches(TRAINER_YOUNGSTER_TYLER),
    NoUniqueRematches(TRAINER_YOUNGSTER_AUSTIN),
    { TRAINER_YOUNGSTER_DALLAS, TRAINER_YOUNGSTER_DALLAS_REMATCH_1, TRAINER_YOUNGSTER_DALLAS_REMATCH_2, _, TRAINER_YOUNGSTER_DALLAS_REMATCH_3, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_YOUNGSTER_SEBASTIAN),
    { TRAINER_TUBER_JARED, _, TRAINER_TUBER_JARED_REMATCH_1, _, TRAINER_TUBER_JARED_REMATCH_2, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_TUBER_TRENTON),
    NoUniqueRematches(TRAINER_TUBER_CONNER),
    { TRAINER_TUBER_CHELSEA, _, _, TRAINER_TUBER_CHELSEA_REMATCH_1, TRAINER_TUBER_CHELSEA_REMATCH_2, VS_SEEKER_REMATCH_DATA_END },
    NoUniqueRematches(TRAINER_TUBER_MARIEL),
    NoUniqueRematches(TRAINER_TUBER_HOLLY),
    { TRAINER_VETERAN_BRIAN, _, _, TRAINER_VETERAN_BRIAN_REMATCH_1, _, TRAINER_VETERAN_BRIAN_REMATCH_2 },
    { TRAINER_VETERAN_ARMANDO, _, _, _, _, TRAINER_VETERAN_ARMANDO_REMATCH },
    { TRAINER_DUMMY_605, _, _, _, _, TRAINER_DUMMY_605_REMATCH }
};
#undef _

static const MapObjectAnimCmd sVsSeekerAnimDoubleExclamationMark[] = {
    { .movementAction = MOVEMENT_ACTION_FACE_SOUTH, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_EMOTE_DOUBLE_EXCLAMATION_MARK, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_END, .count = 0 }
};

static const MapObjectAnimCmd sVsSeekerAnimSingleExclamationMark[] = {
    { .movementAction = MOVEMENT_ACTION_EMOTE_EXCLAMATION_MARK, .count = 1 },
    { .movementAction = MOVEMENT_ACTION_END, .count = 0 }
};

void VsSeeker_Start(FieldTask *taskMan, StringTemplate *template, u16 *outResult)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    VsSeekerSystem *vsSeeker = Heap_Alloc(HEAP_ID_FIELD1, sizeof(VsSeekerSystem));

    if (vsSeeker == NULL) {
        GF_ASSERT(FALSE);
        return;
    }

    memset(vsSeeker, 0, sizeof(VsSeekerSystem));

    vsSeeker->fieldSystem = fieldSystem;
    vsSeeker->varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    vsSeeker->result = outResult;
    vsSeeker->template = template;

    FieldTask_InitCall(taskMan, VsSeeker_ExecuteTask, vsSeeker);
    return;
}

static BOOL VsSeeker_ExecuteTask(FieldTask *taskMan)
{
    s32 missingBattery, numDigits;
    enum VsSeekerUsability usability;
    VsSeekerSystem *vsSeeker = FieldTask_GetEnv(taskMan);

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
        SystemVars_SetVsSeekerBattery(vsSeeker->varsFlags, 0);
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
            VsSeekerSystem_SetState(vsSeeker, VS_SEEKER_STATE_DONE);
        }
        break;
    case VS_SEEKER_STATE_NO_BATTERY:
        missingBattery = VS_SEEKER_MAX_BATTERY - SystemVars_GetVsSeekerBattery(vsSeeker->varsFlags);

        if (missingBattery / 10 == 0) {
            numDigits = 1;
        } else if (missingBattery / 100 == 0) {
            numDigits = 2;
        } else {
            numDigits = 3;
        }

        StringTemplate_SetNumber(vsSeeker->template, 0, missingBattery, numDigits, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        VsSeekerSystem_SetState(vsSeeker, VS_SEEKER_STATE_DONE);
        break;
    case VS_SEEKER_STATE_NO_TRAINERS:
        VsSeekerSystem_SetState(vsSeeker, VS_SEEKER_STATE_DONE);
        break;
    case VS_SEEKER_STATE_DONE:
        Heap_Free(vsSeeker);
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
    if (SystemVars_GetVsSeekerBattery(vsSeeker->varsFlags) == VS_SEEKER_MAX_BATTERY) {
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
    int numVisibleTrainers;
    int xMin, xMax, zMin, zMax;
    u32 objEventCount = MapHeaderData_GetNumObjectEvents(vsSeeker->fieldSystem);

    numVisibleTrainers = 0;

    for (int i = 0; i < objEventCount; i++) {
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

    for (int i = 0; i < objEventCount; i++) {
        MapObject *mapObj = MapObjMan_LocalMapObjByIndex(vsSeeker->fieldSystem->mapObjMan, i);

        if (mapObj == NULL) {
            continue;
        }

        switch (MapObject_GetTrainerType(mapObj)) {
        case TRAINER_TYPE_NORMAL:
        case TRAINER_TYPE_VIEW_ALL_DIRECTIONS:
        case TRAINER_TYPE_FACE_SIDES:
        case TRAINER_TYPE_FACE_COUNTERCLOCKWISE:
        case TRAINER_TYPE_FACE_CLOCKWISE:
        case TRAINER_TYPE_SPIN_COUNTERCLOCKWISE:
        case TRAINER_TYPE_SPIN_CLOCKWISE:
            int trainerX = MapObject_GetX(mapObj);
            int trainerZ = MapObject_GetZ(mapObj);

            if (trainerX >= xMin && trainerX <= xMax
                && trainerZ >= zMin && trainerZ <= zMax
                && VsSeeker_IsMoveCodeHidden(MapObject_GetMovementType(mapObj)) == FALSE) {
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
    case MOVEMENT_TYPE_DISGUISE_SNOW:
    case MOVEMENT_TYPE_DISGUISE_SAND:
    case MOVEMENT_TYPE_DISGUISE_ROCK:
    case MOVEMENT_TYPE_DISGUISE_GRASS:
        return TRUE;
    }

    return FALSE;
}

BOOL VsSeeker_UpdateStepCount(FieldSystem *fieldSystem)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    u16 battery = SystemVars_GetVsSeekerBattery(varsFlags);
    u16 activeStepCount = SystemVars_GetVsSeekerStepCount(varsFlags);

    if (Bag_CanRemoveItem(SaveData_GetBag(fieldSystem->saveData), ITEM_VS_SEEKER, 1, HEAP_ID_FIELD1) == TRUE
        && battery < VS_SEEKER_MAX_BATTERY) {
        battery++;
        SystemVars_SetVsSeekerBattery(varsFlags, battery);
    }

    if (SystemFlag_CheckVsSeekerUsed(varsFlags) == TRUE) {
        if (activeStepCount < VS_SEEKER_MAX_NUM_ACTIVE_STEPS) {
            activeStepCount++;
            SystemVars_SetVsSeekerStepCount(varsFlags, activeStepCount);
        }

        if (activeStepCount == VS_SEEKER_MAX_NUM_ACTIVE_STEPS) {
            SystemVars_ResetVsSeeker(varsFlags);
            VsSeeker_ClearRematchMoveCode(fieldSystem);
        }
    }

    return FALSE;
}

static void VsSeeker_ClearRematchMoveCode(FieldSystem *fieldSystem)
{
    u32 objEventCount = MapHeaderData_GetNumObjectEvents(fieldSystem);

    for (int i = 0; i < objEventCount; i++) {
        MapObject *mapObj = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, i);

        if (mapObj == NULL) {
            continue;
        }

        if (MapObject_GetMovementType(mapObj) == MOVEMENT_TYPE_VS_SEEKER_SPIN) {
            VsSeeker_SetTrainerMoveCode(mapObj, MOVEMENT_TYPE_LOOK_AROUND);
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
    VsSeekerAnimationTask *vssAnimTask = Heap_Alloc(HEAP_ID_FIELD1, sizeof(VsSeekerAnimationTask));
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
        Heap_FreeExplicit(HEAP_ID_FIELD1, param);
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
                VsSeeker_SetTrainerMoveCode(vsSeeker->trainers[i], MOVEMENT_TYPE_VS_SEEKER_SPIN);
                VsSeekerSystem_StartAnimation(vsSeeker, vsSeeker->trainers[i], sVsSeekerAnimDoubleExclamationMark);

                MapObject *secondTrainer = VsSeeker_GetSecondDoubleBattleTrainer(vsSeeker->fieldSystem, vsSeeker->trainers[i], VS_SEEKER_2V2_TRAINER_SEARCH_MODE_REMATCH_ANIM_CHECK);

                if (secondTrainer != NULL) {
                    VsSeeker_SetTrainerMoveCode(secondTrainer, MOVEMENT_TYPE_VS_SEEKER_SPIN);
                    VsSeekerSystem_StartAnimation(vsSeeker, secondTrainer, sVsSeekerAnimDoubleExclamationMark);
                }

                anyAvailable = TRUE;
                SystemFlag_SetVsSeekerUsed(varsFlags);
            }
        }
    }

    return anyAvailable;
}

static u16 VsSeeker_GetTrainerIDFromMapObject(MapObject *trainerObj)
{
    return Script_GetTrainerID(MapObject_GetScript(trainerObj));
}

u16 VsSeeker_GetRematchTrainerID(FieldSystem *fieldSystem, MapObject *trainerObj, u16 trainerID)
{
    if (VsSeeker_IsTrainerDoingRematchAnimation(trainerObj) == FALSE) {
        return TRAINER_NONE;
    }

    u16 index = VsSeeker_GetRematchDataIndexForTrainer(fieldSystem, trainerID);
    if (index == VS_SEEKER_REMATCH_DATA_INDEX_NONE) {
        return TRAINER_NONE;
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
        if (trainerID != VS_SEEKER_REMATCH_DATA_NONE
            && Script_IsTrainerDefeated(fieldSystem, trainerID) == FALSE) {
            return level;
        }
    }

    return level - 1;
}

static u16 VsSeeker_AdjustRematchLevel(FieldSystem *fieldSystem, u16 rematchDataIndex, u16 level)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);

    if (level != 0 && SystemFlag_CheckUnlockedVsSeekerLevel(varsFlags, level) == FALSE) {
        level = VsSeeker_GetNextLowerRematchLevel(rematchDataIndex, level);
    }

    return level;
}

static u16 VsSeeker_GetNextLowerRematchLevel(u16 rematchDataIndex, u16 level)
{
    // Declaration is needed to match.
    const VsSeekerRematchData *rematchData = gVsSeekerRematchData;

    for (u16 i = level - 1; i > 0; i--) {
        if (rematchData[rematchDataIndex].trainerIDs[i] != VS_SEEKER_REMATCH_DATA_NONE) {
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
    return MapObject_GetMovementType(trainerObj) == MOVEMENT_TYPE_VS_SEEKER_SPIN;
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

    int dir = MapObject_GetFacingDir(trainerObj);

    u32 moveCode;
    if (dir == DIR_NORTH) {
        moveCode = MOVEMENT_TYPE_LOOK_NORTH;
    } else if (dir == DIR_SOUTH) {
        moveCode = MOVEMENT_TYPE_LOOK_SOUTH;
    } else if (dir == DIR_WEST) {
        moveCode = MOVEMENT_TYPE_LOOK_LEFT;
    } else {
        moveCode = MOVEMENT_TYPE_LOOK_RIGHT;
    }

    MapObject *secondTrainer = VsSeeker_GetSecondDoubleBattleTrainer(fieldSystem, trainerObj, VS_SEEKER_2V2_TRAINER_SEARCH_MODE_REMATCH_ANIM_SET);
    if (secondTrainer != NULL) {
        VsSeeker_SetTrainerMoveCode(secondTrainer, moveCode);
    }

    VsSeeker_SetTrainerMoveCode(trainerObj, moveCode);
}

static BOOL VsSeeker_WaitForNpcsToPause(FieldSystem *fieldSystem)
{
    u32 objEventCount = MapHeaderData_GetNumObjectEvents(fieldSystem);
    BOOL anyMoving = FALSE;

    for (int i = 0; i < objEventCount; i++) {
        MapObject *mapObj = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, i);

        if (mapObj == NULL) {
            continue;
        }

        if (MapObject_IsMoving(mapObj) == TRUE) {
            MapObject_SetPauseMovementOff(mapObj);
            anyMoving = TRUE;
        } else {
            MapObject_SetPauseMovementOn(mapObj);
        }
    }

    return !anyMoving;
}

static MapObject *VsSeeker_GetSecondDoubleBattleTrainer(FieldSystem *fieldSystem, MapObject *trainerObj, enum VsSeeker2v2TrainerSearchMode mode)
{
    u32 secondScriptID, secondTrainerID;
    u32 objEventCount = MapHeaderData_GetNumObjectEvents(fieldSystem);
    u16 scriptID = MapObject_GetScript(trainerObj);
    u16 trainerID = Script_GetTrainerID(scriptID);

    if (Script_IsTrainerDoubleBattle(trainerID) == FALSE) {
        return NULL;
    }

    for (u32 i = 0; i < objEventCount; i++) {
        MapObject *mapObj = MapObjMan_LocalMapObjByIndex(fieldSystem->mapObjMan, i);

        if (mapObj == NULL) {
            continue;
        }

        if (mode == VS_SEEKER_2V2_TRAINER_SEARCH_MODE_REMATCH_ANIM_CHECK
            && MapObject_GetMovementType(mapObj) == MOVEMENT_TYPE_VS_SEEKER_SPIN) {
            continue;
        }

        switch (MapObject_GetTrainerType(mapObj)) {
        case TRAINER_TYPE_NORMAL:
        case TRAINER_TYPE_VIEW_ALL_DIRECTIONS:
        case TRAINER_TYPE_FACE_SIDES:
        case TRAINER_TYPE_FACE_COUNTERCLOCKWISE:
        case TRAINER_TYPE_FACE_CLOCKWISE:
        case TRAINER_TYPE_SPIN_COUNTERCLOCKWISE:
        case TRAINER_TYPE_SPIN_CLOCKWISE:
            secondScriptID = MapObject_GetScript(mapObj);
            secondTrainerID = Script_GetTrainerID(secondScriptID);

            if (scriptID != secondScriptID && trainerID == secondTrainerID) {
                return mapObj;
            }
        }
    }

    return NULL;
}
