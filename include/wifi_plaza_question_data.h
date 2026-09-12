#ifndef POKEPLATINUM_WIFI_PLAZA_QUESTION_DATA_H
#define POKEPLATINUM_WIFI_PLAZA_QUESTION_DATA_H

#include "savedata.h"

typedef struct WiFiPlazaQuestion {
    u32 questionNumber;
    u32 selectedAnswer;
} WiFiPlazaQuestion;

int WiFiPlazaQuestion_SaveSize(void);
void WiFiPlazaQuestion_Init(WiFiPlazaQuestion *wiFiPlazaQuestion);
WiFiPlazaQuestion *SaveData_GetWiFiPlazaQuestion(SaveData *saveData);
u32 WiFiPlazaQuestion_GetQuestionNumber(const WiFiPlazaQuestion *wiFiPlazaQuestion);
u32 WiFiPlazaQuestion_GetSelectedAnswer(const WiFiPlazaQuestion *wiFiPlazaQuestion);
void WiFiPlazaQuestion_SetQuestionNumber(WiFiPlazaQuestion *wiFiPlazaQuestion, u32 questionNumber);
void WiFiPlazaQuestion_SetSelectedAnswer(WiFiPlazaQuestion *wiFiPlazaQuestion, u32 selectedAnswer);

#endif // POKEPLATINUM_WIFI_PLAZA_QUESTION_DATA_H
