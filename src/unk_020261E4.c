#include "unk_020261E4.h"

#include <nitro.h>
#include <string.h>

#include "constants/daycare.h"
#include "constants/charcode.h"

#include "struct_defs/mail.h"

#include "pokemon.h"
#include "savedata.h"

int Daycare_SaveSize(void)
{
    return sizeof(Daycare);
}

void Daycare_Init(Daycare *daycare)
{
    memset(daycare, 0, sizeof(Daycare));

    BoxPokemon_Init(&daycare->mons[0].boxMon);
    BoxPokemon_Init(&daycare->mons[1].boxMon);

    daycare->offspringPersonality = 0;
    daycare->stepCounter = 0;
}

DaycareMon *Daycare_GetDaycareMon(Daycare *daycare, int slot)
{
    return &(daycare->mons[slot]);
}

BoxPokemon *DaycareMon_GetBoxMon(DaycareMon *daycareMon)
{
    return &(daycareMon->boxMon);
}

DaycareMail *sub_02026224(DaycareMon *daycareMon)
{
    return &(daycareMon->mail);
}

u32 DaycareMon_GetSteps(const DaycareMon *daycareMon)
{
    return daycareMon->steps;
}

Mail *sub_02026230(DaycareMail *daycareMail)
{
    return &(daycareMail->unk_00);
}

int sub_02026234(const Daycare *daycare)
{
    if (daycare->offspringPersonality != 0) {
        return 1;
    }

    return 0;
}

int Daycare_GetOffspringPersonality(const Daycare *daycare)
{
    return daycare->offspringPersonality;
}

int Daycare_GetStepCounter(const Daycare *daycare)
{
    return daycare->stepCounter;
}

void DaycareMon_SetSteps(DaycareMon *daycareMon, int steps)
{
    daycareMon->steps = steps;
}

void DaycareMon_AddSteps(DaycareMon *daycareMon, int steps)
{
    daycareMon->steps += steps;
}

void Daycare_SetOffspringPersonality(Daycare *daycare, int personality)
{
    daycare->offspringPersonality = personality;
}

void Daycare_SetStepCounter(Daycare *daycare, int steps)
{
    daycare->stepCounter = steps;
}

BOOL Daycare_AreParentLanguagesDifferent(Daycare *daycare)
{
    int language1 = BoxPokemon_GetValue(&daycare->mons[0].boxMon, MON_DATA_LANGUAGE, NULL);
    int language2 = BoxPokemon_GetValue(&daycare->mons[1].boxMon, MON_DATA_LANGUAGE, NULL);

    if (language1 != language2) {
        return TRUE;
    }

    return FALSE;
}

void DaycareMon_CopyToDaycareMon(DaycareMon *dest, const DaycareMon *src)
{
    *dest = *src;
}

static void DaycareMail_Init(DaycareMail *mail)
{
    int i;

    for (i = 0; i < TRAINER_NAME_LEN + 1; i++) {
        mail->otName[i] = CHAR_NONE;
    }

    for (i = 0; i < MON_NAME_LEN + 1; i++) {
        mail->monName[i] = CHAR_NONE;
    }

    mail->otName[0] = CHAR_EOS;
    mail->monName[0] = CHAR_EOS;
}

void DaycareMon_Init(DaycareMon *daycareMon)
{
    BoxPokemon_Init(&daycareMon->boxMon);
    daycareMon->steps = 0;
    DaycareMail_Init(&daycareMon->mail);
}

Daycare *SaveData_GetDaycare(SaveData *saveData)
{
    Daycare *daycare = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_DAYCARE);
    return daycare;
}
