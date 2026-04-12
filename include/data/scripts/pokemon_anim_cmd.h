#ifndef POKEPLATINUM_DATA_SCRIPTS_POKEMON_ANIM_CMD_H
#define POKEPLATINUM_DATA_SCRIPTS_POKEMON_ANIM_CMD_H

// clang-format off

#include "data/scripts/cmd_table.h"

ScriptCommand(POKEMONANIMCMD_END,                    PokemonAnimCmd_End)
ScriptCommand(POKEMONANIMCMD_WAITFRAME,              PokemonAnimCmd_WaitFrame)
ScriptCommand(POKEMONANIMCMD_SETORIGINALPOSITION,    PokemonAnimCmd_SetOriginalPosition)
ScriptCommand(POKEMONANIMCMD_SETVARIF,               PokemonAnimCmd_SetVarIf)
ScriptCommand(POKEMONANIMCMD_SETVAR,                 PokemonAnimCmd_SetVar)
ScriptCommand(POKEMONANIMCMD_COPYVAR,                PokemonAnimCmd_CopyVar)
ScriptCommand(POKEMONANIMCMD_ADD,                    PokemonAnimCmd_Add)
ScriptCommand(POKEMONANIMCMD_MULTIPLY,               PokemonAnimCmd_Multiply)
ScriptCommand(POKEMONANIMCMD_SUBTRACT,               PokemonAnimCmd_Subtract)
ScriptCommand(POKEMONANIMCMD_DIVIDE,                 PokemonAnimCmd_Divide)
ScriptCommand(POKEMONANIMCMD_MODULO,                 PokemonAnimCmd_Modulo)
ScriptCommand(POKEMONANIMCMD_LOOP,                   PokemonAnimCmd_Loop)
ScriptCommand(POKEMONANIMCMD_LOOPEND,                PokemonAnimCmd_LoopEnd)
ScriptCommand(POKEMONANIMCMD_SETSPRITEATTRIBUTE,     PokemonAnimCmd_SetSpriteAttribute)
ScriptCommand(POKEMONANIMCMD_ADDSPRITEATTRIBUTE,     PokemonAnimCmd_AddSpriteAttribute)
ScriptCommand(POKEMONANIMCMD_UPDATESPRITEATTRIBUTE,  PokemonAnimCmd_UpdateSpriteAttribute)
ScriptCommand(POKEMONANIMCMD_SIN,                    PokemonAnimCmd_Sin)
ScriptCommand(POKEMONANIMCMD_COS,                    PokemonAnimCmd_Cos)
ScriptCommand(POKEMONANIMCMD_SETTRANSLATION,         PokemonAnimCmd_SetTranslation)
ScriptCommand(POKEMONANIMCMD_ADDTRANSLATION,         PokemonAnimCmd_AddTranslation)
ScriptCommand(POKEMONANIMCMD_UPDATEATTRIBUTE,        PokemonAnimCmd_UpdateAttribute)
ScriptCommand(POKEMONANIMCMD_APPLYTRANSLATION,       PokemonAnimCmd_ApplyTranslation)
ScriptCommand(POKEMONANIMCMD_APPLYSCALEANDROTATION,  PokemonAnimCmd_ApplyScaleAndRotation)
ScriptCommand(POKEMONANIMCMD_SETOFFSET,              PokemonAnimCmd_SetOffset)
ScriptCommand(POKEMONANIMCMD_WAITTRANSFORM,          PokemonAnimCmd_WaitTransform)
ScriptCommand(POKEMONANIMCMD_SETYNORMALIZATION,      PokemonAnimCmd_SetYNormalization)
ScriptCommand(POKEMONANIMCMD_TRANSFORMCURVE,         PokemonAnimCmd_Transform_Curve)
ScriptCommand(POKEMONANIMCMD_TRANSFORMCURVEEVEN,     PokemonAnimCmd_Transform_CurveEven)
ScriptCommand(POKEMONANIMCMD_TRANSFORMLINEAR,        PokemonAnimCmd_Transform_Linear)
ScriptCommand(POKEMONANIMCMD_TRANSFORMLINEAREVEN,    PokemonAnimCmd_Transform_LinearEven)
ScriptCommand(POKEMONANIMCMD_TRANSFORMLINEARBOUNDED, PokemonAnimCmd_Transform_LinearBounded)
ScriptCommand(POKEMONANIMCMD_SETSTARTDELAY,          PokemonAnimCmd_SetStartDelay)
ScriptCommand(POKEMONANIMCMD_FADE,                   PokemonAnimCmd_Fade)
ScriptCommand(POKEMONANIMCMD_WAITFADE,               PokemonAnimCmd_WaitFade)

// clang-format on

#endif // POKEPLATINUM_DATA_SCRIPTS_POKEMON_ANIM_CMD_H
