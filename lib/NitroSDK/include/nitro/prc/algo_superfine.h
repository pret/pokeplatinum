#ifndef NITRO_PRC_ALGO_SUPERFINE_H_
#define NITRO_PRC_ALGO_SUPERFINE_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/prc/types.h>
#include <nitro/prc/common.h>
#include <nitro/prc/resample.h>
#include <nitro/prc/algo_common.h>

#define PRC_LENGTH_FILTER_DEFAULT_THRESHOLD_SUPERFINE normalizeSize
#define PRC_LENGTH_FILTER_DEFAULT_RATIO_SUPERFINE 3

typedef PRCPrototypeDBParam_Common PRCPrototypeDBParam_Superfine;

typedef PRCInputPatternParam_Common PRCInputPatternParam_Superfine;

typedef PRCInputPattern_Common PRCInputPattern_Superfine;

typedef PRCPrototypeDB_Common PRCPrototypeDB_Superfine;

typedef struct PRCRecognizeParam_Superfine {
    int lengthFilterThreshold;
    int lengthFilterRatio;
} PRCRecognizeParam_Superfine;

static inline void PRC_Init_Superfine (void)
{
    PRC_Init_Common();
}

static inline u32 PRC_GetPrototypeDBBufferSize_Superfine (const PRCPrototypeList * prototypeList)
{
    return PRC_GetPrototypeDBBufferSize_Common(prototypeList);
}

static inline u32 PRC_GetPrototypeDBBufferSizeEx_Superfine (const PRCPrototypeList * prototypeList,
                                                            u32 kindMask,
                                                            BOOL ignoreDisabledEntries,
                                                            const PRCPrototypeDBParam_Superfine * param)
{
    return PRC_GetPrototypeDBBufferSizeEx_Common(prototypeList, kindMask, ignoreDisabledEntries,
                                                 param);
}

static inline BOOL PRC_InitPrototypeDB_Superfine (PRCPrototypeDB_Superfine * protoDB,
                                                  void * buffer, const PRCPrototypeList * prototypeList)
{
    return PRC_InitPrototypeDB_Common(protoDB, buffer, prototypeList);
}

static inline BOOL PRC_InitPrototypeDBEx_Superfine (PRCPrototypeDB_Superfine * protoDB,
                                                    void * buffer,
                                                    const PRCPrototypeList * prototypeList,
                                                    u32 kindMask,
                                                    BOOL ignoreDisabledEntries,
                                                    const PRCPrototypeDBParam_Superfine * param)
{
    return PRC_InitPrototypeDBEx_Common(protoDB, buffer, prototypeList, kindMask,
                                        ignoreDisabledEntries, param);
}

static inline u32 PRC_GetInputPatternBufferSize_Superfine (int maxPointCount, int maxStrokeCount)
{
    return PRC_GetInputPatternBufferSize_Common(maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPattern_Superfine (PRCInputPattern_Superfine * pattern,
                                                   void * buffer,
                                                   const PRCStrokes * strokes, int maxPointCount, int maxStrokeCount)
{
    return PRC_InitInputPattern_Common(pattern, buffer, strokes, maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPatternEx_Superfine (PRCInputPattern_Superfine * pattern,
                                                     void * buffer,
                                                     const PRCStrokes * strokes,
                                                     int maxPointCount,
                                                     int maxStrokeCount, const PRCInputPatternParam_Superfine * param)
{
    return PRC_InitInputPatternEx_Common(pattern, buffer, strokes, maxPointCount, maxStrokeCount,
                                         param);
}

u32

PRC_GetRecognitionBufferSizeEx_Superfine(int maxPointCount,
                                         int maxStrokeCount,
                                         const PRCPrototypeDB_Superfine * protoDB,
                                         const PRCRecognizeParam_Superfine * param);

static inline u32 PRC_GetRecognitionBufferSize_Superfine (int maxPointCount,
                                                          int maxStrokeCount, const PRCPrototypeDB_Superfine * protoDB)
{
    return PRC_GetRecognitionBufferSizeEx_Superfine(maxPointCount, maxStrokeCount, protoDB, NULL);
}

int

PRC_GetRecognizedEntriesEx_Superfine(PRCPrototypeEntry ** resultEntries,
                                     fx32 * resultScores,
                                     int numRanking,
                                     void * buffer,
                                     const PRCInputPattern_Superfine * input,
                                     const PRCPrototypeDB_Superfine * protoDB,
                                     u32 kindMask, const PRCRecognizeParam_Superfine * param);

static inline int PRC_GetRecognizedEntries_Superfine (PRCPrototypeEntry ** resultEntries,
                                                      fx32 * resultScores,
                                                      int numRanking,
                                                      void * buffer,
                                                      const PRCInputPattern_Superfine * input,
                                                      const PRCPrototypeDB_Superfine * protoDB)
{
    return PRC_GetRecognizedEntriesEx_Superfine(resultEntries, resultScores, numRanking, buffer,
                                                input, protoDB, PRC_KIND_ALL, NULL);
}

static inline fx32 PRC_GetRecognizedEntryEx_Superfine (PRCPrototypeEntry ** resultEntry,
                                                       void * buffer,
                                                       const PRCInputPattern_Superfine * input,
                                                       const PRCPrototypeDB_Superfine * protoDB,
                                                       u32 kindMask, const PRCRecognizeParam_Superfine * param)
{
    fx32 score;
    (void)PRC_GetRecognizedEntriesEx_Superfine(resultEntry, &score, 1, buffer, input, protoDB,
                                               kindMask, param);
    return score;
}

static inline fx32 PRC_GetRecognizedEntry_Superfine (PRCPrototypeEntry ** resultEntry,
                                                     void * buffer,
                                                     const PRCInputPattern_Superfine * input,
                                                     const PRCPrototypeDB_Superfine * protoDB)
{
    return PRC_GetRecognizedEntryEx_Superfine(resultEntry, buffer, input, protoDB, PRC_KIND_ALL,
                                              NULL);
}

static inline void PRC_GetInputPatternStrokes_Superfine (PRCStrokes * strokes, const PRCInputPattern_Superfine * input)
{
    PRC_GetInputPatternStrokes_Common(strokes, input);
}

#ifndef PRC_DEFAULT_ALGORITHM
#define PRC_DEFAULT_ALGORITHM "Superfine"

typedef PRCPrototypeDBParam_Superfine PRCPrototypeDBParam;

typedef PRCInputPatternParam_Superfine PRCInputPatternParam;

typedef PRCInputPattern_Superfine PRCInputPattern;

typedef PRCPrototypeDB_Superfine PRCPrototypeDB;

typedef PRCRecognizeParam_Superfine PRCRecognizeParam;

static inline void PRC_Init (void)
{
    PRC_Init_Superfine();
}

static inline u32 PRC_GetPrototypeDBBufferSize (const PRCPrototypeList * prototypeList)
{
    return PRC_GetPrototypeDBBufferSize_Superfine(prototypeList);
}

static inline u32 PRC_GetPrototypeDBBufferSizeEx (const PRCPrototypeList * prototypeList,
                                                  u32 kindMask,
                                                  BOOL ignoreDisabledEntries, const PRCPrototypeDBParam * param)
{
    return PRC_GetPrototypeDBBufferSizeEx_Superfine(prototypeList, kindMask, ignoreDisabledEntries,
                                                    param);
}

static inline BOOL PRC_InitPrototypeDB (PRCPrototypeDB * protoDB, void * buffer, const PRCPrototypeList * prototypeList)
{
    return PRC_InitPrototypeDB_Superfine(protoDB, buffer, prototypeList);
}

static inline BOOL PRC_InitPrototypeDBEx (PRCPrototypeDB * protoDB,
                                          void * buffer,
                                          const PRCPrototypeList * prototypeList,
                                          u32 kindMask, BOOL ignoreDisabledEntries, const PRCPrototypeDBParam * param)
{
    return PRC_InitPrototypeDBEx_Superfine(protoDB, buffer, prototypeList, kindMask,
                                           ignoreDisabledEntries, param);
}

static inline u32 PRC_GetInputPatternBufferSize (int maxPointCount, int maxStrokeCount)
{
    return PRC_GetInputPatternBufferSize_Superfine(maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPattern (PRCInputPattern * pattern,
                                         void * buffer, const PRCStrokes * strokes, int maxPointCount, int maxStrokeCount)
{
    return PRC_InitInputPattern_Superfine(pattern, buffer, strokes, maxPointCount, maxStrokeCount);
}

static inline BOOL PRC_InitInputPatternEx (PRCInputPattern * pattern,
                                           void * buffer,
                                           const PRCStrokes * strokes,
                                           int maxPointCount, int maxStrokeCount, const PRCInputPatternParam * param)
{
    return PRC_InitInputPatternEx_Superfine(pattern, buffer, strokes, maxPointCount, maxStrokeCount,
                                            param);
}

static inline u32 PRC_GetRecognitionBufferSize (int maxPointCount,
                                                int maxStrokeCount, const PRCPrototypeDB_Superfine * protoDB)
{
    return PRC_GetRecognitionBufferSize_Superfine(maxPointCount, maxStrokeCount, protoDB);
}

static inline u32 PRC_GetRecognitionBufferSizeEx (int maxPointCount,
                                                  int maxStrokeCount,
                                                  const PRCPrototypeDB_Superfine * protoDB,
                                                  const PRCRecognizeParam_Superfine * param)
{
    return PRC_GetRecognitionBufferSizeEx_Superfine(maxPointCount, maxStrokeCount, protoDB, param);
}

static inline fx32 PRC_GetRecognizedEntry (PRCPrototypeEntry ** resultEntry,
                                           void * buffer, const PRCInputPattern * input, const PRCPrototypeDB * protoDB)
{
    return PRC_GetRecognizedEntry_Superfine(resultEntry, buffer, input, protoDB);
}

static inline fx32 PRC_GetRecognizedEntryEx (PRCPrototypeEntry ** resultEntry,
                                             void * buffer,
                                             const PRCInputPattern * input,
                                             const PRCPrototypeDB * protoDB,
                                             u32 kindMask, const PRCRecognizeParam * param)
{
    return PRC_GetRecognizedEntryEx_Superfine(resultEntry, buffer, input, protoDB, kindMask, param);
}

static inline int PRC_GetRecognizedEntries (PRCPrototypeEntry ** resultEntries,
                                            fx32 * resultScores,
                                            int numRanking,
                                            void * buffer, const PRCInputPattern * input, const PRCPrototypeDB * protoDB)
{
    return PRC_GetRecognizedEntries_Superfine(resultEntries, resultScores, numRanking, buffer,
                                              input, protoDB);
}

static inline int PRC_GetRecognizedEntriesEx (PRCPrototypeEntry ** resultEntries,
                                              fx32 * resultScores,
                                              int numRanking,
                                              void * buffer,
                                              const PRCInputPattern * input,
                                              const PRCPrototypeDB * protoDB,
                                              u32 kindMask, const PRCRecognizeParam * param)
{
    return PRC_GetRecognizedEntriesEx_Superfine(resultEntries, resultScores, numRanking, buffer,
                                                input, protoDB, kindMask, param);
}

static inline void PRC_GetInputPatternStrokes (PRCStrokes * strokes, const PRCInputPattern * input)
{
    PRC_GetInputPatternStrokes_Superfine(strokes, input);
}

#endif

#ifdef __cplusplus
}
#endif

#endif
