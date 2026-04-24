#ifndef POKEPLATINUM_OV8_02249960_H
#define POKEPLATINUM_OV8_02249960_H

#include "struct_decls/map_object.h"

#include "field/field_system_decl.h"

#include "bg_window.h"
#include "message.h"
#include "string_gf.h"

enum EternaClockState {
    ETERNA_CLOCK_INITIAL = 0,
    ETERNA_CLOCK_DEFEATED_FIRST_TRAINER,
    ETERNA_CLOCK_DEFEATED_SECOND_TRAINER,
    ETERNA_CLOCK_DEFEATED_THIRD_TRAINER,
    ETERNA_CLOCK_DEFEATED_GYM_LEADER,
    ETERNA_CLOCK_MAX,
};

enum PastoriaGymPressedButton {
    PASTORIA_ORANGE_BUTTON_PRESSED = 0,
    PASTORIA_GREEN_BUTTON_PRESSED,
    PASTORIA_BLUE_BUTTON_PRESSED,
};

enum PastoriaGymButtonGroup {
    PASTORIA_NO_BUTTON_GROUP = 0,
    PASTORIA_BLUE_BUTTON_GROUP,
    PASTORIA_GREEN_BUTTON_GROUP,
    PASTORIA_ORANGE_BUTTON_GROUP,
};

typedef struct EternaGymClockPersistedFeature {
    u32 state;
} EternaGymClockPersistedFeature;

typedef struct PastoriaGymPersistedFeature {
    u8 pressedButton;
} PastoriaGymPersistedFeature;

typedef struct HearthomeGymPersistedFeatureDP {
    u8 isMovingUp;
} HearthomeGymPersistedFeatureDP;

typedef struct HearthomeGymPersistedFeatures {
    s16 initialized;
    s16 correctDoorID;
    s16 clueX;
    s16 clueZ;
} HearthomeGymPersistedFeatures;

void PastoriaGym_PressButton(FieldSystem *fieldSystem);
BOOL PastoriaGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding);
void PastoriaGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void HearthomeGym_MoveLift(FieldSystem *fieldSystem);
void CanalaveGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
BOOL ov8_0224AAA8(FieldSystem *fieldSystem);
void CanalaveGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL CanalaveGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding);
void SunyshoreGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void SunyshoreGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL SunyshoreGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding);
void ov8_0224AD34(FieldSystem *fieldSystem, const u8 param1);
void EternaGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void EternaGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL EternaGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *outIsColliding);
BOOL EternaGym_AdvanceClockState(FieldSystem *fieldSystem, Window *param1, MessageLoader *param2, String *param3);
BOOL EternaGym_IsHourHandJumpTile(FieldSystem *fieldSystem, int tileX, int tileZ, int direction);
void VeilstoneGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void VeilstoneGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL VeilstoneGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding);
BOOL ov8_0224BF4C(FieldSystem *fieldSystem);
void HearthomeGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void HearthomeGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL HearthomeGym_CheckIfPlayerSeesTrainer(FieldSystem *fieldSystem);
BOOL HearthomeGym_SetTrainerPostBattleMovement(FieldSystem *fieldSystem, MapObject *trainerObj);
BOOL HearthomeGym_CheckIfEnteredIncorrectDoor(FieldSystem *fieldSystem, int playerX, int playerZ, int *transitionDir);

#endif // POKEPLATINUM_OV8_02249960_H
