#ifndef POKEPLATINUM_UNK_020363E8_H
#define POKEPLATINUM_UNK_020363E8_H

void CommTool_Init(int param0);
void CommTool_Delete(void);
BOOL sub_02036450(void);
void sub_02036464(int param0, int param1, void * param2, void * param3);
void sub_020364C8(int param0, int param1, void * param2, void * param3);
void sub_020364DC(int param0, int param1, void * param2, void * param3);
void CommTiming_StartSync(u8 param0);
void sub_0203650C(void);
BOOL CommTiming_IsSyncState(u8 param0);
int sub_02036564(int param0);
void sub_02036574(int param0, int param1, void * param2, void * param3);
int sub_02036590(void);
void sub_02036594(u8 param0, u8 param1);
int sub_020365A8(int param0, u8 param1);
void sub_020365D0(void);
void sub_020365F4(void);
BOOL sub_02036614(int param0, const void * param1);
const void * sub_0203664C(int param0);
void sub_02036670(int param0, int param1, void * param2, void * param3);
int CommTool_TempDataSize(void);

#endif // POKEPLATINUM_UNK_020363E8_H
