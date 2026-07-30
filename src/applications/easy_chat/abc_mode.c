#include "applications/easy_chat/abc_mode.h"

#include <nitro.h>

#include "constants/charcode.h"

#include "applications/easy_chat/defs.h"

#include "string_gf.h"

static const struct {
    charcode_t charcode;
    u8 x;
    u8 y;
    u8 up;
    u8 down;
    u8 left;
    u8 right;
    u8 top;
    u8 bottom;
} sABCModeChars[] = {
    [A] = { .charcode = CHAR_A, .x = 28, .y = 12, .up = EASY_CHAT_CANCEL, .down = K, .left = J, .right = B, .top = A, .bottom = U },
    [B] = { .charcode = CHAR_B, .x = 44, .y = 12, .up = EASY_CHAT_CANCEL, .down = L, .left = A, .right = C, .top = B, .bottom = V },
    [C] = { .charcode = CHAR_C, .x = 60, .y = 12, .up = EASY_CHAT_CANCEL, .down = M, .left = B, .right = D, .top = C, .bottom = W },
    [D] = { .charcode = CHAR_D, .x = 76, .y = 12, .up = EASY_CHAT_CANCEL, .down = N, .left = C, .right = E, .top = D, .bottom = X },
    [E] = { .charcode = CHAR_E, .x = 92, .y = 12, .up = EASY_CHAT_CANCEL, .down = O, .left = D, .right = F, .top = E, .bottom = Y },
    [F] = { .charcode = CHAR_F, .x = 108, .y = 12, .up = EASY_CHAT_CANCEL, .down = P, .left = E, .right = G, .top = F, .bottom = Z },
    [G] = { .charcode = CHAR_G, .x = 124, .y = 12, .up = EASY_CHAT_CANCEL, .down = Q, .left = F, .right = H, .top = G, .bottom = Q },
    [H] = { .charcode = CHAR_H, .x = 140, .y = 12, .up = EASY_CHAT_CANCEL, .down = R, .left = G, .right = I, .top = H, .bottom = R },
    [I] = { .charcode = CHAR_I, .x = 156, .y = 12, .up = EASY_CHAT_CANCEL, .down = S, .left = H, .right = J, .top = I, .bottom = S },
    [J] = { .charcode = CHAR_J, .x = 172, .y = 12, .up = EASY_CHAT_CANCEL, .down = T, .left = I, .right = A, .top = J, .bottom = EXCLAMATION },
    [K] = { .charcode = CHAR_K, .x = 28, .y = 28, .up = A, .down = U, .left = T, .right = L, .top = A, .bottom = U },
    [L] = { .charcode = CHAR_L, .x = 44, .y = 28, .up = B, .down = V, .left = K, .right = M, .top = B, .bottom = V },
    [M] = { .charcode = CHAR_M, .x = 60, .y = 28, .up = C, .down = W, .left = L, .right = N, .top = C, .bottom = W },
    [N] = { .charcode = CHAR_N, .x = 76, .y = 28, .up = D, .down = X, .left = M, .right = O, .top = D, .bottom = X },
    [O] = { .charcode = CHAR_O, .x = 92, .y = 28, .up = E, .down = Y, .left = N, .right = P, .top = E, .bottom = Y },
    [P] = { .charcode = CHAR_P, .x = 108, .y = 28, .up = F, .down = Z, .left = O, .right = Q, .top = F, .bottom = Z },
    [Q] = { .charcode = CHAR_Q, .x = 124, .y = 28, .up = G, .down = EASY_CHAT_CANCEL, .left = P, .right = R, .top = G, .bottom = Q },
    [R] = { .charcode = CHAR_R, .x = 140, .y = 28, .up = H, .down = EASY_CHAT_CANCEL, .left = Q, .right = S, .top = H, .bottom = R },
    [S] = { .charcode = CHAR_S, .x = 156, .y = 28, .up = I, .down = EASY_CHAT_CANCEL, .left = R, .right = T, .top = I, .bottom = S },
    [T] = { .charcode = CHAR_T, .x = 172, .y = 28, .up = J, .down = EXCLAMATION, .left = S, .right = K, .top = J, .bottom = EXCLAMATION },
    [U] = { .charcode = CHAR_U, .x = 28, .y = 44, .up = K, .down = EASY_CHAT_CANCEL, .left = EXCLAMATION, .right = V, .top = A, .bottom = U },
    [V] = { .charcode = CHAR_V, .x = 44, .y = 44, .up = L, .down = EASY_CHAT_CANCEL, .left = U, .right = W, .top = B, .bottom = V },
    [W] = { .charcode = CHAR_W, .x = 60, .y = 44, .up = M, .down = EASY_CHAT_CANCEL, .left = V, .right = X, .top = C, .bottom = W },
    [X] = { .charcode = CHAR_X, .x = 76, .y = 44, .up = N, .down = EASY_CHAT_CANCEL, .left = W, .right = Y, .top = D, .bottom = X },
    [Y] = { .charcode = CHAR_Y, .x = 92, .y = 44, .up = O, .down = EASY_CHAT_CANCEL, .left = X, .right = Z, .top = E, .bottom = Y },
    [Z] = { .charcode = CHAR_Z, .x = 108, .y = 44, .up = P, .down = EASY_CHAT_CANCEL, .left = Y, .right = EXCLAMATION, .top = F, .bottom = Z },
    [EXCLAMATION] = { .charcode = CHAR_EXCLAMATION, .x = 172, .y = 44, .up = T, .down = EASY_CHAT_CANCEL, .left = Z, .right = U, .top = J, .bottom = EXCLAMATION }
};

u32 EasyChatABCMode_GetCharCount(void)
{
    return NELEMS(sABCModeChars);
}

void EasyChatABCMode_GetCharCode(u32 index, String *out)
{
    GF_ASSERT(index < NELEMS(sABCModeChars));
    String_CopyNumChars(out, &(sABCModeChars[index].charcode), 1 + 1);
}

void EasyChatABCMode_GetCharPos(u32 index, u32 *outX, u32 *outY)
{
    GF_ASSERT(index < NELEMS(sABCModeChars));

    *outX = sABCModeChars[index].x;
    *outY = sABCModeChars[index].y;
}

int EasyChatABCMode_GetCharAbove(u32 index)
{
    GF_ASSERT(index < NELEMS(sABCModeChars));
    return sABCModeChars[index].up;
}

int EasyChatABCMode_GetCharBelow(u32 index)
{
    GF_ASSERT(index < NELEMS(sABCModeChars));
    return sABCModeChars[index].down;
}

int EasyChatABCMode_GetCharToLeft(u32 index)
{
    GF_ASSERT(index < NELEMS(sABCModeChars));
    return sABCModeChars[index].left;
}

int EasyChatABCMode_GetCharToRight(u32 index)
{
    GF_ASSERT(index < NELEMS(sABCModeChars));
    return sABCModeChars[index].right;
}

int EasyChatABCMode_GetCharAtTopOfColumn(u32 index)
{
    GF_ASSERT(index < NELEMS(sABCModeChars));
    return sABCModeChars[index].top;
}

int EasyChatABCMode_GetCharAtBottomOfColumn(u32 index)
{
    GF_ASSERT(index < NELEMS(sABCModeChars));
    return sABCModeChars[index].bottom;
}
