#ifndef POKEPLATINUM_APPLICATIONS_EASY_CHAT_MAIN_H
#define POKEPLATINUM_APPLICATIONS_EASY_CHAT_MAIN_H

#include "applications/easy_chat/defs.h"
#include "applications/easy_chat/struct_ov20_021D2128_decl.h"

#include "easy_chat_args.h"
#include "overlay_manager.h"
#include "sentence.h"
#include "string_gf.h"
#include "touch_screen_actions.h"
#include "unk_020998EC.h"

typedef struct EasyChatApp EasyChatApp;

typedef int (*EasyChatMainFunc)(EasyChatApp *easyChatApp, int *state);
typedef void (*EasyChatTaskFunc)(EasyChatApp *easyChatApp, int *state);

typedef struct {
    u8 unk_00;
    u8 unk_01;
} UnkStruct_ov20_021D1F34;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u8 unk_06;
    u8 unk_07;
    int unk_08;
} UnkStruct_ov20_021D18BC;

typedef struct {
    s16 unk_00;
    s8 unk_02;
    s8 unk_03;
} UnkStruct_ov20_021D0F64;

typedef struct EasyChatApp {
    EasyChatArgs *args;
    u32 type;
    Sentence sentence;
    u16 words[MAX_EASY_CHAT_WORDS];
    UnkStruct_ov20_021D2128 *unk_14;
    UnkStruct_020998EC *unk_18;
    int state;
    EasyChatMainFunc mainFunc;
    EasyChatMainFunc nextMainFunc;
    int taskFuncState;
    EasyChatTaskFunc taskFunc;
    u16 pressedKeys;
    u16 heldKeysUnused;
    u16 pressedKeysRepeatable;
    int touchedButtonIndex;
    int unk_3C;
    TouchScreenActions *buttonAction;
    BOOL unk_44;
    BOOL unk_48;
    u16 unk_4C;
    u16 currentWordSlot;
    u16 categoryCursorPos;
    u16 prevCategoryCursorPos;
    UnkStruct_ov20_021D18BC unk_54;
    UnkStruct_ov20_021D0F64 unk_60;
    u8 unk_64;
    u8 mode;
    UnkStruct_ov20_021D1F34 unk_66;
} EasyChatApp;

BOOL EasyChat_Init(ApplicationManager *appMan, int *state);
BOOL EasyChat_Main(ApplicationManager *appMan, int *state);
BOOL EasyChat_Exit(ApplicationManager *appMan, int *state);
u32 EasyChat_GetType(const EasyChatApp *easyChatApp);
u32 EasyChat_GetInstructionBankEntry(const EasyChatApp *easyChatApp);
u32 EasyChat_GetMode(const EasyChatApp *easyChatApp);
u32 ov20_021D1F9C(const EasyChatApp *easyChatApp);
u16 EasyChat_GetWordAtSlot(const EasyChatApp *easyChatApp, int param1);
String *ov20_021D1FC0(const EasyChatApp *easyChatApp, u32 param1);
u32 EasyChat_GetCurrentWordSlot(const EasyChatApp *easyChatApp);
u32 ov20_021D1FD4(const EasyChatApp *easyChatApp);
u32 EasyChat_GetCategoryCursorPos(const EasyChatApp *easyChatApp);
u32 ov20_021D1FE4(const EasyChatApp *easyChatApp);
void ov20_021D2008(const EasyChatApp *easyChatApp, u32 param1, String *param2);
u32 ov20_021D2034(const EasyChatApp *easyChatApp);
int ov20_021D2040(const EasyChatApp *easyChatApp);
BOOL ov20_021D204C(const EasyChatApp *easyChatApp);
BOOL ov20_021D2060(const EasyChatApp *easyChatApp);
int EasyChat_GetFrame(const EasyChatApp *easyChatApp);
u32 ov20_021D208C(const EasyChatApp *easyChatApp);

#endif // POKEPLATINUM_APPLICATIONS_EASY_CHAT_MAIN_H
