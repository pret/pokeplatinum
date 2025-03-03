#ifndef POKEPLATINUM_UNK_02005474_H
#define POKEPLATINUM_UNK_02005474_H

BOOL sub_02005474(u16 param0);
BOOL Sound_PlayBGM(u16 param0);
BOOL sub_02005588(u8 param0, u16 param1);
void sub_020055D0(u16 param0, int param1);
void sub_0200560C(int param0, int param1, int param2);
void sub_0200564C(int param0, int param1);
int Sound_CheckFade(void);
int sub_02005690(u16 param0);
void sub_0200569C(void);
void sub_020056D4(void);
BOOL sub_02005728(u16 param0, int param1);
BOOL Sound_PlayEffect(u16 param0);
BOOL sub_02005770(u16 param0, int param1);
void Sound_StopEffect(u16 param0, int param1);
void sub_020057AC(int param0, int param1);
void sub_020057BC(int param0);
int Sound_IsEffectPlaying(u16 param0);
int sub_020057E0();
void sub_020057FC(u16 param0, u16 param1, int param2);
void sub_02005818(int param0);
BOOL sub_02005844(u16 param0, u8 param1);
BOOL sub_0200590C(u16 param0, u8 param1, u8 param2);
void sub_0200592C(int param0);
int sub_0200598C(void);
BOOL Sound_PlayPokemonCry(int param0, u16 species, int param2, int param3, int heapID, u8 param5);
void Sound_PlayDelayedPokemonCry(int param0, u16 param1, int param2, int param3, int heapID, u8 param5, u8 param6);
void sub_0200605C(void);
BOOL sub_02006150(u16 param0);
int sub_0200619C(void);
int sub_020061E4(void);

#endif // POKEPLATINUM_UNK_02005474_H
