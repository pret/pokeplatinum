#ifndef POKEPLATINUM_HARDWARE_WINDOW_H
#define POKEPLATINUM_HARDWARE_WINDOW_H

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_02012634;

typedef struct {
    int unk_00;
    BOOL unk_04;
    int unk_08;
    int unk_0C;
} UnkStruct_02012650;

typedef struct {
    int unk_00;
    BOOL unk_04;
    int unk_08;
} UnkStruct_02012678;

typedef struct {
    short unk_00;
    short unk_02;
    short unk_04;
    short unk_06;
    int unk_08;
    int unk_0C;
} UnkStruct_02012698;

typedef struct {
    UnkStruct_02012634 unk_00[2];
    UnkStruct_02012650 unk_10[2][2];
    u8 padding_50[24];
    UnkStruct_02012678 unk_5C[2];
    UnkStruct_02012698 unk_74[2][2];
} UnkStruct_02010658;

void sub_02012480(int param0, int param1);
void sub_020124AC(int param0, BOOL param1, int param2, int param3);
void sub_02012534(int param0, BOOL param1, int param2);
void sub_02012574(int param0, int param1, int param2, int param3, int param4, int param5);
void sub_02012634(UnkStruct_02010658 *param0, int param1, int param2);
void sub_02012650(UnkStruct_02010658 *param0, int param1, BOOL param2, int param3, int param4);
void sub_02012678(UnkStruct_02010658 *param0, int param1, BOOL param2, int param3);
void sub_02012698(UnkStruct_02010658 *param0, int param1, int param2, int param3, int param4, int param5, int param6);

#endif // POKEPLATINUM_HARDWARE_WINDOW_H
