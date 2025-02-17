#include "overlay006/special_dates.h"

#include <nitro.h>
#include <string.h>

#include "rtc.h"

typedef struct SpecialDate {
    int size;
    const u16 *dayModifier; // high byte is day. low byte is index into sEncounterRateModifiers
} SpecialDate;

// Macros for readability.
#define DateMod(day, modifier) ((day << 8) | (modifier & 0xFF))
#define GetDate(element)       ((element >> 8) & 0xff)
#define GetModifier(element)   (element & 0xff)

#define MODIFIER_MINUS_5  1
#define MODIFIER_PLUS_5   2
#define MODIFIER_MINUS_10 3
#define MODIFIER_PLUS_10  4

static const u16 sJanuaryDays[] = {
    DateMod(1, MODIFIER_MINUS_10),
    DateMod(11, MODIFIER_PLUS_5),
    DateMod(12, MODIFIER_PLUS_10),
    DateMod(29, MODIFIER_PLUS_5)
};

static const u16 sFebruaryDays[] = {
    DateMod(3, MODIFIER_PLUS_5),
    DateMod(11, MODIFIER_PLUS_5),
    DateMod(14, 0),
    DateMod(27, MODIFIER_PLUS_10)
};

static const u16 sMarchDays[] = {
    DateMod(3, MODIFIER_PLUS_5),
    DateMod(18, MODIFIER_PLUS_5),
    DateMod(21, MODIFIER_MINUS_10)
};

static const u16 sAprilDays[] = {
    DateMod(1, MODIFIER_PLUS_5),
    DateMod(25, MODIFIER_PLUS_5),
    DateMod(26, MODIFIER_MINUS_5),
    DateMod(29, MODIFIER_PLUS_5)
};

static const u16 sMayDays[] = {
    DateMod(1, 0),
    DateMod(3, MODIFIER_PLUS_5),
    DateMod(4, 0),
    DateMod(5, MODIFIER_PLUS_5)
};

static const u16 sJuneDays[] = {
    DateMod(21, MODIFIER_PLUS_5)
};

static const u16 sJulyDays[] = {
    DateMod(7, MODIFIER_PLUS_10),
    DateMod(18, MODIFIER_PLUS_5),
    DateMod(24, MODIFIER_PLUS_5)
};

static const u16 sAugustDays[] = {
    DateMod(13, MODIFIER_MINUS_5),
    DateMod(14, MODIFIER_MINUS_5),
    DateMod(15, MODIFIER_PLUS_5),
    DateMod(16, MODIFIER_MINUS_5)
};

static const u16 sSeptemberDays[] = {
    DateMod(7, MODIFIER_PLUS_5),
    DateMod(12, MODIFIER_PLUS_5),
    DateMod(15, MODIFIER_PLUS_5),
    DateMod(20, MODIFIER_PLUS_5),
    DateMod(23, MODIFIER_MINUS_10),
    DateMod(28, MODIFIER_PLUS_5)
};

static const u16 sOctoberDays[] = {
    DateMod(5, MODIFIER_PLUS_5),
    DateMod(15, MODIFIER_PLUS_5),
    DateMod(30, MODIFIER_PLUS_5)
};

static const u16 sNovemberDays[] = {
    DateMod(3, MODIFIER_MINUS_5),
    DateMod(12, MODIFIER_PLUS_5),
    DateMod(21, MODIFIER_PLUS_5),
    DateMod(23, 0)
};

static const u16 sDecemberDays[] = {
    DateMod(14, MODIFIER_PLUS_5),
    DateMod(23, MODIFIER_PLUS_5),
    DateMod(31, MODIFIER_MINUS_5)
};

static const SpecialDate sSpecialDates[12] = {
    { NELEMS(sJanuaryDays), sJanuaryDays },
    { NELEMS(sFebruaryDays), sFebruaryDays },
    { NELEMS(sMarchDays), sMarchDays },
    { NELEMS(sAprilDays), sAprilDays },
    { NELEMS(sMayDays), sMayDays },
    { NELEMS(sJuneDays), sJuneDays },
    { NELEMS(sJulyDays), sJulyDays },
    { NELEMS(sAugustDays), sAugustDays },
    { NELEMS(sSeptemberDays), sSeptemberDays },
    { NELEMS(sOctoberDays), sOctoberDays },
    { NELEMS(sNovemberDays), sNovemberDays },
    { NELEMS(sDecemberDays), sDecemberDays }
};

static const int sEncounterRateModifiers[] = {
    0,
    -5,
    +5,
    -10,
    +10
};

int SpecialDates_ModifyEncounterRate(const int encounterModifier, const BOOL hasTimePenalty)
{
    u8 i;
    int newModifier;
    RTCDate currentDate;
    const SpecialDate *dates;

    if (hasTimePenalty) { // Exits without applying the date effect if the clock was changed recently.
        return encounterModifier;
    }

    if (encounterModifier == 0) {
        return 0;
    }

    GetCurrentDate(&currentDate);

    GF_ASSERT(currentDate.month > 0);
    GF_ASSERT(currentDate.month <= 12);

    dates = &(sSpecialDates[currentDate.month - 1]);

    for (i = 0; i < dates->size; i++) {
        if (currentDate.day == GetDate(dates->dayModifier[i])) {
            newModifier = encounterModifier + sEncounterRateModifiers[GetModifier(dates->dayModifier[i])];

            if (newModifier < 0) {
                newModifier = 1;
            }

            return newModifier;
        }
    }

    return encounterModifier;
}
