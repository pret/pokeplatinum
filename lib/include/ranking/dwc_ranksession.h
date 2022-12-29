#ifndef DWC_RANKSESSION_H_
#define DWC_RANKSESSION_H_

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    DWCi_RANKING_SESSION_STATE_CANCELED,
    DWCi_RANKING_SESSION_STATE_ERROR,
    DWCi_RANKING_SESSION_STATE_INITIAL,
    DWCi_RANKING_SESSION_STATE_INITIALIZED,
    DWCi_RANKING_SESSION_STATE_REQUEST,
    DWCi_RANKING_SESSION_STATE_GETTING_TOKEN,
    DWCi_RANKING_SESSION_STATE_GOT_TOKEN,
    DWCi_RANKING_SESSION_STATE_SENDING_DATA,
    DWCi_RANKING_SESSION_STATE_COMPLETED
} DWCiRankingSessionState;

typedef enum {
    DWCi_RANKING_SESSION_SUCCESS,
    DWCi_RANKING_SESSION_ERROR_NOTINITIALIZED,
    DWCi_RANKING_SESSION_ERROR_NOMEMORY,
    DWCi_RANKING_SESSION_ERROR_INVALID_KEY
} DWCiRankingSessionResult;

void DWCi_RankingSessionInitialize(BOOL releaseserver);
void DWCi_RankingSessionShutdown(void);
BOOL DWCi_RankingValidateKey(const char * gamename, const char * secretkey, u32 key1, u32 key2, u32 key3, u32 key4);
DWCiRankingSessionResult DWCi_RankingSessionPutAsync(u32 category, s32 pid, DWCRnkRegion region, s32 score, void * data, u32 size);
DWCiRankingSessionResult DWCi_RankingSessionGetAsync(DWCRnkGetMode mode, u32 category, s32 pid, DWCRnkRegion region, DWCRnkGetParam * param);
DWCiRankingSessionState DWCi_RankingSessionProcess(void);
void * DWCi_RankingSessionGetResponse(u32 * size);
void DWCi_RankingSessionCancel(void);

#ifdef __cplusplus
}
#endif

#endif
