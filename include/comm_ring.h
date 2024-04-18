#ifndef POKEPLATINUM_UNK_02032188_H
#define POKEPLATINUM_UNK_02032188_H

typedef struct {
    u8 * unk_00;
    s16 startIndex;
    volatile s16 unk_06;
    volatile s16 unk_08;
    s16 unk_0A;
} CommRing;

void sub_02032188(CommRing * ring, u8 * param1, int param2);
void sub_02032198(CommRing * ring, u8 * param1, int param2, int param3);
int sub_020321F4(CommRing * ring, u8 * param1, int param2);
u8 sub_02032210(CommRing * ring);
int sub_02032220(CommRing * ring, u8 * param1, int param2);
int CommRing_DataSize(CommRing * ring);
int sub_0203228C(CommRing * ring);
void sub_020322D0(CommRing * ring);

#endif // POKEPLATINUM_UNK_02032188_H
