#include <nitro.h>
#include <string.h>


#include "constants/game_options.h"

#include "core_sys.h"
#include "savedata.h"
#include "heap.h"
#include "unk_02025E08.h"
#include "game_options.h"
#include "core_sys.h"

Options* Options_AllocMemory (u32 heapID)
{
    Options *options = Heap_AllocFromHeap(heapID, sizeof(Options));
    Options_Init(options);

    return options;
}

void Options_Copy (const Options *src, Options *dest)
{
    MI_CpuCopy8(src, dest, sizeof(Options));
}

void Options_Init (Options *options)
{
    MI_CpuFill8(options, 0, sizeof(Options));

    options->textSpeed = OPTIONS_TEXT_SPEED_NORMAL;
    options->soundMethod = OPTIONS_SOUND_METHOD_STEREO;
    options->battleStyle = OPTIONS_BATTLE_STYLE_SHIFT;
    options->battleScene = OPTIONS_BATTLE_SCENE_ON;
    options->buttonMode = OPTIONS_BUTTON_MODE_NORMAL;
    options->frame = OPTIONS_FRAME_1;
}

void Options_SetSystemButtonMode (SaveData *saveData, int buttonMode)
{
    if (saveData != NULL) {
        buttonMode = Options_ButtonMode(sub_02025E44(saveData));
    }

    switch (buttonMode) {
    case OPTIONS_BUTTON_MODE_START_IS_X:
        gCoreSys.buttonMode = BUTTON_MODE_START_IS_X;
        break;
    case OPTIONS_BUTTON_MODE_L_IS_A:
        gCoreSys.buttonMode = BUTTON_MODE_L_IS_A;
        break;
    case OPTIONS_BUTTON_MODE_NORMAL:
    default:
        gCoreSys.buttonMode = BUTTON_MODE_NORMAL;
        break;
    }
}

int Options_TextSpeed (const Options *options)
{
    return options->textSpeed;
}

void Options_SetTextSpeed (Options *options, int textSpeed)
{
    options->textSpeed = textSpeed;
}
//ravetodo Options_GetTextFrameDelay
u8 sub_02027AC0 (const Options *options)
{
    int speed = Options_TextSpeed(options);

    if (speed == OPTIONS_TEXT_SPEED_SLOW) {
        return 8;
    } else if (speed == OPTIONS_TEXT_SPEED_NORMAL) {
        return 4;
    } else {
        return 1;
    }
}

int Options_SoundMethod (const Options *options)
{
    return options->soundMethod;
}

void Options_SetSoundMethod (Options *options, int soundMethod)
{
    options->soundMethod = soundMethod;
}

int Options_BattleScene (const Options *options)
{
    return options->battleScene;
}

void Options_SetBattleScene (Options *options, int battleScene)
{
    options->battleScene = battleScene;
}

int Options_BattleStyle (const Options *options)
{
    return options->battleStyle;
}

void Options_SetBattleStyle (Options *options, int battleStyle)
{
    options->battleStyle = battleStyle;
}

int Options_ButtonMode (const Options *options)
{
    return options->buttonMode;
}

void Options_SetButtonMode (Options *options, int buttonMode)
{
    options->buttonMode = buttonMode;
}

//ravetodo Options_Frame
int sub_02027B50 (const Options *options)
{
    return options->frame;
}

void Options_SetFrame (Options *options, int frame)
{
    options->frame = frame;
}
