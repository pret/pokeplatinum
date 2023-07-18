#include <nnsys/snd/sndarc_player.h>
#include <nnsys/misc.h>
#include <nnsys/snd/sndarc.h>
#include <nnsys/snd/player.h>
#include <nnsys/snd/sndarc_loader.h>

static BOOL StartSeq(NNSSndHandle * handle, int playerNo, int bankNo, int playerPrio, const NNSSndArcSeqInfo * info, int seqNo);
static BOOL StartSeqArc(NNSSndHandle * handle, int playerNo, int bankNo, int playerPrio, const NNSSndSeqArcSeqInfo * sound, const NNSSndSeqArc * seqArc, int seqArcNo, int index);

BOOL NNS_SndArcPlayerSetup (NNSSndHeapHandle heap) {
    NNSSndArc * arc = NNS_SndArcGetCurrent();
    int playerNo;
    const NNSSndArcPlayerInfo * playerInfo;

    NNS_NULL_ASSERT(arc);

    for ( playerNo = 0; playerNo < NNS_SND_PLAYER_NUM ; ++playerNo ) {
        playerInfo = NNS_SndArcGetPlayerInfo(playerNo);
        if (playerInfo == NULL) {
            continue;
        }

        NNS_SndPlayerSetPlayableSeqCount(playerNo, playerInfo->seqMax);
        NNS_SndPlayerSetAllocatableChannel(playerNo, playerInfo->allocChBitFlag);

        if (playerInfo->heapSize > 0 && heap != NNS_SND_HEAP_INVALID_HANDLE) {
            int i;

            for ( i = 0; i < playerInfo->seqMax ; i++ ) {
                if (!NNS_SndPlayerCreateHeap(playerNo, heap, playerInfo->heapSize)) {
                    return FALSE;
                }
            }
        }
    }

    return TRUE;
}

BOOL NNS_SndArcPlayerStartSeq (NNSSndHandle * handle, int seqNo) {
    const NNSSndArcSeqInfo * info;

    NNS_NULL_ASSERT(handle);

    info = NNS_SndArcGetSeqInfo(seqNo);
    if (info == NULL) {
        return FALSE;
    }

    return StartSeq(
        handle,
        info->param.playerNo,
        info->param.bankNo,
        info->param.playerPrio,
        info,
        seqNo
    );
}

BOOL NNS_SndArcPlayerStartSeqEx (NNSSndHandle * handle, int playerNo, int bankNo, int playerPrio, int seqNo) {
    const NNSSndArcSeqInfo * info;

    NNS_NULL_ASSERT(handle);
    NNS_MAX_ASSERT(playerNo, NNS_SND_PLAYER_NUM - 1);
    NNS_MAX_ASSERT(playerPrio, NNS_SND_PLAYER_PRIO_MAX);

    info = NNS_SndArcGetSeqInfo(seqNo);
    if (info == NULL) {
        return FALSE;
    }

    return StartSeq(
        handle,
        playerNo >= 0 ? playerNo   : info->param.playerNo,
        bankNo >= 0 ? bankNo     : info->param.bankNo,
        playerPrio >= 0 ? playerPrio : info->param.playerPrio,
        info,
        seqNo
    );
}

BOOL NNS_SndArcPlayerStartSeqArc (NNSSndHandle * handle, int seqArcNo, int index) {
    const NNSSndArcSeqArcInfo * info;
    const NNSSndSeqArcSeqInfo * sound;
    const NNSSndSeqArc * seqArc;

    NNS_NULL_ASSERT(handle);

    info = NNS_SndArcGetSeqArcInfo(seqArcNo);
    if (info == NULL) {
        return FALSE;
    }
    seqArc = (NNSSndSeqArc *)NNS_SndArcGetFileAddress(info->fileId);
    if (seqArc == NULL) {
        return FALSE;
    }
    sound = NNSi_SndSeqArcGetSeqInfo(seqArc, index);
    if (sound == NULL) {
        return FALSE;
    }

    return StartSeqArc(
        handle,
        sound->param.playerNo,
        sound->param.bankNo,
        sound->param.playerPrio,
        sound,
        seqArc,
        seqArcNo,
        index
    );
}

BOOL NNS_SndArcPlayerStartSeqArcEx (NNSSndHandle * handle, int playerNo, int bankNo, int playerPrio, int seqArcNo, int index) {
    const NNSSndArcSeqArcInfo * info;
    const NNSSndSeqArc * seqArc;
    const NNSSndSeqArcSeqInfo * sound;

    NNS_NULL_ASSERT(handle);
    NNS_MAX_ASSERT(playerNo, NNS_SND_PLAYER_NUM - 1);
    NNS_MAX_ASSERT(playerPrio, NNS_SND_PLAYER_PRIO_MAX);

    info = NNS_SndArcGetSeqArcInfo(seqArcNo);
    if (info == NULL) {
        return FALSE;
    }
    seqArc = (NNSSndSeqArc *)NNS_SndArcGetFileAddress(info->fileId);
    if (seqArc == NULL) {
        return FALSE;
    }
    sound = NNSi_SndSeqArcGetSeqInfo(seqArc, index);
    if (sound == NULL) {
        return FALSE;
    }

    return StartSeqArc(
        handle,
        playerNo >= 0 ? playerNo   : sound->param.playerNo,
        bankNo >= 0 ? bankNo     : sound->param.bankNo,
        playerPrio >= 0 ? playerPrio : sound->param.playerPrio,
        sound,
        seqArc,
        seqArcNo,
        index
    );
}

static BOOL StartSeq (NNSSndHandle * handle, int playerNo, int bankNo, int playerPrio, const NNSSndArcSeqInfo * info, int seqNo) {
    NNSSndSeqPlayer * player;
    NNSSndHeapHandle heap;
    NNSSndSeqData * seq;
    SNDBankData * bank;
    NNSSndArcLoadResult result;

    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(playerNo, 0, NNS_SND_PLAYER_NO_MAX);
    NNS_MINMAX_ASSERT(playerPrio, 0, NNS_SND_PLAYER_PRIO_MAX);
    NNS_NULL_ASSERT(info);

    player = NNSi_SndPlayerAllocSeqPlayer(handle, playerNo, playerPrio);
    if (player == NULL) {
        return FALSE;
    }

    heap = NNSi_SndPlayerAllocHeap(playerNo, player);

    result = NNSi_SndArcLoadBank(bankNo, NNS_SND_ARC_LOAD_BANK | NNS_SND_ARC_LOAD_WAVE, heap, FALSE, &bank);
    if (result != NNS_SND_ARC_LOAD_SUCESS) {
        NNSi_SndPlayerFreeSeqPlayer(player);
        return FALSE;
    }

    result = NNSi_SndArcLoadSeq(seqNo, NNS_SND_ARC_LOAD_SEQ, heap, FALSE, &seq);
    if (result != NNS_SND_ARC_LOAD_SUCESS) {
        NNSi_SndPlayerFreeSeqPlayer(player);
        return FALSE;
    }

    NNSi_SndPlayerStartSeq(
        player,
        (u8 *)seq + seq->baseOffset,
        0,
        bank
    );

    NNS_SndPlayerSetInitialVolume(handle, info->param.volume);
    NNS_SndPlayerSetChannelPriority(handle, info->param.channelPrio);
    NNS_SndPlayerSetSeqNo(handle, seqNo);

    return TRUE;
}

static BOOL StartSeqArc (NNSSndHandle * handle, int playerNo, int bankNo, int playerPrio, const NNSSndSeqArcSeqInfo * sound, const NNSSndSeqArc * seqArc, int seqArcNo, int index) {
    NNSSndSeqPlayer * player;
    NNSSndHeapHandle heap;
    SNDBankData * bank;
    NNSSndArcLoadResult result;

    NNS_NULL_ASSERT(handle);
    NNS_MINMAX_ASSERT(playerNo, 0, NNS_SND_PLAYER_NO_MAX);
    NNS_MINMAX_ASSERT(playerPrio, 0, NNS_SND_PLAYER_PRIO_MAX);
    NNS_NULL_ASSERT(sound);
    NNS_NULL_ASSERT(seqArc);

    player = NNSi_SndPlayerAllocSeqPlayer(handle, playerNo, playerPrio);
    if (player == NULL) {
        return FALSE;
    }

    heap = NNSi_SndPlayerAllocHeap(playerNo, player);

    result = NNSi_SndArcLoadBank(bankNo, NNS_SND_ARC_LOAD_BANK | NNS_SND_ARC_LOAD_WAVE, heap, FALSE, &bank);
    if (result != NNS_SND_ARC_LOAD_SUCESS) {
        NNSi_SndPlayerFreeSeqPlayer(player);
        return FALSE;
    }

    NNSi_SndPlayerStartSeq(
        player,
        (u8 *)seqArc + seqArc->baseOffset,
        sound->offset,
        bank
    );

    NNS_SndPlayerSetInitialVolume(handle, sound->param.volume);
    NNS_SndPlayerSetChannelPriority(handle, sound->param.channelPrio);
    NNS_SndPlayerSetSeqArcNo(handle, seqArcNo, index);

    return TRUE;
}
