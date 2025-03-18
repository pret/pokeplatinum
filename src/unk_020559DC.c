#include "unk_020559DC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0202440C_decl.h"

#include "field/field_system.h"
#include "savedata/save_table.h"

#include "field_system.h"
#include "inlines.h"
#include "party.h"
#include "pokemon.h"
#include "record_mixed_rng.h"
#include "rtc.h"
#include "script_manager.h"
#include "special_encounter.h"
#include "system_data.h"
#include "system_vars.h"
#include "unk_0202854C.h"
#include "unk_0202C858.h"
#include "unk_0202E2CC.h"
#include "unk_02055C50.h"
#include "unk_0206B9D8.h"
#include "unk_0206C2D0.h"
#include "unk_0206CCB0.h"
#include "vars_flags.h"

static void sub_02055AC0(FieldSystem *fieldSystem, s32 param1);
static void sub_02055B64(FieldSystem *fieldSystem, s32 param1, const RTCTime *param2);
static void sub_02055A14(FieldSystem *fieldSystem, GameTime *param1, const RTCDate *param2);
static void inline_020559DC(FieldSystem *fieldSystem, GameTime *param1, const RTCDate *param2, const RTCTime *param3);

void sub_020559DC(FieldSystem *fieldSystem)
{
    RTCDate v0;
    RTCTime v1;
    GameTime *v2 = SaveData_GetGameTime(fieldSystem->saveData);

    if (v2->canary == FALSE) {
        return;
    }

    GetCurrentDateTime(&v0, &v1);
    sub_02055A14(fieldSystem, v2, &v0);

    inline_020559DC(fieldSystem, v2, &v0, &v1);
}

static void sub_02055A14(FieldSystem *fieldSystem, GameTime *param1, const RTCDate *param2)
{
    s32 v0 = RTC_ConvertDateToDay(param2);

    if (v0 < param1->day) {
        param1->day = v0;
    } else if (v0 > param1->day) {
        sub_02055AC0(fieldSystem, v0 - param1->day);
        param1->day = v0;
    }
}

static void inline_020559DC(FieldSystem *fieldSystem, GameTime *param1, const RTCDate *param2, const RTCTime *param3)
{
    s64 v0, v1;
    s32 v2;

    v0 = RTC_ConvertDateTimeToSecond(param2, param3);
    v1 = RTC_ConvertDateTimeToSecond(&param1->date, &param1->time);

    if (v0 < v1) {
        param1->date = *param2;
        param1->time = *param3;
    } else {
        v2 = (v0 - v1) / 60;

        if (v2 > 0) {
            GameTime_DecrementPenalty(param1, v2);
            sub_02055B64(fieldSystem, v2, param3);

            param1->date = *param2;
            param1->time = *param3;
        }
    }
}

static void sub_02055AC0(FieldSystem *fieldSystem, s32 param1)
{
    sub_02028658(FieldSystem_GetSaveData(fieldSystem), param1);
    sub_0203F1FC(fieldSystem);
    sub_0206C2D0(fieldSystem->saveData, param1);
    RecordMixedRNG_AdvanceEntries(SaveData_GetRecordMixedRNG(fieldSystem->saveData), param1);
    SpecialEncounter_SetMixedRecordDailies(SaveData_GetSpecialEncounters(fieldSystem->saveData), RecordMixedRNG_GetRand(SaveData_GetRecordMixedRNG(fieldSystem->saveData)));

    {
        Party *v0;

        v0 = Party_GetFromSavedata(fieldSystem->saveData);
        Party_UpdatePokerusStatus(v0, param1);
    }

    {
        VarsFlags *varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
        u16 deadlineInDays = SystemVars_GetNewsPressDeadline(varsFlags);

        if (deadlineInDays > param1) {
            deadlineInDays -= param1;
        } else {
            deadlineInDays = 0;
        }

        SystemVars_SetNewsPressDeadline(varsFlags, deadlineInDays);
    }

    {
        SystemVars_SynchronizeJubilifeLotteryTrainerID(fieldSystem->saveData, param1);
    }

    {
        SystemVars_InitDailyRandomLevel(fieldSystem->saveData);
    }

    SystemVars_UpdateVillaVisitor(fieldSystem->saveData);
    FieldSystem_ClearDailyHiddenItemFlags(fieldSystem);
    sub_0206C008(fieldSystem->saveData);
    sub_0202C9A0(sub_0202C878(fieldSystem->saveData));
    sub_0206F2F0(fieldSystem->saveData);
}

static void sub_02055B64(FieldSystem *fieldSystem, s32 param1, const RTCTime *param2)
{
    sub_02055CD4(fieldSystem, param1);
    SpecialEncounter_DecrementHoneyTreeTimers(fieldSystem->saveData, param1);
    sub_02028758(fieldSystem->saveData, param1, FieldSystem_HasPenalty(fieldSystem));

    {
        TVBroadcast *v0 = SaveData_TVBroadcast(fieldSystem->saveData);
        sub_0202E324(v0, param1, param2->minute);
    }

    {
        Party *v1;

        v1 = Party_GetFromSavedata(fieldSystem->saveData);
        Party_SetShayminForm(v1, param1, param2);
    }
}

enum TimeOfDay FieldSystem_GetTimeOfDay(const FieldSystem *fieldSystem)
{
    GameTime *v0 = SaveData_GetGameTime(fieldSystem->saveData);
    return TimeOfDayForHour(v0->time.hour);
}

int FieldSystem_GetMonth(const FieldSystem *fieldSystem)
{
    GameTime *gameTime = SaveData_GetGameTime(fieldSystem->saveData);
    return gameTime->date.month;
}

int FieldSystem_GetDayOfMonth(const FieldSystem *fieldSystem)
{
    GameTime *gameTime = SaveData_GetGameTime(fieldSystem->saveData);
    return gameTime->date.day;
}

int FieldSystem_GetWeek(const FieldSystem *fieldSystem)
{
    GameTime *gameTime = SaveData_GetGameTime(fieldSystem->saveData);
    return gameTime->date.week;
}

int FieldSystem_GetHour(const FieldSystem *fieldSystem)
{
    GameTime *gameTime = SaveData_GetGameTime(fieldSystem->saveData);
    return gameTime->time.hour;
}

int FieldSystem_GetMinute(const FieldSystem *fieldSystem)
{
    GameTime *gameTime = SaveData_GetGameTime(fieldSystem->saveData);
    return gameTime->time.minute;
}

void sub_02055BF4(const FieldSystem *fieldSystem, RTCDate *param1, RTCTime *param2)
{
    GameTime *v0 = SaveData_GetGameTime(fieldSystem->saveData);
    RTC_ConvertSecondToDateTime(param1, param2, v0->startTimestamp);
}

void sub_02055C10(const FieldSystem *fieldSystem, RTCDate *param1, RTCTime *param2)
{
    GameTime *v0 = SaveData_GetGameTime(fieldSystem->saveData);
    RTC_ConvertSecondToDateTime(param1, param2, v0->playTimestamp);
}

void sub_02055C2C(const FieldSystem *fieldSystem)
{
    GameTime *v0 = SaveData_GetGameTime(fieldSystem->saveData);

    v0->playTimestamp = GetTimestamp();
}

BOOL FieldSystem_HasPenalty(FieldSystem *fieldSystem)
{
    GameTime *gameTime = SaveData_GetGameTime(fieldSystem->saveData);
    return GameTime_HasPenalty(gameTime);
}
