#ifndef POKEPLATINUM_OV5_021F428C_H
#define POKEPLATINUM_OV5_021F428C_H

#include "field/field_system_decl.h"
#include "overlay005/field_effect_manager.h"

#include "overworld_anim_manager.h"

void *VeilstoneGymObjectRenderer_New(FieldEffectManager *fieldEffMan);
void VeilstoneGymObjectRenderer_Free(void *context);
void VeilstoneGymObjectRenderer_InitContext(FieldEffectManager *fieldEffMan, int numTireStacks, int numPunchingBags);

OverworldAnimManager *VeilstoneGymObjectRenderer_InitTireStackRenderer(FieldSystem *fieldSystem, int x, int z, fx32 yOffset);
void VeilstoneGymObjectRenderer_PlayToppleTireStackAnim(OverworldAnimManager *animManager);
BOOL VeilstoneGymObjectRenderer_IsTireStackAnimationFinished(OverworldAnimManager *animManager);

OverworldAnimManager *VeilstoneGymObjectRenderer_InitPunchingBagRenderer(FieldSystem *fieldSystem, int x, int z, fx32 yOffset);
void VeilstoneGymObjectRenderer_StartPunchingBagAnimation(OverworldAnimManager *animManager, int animId, BOOL isMoving);
void VeilstoneGymObjectRenderer_UpdateBagFrameDelta(OverworldAnimManager *animManager, fx32 frameDelta);
BOOL VeilstoneGymObjectRenderer_IsPunchingBagAnimFinished(OverworldAnimManager *animManager);

#endif // POKEPLATINUM_OV5_021F428C_H
