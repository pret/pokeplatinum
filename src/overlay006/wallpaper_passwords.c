#include "overlay006/wallpaper_passwords.h"

#include <limits.h>
#include <nitro.h>

#include "password_word_bank.h"
#include "trainer_info.h"

static void RotateBits(u8 arr[], u8 length, u8 iterations)
{
    while (iterations--) {
        u8 bit = arr[length - 1] & 1;
        int i;

        for (i = length - 1; i > 0; i--) {
            arr[i] >>= 1;
            arr[i] |= ((arr[i - 1] & 1) << 7);
        }

        arr[i] >>= 1;
        arr[i] |= bit << 7;
    }
}

static int CheckPassword(const PasswordWordBank *wordBank, u16 trainerID, u16 word1, u16 word2, u16 word3, u16 word4)
{
    int wordBankLength = PasswordWordBank_GetLength(wordBank);

    s16 wordIndices[4];
    wordIndices[0] = PasswordWordBank_FindWord(wordBank, word1);
    wordIndices[1] = PasswordWordBank_FindWord(wordBank, word2);
    wordIndices[2] = PasswordWordBank_FindWord(wordBank, word3);
    wordIndices[3] = PasswordWordBank_FindWord(wordBank, word4);

    u8 bits[4];

    int i;

    for (i = 0; i < 4; i++) {
        if (wordIndices[i] < 0) {
            return -1;
        }

        if (i > 0) {
            if (wordIndices[i] >= wordIndices[i - 1]) {
                int diff = wordIndices[i] - wordIndices[i - 1];

                if (diff > UCHAR_MAX) {
                    return -1;
                }

                bits[i] = diff;
            } else {
                int diff = wordBankLength - (wordIndices[i - 1] - wordIndices[i]);

                if (diff > UCHAR_MAX) {
                    return -1;
                }

                bits[i] = diff;
            }
        } else {
            if (wordIndices[0] > UCHAR_MAX) {
                return -1;
            }

            bits[0] = wordIndices[0];
        }
    }

    RotateBits(bits, NELEMS(bits), 5);

    for (i = 0; i < 3; i++) {
        bits[i] ^= ((bits[3] >> 4) | (bits[3] & 0xF0));
    }

    RotateBits(bits, 3, bits[3] & 0xF);

    if ((bits[0] & 0xF) >= MAX_UNLOCKABLE_WALLPAPERS) {
        return -1;
    }

    bits[1] ^= bits[0];
    bits[2] ^= bits[0];

    if (((bits[1] << 8) | bits[2]) == trainerID && ((bits[0] & 0xF0) >> 4) == 6 && bits[3] == (((bits[0] + bits[1]) * bits[2]) & 0xFF)) {
        return bits[0] & 0xF;
    }

    return -1;
}

int WallpaperPasswords_CheckPassword(const TrainerInfo *trainerInfo, u16 word1, u16 word2, u16 word3, u16 word4, enum HeapID heapID)
{
    PasswordWordBank *wordBank = PasswordWordBank_New(heapID);
    u16 trainerID = TrainerInfo_ID_LowHalf(trainerInfo);
    int result = CheckPassword(wordBank, trainerID, word1, word2, word3, word4);

    PasswordWordBank_Free(wordBank);

    return result;
}
