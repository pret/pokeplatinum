#ifndef POKEPLATINUM_UNK_02006224_H
#define POKEPLATINUM_UNK_02006224_H

#include "struct_defs/chatot_cry.h"

#include <nitro/spi.h>

BOOL sub_02006224(void);
BOOL sub_02006260(const ChatotCry * param0);
BOOL sub_0200629C(const ChatotCry * param0, u32 param1, int param2, int param3);
void sub_02006350(void);
MICResult sub_0200637C(void);
MICResult sub_020063B8(void);
void sub_020063C0(ChatotCry * param0);
void Sound_FlagDefaultChatotCry(u8 param0);
BOOL Sound_PlayChatotCry(ChatotCry * param0, u32 param1, int param2, int param3);
BOOL Sound_PlayDelayedChatotCry(ChatotCry * param0, u32 param1, int param2, int param3, u8 param4);
int Sound_Chatter(ChatotCry * param0);
BOOL Sound_CanPlayChatotCry(int param0);

#endif // POKEPLATINUM_UNK_02006224_H
