#ifndef POKEPLATINUM_JOURNAL_DATE_H
#define POKEPLATINUM_JOURNAL_DATE_H

typedef struct {
    u32 year : 7;
    u32 month : 4;
    u32 week : 3;
    u32 day : 5;
    u32 mapID : 13;
} JournalDate;

#endif // POKEPLATINUM_JOURNAL_DATE_H
