#include "unk_020261E4.h"

#include <nitro.h>
#include <string.h>

#include "constants/daycare.h"

#include "struct_defs/struct_0202818C.h"

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

UnkStruct_02026224 *sub_02026224(DaycareMon *daycareMon)
{
    return &(daycareMon->unk_08);
}

u32 DaycareMon_GetSteps(const DaycareMon *daycareMon)
{
    return daycareMon->steps;
}

UnkStruct_0202818C *sub_02026230(UnkStruct_02026224 *param0)
{
    return &(param0->unk_00);
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

void sub_020262C0(UnkStruct_02026224 *param0)
{
    int v0;

    for (v0 = 0; v0 < 7 + 1; v0++) {
        param0->unk_38[v0] = 0;
    }

    for (v0 = 0; v0 < 10 + 1; v0++) {
        param0->unk_48[v0] = 0;
    }

    param0->unk_38[0] = 0xffff;
    param0->unk_48[0] = 0xffff;
}

void sub_020262F4(DaycareMon *daycareMon)
{
    BoxPokemon_Init(&daycareMon->boxMon);
    daycareMon->steps = 0;
    sub_020262C0(&daycareMon->unk_08);
}

Daycare *SaveData_GetDaycare(SaveData *saveData)
{
    Daycare *daycare = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_DAYCARE);
    return daycare;
}
