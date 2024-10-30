#include "game_options.h"

#include <nitro.h>
#include <string.h>

#include "core_sys.h"
#include "heap.h"
#include "save_player.h"
#include "savedata.h"
#include "text.h"

Options *Options_New(u32 heapID)
{
    Options *options = Heap_AllocFromHeap(heapID, sizeof(Options));
    Options_Init(options);

    return options;
}

void Options_Copy(const Options *src, Options *dest)
{
    MI_CpuCopy8(src, dest, sizeof(Options));
}

void Options_Init(Options *options)
{
    MI_CpuFill8(options, 0, sizeof(Options));

    options->textSpeed = OPTIONS_TEXT_SPEED_NORMAL;
    options->soundMode = OPTIONS_SOUND_MODE_STEREO;
    options->battleStyle = OPTIONS_BATTLE_STYLE_SHIFT;
    options->battleScene = OPTIONS_BATTLE_SCENE_ON;
    options->buttonMode = OPTIONS_BUTTON_MODE_NORMAL;
    options->frame = OPTIONS_FRAME_1;
}

void Options_SetSystemButtonMode(SaveData *saveData, enum OptionsButtonMode mode)
{
    if (saveData != NULL) {
        mode = Options_ButtonMode(SaveData_Options(saveData));
    }

    switch (mode) {
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

int Options_TextSpeed(const Options *options)
{
    return options->textSpeed;
}

void Options_SetTextSpeed(Options *options, enum OptionsTextSpeed speed)
{
    options->textSpeed = speed;
}

u8 Options_TextFrameDelay(const Options *options)
{
    int speed = Options_TextSpeed(options);

    if (speed == OPTIONS_TEXT_SPEED_SLOW) {
        return TEXT_SPEED_SLOW;
    } else if (speed == OPTIONS_TEXT_SPEED_NORMAL) {
        return TEXT_SPEED_NORMAL;
    } else {
        return TEXT_SPEED_FAST;
    }
}

int Options_SoundMode(const Options *options)
{
    return options->soundMode;
}

void Options_SetSoundMode(Options *options, enum OptionsSoundMode mode)
{
    options->soundMode = mode;
}

int Options_BattleScene(const Options *options)
{
    return options->battleScene;
}

void Options_SetBattleScene(Options *options, enum OptionsBattleScene scene)
{
    options->battleScene = scene;
}

int Options_BattleStyle(const Options *options)
{
    return options->battleStyle;
}

void Options_SetBattleStyle(Options *options, enum OptionsBattleStyle style)
{
    options->battleStyle = style;
}

int Options_ButtonMode(const Options *options)
{
    return options->buttonMode;
}

void Options_SetButtonMode(Options *options, enum OptionsButtonMode mode)
{
    options->buttonMode = mode;
}

int Options_Frame(const Options *options)
{
    return options->frame;
}

void Options_SetFrame(Options *options, enum OptionsFrame frame)
{
    options->frame = frame;
}
