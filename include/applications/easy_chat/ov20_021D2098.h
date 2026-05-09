#ifndef POKEPLATINUM_OV20_021D2098_H
#define POKEPLATINUM_OV20_021D2098_H

#include "struct_decls/struct_020998EC_decl.h"

#include "applications/easy_chat/main.h"
#include "applications/easy_chat/struct_ov20_021D2128_decl.h"

#include "bg_window.h"
#include "sprite.h"
#include "sys_task_manager.h"

enum EasyChatTask {
    EASY_CHAT_SYSTASK_00 = 0,
    EASY_CHAT_SYSTASK_01,
    EASY_CHAT_SYSTASK_02,
    EASY_CHAT_SYSTASK_03,
    EASY_CHAT_SYSTASK_04,
    EASY_CHAT_SYSTASK_05,
    EASY_CHAT_SYSTASK_06,
    EASY_CHAT_SYSTASK_07,
    EASY_CHAT_SYSTASK_08,
    EASY_CHAT_SYSTASK_09,
    EASY_CHAT_SYSTASK_10,
    EASY_CHAT_SYSTASK_11,
    EASY_CHAT_SYSTASK_12,
    EASY_CHAT_SYSTASK_13,
    EASY_CHAT_SYSTASK_14,
    EASY_CHAT_SYSTASK_15,
    EASY_CHAT_SYSTASK_16,
    EASY_CHAT_SYSTASK_17,
    EASY_CHAT_SYSTASK_18,
    EASY_CHAT_SYSTASK_19,
    EASY_CHAT_SYSTASK_20,
    EASY_CHAT_SYSTASK_21,
    EASY_CHAT_SYSTASK_22,
    EASY_CHAT_SYSTASK_23,
    EASY_CHAT_SYSTASK_24,
    EASY_CHAT_SYSTASK_25,
    EASY_CHAT_SYSTASK_26,
    EASY_CHAT_SYSTASK_27,
    EASY_CHAT_SYSTASK_28,
};

UnkStruct_ov20_021D2128 *ov20_021D2098(const EasyChatApp *param0, const UnkStruct_020998EC *param1);
void ov20_021D2128(UnkStruct_ov20_021D2128 *param0);
SysTask *ov20_021D2170(SysTaskFunc param0, void *param1, int param2);
void ov20_021D21A0(UnkStruct_ov20_021D2128 *param0, int param1);
BOOL ov20_021D21F8(UnkStruct_ov20_021D2128 *param0);
BOOL ov20_021D2210(UnkStruct_ov20_021D2128 *param0, int param1);
u32 ov20_021D2DF4(UnkStruct_ov20_021D2128 *param0);
BgConfig *ov20_021D2E04(UnkStruct_ov20_021D2128 *param0);
SpriteList *ov20_021D2E08(UnkStruct_ov20_021D2128 *param0);
void ov20_021D2E0C(UnkStruct_ov20_021D2128 *param0, SpriteResourcesHeader *param1, u32 param2, u32 param3);
Sprite *ov20_021D2E50(UnkStruct_ov20_021D2128 *param0, SpriteResourcesHeader *param1, u32 param2, u32 param3, u32 param4, int param5);

#endif // POKEPLATINUM_OV20_021D2098_H
