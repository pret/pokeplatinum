#include "intro_message_screen.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/fieldmap.h"

#include "easy_chat_args.h"
#include "easy_chat_sentence.h"
#include "field_task.h"
#include "heap.h"
#include "savedata_misc.h"
#include "screen_fade.h"
#include "string_template.h"
#include "unk_0203D1B8.h"

#include "res/text/bank/easy_chat.h"

typedef struct IntroMessageScreenArgs {
    FieldSystem *fieldSystem;
    StringTemplate *template;
    EasyChatSentence easyChatSentence;
    EasyChatArgs *easyChatArgs;
    MiscSaveBlock *miscSaveBlock;
    int state;
    u8 unused[4];
    u16 *destVar;
} IntroMessageScreenArgs;

static void IntroMessageScreen_Free(IntroMessageScreenArgs *args);
static BOOL IntroMessageScreen_FieldTask(FieldTask *task);

void OpenIntroMessageScreen(FieldTask *task, u16 *destVar)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    IntroMessageScreenArgs *args = Heap_Alloc(HEAP_ID_FIELD3, sizeof(IntroMessageScreenArgs));

    args->fieldSystem = fieldSystem;
    args->template = StringTemplate_Default(HEAP_ID_FIELD3);
    args->easyChatArgs = EasyChatArgs_New(EASY_CHAT_TYPE_SENTENCE, EasyChat_Text_ChooseWordOrPhrase, args->fieldSystem->saveData, HEAP_ID_FIELD3);
    args->miscSaveBlock = SaveData_MiscSaveBlock(fieldSystem->saveData);
    args->destVar = destVar;

    EasyChatSentence_InitWithType(&args->easyChatSentence, EASY_CHAT_SENTENCE_TYPE_UNION_ROOM);
    MiscSaveBlock_IntroMsg(args->miscSaveBlock, &args->easyChatSentence);
    sub_02097520(args->easyChatArgs);

    args->state = 0;
    FieldTask_InitCall(task, IntroMessageScreen_FieldTask, args);
}

static void IntroMessageScreen_Free(IntroMessageScreenArgs *args)
{
    EasyChatArgs_Free(args->easyChatArgs);
    StringTemplate_Free(args->template);
    Heap_Free(args);
}

static BOOL IntroMessageScreen_FieldTask(FieldTask *task)
{
    IntroMessageScreenArgs *args = FieldTask_GetEnv(task);

    switch (args->state) {
    case 0:
        EasyChatArgs_SetSentence(args->easyChatArgs, &(args->easyChatSentence));
        EasyChatArgs_FlagAsUnmodified(args->easyChatArgs);
        FieldSystem_OpenEasyChat(args->fieldSystem, args->easyChatArgs);
        args->state = 1;
        break;
    case 1:
        if (FieldSystem_IsRunningApplication(args->fieldSystem) == FALSE) {
            FieldSystem_StartFieldMap(args->fieldSystem);
            args->state = 2;
        }
        break;
    case 2:
        if (FieldSystem_IsRunningFieldMap(args->fieldSystem)) {
            FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_IN);
            args->state = 3;
        }
        break;
    case 3:
        if (IsScreenFadeDone()) {
            if (EasyChatArgs_IsUnmodified(args->easyChatArgs)) {
                *args->destVar = FALSE;
                args->state = 4;
            } else {
                *args->destVar = TRUE;
                EasyChatArgs_CopySentenceTo(args->easyChatArgs, &args->easyChatSentence);
                MiscSaveBlock_SetIntroMsg(args->miscSaveBlock, &args->easyChatSentence);
                args->state = 4;
            }
        }
        break;
    case 4:
        IntroMessageScreen_Free(args);
        return TRUE;
    }

    return FALSE;
}
