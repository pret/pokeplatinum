#ifndef POKEPLATINUM_JOURNAL_H
#define POKEPLATINUM_JOURNAL_H

#include "play_time.h"
#include "savedata.h"
#include "trainer_info.h"

typedef struct Journal_t Journal;

int Journal_SaveSize(void);
void Journal_Init10(Journal *param0);
Journal *SaveData_GetJournal(SaveData *param0);
Journal *Journal_GetSavedPage(Journal *param0, BOOL param1);
BOOL Journal_CheckOpenOnContinue(Journal *param0, BOOL param1);
void Journal_SaveData(Journal *param0, void *param1, u8 param2);
void *sub_0202BC58(u16 param0, u32 param1);
void *sub_0202BCE4(u32 param0);
void *sub_0202BCF0(u32 param0);
void *sub_0202BCFC(u32 param0);
void *sub_0202BD08(u32 param0);
void *sub_0202BD14(u32 param0);
void *sub_0202BD20(u32 param0);
void *sub_0202BD2C(u32 param0);
void *sub_0202BD38(u32 param0);
void *sub_0202BD44(u16 param0, u32 param1);
void *sub_0202BD58(u16 param0, u16 param1, u32 param2);
void *sub_0202BD70(u16 param0, u32 param1);
void *sub_0202BD84(u16 param0, u32 param1);
void *sub_0202BD98(u16 param0, u32 param1);
void *sub_0202BDAC(u16 param0, u32 param1);
void *sub_0202BDC0(u16 param0, u32 param1);
void *sub_0202BDD4(u32 param0);
void *sub_0202BDE0(u32 param0);
void *sub_0202BDEC(u16 param0, u32 param1);
void *sub_0202BE00(u8 param0, u16 param1, u32 param2);
void *sub_0202BE14(u32 param0);
void *sub_0202BE20(u32 param0);
void *sub_0202BE2C(u32 param0, u32 param1);
void *sub_0202BE4C(const PlayTime *playTime, u16 param1, u8 param2, u8 param3, u32 param4);
void *sub_0202BECC(const PlayTime *playTime, u16 param1, u8 param2, u8 param3, u32 param4);
void *sub_0202BF4C(u16 param0, u16 param1, u32 param2);
void *sub_0202BFCC(u16 *param0, u8 param1, u8 param2, u32 param3);
void *sub_0202C00C(u16 *param0, u8 param1, u8 param2, u32 param3);
void *sub_0202C04C(u16 *param0, u16 *param1, u8 param2, u8 param3, u8 param4, u32 param5);
void *sub_0202C0AC(u16 *param0, u8 param1, u8 param2, u32 param3);
void *sub_0202C0EC(u16 *param0, u8 param1, u32 param2);
void *sub_0202C11C(u16 *param0, u8 param1, u16 *param2, u8 param3, u32 param4);
void *sub_0202C168(u32 param0);
void *sub_0202C174(u16 *param0, u8 param1, u8 param2, u32 param3);
void *sub_0202C1B4(u32 param0);
void *sub_0202C1C0(u8 param0, u32 param1);
void *sub_0202C1E0(u32 param0);
void *sub_0202C1EC(u16 *param0, u8 param1, u16 *param2, u8 param3, u32 param4);
void *sub_0202C238(u32 param0);
void *sub_0202C244(u32 param0, u32 param1);
void *sub_0202C250(const u16 *param0, u8 param1, u32 param2, u32 param3);
void *sub_0202C280(int param0, u32 param1, u32 param2);
void sub_0202C2A4(Journal *param0, void *param1, u8 param2, u8 param3);
void sub_0202C5C4(TrainerInfo *param0, Journal *param1, u32 param2, u32 param3, u32 param4);
u32 sub_0202C6A4(u32 param0);
void sub_0202C704(Journal *param0, u32 param1, u32 param2);
void sub_0202C720(Journal *param0, u16 param1, u16 param2, u32 param3);

#endif // POKEPLATINUM_JOURNAL_H
