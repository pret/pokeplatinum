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

void GameOptions_Copy (const GameOptions * src, GameOptions * dst)
{
    MI_CpuCopy8(src, dst, sizeof(GameOptions));
}

void GameOptions_SetDefaultValues (GameOptions * options)
{
    MI_CpuFill8(options, 0, sizeof(GameOptions));

    options->textSpeed      = TEXTSPEED_MID;
    options->audioMode      = AUDIOMODE_STEREO;
    options->battleScene    = BATTLESCENE_ON;
    options->battleStyle    = BATTLESTYLE_SHIFT;
    options->buttonMode     = BUTTONMODE_NORMAL;
    options->frameStyle     = FRAMESTYLE_01;
}

void GameOptions_UpdateGlobalButtonMode (UnkStruct_021C0794 * saveData, ButtonMode newButtonMode)
{
    if (saveData != NULL) {
        newButtonMode = GameOptions_GetButtonMode(sub_02025E44(saveData));
    }

    switch (newButtonMode) {
        case BUTTONMODE_START_IS_X:
            Unk_021BF67C.unk_34 = 1;
            break;
        case BUTTONMODE_L_IS_A:
            Unk_021BF67C.unk_34 = 3;
            break;
        default:
            Unk_021BF67C.unk_34 = 0;
            break;
    }
}

TextSpeed GameOptions_GetTextSpeed (const GameOptions * options)
{
    return options->textSpeed;
}

void GameOptions_SetTextSpeed (GameOptions * options, TextSpeed newVal)
{
    options->textSpeed = newVal;
}

u8 GameOptions_GetTextSpeedReductionFactor (const GameOptions * options)
{
    TextSpeed rawTextSpeedValue = GameOptions_GetTextSpeed(options);
    switch (rawTextSpeedValue) {
        case TEXTSPEED_SLOW:        return 8;
        case TEXTSPEED_MID:         return 4;
        default:                    return 1;
    }
}

AudioMode GameOptions_GetAudioMode (const GameOptions * options)
{
    return options->audioMode;
}

void GameOptions_SetAudioMode (GameOptions * options, AudioMode newVal)
{
    options->audioMode = newVal;
}

BattleScene GameOptions_GetBattleScene (const GameOptions * options)
{
    return options->battleScene;
}

void GameOptions_SetBattleScene (GameOptions * options, BattleScene newVal)
{
    options->battleScene = newVal;
}

BattleStyle GameOptions_GetBattleStyle (const GameOptions * options)
{
    return options->battleStyle;
}

void GameOptions_SetBattleStyle (GameOptions * options, BattleStyle newVal)
{
    options->battleStyle = newVal;
}

ButtonMode GameOptions_GetButtonMode (const GameOptions * options)
{
    return options->buttonMode;
}

void GameOptions_SetButtonMode (GameOptions * options, ButtonMode newVal)
{
    options->buttonMode = newVal;
}

FrameStyle GameOptions_GetFrameStyle (const GameOptions * options)
{
    return options->frameStyle;
}

void GameOptions_SetFrameStyle (GameOptions * options, FrameStyle newVal)
{
    options->frameStyle = newVal;
}
