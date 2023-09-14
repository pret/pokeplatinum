#ifndef POKEPLATINUM_TRAINER_INFO_H
#define POKEPLATINUM_TRAINER_INFO_H

#include "constants/string.h"

#include "strbuf.h"

typedef struct TrainerInfo {
    charcode_t name[TRAINER_NAME_LEN + 1];
    u32 id;
    u32 money;
    u8 gender;
    u8 regionCode;
    u8 badgeMask;
    u8 appearance;
    u8 gameCode;
    u8 gameCleared : 1;
    u8 hasNationalDex : 1;
    u8 : 6;
} TrainerInfo;

int sub_02025E68(void);
TrainerInfo * sub_02025E6C(u32 param0);
void sub_02025E80(const TrainerInfo * param0, TrainerInfo * param1);
void sub_02025E8C(TrainerInfo * param0);
BOOL sub_02025EA8(const TrainerInfo * param0);
void sub_02025EC0(TrainerInfo * param0, const u16 * param1);
void sub_02025EE0(TrainerInfo * param0, const Strbuf *param1);
const u16 * sub_02025EF0(const TrainerInfo * param0);
void sub_02025EF4(const TrainerInfo * param0, Strbuf *param1);
Strbuf* sub_02025F04(const TrainerInfo * param0, int param1);
void sub_02025F1C(TrainerInfo * param0, u32 param1);
u32 sub_02025F20(const TrainerInfo * param0);
u16 sub_02025F24(const TrainerInfo * param0);
void sub_02025F2C(TrainerInfo * param0, int param1);
u32 sub_02025F30(const TrainerInfo * param0);
BOOL sub_02025F34(const TrainerInfo * param0, int param1);
void sub_02025F48(TrainerInfo * param0, int param1);
int sub_02025F58(const TrainerInfo * param0);
u32 sub_02025F74(const TrainerInfo * param0);
u32 sub_02025F78(TrainerInfo * param0, u32 param1);
u8 sub_02025F8C(const TrainerInfo * param0);
void sub_02025F90(TrainerInfo * param0, u8 param1);
u32 sub_02025F94(TrainerInfo * param0, u32 param1);
u32 sub_02025FB8(TrainerInfo * param0, u32 param1);
u8 sub_02025FCC(const TrainerInfo * param0);
void sub_02025FD0(TrainerInfo * param0, u8 param1);
u8 sub_02025FD4(void);
u8 sub_02025FD8(const TrainerInfo * param0);
void sub_02025FDC(TrainerInfo * param0, u8 param1);
void sub_02025FE0(TrainerInfo * param0);
int sub_02025FF0(TrainerInfo * param0);
void sub_02025FF8(TrainerInfo * param0);
int sub_02026004(TrainerInfo * param0);
BOOL sub_0202600C(const TrainerInfo * param0, const TrainerInfo * param1);

#endif // POKEPLATINUM_TRAINER_INFO_H
