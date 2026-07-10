#ifndef SIM_CONFIG_PRJ_H
#define SIM_CONFIG_PRJ_H

#include <nitro/types.h>

typedef struct {
    BOOL enable60fps; // When true, unlock the framerate to 60fps
    BOOL enable60fpsSpeedFix; // When enabled, fixes things in the game that run at double speed due to being at 60fps
	BOOL enableAsserts; //Should asserts cause a communication error?
    BOOL breakDebuggerOnGfAssert; // When true, break the debugger when a GF_ASSERT fails

	// Cheats section
	BOOL walkThroughWalls; // When enabled, allows the player to walk through walls
    BOOL disableRandomEncounters; // When enabled, all random encounters are turned off
    BOOL runFromTrainerBattles; // When enabled, allows running away from trainer battles
} SIM_Config_prj_type;

void SIM_Config_prj_LoadDefaults(SIM_Config_prj_type * aConfig);
BOOL SIM_Config_prj_LoadConfigFile(SIM_Config_prj_type * aConfig);
void SIM_Config_prj_SaveConfigFile(SIM_Config_prj_type * aConfig);
void SIM_Config_prj_init();
SIM_Config_prj_type * SIM_Config_prj_GetConfig();

#endif