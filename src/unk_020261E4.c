#include "unk_020261E4.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202818C.h"

#include "pokemon.h"
#include "savedata.h"

typedef struct UnkStruct_02026224_t {
    UnkStruct_0202818C unk_00;
    u16 unk_38[8];
    u16 unk_48[11];
    u8 unk_5E_0 : 4;
    u8 unk_5E_4 : 4;
} UnkStruct_02026224;

typedef struct UnkStruct_02026218_t {
    BoxPokemon boxMon;
    UnkStruct_02026224 unk_08;
    u32 unk_68;
} UnkStruct_02026218;

typedef struct Daycare_t {
    UnkStruct_02026218 unk_00[2];
    u32 offspringPersonality;
    u8 stepCounter;
} Daycare;

int Daycare_SaveSize(void)
{
    return sizeof(Daycare);
}

void Daycare_Init(Daycare *daycare)
{
    memset(daycare, 0, sizeof(Daycare));

    BoxPokemon_Init(&daycare->unk_00[0].boxMon);
    BoxPokemon_Init(&daycare->unk_00[1].boxMon);

    daycare->offspringPersonality = 0;
    daycare->stepCounter = 0;
}

UnkStruct_02026218 *sub_02026218(Daycare *daycare, int param1)
{
    return &(daycare->unk_00[param1]);
}

BoxPokemon *sub_02026220(UnkStruct_02026218 *param0)
{
    return &(param0->boxMon);
}

UnkStruct_02026224 *sub_02026224(UnkStruct_02026218 *param0)
{
    return &(param0->unk_08);
}

u32 sub_02026228(const UnkStruct_02026218 *param0)
{
    return param0->unk_68;
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

void sub_02026258(UnkStruct_02026218 *param0, int param1)
{
    param0->unk_68 = param1;
}

void sub_02026260(UnkStruct_02026218 *param0, int param1)
{
    param0->unk_68 += param1;
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
    int language1 = BoxPokemon_GetValue(&daycare->unk_00[0].boxMon, MON_DATA_LANGUAGE, NULL);
    int language2 = BoxPokemon_GetValue(&daycare->unk_00[1].boxMon, MON_DATA_LANGUAGE, NULL);

    if (language1 != language2) {
        return TRUE;
    }

    return FALSE;
}

void sub_020262A8(UnkStruct_02026218 *param0, const UnkStruct_02026218 *param1)
{
    *param0 = *param1;
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

void sub_020262F4(UnkStruct_02026218 *param0)
{
    BoxPokemon_Init(&param0->boxMon);
    param0->unk_68 = 0;
    sub_020262C0(&param0->unk_08);
}

Daycare *sub_02026310(SaveData *param0)
{
    Daycare *v0 = SaveData_SaveTable(param0, 8);
    return v0;
}
