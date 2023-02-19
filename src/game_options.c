#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/game_options.h"

#include "heap.h"
#include "unk_02025E08.h"
#include "game_options.h"

GameOptions * GameOptions_Init (u32 heapID)
{
    GameOptions * newOptions = Heap_AllocFromHeap(heapID, sizeof(GameOptions));
    GameOptions_SetDefaultValues(newOptions);

    return newOptions;
}

void GameOptions_Copy (const GameOptions * src, GameOptions * dest)
{
    MI_CpuCopy8(src, dest, sizeof(GameOptions));
}

void GameOptions_SetDefaultValues (GameOptions * options)
{
    MI_CpuFill8(options, 0, sizeof(GameOptions));

    options->textSpeed      = 1;
    options->audioMode      = 0;
    options->battleAnimsOff = 0;
    options->battleSetMode  = 0;
    options->buttonMode     = 0;
    options->frameStyle     = 0;
}

void GameOptions_UpdateGlobalButtonMode (UnkStruct_021C0794 * saveData, int newButtonMode)
{
    if (saveData != NULL) {
        newButtonMode = GameOptions_GetButtonMode(sub_02025E44(saveData));
    }

    switch (newButtonMode) {
    case 1:
        Unk_021BF67C.unk_34 = 1;
        break;
    case 2:
        Unk_021BF67C.unk_34 = 3;
        break;
    case 0:
    default:
        Unk_021BF67C.unk_34 = 0;
        break;
    }
}

int GameOptions_GetTextSpeed (const GameOptions * options)
{
    return options->textSpeed;
}

void GameOptions_SetTextSpeed (GameOptions * options, int newVal)
{
    options->textSpeed = newVal;
}

u8 GameOptions_GetTextSpeedReductionFactor (const GameOptions * options)
{
    int rawTextSpeedValue = GameOptions_GetTextSpeed(options);

    if (rawTextSpeedValue == 0) {
        return 8;
    } else if (rawTextSpeedValue == 1) {
        return 4;
    } else {
        return 1;
    }
}

int GameOptions_GetAudioMode (const GameOptions * options)
{
    return options->audioMode;
}

void GameOptions_SetAudioMode (GameOptions * options, int newVal)
{
    options->audioMode = newVal;
}

int GameOptions_GetBattleAnimsOff (const GameOptions * options)
{
    return options->battleAnimsOff;
}

void GameOptions_SetBattleAnimsOff (GameOptions * options, int newVal)
{
    options->battleAnimsOff = newVal;
}

int GameOptions_GetBattleSetMode (const GameOptions * options)
{
    return options->battleSetMode;
}

void GameOptions_SetBattleSetMode (GameOptions * options, int newVal)
{
    options->battleSetMode = newVal;
}

int GameOptions_GetButtonMode (const GameOptions * options)
{
    return options->buttonMode;
}

void GameOptions_SetButtonMode (GameOptions * options, int newVal)
{
    options->buttonMode = newVal;
}

int GameOptions_GetFrameStyle (const GameOptions * options)
{
    return options->frameStyle;
}

void GameOptions_SetFrameStyle (GameOptions * options, int newVal)
{
    options->frameStyle = newVal;
}
