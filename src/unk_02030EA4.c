#include "unk_02030EA4.h"

#include <nitro.h>
#include <string.h>

#include "savedata.h"

typedef struct WiFiQuestions_t {
    u32 unk_00;
    u32 unk_04;
} WiFiQuestions;

int WiFiQuestion_SaveSize(void) {
    return sizeof(WiFiQuestions);
}

void WiFiQuestion_Init(WiFiQuestions *param0) {
    MI_CpuFill32(param0, 0, WiFiQuestion_SaveSize());
    param0->unk_00 = 0xffffffff;
}

WiFiQuestions *SaveData_GetWiFiQuestions(SaveData *saveData) {
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_WIFI_QUESTIONS);
}

u32 sub_02030ED0(const WiFiQuestions *param0) {
    return param0->unk_00;
}

u32 sub_02030ED4(const WiFiQuestions *param0) {
    return param0->unk_04;
}

void sub_02030ED8(WiFiQuestions *param0, u32 param1) {
    param0->unk_00 = param1;
}

void sub_02030EDC(WiFiQuestions *param0, u32 param1) {
    param0->unk_04 = param1;
}
