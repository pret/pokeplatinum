#include <nitro.h>
#include <simulator/config/ini.h>

#include "port/sim_config_prj.h"

#define SIM_CONFIG_PRJ_FILE_PATH "./sim_config_prj.ini"

static int IniHandler(void* user, const char* section, const char* name,
                   const char* value);
static const char * BoolToString(BOOL arg);
static BOOL StringToBool(const char * str);

static SIM_Config_prj_type s_SIM_config_prj;

static int IniHandler(void* user, const char* section, const char* name,
                   const char* value)
{
    #define MATCH(s, n) strcmp(section, s) == 0 && strcmp(name, n) == 0

    SIM_Config_prj_type * config = (SIM_Config_prj_type *)user;

    // General section
    if(MATCH("General", "60Fps")) {
        config->enable60fps = StringToBool(value);
    }
    if(MATCH("General", "60FpsSpeedFix")) {
        config->enable60fpsSpeedFix = StringToBool(value);
    }
    if(MATCH("General", "EnableAsserts")) {
        config->enableAsserts = StringToBool(value);
    }

    // Cheats section
    if(MATCH("Cheats", "WalkThroughWalls")) {
        config->walkThroughWalls = StringToBool(value);
    }

    if(MATCH("Cheats", "DisableRandomEncounters")) {
        config->disableRandomEncounters = StringToBool(value);
    }

    if(MATCH("Cheats", "RunFromTrainerBattles")) {
        config->runFromTrainerBattles = StringToBool(value);
    }
}

static const char * BoolToString(BOOL arg)
{
    const char * ret = "false";
    if(arg) {
        ret = "true";
    }

    return ret;
}

static BOOL StringToBool(const char * str)
{
    BOOL ret = FALSE;

    if(strcmp(str, "false") == 0) {
        ret = FALSE;
    } else if(strcmp(str, "true") == 0) {
        ret = TRUE;
    }
    return ret;
}

// Initialize a SIM_Config_prj_type to default values
void SIM_Config_prj_LoadDefaults(SIM_Config_prj_type * aConfig)
{
  aConfig->enable60fps = TRUE;
  aConfig->enable60fpsSpeedFix = TRUE;
  aConfig->enableAsserts = FALSE;
  aConfig->breakDebuggerOnGfAssert = FALSE;

  // Cheats section
  aConfig->walkThroughWalls = FALSE;
}

// Loads the configuration file. If it does not exist, return false
BOOL SIM_Config_prj_LoadConfigFile(SIM_Config_prj_type * aConfig)
{
    return (ini_parse(SIM_CONFIG_PRJ_FILE_PATH, IniHandler, aConfig) >= 0);
}

// Save a SIM_Config_prj_type to the configuration file
void SIM_Config_prj_SaveConfigFile(SIM_Config_prj_type * aConfig)
{
    FILE * configFile = fopen(SIM_CONFIG_PRJ_FILE_PATH, "w");
    
    fprintf(configFile, "[General]\n");
    fprintf(configFile, "60Fps=%s\n", BoolToString(aConfig->enable60fps));
    fprintf(configFile, "60FpsSpeedFix=%s\n", BoolToString(aConfig->enable60fpsSpeedFix));
    fprintf(configFile, "EnableAsserts=%s\n", BoolToString(aConfig->enableAsserts));
    fprintf(configFile, "BreakDebuggerOnAssert=%s\n", BoolToString(aConfig->breakDebuggerOnGfAssert));
    fprintf(configFile, "\n");

    fprintf(configFile, "[Cheats]\n");
    fprintf(configFile, "WalkThroughWalls=%s\n", BoolToString(aConfig->walkThroughWalls));
    fprintf(configFile, "DisableRandomEncounters=%s\n", BoolToString(aConfig->disableRandomEncounters));
    fprintf(configFile, "RunFromTrainerBattles=%s\n", BoolToString(aConfig->runFromTrainerBattles));

    fclose(configFile);
}

void SIM_Config_prj_init() {
  //Load default config
  SIM_Config_prj_LoadDefaults(&s_SIM_config_prj);
  
  //Load configuration file
  if(!SIM_Config_prj_LoadConfigFile(&s_SIM_config_prj)){
    //Config file does not exist. Save config file with defaults
    SIM_Config_prj_SaveConfigFile(&s_SIM_config_prj);
  }
}

SIM_Config_prj_type * SIM_Config_prj_GetConfig()
{
  return &s_SIM_config_prj;
}