#include "wifi_plaza_question_data.h"

#include <nitro.h>
#include <string.h>

#include "savedata.h"

int WiFiPlazaQuestion_SaveSize(void)
{
    return sizeof(WiFiPlazaQuestion);
}

void WiFiPlazaQuestion_Init(WiFiPlazaQuestion *wiFiPlazaQuestion)
{
    MI_CpuFill32(wiFiPlazaQuestion, 0, WiFiPlazaQuestion_SaveSize());
    wiFiPlazaQuestion->questionNumber = 0xffffffff;
}

WiFiPlazaQuestion *SaveData_GetWiFiPlazaQuestion(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_WIFI_PLAZA_QUESTIONS);
}

u32 WiFiPlazaQuestion_GetQuestionNumber(const WiFiPlazaQuestion *wiFiPlazaQuestion)
{
    return wiFiPlazaQuestion->questionNumber;
}

u32 WiFiPlazaQuestion_GetSelectedAnswer(const WiFiPlazaQuestion *wiFiPlazaQuestion)
{
    return wiFiPlazaQuestion->selectedAnswer;
}

void WiFiPlazaQuestion_SetQuestionNumber(WiFiPlazaQuestion *wiFiPlazaQuestion, u32 questionNumber)
{
    wiFiPlazaQuestion->questionNumber = questionNumber;
}

void WiFiPlazaQuestion_SetSelectedAnswer(WiFiPlazaQuestion *wiFiPlazaQuestion, u32 selectedAnswer)
{
    wiFiPlazaQuestion->selectedAnswer = selectedAnswer;
}
