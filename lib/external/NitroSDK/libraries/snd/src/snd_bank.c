#include <nitro/snd/common/bank.h>

#ifndef SDK_FROM_TOOL

#include <nitro/misc.h>
#include <nitro/mi.h>
#include <nitro/snd/common/main.h>

#else
#define SDK_ASSERT(exp) ((void)0)
#define SDK_NULL_ASSERT(exp) ((void)0)
#define SDK_MINMAX_ASSERT(exp, min, max) ((void)0)

#define SNDi_LockMutex() ((void)0)
#define SNDi_UnlockMutex() ((void)0)

static u8 MI_ReadByte (const void * address) {
    return *(u8 *)address;
}

#define HW_MAIN_MEM 0x02000000

#ifdef _MSC_VER
#pragma warning( disable : 4018 )
#pragma warning( disable : 4311 )
#pragma warning( disable : 4312 )
#endif

#endif

static const SNDWaveData * GetWaveData(const SNDBankData * bank, int waveArcNo, int waveIndex);

void SND_AssignWaveArc (SNDBankData * bank, int index, SNDWaveArc * waveArc) {
    SNDWaveArcLink * next;
    SNDWaveArcLink * prev;

    SDK_NULL_ASSERT(bank);
    SDK_NULL_ASSERT(waveArc);
#ifdef SDK_ARM9
    SDK_ASSERTMSG(((u32)bank & 0x1f) == 0, "bank address must be aligned 32 bytes boundary.");
    SDK_ASSERTMSG(((u32)waveArc & 0x1f) == 0, "waveArc address must be aligned 32 bytes boundary.");
#endif
    SDK_MINMAX_ASSERT(index, 0, SND_BANK_TO_WAVEARC_MAX - 1);

    SNDi_LockMutex();

    if (bank->waveArcLink[index].waveArc != NULL) {
        if (waveArc == bank->waveArcLink[index].waveArc) {
            SNDi_UnlockMutex();
            return;
        }

        if (&bank->waveArcLink[index] == bank->waveArcLink[index].waveArc->topLink) {
            bank->waveArcLink[index].waveArc->topLink = bank->waveArcLink[index].next;

#ifdef SDK_ARM9
            DC_StoreRange(bank->waveArcLink[index].waveArc, sizeof(SNDWaveArc));
#endif
        } else {
            prev = bank->waveArcLink[index].waveArc->topLink;
            while (prev != NULL) {
                if (&bank->waveArcLink[index] == prev->next) {
                    break;
                }
                prev = prev->next;
            }
            SDK_NULL_ASSERT(prev);
            prev->next = bank->waveArcLink[index].next;

#ifdef SDK_ARM9
            DC_StoreRange(prev, sizeof(SNDWaveArcLink));
#endif
        }
    }

    next = waveArc->topLink;
    waveArc->topLink = &bank->waveArcLink[index];
    bank->waveArcLink[index].next = next;
    bank->waveArcLink[index].waveArc = waveArc;

    SNDi_UnlockMutex();

#ifdef SDK_ARM9
    DC_StoreRange(bank, sizeof(SNDBankData));
    DC_StoreRange(waveArc, sizeof(SNDWaveArc));
#endif
}

void SND_DestroyBank (SNDBankData * bank) {
    SNDWaveArc * waveArc;
    SNDWaveArcLink * prev;
    int i;

    SDK_NULL_ASSERT(bank);
#ifdef SDK_ARM9
    SDK_ASSERTMSG(((u32)bank & 0x1f) == 0, "bank address must be aligned 32 bytes boundary.");
#endif

    SNDi_LockMutex();

    for (i = 0; i < SND_BANK_TO_WAVEARC_MAX; i++) {
        waveArc = bank->waveArcLink[i].waveArc;
        if (waveArc == NULL) {
            continue;
        }

        if (&bank->waveArcLink[i] == waveArc->topLink) {
            waveArc->topLink = bank->waveArcLink[i].next;

#ifdef SDK_ARM9
            DC_StoreRange(waveArc, sizeof(SNDWaveArc));
#endif
        } else {
            prev = waveArc->topLink;
            while (prev != NULL) {
                if (&bank->waveArcLink[i] == prev->next) {
                    break;
                }
                prev = prev->next;
            }
            SDK_NULL_ASSERT(prev);
            prev->next = bank->waveArcLink[i].next;

#ifdef SDK_ARM9
            DC_StoreRange(prev, sizeof(SNDWaveArcLink));
#endif
        }
    }

    SNDi_UnlockMutex();
}

void SND_DestroyWaveArc (SNDWaveArc * waveArc) {
    SNDWaveArcLink * link;
    SNDWaveArcLink * next;

    SDK_NULL_ASSERT(waveArc);
#ifdef SDK_ARM9
    SDK_ASSERTMSG(((u32)waveArc & 0x1f) == 0, "waveArc address must be aligned 32 bytes boundary.");
#endif

    SNDi_LockMutex();

    link = waveArc->topLink;
    while (link != NULL) {
        next = link->next;

        link->waveArc = NULL;
        link->next = NULL;

#ifdef SDK_ARM9
        DC_StoreRange(link, sizeof(SNDWaveArcLink));
#endif
        link = next;
    }

    SNDi_UnlockMutex();
}

BOOL SND_ReadInstData (const SNDBankData * bank, int prgNo, int key, SNDInstData * inst) {
    u32 instOffset;

    SDK_NULL_ASSERT(bank);
    SDK_NULL_ASSERT(inst);

    if (prgNo < 0) {
        return FALSE;
    }

#ifdef SDK_FROM_TOOL
    if (bank->fileHeader.signature[0] == 'S' &&
        bank->fileHeader.signature[1] == 'B' &&
        bank->fileHeader.signature[2] == 'C' && bank->fileHeader.signature[3] == 'B') {
        const SNDBankDataCallback * bankcb = (const SNDBankDataCallback *)bank;
        return bankcb->readInstDataFunc(bankcb, prgNo, key, inst);
    }
#endif

    SNDi_LockMutex();

    if (prgNo >= bank->instCount) {
        SNDi_UnlockMutex();
        return FALSE;
    }

    instOffset = bank->instOffset[prgNo];
    inst->type = (u8)(instOffset & 0xff);
    instOffset >>= 8;

    switch (inst->type) {
    case SND_INST_PCM:
    case SND_INST_PSG:
    case SND_INST_NOISE:
    case SND_INST_DIRECTPCM:
    case SND_INST_NULL:
    {
        const SNDInstParam * param = (const SNDInstParam *)((u8 *)bank + instOffset);

        inst->param = *param;
        break;
    }

    case SND_INST_DRUM_SET:
    {
        const SNDDrumSet * drumSet = (const SNDDrumSet *)((u8 *)bank + instOffset);
        u8 min = MI_ReadByte(&drumSet->min);
        u8 max = MI_ReadByte(&drumSet->max);

        if (key < min || key > max) {
            SNDi_UnlockMutex();
            return FALSE;
        }

        *inst = drumSet->instOffset[key - min];
        break;
    }

    case SND_INST_KEY_SPLIT:
    {
        int index = 0;
        const SNDKeySplit * keySplit = (const SNDKeySplit *)((u8 *)bank + instOffset);

        while (key > MI_ReadByte(&keySplit->key[index])) {
            index++;
            if (index >= SND_INST_KEYSPLIT_MAX) {
                SNDi_UnlockMutex();
                return FALSE;
            }
        }

        *inst = keySplit->instOffset[index];
        break;
    }

    case SND_INST_INVALID:
    default:
        SNDi_UnlockMutex();
        return FALSE;
    }

    SNDi_UnlockMutex();

    return TRUE;
}

BOOL SND_WriteInstData (SNDBankData * bank, int prgNo, int key, const struct SNDInstData * inst) {
    u32 instOffset;
    u8 type;

    SDK_NULL_ASSERT(bank);
    SDK_NULL_ASSERT(inst);

    if (prgNo < 0) {
        return FALSE;
    }

    SNDi_LockMutex();
    if (prgNo >= bank->instCount) {
        SNDi_UnlockMutex();
        return FALSE;
    }

    instOffset = bank->instOffset[prgNo];
    type = (u8)(instOffset & 0xff);
    instOffset >>= 8;

    switch (type) {
    case SND_INST_PCM:
    case SND_INST_PSG:
    case SND_INST_NOISE:
    case SND_INST_DIRECTPCM:
    case SND_INST_NULL:
    {
        SNDInstParam * param = (SNDInstParam *)((u8 *)bank + instOffset);

        bank->instOffset[prgNo] = (instOffset << 8) | inst->type;
        *param = inst->param;
        break;
    }

    case SND_INST_DRUM_SET:
    {
        SNDDrumSet * drumSet = (SNDDrumSet *)((u8 *)bank + instOffset);
        u8 min = MI_ReadByte(&drumSet->min);
        u8 max = MI_ReadByte(&drumSet->max);

        if (key < min || key > max) {
            SNDi_UnlockMutex();
            return FALSE;
        }

        drumSet->instOffset[key - min] = *inst;
        break;
    }

    case SND_INST_KEY_SPLIT:
    {
        int index = 0;
        SNDKeySplit * keySplit = (SNDKeySplit *)((u8 *)bank + instOffset);

        while (key > MI_ReadByte(&keySplit->key[index])) {
            index++;
            if (index >= SND_INST_KEYSPLIT_MAX) {
                SNDi_UnlockMutex();
                return FALSE;
            }
        }

        keySplit->instOffset[index] = *inst;
        break;
    }

    case SND_INST_INVALID:
    default:
        SNDi_UnlockMutex();
        return FALSE;
    }

    SNDi_UnlockMutex();

#ifdef SDK_ARM9
    DC_StoreRange(bank, bank->fileHeader.fileSize);
#endif

    return TRUE;
}

SNDInstPos SND_GetFirstInstDataPos (const SNDBankData * bank) {
    SNDInstPos pos;

    SDK_NULL_ASSERT(bank);

    (void)bank;

    pos.prgNo = 0;
    pos.index = 0;

    return pos;
}

BOOL SND_GetNextInstData (const SNDBankData * bank, SNDInstData * inst, SNDInstPos * pos) {
    SDK_NULL_ASSERT(bank);
    SDK_NULL_ASSERT(inst);
    SDK_NULL_ASSERT(pos);

    for (; pos->prgNo < bank->instCount; pos->prgNo++, pos->index = 0) {
        u32 instOffset = bank->instOffset[pos->prgNo];
        inst->type = (u8)(instOffset & 0xff);
        instOffset >>= 8;

        switch (inst->type) {
        case SND_INST_PCM:
        case SND_INST_PSG:
        case SND_INST_NOISE:
        case SND_INST_DIRECTPCM:
        case SND_INST_NULL:
        {
            const SNDInstParam * param = (const SNDInstParam *)((u8 *)bank + instOffset);
            inst->param = *param;
            pos->prgNo++;
            return TRUE;
        }

        case SND_INST_DRUM_SET:
        {
            const SNDDrumSet * drumSet = (const SNDDrumSet *)((u8 *)bank + instOffset);
            for (; pos->index < drumSet->max - drumSet->min + 1; pos->index++) {
                *inst = drumSet->instOffset[pos->index];
                pos->index++;
                return TRUE;
            }
            break;
        }

        case SND_INST_KEY_SPLIT:
        {
            const SNDKeySplit * keySplit = (const SNDKeySplit *)((u8 *)bank + instOffset);
            for (; pos->index < SND_INST_KEYSPLIT_MAX; pos->index++) {
                if (keySplit->key[pos->index] == 0) {
                    break;
                }
                *inst = keySplit->instOffset[pos->index];
                pos->index++;
                return TRUE;
            }
            break;
        }

        default:
            break;
        }
    }

    return FALSE;
}

u32 SND_GetWaveDataCount (const struct SNDWaveArc * waveArc) {
    SDK_NULL_ASSERT(waveArc);

    return waveArc->waveCount;
}

void SND_SetWaveDataAddress (SNDWaveArc * waveArc, int index, const SNDWaveData * address) {
    SDK_NULL_ASSERT(waveArc);
    SDK_MINMAX_ASSERT(index, 0, waveArc->waveCount);
    SDK_ASSERT(address == NULL || address >= (void *)HW_MAIN_MEM);

    SNDi_LockMutex();

    waveArc->waveOffset[index] = (u32)address;

#ifdef SDK_ARM9
    DC_StoreRange(&waveArc->waveOffset[index], sizeof(u32));
#endif

    SNDi_UnlockMutex();
}

const SNDWaveData * SND_GetWaveDataAddress (const SNDWaveArc * waveArc, int index) {
    const SNDWaveData * wave;
    u32 offset;

    SDK_NULL_ASSERT(waveArc);
    SDK_MINMAX_ASSERT(index, 0, waveArc->waveCount);

    SNDi_LockMutex();

    offset = waveArc->waveOffset[index];

    if (offset != 0) {
        if (offset < HW_MAIN_MEM) {
            wave = (const SNDWaveData *)((u8 *)waveArc + offset);
        } else {
            wave = (const SNDWaveData *)offset;
        }
    } else {
        wave = NULL;
    }

    SNDi_UnlockMutex();

    return wave;
}

#ifdef SDK_ARM7

BOOL SND_NoteOn (SNDExChannel * ch_p, int key, int velocity, s32 length, const SNDBankData * bank, const SNDInstData * inst) {
    const SNDWaveData * wave_data;
    int release;
    BOOL result;

    SDK_NULL_ASSERT(ch_p);
    SDK_MINMAX_ASSERT(key, 0, 127);
    SDK_MINMAX_ASSERT(velocity, 0, 127);
    SDK_NULL_ASSERT(inst);

    release = inst->param.release;
    if (inst->param.release == SND_BANK_DISABLE_RELEASE) {
        length = -1;
        release = 0;
    }

    switch (inst->type) {
    case SND_INST_PCM:
    case SND_INST_DIRECTPCM:
        if (inst->type == SND_INST_PCM) {
            wave_data = GetWaveData(bank, inst->param.wave[1], inst->param.wave[0]);
        } else {
            wave_data = (const SNDWaveData *)(inst->param.wave[1] << 16 | inst->param.wave[0]);
        }

        if (wave_data != NULL) {
            result = SND_StartExChannelPcm(ch_p, &wave_data->param, wave_data->samples, length);
        } else {
            result = FALSE;
        }
        break;

    case SND_INST_PSG:
        result = SND_StartExChannelPsg(ch_p, (SNDDuty)inst->param.wave[0], length);
        break;

    case SND_INST_NOISE:
        result = SND_StartExChannelNoise(ch_p, length);
        break;

    default:
        result = FALSE;
        break;
    }

    if (!result) {
        return FALSE;
    }

    ch_p->key = (u8)key;
    ch_p->original_key = inst->param.original_key;
    ch_p->velocity = (u8)velocity;

    SND_SetExChannelAttack(ch_p, inst->param.attack);
    SND_SetExChannelDecay(ch_p, inst->param.decay);
    SND_SetExChannelSustain(ch_p, inst->param.sustain);
    SND_SetExChannelRelease(ch_p, release);

    ch_p->init_pan = (s8)(inst->param.pan - 64);

    return TRUE;
}

#endif

#ifdef SDK_ARM7

static const SNDWaveData * GetWaveData (const SNDBankData * bank, int waveArcNo, int waveIndex) {
    const SNDWaveArc * arc;

    SDK_MINMAX_ASSERT(waveArcNo, 0, SND_BANK_TO_WAVEARC_MAX - 1);

    arc = bank->waveArcLink[waveArcNo].waveArc;

    if (arc == NULL) {
        return NULL;
    }
    if (waveIndex >= arc->waveCount) {
        return NULL;
    }

    return SND_GetWaveDataAddress(arc, waveIndex);
}

#endif
